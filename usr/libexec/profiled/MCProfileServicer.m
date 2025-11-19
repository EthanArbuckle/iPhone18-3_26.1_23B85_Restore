@interface MCProfileServicer
- (BOOL)isCloudLockedProfileWithIdentifier:(id)a3;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3;
- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3 error:(id *)a4;
- (BOOL)remoteProcessHasEntitlementArray:(id)a3 containingString:(id)a4;
- (BOOL)remoteProcessHasEntitlementArray:(id)a3 containingString:(id)a4 error:(id *)a5;
- (NSXPCConnection)xpcConnection;
- (id)_invalidValue:(id)a3 forArgument:(id)a4;
- (id)_missingWatchMDMEnrollmentEntitlementError;
- (id)lacksArrayEntitlementError:(id)a3 withMemberString:(id)a4;
- (id)lacksBooleanEntitlementError:(id)a3;
- (id)prefixedFeaturePromptIdentifierForIdentifier:(id)a3;
- (id)remoteProcessBundleID;
- (id)remoteProcessEntitlementStringArrayForKey:(id)a3;
- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5 completion:(id)a6;
- (void)applyPairingWatchMDMEnrollmentData:(id)a3 completion:(id)a4;
- (void)applyRestrictionDictionary:(id)a3 toSystem:(BOOL)a4 overrideRestrictions:(BOOL)a5 appsAndOptions:(id)a6 clientType:(id)a7 clientUUID:(id)a8 localizedClientDescription:(id)a9 localizedWarningMessage:(id)a10 completion:(id)a11;
- (void)areBundlesBlocked:(id)a3 completion:(id)a4;
- (void)cancelFeaturePromptWithIdentifier:(id)a3 completion:(id)a4;
- (void)checkInWithCompletion:(id)a3;
- (void)clearPasscodeWithEscrowKeybagData:(id)a3 secret:(id)a4 completion:(id)a5;
- (void)clearPasscodeWithEscrowKeybagData:(id)a3 secretContext:(id)a4 completion:(id)a5;
- (void)clearRecoveryPasscodeWithCompletion:(id)a3;
- (void)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)a3 completion:(id)a4;
- (void)cloudConfigurationStoreDetails:(id)a3 completion:(id)a4;
- (void)cloudConfigurationStoreDetailsForPendingMigration:(id)a3 completion:(id)a4;
- (void)createActivationLockBypassCodeWithCompletion:(id)a3;
- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)a3 completion:(id)a4;
- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)a3 completion:(id)a4;
- (void)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4 completion:(id)a5;
- (void)effectiveBoolValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)effectiveValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)effectiveValuesForWatchIntersectionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)effectiveValuesForWatchUnionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)a3;
- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)a3 completion:(id)a4;
- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)a3;
- (void)installProfileData:(id)a3 interactive:(BOOL)a4 options:(id)a5 completion:(id)a6;
- (void)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 completion:(id)a5;
- (void)isBundleBlocked:(id)a3 completion:(id)a4;
- (void)isPasscodeCompliantWithNamedPolicy:(id)a3 completion:(id)a4;
- (void)isProfileInstalledWithIdentifier:(id)a3 completion:(id)a4;
- (void)managedSystemConfigurationServiceIDsWithCompletion:(id)a3;
- (void)managedWiFiNetworkNamesWithCompletion:(id)a3;
- (void)managingOrganizationInformationWithCompletion:(id)a3;
- (void)markStoredProfileAsInstalledWithCompletion:(id)a3;
- (void)monitorEnrollmentStateWithPersonaID:(id)a3;
- (void)notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:(id)a3;
- (void)notifyDeviceUnlockedWithCompletion:(id)a3;
- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)a3 completion:(id)a4;
- (void)notifyStartComplianceTimer:(id)a3 completion:(id)a4;
- (void)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)a3 withCompletion:(id)a4;
- (void)popProfileDataFromHeadOfInstallationQueueWithCompletion:(id)a3;
- (void)provisiongProfileUUIDsForSignerIdentity:(id)a3 completion:(id)a4;
- (void)recomputePerClientUserComplianceWithCompletion:(id)a3;
- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3;
- (void)recomputeUserComplianceWarningWithCompletion:(id)a3;
- (void)reducedMachineInfoDataWithCompletion:(id)a3;
- (void)removeBoolSetting:(id)a3 completion:(id)a4;
- (void)removeExpiredProfilesWithCompletion:(id)a3;
- (void)removeOrphanedClientRestrictionsWithCompletion:(id)a3;
- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)a3;
- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5;
- (void)removeProtectedProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5;
- (void)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 completion:(id)a5;
- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)a3;
- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5 completion:(id)a6;
- (void)removeValueSetting:(id)a3 completion:(id)a4;
- (void)rereadManagedAppAttributesWithCompletion:(id)a3;
- (void)resetPasscodeMetadataWithCompletion:(id)a3;
- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)a3;
- (void)setAllowedURLStrings:(id)a3 completion:(id)a4;
- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 completion:(id)a8;
- (void)setUserBookmarks:(id)a3 completion:(id)a4;
- (void)setUserInfo:(id)a3 forClientUUID:(id)a4 completion:(id)a5;
- (void)setupAssistantDidFinishCompletion:(id)a3;
- (void)showFeaturePromptForSetting:(id)a3 configurationUUID:(id)a4 promptOptions:(id)a5 promptIdentifier:(id)a6 completion:(id)a7;
- (void)shutDownWithCompletion:(id)a3;
- (void)signerIdentityForBundleID:(id)a3 completion:(id)a4;
- (void)storeActivationRecord:(id)a3 completion:(id)a4;
- (void)storeCertificateData:(id)a3 forIPCUIdentifier:(id)a4 completion:(id)a5;
- (void)storeProfileData:(id)a3 completion:(id)a4;
- (void)storedProfileDataWithCompletion:(id)a3;
- (void)syncTrustedCodeSigningIdentitiesWithCompletion:(id)a3;
- (void)trustedCodeSigningIdentitiesWithCompletion:(id)a3;
- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)a3;
- (void)updateMDMEnrollmentInfoForPairingWatch:(id)a3 completion:(id)a4;
- (void)updateProfileIdentifier:(id)a3 interactive:(BOOL)a4 completion:(id)a5;
- (void)validateAppBundleIDs:(id)a3 completion:(id)a4;
- (void)verifiedMDMProfileIdentifierWithCompletion:(id)a3;
@end

@implementation MCProfileServicer

- (NSXPCConnection)xpcConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_xpcConnection);

  return WeakRetained;
}

- (void)checkInWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[MCProfileServiceServer sharedServer];
  v6 = [v5 connectionTracker];
  v7 = [(MCProfileServicer *)self xpcConnection];
  [v6 trackRequestFromPID:{objc_msgSend(v7, "processIdentifier")}];

  v8 = +[MCProfileServiceServer sharedServer];
  [v8 checkInWithCompletion:v4];
}

- (void)notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 notifyDeviceUnlockedAndPasscodeRequiredWithCompletion:v3];
}

- (void)notifyDeviceUnlockedWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 notifyDeviceUnlockedWithCompletion:v3];
}

- (void)defaultAppBundleIDForCommunicationServiceType:(id)a3 forAccountWithIdentifier:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[MCProfileServiceServer sharedServer];
  [v10 defaultAppBundleIDForCommunicationServiceType:v9 forAccountWithIdentifier:v8 completion:v7];
}

- (void)setAllowedURLStrings:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MCProfileServicer *)self xpcConnection];
  v9 = [v8 processIdentifier];

  v11 = +[MCProfileServiceServer sharedServer];
  v10 = [(MCProfileServicer *)self remoteProcessBundleID];
  [v11 setAllowedURLStrings:v7 senderPID:v9 sender:v10 completion:v6];
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_1000C2828(a2, self);
  }

  v6 = [(MCProfileServicer *)self xpcConnection];
  v7 = [v6 valueForEntitlement:v5];

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

- (id)remoteProcessEntitlementStringArrayForKey:(id)a3
{
  v4 = a3;
  v5 = [(MCProfileServicer *)self xpcConnection];
  v6 = [v5 valueForEntitlement:v4];

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

- (BOOL)remoteProcessHasEntitlementArray:(id)a3 containingString:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [(MCProfileServicer *)self remoteProcessEntitlementStringArrayForKey:v7];
    v10 = v9;
    if (v8)
    {
      v11 = [v9 containsObject:v8];
    }

    else if (v9)
    {
      v12 = _MCLogObjects[2];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = v7;
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
  v2 = [(MCProfileServicer *)self xpcConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
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

- (id)lacksBooleanEntitlementError:(id)a3
{
  v3 = MCXPCErrorDomain;
  v4 = MCErrorArray();
  v5 = [NSError MCErrorWithDomain:v3 code:39000 descriptionArray:v4 errorType:MCErrorTypeFatal, a3, 0];

  return v5;
}

- (id)lacksArrayEntitlementError:(id)a3 withMemberString:(id)a4
{
  v4 = MCXPCErrorDomain;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v4 code:39000 descriptionArray:v5 errorType:MCErrorTypeFatal, a3, a4, 0];

  return v6;
}

- (BOOL)remoteProcessHasBooleanEntitlement:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:v6]&& ![(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access"])
  {
    v7 = [(MCProfileServicer *)self lacksBooleanEntitlementError:v6];
    v8 = 0;
    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = 0;
  v8 = 1;
  if (a4)
  {
LABEL_4:
    v7 = v7;
    *a4 = v7;
  }

LABEL_5:

  return v8;
}

- (BOOL)remoteProcessHasEntitlementArray:(id)a3 containingString:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![(MCProfileServicer *)self remoteProcessHasEntitlementArray:v8 containingString:v9]&& ![(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access"])
  {
    v10 = [(MCProfileServicer *)self lacksArrayEntitlementError:v8 withMemberString:v9];
    v11 = 0;
    if (!a5)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v10 = 0;
  v11 = 1;
  if (a5)
  {
LABEL_4:
    v10 = v10;
    *a5 = v10;
  }

LABEL_5:

  return v11;
}

- (void)verifiedMDMProfileIdentifierWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 verifiedMDMProfileIdentifierWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6, 0);
  }
}

- (void)isProfileInstalledWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
      if (v7)
      {
        v7[2](v7, v8, 0);
      }

      goto LABEL_11;
    }
  }

  if (v6)
  {
    v10 = +[MCManifest sharedManifest];
    v11 = [v10 allInstalledProfileIdentifiers];
    v12 = [v11 containsObject:v6];

    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  v12 = 0;
  if (v7)
  {
LABEL_8:
    (v7)[2](v7, 0, v12);
  }

LABEL_11:
}

- (void)installProfileData:(id)a3 interactive:(BOOL)a4 options:(id)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v8)
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
    v16 = [v11 objectForKey:kMCInstallProfileOptionFilterFlag];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 integerValue] == 2)
    {
      v30 = v15;
      v17 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"CarrierInstallation" error:&v30];
      v18 = v30;

      if ((v17 & 1) == 0)
      {
        if (v12)
        {
          v12[2](v12, 0, v18);
        }

        goto LABEL_20;
      }

      v28 = v18;
    }

    else
    {
      v28 = v15;
    }

    v19 = v11;
    v20 = [(MCProfileServicer *)self remoteProcessBundleID];
    if (v20)
    {
      v21 = [[NSMutableDictionary alloc] initWithDictionary:v19];
      [v21 setObject:v20 forKey:kMCInstallProfileOptionInstalledBy];
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

    if (v8)
    {
      v24 = [MCInteractionClient alloc];
      v25 = [(MCProfileServicer *)self xpcConnection];
      v26 = [(MCInteractionClient *)v24 initWithXPCClientConnection:v25];
    }

    else
    {
      v26 = 0;
    }

    v27 = +[MCProfileServiceServer sharedServer];
    [v27 installProfileData:v10 interactionClient:v26 options:v19 source:v20 completion:v12];

    v18 = v28;
LABEL_20:

    v15 = v18;
    goto LABEL_21;
  }

  if (v12)
  {
    v12[2](v12, 0, v15);
  }

LABEL_21:
}

- (void)popProfileDataFromHeadOfInstallationQueueWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"PopInstallationQueue" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 popProfileDataFromHeadOfInstallationQueueWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0, v6);
  }
}

- (void)peekProfileDataFromPurgatoryForDeviceType:(unint64_t)a3 withCompletion:(id)a4
{
  v6 = a4;
  v13 = 0;
  v7 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"PopInstallationQueue" error:&v13];
  v8 = v13;
  if (a3 >= 8 && v7)
  {
    v9 = [NSNumber numberWithUnsignedInteger:a3];
    v10 = [v9 stringValue];
    v11 = [(MCProfileServicer *)self _invalidValue:v10 forArgument:@"MCProfileTargetDeviceType"];

    v8 = v11;
  }

  else if (v7)
  {
    v12 = +[MCProfileServiceServer sharedServer];
    [v12 peekProfileDataFromPurgatoryForDeviceType:a3 withCompletion:v6];

    goto LABEL_8;
  }

  if (v6)
  {
    v6[2](v6, 0, v8);
  }

LABEL_8:
}

- (void)updateProfileIdentifier:(id)a3 interactive:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v19 = 0;
    v10 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"CustomUIInstallation" error:&v19];
    v11 = v19;
    if (v10)
    {
      v12 = [MCInteractionClient alloc];
      v13 = [(MCProfileServicer *)self xpcConnection];
      v14 = [(MCInteractionClient *)v12 initWithXPCClientConnection:v13];

LABEL_6:
      v16 = +[MCProfileServiceServer sharedServer];
      v17 = [(MCProfileServicer *)self remoteProcessBundleID];
      [v16 updateProfileIdentifier:v8 interactionClient:v14 source:v17 completion:v9];

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

  if (v9)
  {
    v9[2](v9, 0, v11);
  }

LABEL_9:
}

- (id)_invalidValue:(id)a3 forArgument:(id)a4
{
  v4 = MCProfileRemovalErrorDomain;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v4 code:1010 descriptionArray:v5 errorType:MCErrorTypeFatal, a4, a3, 0];

  return v6;
}

- (void)removeProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18 = 0;
  v10 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v18];
  v11 = v18;
  if (v10)
  {
    if ([(MCProfileServicer *)self isCloudLockedProfileWithIdentifier:v8])
    {
      v12 = MCProfileRemovalErrorDomain;
      v13 = MCErrorArray();
      v14 = [NSError MCErrorWithDomain:v12 code:52000 descriptionArray:v13 errorType:MCErrorTypeFatal, 0];
    }

    else
    {
      if (a4 < 3)
      {
        v15 = +[MCProfileServiceServer sharedServer];
        v16 = [(MCProfileServicer *)self remoteProcessBundleID];
        [v15 removeProfileWithIdentifier:v8 installationType:a4 source:v16 completion:v9];

        goto LABEL_10;
      }

      v13 = [NSNumber numberWithInteger:a4];
      v17 = [v13 stringValue];
      v14 = [(MCProfileServicer *)self _invalidValue:v17 forArgument:@"MCProfileInstallationType"];

      v11 = v17;
    }

    v11 = v14;
  }

  if (v9)
  {
    v9[2](v9, v11);
  }

LABEL_10:
}

- (void)removeUninstalledProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 targetDeviceType:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v20 = 0;
  v12 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v20];
  v13 = v20;
  if (a4 >= 3 && v12)
  {
    v14 = [NSNumber numberWithInteger:a4];
    v15 = @"MCProfileInstallationType";
LABEL_8:
    v17 = [v14 stringValue];
    v18 = [(MCProfileServicer *)self _invalidValue:v17 forArgument:v15];

    v13 = v18;
    goto LABEL_9;
  }

  v16 = v12 ^ 1;
  if (a5 < 8)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    v14 = [NSNumber numberWithUnsignedInteger:a5];
    v15 = @"MCProfileTargetDeviceType";
    goto LABEL_8;
  }

  if (v12)
  {
    v19 = +[MCProfileServiceServer sharedServer];
    [v19 removeUninstalledProfileWithIdentifier:v10 installationType:a4 targetDeviceType:a5 completion:v11];

    goto LABEL_11;
  }

LABEL_9:
  if (v11)
  {
    v11[2](v11, v13);
  }

LABEL_11:
}

- (void)removeProtectedProfileWithIdentifier:(id)a3 installationType:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v19 = 0;
  v10 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v19];
  v11 = v19;
  if (v10)
  {
    v12 = [(MCProfileServicer *)self isCloudLockedProfileWithIdentifier:v8];
    v13 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"CloudLockedRemoval"];
    if (!v12 || (v13 & 1) != 0)
    {
      if (a4 < 3)
      {
        v15 = +[MCProfileServiceServer sharedServer];
        v16 = [(MCProfileServicer *)self remoteProcessBundleID];
        [v15 removeProfileWithIdentifier:v8 installationType:a4 source:v16 completion:v9];

        goto LABEL_11;
      }

      v17 = [NSNumber numberWithInteger:a4];
      v18 = [v17 stringValue];
      v14 = [(MCProfileServicer *)self _invalidValue:v18 forArgument:@"MCProfileInstallationType"];

      v11 = v17;
    }

    else
    {
      v14 = [(MCProfileServicer *)self lacksArrayEntitlementError:@"com.apple.managedconfiguration.profiled.configurationprofiles" withMemberString:@"CloudLockedRemoval"];
    }

    v11 = v14;
  }

  if (v9)
  {
    v9[2](v9, v11);
  }

LABEL_11:
}

- (void)removePostSetupAutoInstallSetAsideProfileWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessCanRemoveProfilesOutError:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removePostSetupAutoInstallSetAsideProfileWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)removeSetAsideCloudConfigurationProfileWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removeSetAsideCloudConfigurationProfileWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (BOOL)isCloudLockedProfileWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[MCManifest sharedManifest];
  v5 = [v4 installedProfileWithIdentifier:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 isCloudLocked];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)applyRestrictionDictionary:(id)a3 toSystem:(BOOL)a4 overrideRestrictions:(BOOL)a5 appsAndOptions:(id)a6 clientType:(id)a7 clientUUID:(id)a8 localizedClientDescription:(id)a9 localizedWarningMessage:(id)a10 completion:(id)a11
{
  v26 = a4;
  v27 = a5;
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v21 = a11;
  v28 = 0;
  v22 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ClientRestrictions" error:&v28];
  v23 = v28;
  if (v22)
  {
    v24 = +[MCProfileServiceServer sharedServer];
    v25 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v24 applyRestrictionDictionary:v15 toSystem:v26 overrideRestrictions:v27 appsAndOptions:v16 clientType:v17 clientUUID:v18 sender:v25 localizedClientDescription:v19 localizedWarningMessage:v20 completion:v21];
  }

  else if (v21)
  {
    (*(v21 + 2))(v21, 0, 0, v23);
  }
}

- (void)clearRecoveryPasscodeWithCompletion:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Passcode" error:&v9];
  v6 = v9;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    v8 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v7 clearRecoveryPasscodeWithSenderBundleID:v8 completion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)clearPasscodeWithEscrowKeybagData:(id)a3 secret:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16 = 0;
  v10 = [MCSecurePasscodeContextWrapper contextWrapperForSecureSecretData:a4 outError:&v16];
  v11 = v16;
  if (v11)
  {
    v9[2](v9, v11);
  }

  else
  {
    v12 = [v10 externalizedContext];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100057CF0;
    v13[3] = &unk_10011C818;
    v15 = v9;
    v14 = v10;
    [(MCProfileServicer *)self clearPasscodeWithEscrowKeybagData:v8 secretContext:v12 completion:v13];
  }
}

- (void)clearPasscodeWithEscrowKeybagData:(id)a3 secretContext:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Passcode" error:&v15];
  v12 = v15;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    v14 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v13 clearPasscodeWithEscrowKeybagData:v8 secretContext:v9 senderBundleID:v14 completion:v10];
  }

  else if (v10)
  {
    v10[2](v10, v12);
  }
}

- (void)isPasscodeCompliantWithNamedPolicy:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"PasscodeCompliance" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 isPasscodeCompliantWithNamedPolicy:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0, v9);
  }
}

- (void)resetPasscodeMetadataWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"PasscodeMetadata" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 resetPasscodeMetadataWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)removeOrphanedClientRestrictionsWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ClientRestrictions" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removeOrphanedClientRestrictionsWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)managedSystemConfigurationServiceIDsWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"NetworkExtension" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 managedSystemConfigurationServiceIDsWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0, v6);
  }
}

- (void)managedWiFiNetworkNamesWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WiFiNetworks" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 managedWiFiNetworkNamesWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0, v6);
  }
}

- (void)setParametersForSettingsByType:(id)a3 configurationUUID:(id)a4 toSystem:(BOOL)a5 user:(BOOL)a6 credentialSet:(id)a7 completion:(id)a8
{
  v60 = a5;
  v61 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a8;
  v75 = 0;
  LOBYTE(a8) = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v75];
  v62 = v75;
  if (a8)
  {
LABEL_2:
    v16 = [v12 objectForKeyedSubscript:MCRestrictedBoolKey];
    v17 = MCFeatureUSBRestrictedModeAllowed;
    v18 = [v16 objectForKeyedSubscript:MCFeatureUSBRestrictedModeAllowed];
    if (v18)
    {
      v19 = v18;
      v20 = +[MCPasscodeManager sharedManager];
      v21 = [v20 isDeviceLocked];

      if (v21)
      {
        v22 = MCSettingsErrorDomain;
        v54 = v17;
        v23 = MCErrorArray();
        v24 = [NSError MCErrorWithDomain:v22 code:28006 descriptionArray:v23 errorType:MCErrorTypeFatal, v54, 0];

        if (v15)
        {
          v15[2](v15, v24);
        }

        goto LABEL_39;
      }
    }

    else
    {
    }

    v48 = [(MCProfileServicer *)self xpcConnection];
    v49 = [v48 processIdentifier];

    v24 = +[MCProfileServiceServer sharedServer];
    v50 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v24 setParametersForSettingsByType:v12 configurationUUID:v13 toSystem:v60 user:v61 credentialSet:v14 senderPID:v49 sender:v50 completion:v15];

LABEL_39:
    v46 = 0;
    v47 = v62;
    goto LABEL_40;
  }

  v57 = v15;
  v58 = v13;
  v25 = +[NSMutableArray array];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v26 = [v12 allKeys];
  v27 = [v26 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v72;
    v59 = v12;
    v55 = *v72;
    while (2)
    {
      v30 = 0;
      v56 = v28;
      do
      {
        if (*v72 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v71 + 1) + 8 * v30);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_33:

          v12 = v59;
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
      v28 = [v26 countByEnumeratingWithState:&v71 objects:v82 count:16];
      v12 = v59;
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

      v13 = v58;
      v15 = v57;
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
      v53 = [(MCProfileServicer *)self remoteProcessBundleID];
      *buf = 138543618;
      v77 = v53;
      v78 = 2114;
      v79 = v46;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Process %{public}@ needs the entitlement “%{public}@”", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);

    v13 = v58;
    v15 = v57;
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

    v13 = v58;
    v15 = v57;
LABEL_35:
    v47 = v62;
    v24 = v62;
    v46 = 0;
    if (v15)
    {
LABEL_36:
      v15[2](v15, v24);
    }
  }

LABEL_40:
}

- (void)removeBoolSetting:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    v11 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v10 removeBoolSetting:v6 sender:v11 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)removeValueSetting:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    v11 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v10 removeValueSetting:v6 sender:v11 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)storeCertificateData:(id)a3 forIPCUIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Certificates" error:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    [v13 storeCertificateData:v8 forIPCUIdentifier:v9 completion:v10];
  }

  else if (v10)
  {
    v10[2](v10, v12);
  }
}

- (void)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Installation" error:&v14];
  v12 = v14;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    [v13 installProvisioningProfileData:v8 managingProfileIdentifier:v9 completion:v10];
  }

  else if (v10)
  {
    v10[2](v10, v12);
  }
}

- (void)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Removal" error:&v15];
  v12 = v15;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    v14 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v13 removeProvisioningProfileWithUUID:v8 managingProfileIdentifier:v9 sender:v14 completion:v10];
  }

  else if (v10)
  {
    v10[2](v10, 0, v12);
  }
}

- (void)trustedCodeSigningIdentitiesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 trustedCodeSigningIdentitiesWithCompletion:v3];
}

- (void)syncTrustedCodeSigningIdentitiesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[MCProfileServiceServer sharedServer];
  [v4 syncTrustedCodeSigningIdentitiesWithCompletion:v3];
}

- (void)provisiongProfileUUIDsForSignerIdentity:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MCProfileServiceServer sharedServer];
  [v7 provisiongProfileUUIDsForSignerIdentity:v6 completion:v5];
}

- (void)signerIdentityForBundleID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[MCProfileServiceServer sharedServer];
  [v7 signerIdentityForBundleID:v6 completion:v5];
}

- (void)isBundleBlocked:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access" error:&v16];
  v9 = v16;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    v14 = 0;
    v15 = 0;
    v11 = [v10 isBundleBlocked:v6 outHash:&v15 outHashType:&v14];
    v12 = v15;
    v13 = v14;
    v7[2](v7, v11, v12, v13, 0);
  }

  else if (v7)
  {
    (v7)[2](v7, 0, 0, 0, v9);
  }
}

- (void)areBundlesBlocked:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37 = 0;
  LOBYTE(a4) = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled-access" error:&v37];
  v8 = v37;
  v9 = v8;
  if (a4)
  {
    v22 = v8;
    v23 = v7;
    v30 = +[MCProfileServiceServer sharedServer];
    v29 = objc_opt_new();
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v24 = v6;
    obj = v6;
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

    v7 = v23;
    (v23)[2](v23, v29, 0);

    v6 = v24;
    v9 = v22;
  }

  else if (v7)
  {
    v7[2](v7, 0, v8);
  }
}

- (void)notifyStartComplianceTimer:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 notifyStartComplianceTimer:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)notifyHaveSeenComplianceMessageWithLastLockDate:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 notifyHaveSeenComplianceMessageWithLastLockDate:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)recomputeUserComplianceWarningWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 recomputeUserComplianceWarningWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)recomputePerClientUserComplianceWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.usercompliance" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 recomputePerClientUserComplianceWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)setUserInfo:(id)a3 forClientUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v11 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ClientRestrictions" error:&v15];
  v12 = v15;
  if (v11)
  {
    v13 = +[MCProfileServiceServer sharedServer];
    v14 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v13 setUserInfo:v8 forClientUUID:v9 sender:v14 completion:v10];
  }

  else if (v10)
  {
    v10[2](v10, v12);
  }
}

- (void)removeExpiredProfilesWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Removal" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 removeExpiredProfilesWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)storeProfileData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"DEPInstallation" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 storeProfileData:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)storedProfileDataWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"DEPInstallation" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 storedProfileDataWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0, v6);
  }
}

- (void)markStoredProfileAsInstalledWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.configurationprofiles" containingString:@"DEPInstallation" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 markStoredProfileAsInstalledWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)rereadManagedAppAttributesWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"ManagedApplications" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 rereadManagedAppAttributesWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)reducedMachineInfoDataWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"MachineInfo" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 reducedMachineInfoDataWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0, v6);
  }
}

- (void)cloudConfigurationMachineInfoDataWithAdditionalInfo:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"MachineInfo" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 cloudConfigurationMachineInfoDataWithAdditionalInfo:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0, v9);
  }
}

- (void)cloudConfigurationStoreDetails:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 cloudConfigurationStoreDetails:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)cloudConfigurationStoreDetailsForPendingMigration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 cloudConfigurationStoreDetailsForPendingMigration:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:(id)a3
{
  v4 = a3;
  v11 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"CloudConfiguration" error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = +[MCProfileServiceServer sharedServer];
    [v8 restoreCloudConfigAndMDMProfileFromSetAsideDataWithCompletion:v4];
  }

  else if (v6)
  {
    v9 = _MCLogObjects[2];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Remote process doesn't have the right entitlment!", v10, 2u);
    }

    if (v4)
    {
      v4[2](v4, v7);
    }
  }
}

- (void)createActivationLockBypassCodeWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ActivationLock" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 createActivationLockBypassCodeWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0, v6);
  }
}

- (void)storeActivationRecord:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"ActivationRecord" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 storeActivationRecord:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)setUserBookmarks:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Safari" error:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [(MCProfileServicer *)self xpcConnection];
    v11 = [v10 processIdentifier];

    v12 = +[MCProfileServiceServer sharedServer];
    v13 = [(MCProfileServicer *)self remoteProcessBundleID];
    [v12 setUserBookmarks:v6 senderPID:v11 sender:v13 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)setupAssistantDidFinishCompletion:(id)a3
{
  v3 = a3;
  v4 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Setup Assistant finished.", buf, 2u);
  }

  v5 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-SetupAssistantFinished"];
  v6 = +[MDMClient sharedClient];
  v7 = +[MDMConfiguration sharedConfiguration];
  v8 = [v7 accessRights];

  v9 = +[MDMCloudConfiguration sharedConfiguration];
  v10 = [v9 isSupervised];

  v11 = +[NSFileManager defaultManager];
  v12 = MDMFilePath();
  v13 = [v11 fileExistsAtPath:v12 isDirectory:0];

  v14 = v8 & 4;
  v15 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    v35 = v13;
    v36 = 1024;
    v37 = v10;
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
  v21 = [v20 MAIDUsername];

  v22 = +[MDMCloudConfiguration sharedConfiguration];
  v23 = [v22 hasMAIDCredential];

  v24 = +[MDMCloudConfiguration sharedConfiguration];
  v25 = [v24 alreadySignedIntoFaceTime];

  if (v21 && v23 && (v25 & 1) == 0)
  {
    v26 = +[MCProfileServiceServer sharedServer];
    [v26 signIntoFaceTimeWithUsername:v21];
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

  if (v3)
  {
    v3[2](v3, 0);
  }
}

- (void)validateAppBundleIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.provisioningprofiles" containingString:@"Validation" error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Validate app bundle IDs: %{public}@", buf, 0xCu);
    }

    v11 = +[MCProfileServiceServer sharedServer];
    [v11 validateAppBundleIDs:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)recomputeProfileRestrictionsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.migration" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 recomputeProfileRestrictionsWithCompletionBlock:v4];
  }

  else if (v4)
  {
    v4[2](v4, v6);
  }
}

- (void)shutDownWithCompletion:(id)a3
{
  v4 = a3;
  v15 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasBooleanEntitlement:@"com.apple.managedconfiguration.profiled.shutdown" error:&v15];
  v6 = v15;
  if (v5)
  {
    xpc_transaction_exit_clean();
    if (v4)
    {
      v7 = dispatch_get_global_queue(0, 0);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10005AFD8;
      v10[3] = &unk_10011B800;
      v8 = &v11;
      v11 = v4;
      dispatch_async(v7, v10);
LABEL_6:
    }
  }

  else if (v4)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10005AFC4;
    block[3] = &unk_10011B918;
    v8 = &v14;
    v14 = v4;
    v13 = v6;
    dispatch_async(v9, block);

    v7 = v13;
    goto LABEL_6;
  }
}

- (void)showFeaturePromptForSetting:(id)a3 configurationUUID:(id)a4 promptOptions:(id)a5 promptIdentifier:(id)a6 completion:(id)a7
{
  v10 = a5;
  v11 = a6;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10005B2AC;
  v30[3] = &unk_10011C8B8;
  v12 = a7;
  v31 = v12;
  v13 = objc_retainBlock(v30);
  v29 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"UserSettings" error:&v29];
  v15 = v29;
  if (v14)
  {
    v16 = +[MCUserNotificationManager sharedManager];
    v23 = v11;
    v22 = [(MCProfileServicer *)self prefixedFeaturePromptIdentifierForIdentifier:v11];
    v26 = [v10 objectForKeyedSubscript:kMCFeaturePromptTitleKey];
    v25 = [v10 objectForKeyedSubscript:kMCFeaturePromptMessageKey];
    v24 = MCLocalizedString();
    v17 = MCLocalizedString();
    v18 = [v10 objectForKeyedSubscript:kMCFeaturePromptShowAlwaysAllowButtonKey];
    v19 = [v18 BOOLValue];
    if (v19)
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
    if (v19)
    {
    }

    v11 = v23;
  }

  else
  {
    (v13[2])(v13, 0, v15);
  }
}

- (void)cancelFeaturePromptWithIdentifier:(id)a3 completion:(id)a4
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005B6CC;
  v17[3] = &unk_10011BE40;
  v6 = a4;
  v18 = v6;
  v7 = a3;
  v8 = objc_retainBlock(v17);
  if (!v7)
  {
    v9 = MCFeaturePromptErrorDomain;
    v10 = MCErrorArray();
    v11 = [NSError MCErrorWithDomain:v9 code:50002 descriptionArray:v10 errorType:MCErrorTypeFatal, 0];
    (v8[2])(v8, v11);
  }

  v12 = +[MCUserNotificationManager sharedManager];
  v13 = [(MCProfileServicer *)self prefixedFeaturePromptIdentifierForIdentifier:v7];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005B7AC;
  v15[3] = &unk_10011B800;
  v16 = v8;
  v14 = v8;
  [v12 cancelNotificationsWithIdentifier:v13 completionBlock:v15];
}

- (id)prefixedFeaturePromptIdentifierForIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [@"feature-prompt:" stringByAppendingString:?];
  }

  else
  {
    v4 = @"feature-prompt:";
  }

  return v4;
}

- (void)createMDMUnlockTokenIfNeededWithPasscode:(id)a3 completion:(id)a4
{
  v6 = a4;
  v13 = 0;
  v7 = [MCExtractablePasscodeContextWrapper contextWrapperForExtractablePasscode:a3 outError:&v13];
  v8 = v13;
  if (v8)
  {
    v6[2](v6, v8);
  }

  else
  {
    v9 = [v7 externalizedContext];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10005BC30;
    v10[3] = &unk_10011C818;
    v12 = v6;
    v11 = v7;
    [(MCProfileServicer *)self createMDMUnlockTokenIfNeededWithPasscodeContext:v9 completion:v10];
  }
}

- (void)createMDMUnlockTokenIfNeededWithPasscodeContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = 0;
  v8 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.set" containingString:@"Passcode" error:&v11];
  v9 = v11;
  if (v8)
  {
    v10 = +[MCProfileServiceServer sharedServer];
    [v10 createMDMUnlockTokenIfNeededWithPasscodeContext:v6 completion:v7];
  }

  else if (v7)
  {
    v7[2](v7, v9);
  }
}

- (void)monitorEnrollmentStateWithPersonaID:(id)a3
{
  v4 = a3;
  v5 = [MCInteractionClient alloc];
  v6 = [(MCProfileServicer *)self xpcConnection];
  v8 = [(MCInteractionClient *)v5 initWithXPCClientConnection:v6];

  v7 = +[MCProfileServiceServer sharedServer];
  [v7 monitorEnrollmentStateForClient:v8 personaID:v4];
}

- (void)managingOrganizationInformationWithCompletion:(id)a3
{
  v4 = a3;
  v8 = 0;
  v5 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"MDMInfo" error:&v8];
  v6 = v8;
  if (v5)
  {
    v7 = +[MCProfileServiceServer sharedServer];
    [v7 managingOrganizationInformationWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4, 0, v6);
  }
}

- (void)unstageMDMEnrollmentInfoForPairingWatchWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (v4)
  {
    if (v6)
    {
      v6[2](v6, v4);
    }
  }

  else
  {
    v5 = +[MCProfileServiceServer sharedServer];
    [v5 unstageMDMEnrollmentInfoForPairingWatchWithCompletion:v6];
  }
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (v4)
  {
    if (v6)
    {
      v6[2](v6, 0, v4);
    }
  }

  else
  {
    v5 = +[MCProfileServiceServer sharedServer];
    [v5 fetchStagedMDMEnrollmentDataForPairingWatchWithCompletion:v6];
  }
}

- (void)fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (v7)
  {
    if (v6)
    {
      v6[2](v6, 0, v7);
    }
  }

  else
  {
    v8 = +[MCProfileServiceServer sharedServer];
    [v8 fetchStagedMDMEnrollmentDataForPairingWatchWithPairingToken:v9 completion:v6];
  }
}

- (void)fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:(id)a3
{
  v6 = a3;
  v4 = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (v4)
  {
    if (v6)
    {
      v6[2](v6, 0, v4);
    }
  }

  else
  {
    v5 = +[MCProfileServiceServer sharedServer];
    [v5 fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:v6];
  }
}

- (void)applyPairingWatchMDMEnrollmentData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (v8)
  {
    if (v7)
    {
      v7[2](v7, v8);
    }
  }

  else
  {
    v9 = [(MCProfileServicer *)self remoteProcessBundleID];
    if (!v9)
    {
      v10 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not retrieve the bundle ID of the calling process. Not marking profile's installer.", v12, 2u);
      }
    }

    v11 = +[MCProfileServiceServer sharedServer];
    [v11 applyPairingWatchMDMEnrollmentData:v6 source:v9 completion:v7];
  }
}

- (void)updateMDMEnrollmentInfoForPairingWatch:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(MCProfileServicer *)self _missingWatchMDMEnrollmentEntitlementError];
  if (v7)
  {
    if (v6)
    {
      v6[2](v6, 0, v7);
    }
  }

  else
  {
    v8 = +[MCProfileServiceServer sharedServer];
    [v8 updateMDMEnrollmentInfoForPairingWatch:v9 completion:v6];
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

- (void)effectiveBoolValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveBoolValueForWatchSetting:v10 pairingID:v11 pairingDataStore:v12 completion:v13];
  }

  else if (v13)
  {
    v13[2](v13, 0, v15);
  }
}

- (void)effectiveValueForWatchSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveValueForWatchSetting:v10 pairingID:v11 pairingDataStore:v12 completion:v13];
  }

  else if (v13)
  {
    v13[2](v13, 0, v15);
  }
}

- (void)effectiveValuesForWatchIntersectionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveValuesForWatchIntersectionSetting:v10 pairingID:v11 pairingDataStore:v12 completion:v13];
  }

  else if (v13)
  {
    v13[2](v13, 0, v15);
  }
}

- (void)effectiveValuesForWatchUnionSetting:(id)a3 pairingID:(id)a4 pairingDataStore:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17 = 0;
  v14 = [(MCProfileServicer *)self remoteProcessHasEntitlementArray:@"com.apple.managedconfiguration.profiled.get" containingString:@"WatchSettings" error:&v17];
  v15 = v17;
  if (v14)
  {
    v16 = +[MCProfileServiceServer sharedServer];
    [v16 effectiveValuesForWatchUnionSetting:v10 pairingID:v11 pairingDataStore:v12 completion:v13];
  }

  else if (v13)
  {
    v13[2](v13, 0, v15);
  }
}

- (void)_debug_scheduleBackgroundTask:(id)a3 interval:(double)a4 tolerance:(double)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = +[MCProfileServiceServer sharedServer];
  [v11 _debug_scheduleBackgroundTask:v10 interval:v9 tolerance:a4 completion:a5];
}

@end