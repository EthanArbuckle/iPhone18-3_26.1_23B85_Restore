@interface MCMigrator
+ (BOOL)payloadHasHardwareBoundKey:(id)key;
+ (id)stringWithContext:(int)context;
- (BOOL)_applyAccountTagsToProfile:(id)profile;
- (BOOL)_copyAlmostAtomicallyItemAtPath:(id)path toPath:(id)toPath error:(id *)error;
- (BOOL)_isDirectoryEmptyAtPath:(id)path;
- (BOOL)_isLegacyProfileStoragePresent;
- (BOOL)_isMultiUserMode;
- (BOOL)_shouldAttemptToMigrateLegacyProfileStorage;
- (BOOL)_shouldIgnoreCloudConfigFromBackup;
- (MCMigrator)init;
- (id)_attributeDictionaryForProfileStorageWithPosixPermissions:(unint64_t)permissions;
- (id)_generatedManifestIfNeededFromOrderedProfiles:(id)profiles hiddenProfiles:(id)hiddenProfiles existingManifest:(id)manifest;
- (id)_lastSystemMigratedBuildVersion;
- (id)_lastUserMigratedBuildVersion;
- (id)_profilesFromManifestAtPath:(id)path;
- (id)_removeOrphanedManifestEntriesFromManifestInDirectory:(id)directory;
- (id)_updateProfileRestrictionsForProfileRestrictions:(id)restrictions;
- (id)systemMetadataDictionary;
- (id)userMetadataDictionary;
- (void)_applyDefaultSettings;
- (void)_applyImpliedSettings;
- (void)_checkValidUserEnrollment;
- (void)_cleanUpAppConfiguration;
- (void)_cleanupCloudConfigForReturnToService;
- (void)_cleanupForReturnToServiceIfNeeded;
- (void)_correctCloudConfigurationIfNecessary;
- (void)_correctInstallOptionsOnProfileStubs;
- (void)_correctMDMConfigurationFile;
- (void)_createDirectories;
- (void)_createDirectoryAtPath:(id)path;
- (void)_createDirectoryAtPath:(id)path attributes:(id)attributes;
- (void)_createStubs;
- (void)_createSystemGroupContainerAndMoveFiles;
- (void)_createSystemProfileStorageDirectoryMigratingFromLegacyStorageIfNecessary;
- (void)_fixDirectoryAtPath:(id)path permissions:(id)permissions;
- (void)_fixManifestFromStubsIfNecessary;
- (void)_fixManifestFromStubsIfNecessaryWithStubPath:(id)path manifestPath:(id)manifestPath;
- (void)_fixPermissionsOnTheSystemProfileLibraryDirectoryAndContents;
- (void)_migrateBoolRestrictions:(id)restrictions withAppID:(id)d forKey:(id)key valuesToRestrictions:(id)toRestrictions currentBoolUserSettings:(id)settings;
- (void)_migrateBoolValueToFeature:(id)feature withAppID:(id)d forKey:(id)key synchronize:(BOOL)synchronize;
- (void)_migrateClientRestrictions;
- (void)_migrateExtensibleSSO;
- (void)_migrateLegacySystemProfileStorage;
- (void)_migrateLostModeLastLocationRequestDate;
- (void)_migrateManifestLocation;
- (void)_migrateOTAProfiles;
- (void)_migratePasscodeDidRestore:(BOOL)restore passcodeWasSet:(BOOL)set historyRequired:(BOOL)required;
- (void)_migrateProfileStubsForNetworkExtension;
- (void)_migrateSettings;
- (void)_migrateSharedDeviceConfiguration;
- (void)_migrateSupervisionSettings;
- (void)_migrateValueRestrictions:(id)restrictions withAppID:(id)d forKey:(id)key keysToRestricitons:(id)restricitons currentValueUserSettings:(id)settings;
- (void)_moveFilesToPublicDirectories;
- (void)_moveSignerCertificatesInProfileStubDictionary:(id)dictionary;
- (void)_profilesFromStubsAtPath:(id)path orderedProfiles:(id *)profiles hiddenProfiles:(id *)hiddenProfiles;
- (void)_removeCloudConfigAndAutoInstallProfile;
- (void)_removeCloudConfigAndMDMProfileIfNeeded;
- (void)_removeDuplicatedHiddenIdentifiers;
- (void)_removeExistingSystemProfileStorageDirectoryBlockingMigration;
- (void)_removeHardwareBoundPayloads;
- (void)_removeInvalidOptionsFromLegacyCloudConfiguration;
- (void)_removeLegacyAPNConfigurations;
- (void)_removeLegacyProfileStorageDirectory;
- (void)_removeOSXServerPayloadAccount;
- (void)_removeOriginalCopies;
- (void)_removeOrphanedManifestEntries;
- (void)_removeSupervisionProfiles;
- (void)_removeUnmanageableApps;
- (void)_removeUnusedManifestArrays;
- (void)_removeiPCUCertificates;
- (void)_sendCloudConfigurationChangedNotificationIfWeMigratedLegacyProfileStorage;
- (void)_setAttributesOnSystemProfileStorageDirectory;
- (void)_tagIMAPAccountsWithProfileAndPayloadProperties;
- (void)_tagManagedAccounts;
- (void)_tellAMFIIfWeAreSupervised;
- (void)_transferInstallationDatesFromOriginalProfiles;
- (void)_transferRemovalPasswordsFromOriginalProfiles;
- (void)_transferSignerCertificates;
- (void)_transferTagsToProfileStubs;
- (void)_updateClientRestrictions;
- (void)_updateProfileRestrictions;
- (void)_validateCloudConfiguration;
- (void)_wakeDaemonsPostMigration;
- (void)migrateWithPostMigrationTaskQueue:(id)queue;
- (void)setSystemMetadataDictionary:(id)dictionary;
- (void)setUserMetadataDictionary:(id)dictionary;
@end

@implementation MCMigrator

- (MCMigrator)init
{
  v8.receiver = self;
  v8.super_class = MCMigrator;
  v2 = [(MCMigrator *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    fileManager = v2->_fileManager;
    v2->_fileManager = v3;

    v5 = objc_opt_new();
    notifier = v2->_notifier;
    v2->_notifier = v5;

    v2->_systemProfileStorageWasMigratedFromLegacyStorage = 0;
  }

  return v2;
}

- (id)systemMetadataDictionary
{
  v2 = MCSystemMetadataFilePath();
  v3 = [NSData dataWithContentsOfFile:v2];
  v4 = [NSPropertyListSerialization MCSafePropertyListWithData:v3 options:1 format:0 error:0];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = +[NSMutableDictionary dictionary];

    v4 = v5;
  }

  return v4;
}

- (void)setSystemMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = MCSystemMetadataFilePath();
  [dictionaryCopy MCWriteToBinaryFile:v4];
}

- (id)userMetadataDictionary
{
  v2 = MCUserMetadataFilePath();
  v3 = [NSData dataWithContentsOfFile:v2];
  v4 = [NSPropertyListSerialization MCSafePropertyListWithData:v3 options:1 format:0 error:0];

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = +[NSMutableDictionary dictionary];

    v4 = v5;
  }

  return v4;
}

- (void)setUserMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = MCUserMetadataFilePath();
  [dictionaryCopy MCWriteToBinaryFile:v4];
}

- (id)_lastSystemMigratedBuildVersion
{
  systemMetadataDictionary = [(MCMigrator *)self systemMetadataDictionary];
  v3 = [systemMetadataDictionary objectForKey:kMCMetaLastMigratedBuildKey];

  return v3;
}

- (id)_lastUserMigratedBuildVersion
{
  userMetadataDictionary = [(MCMigrator *)self userMetadataDictionary];
  v3 = [userMetadataDictionary objectForKey:kMCMetaLastMigratedBuildKey];

  return v3;
}

- (void)_migratePasscodeDidRestore:(BOOL)restore passcodeWasSet:(BOOL)set historyRequired:(BOOL)required
{
  setCopy = set;
  restoreCopy = restore;
  v9 = _MCLogObjects[12];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrating passcode...", buf, 2u);
  }

  if (restoreCopy && setCopy)
  {
    if (MKBGetDeviceLockState() == 3)
    {
      fileManager = +[NSData data];
      v11 = MCBackupContainsPasscodeFilePath();
      [fileManager writeToFile:v11 atomically:1];
    }

    else
    {
      fileManager = [(MCMigrator *)self fileManager];
      v11 = MCBackupContainsPasscodeFilePath();
      [fileManager removeItemAtPath:v11 error:0];
    }
  }

  if (!required)
  {
    v12 = +[MCPasscodeManagerWriter sharedManager];
    [v12 clearPasscodeHistory];
  }

  v13 = +[MCPasscodeManagerWriter sharedManager];
  [v13 migratePasscodeMetadata];

  v14 = _MCLogObjects[12];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Completed migrating passcode.", v15, 2u);
  }
}

- (BOOL)_isMultiUserMode
{
  v2 = MCCloudConfigurationDetailsFilePath();
  v3 = [NSMutableDictionary dictionaryWithContentsOfFile:v2];

  v4 = [v3 objectForKeyedSubscript:kCCIsMultiUserKey];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)_removeiPCUCertificates
{
  v3 = _MCLogObjects[12];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing iPCU associations...", buf, 2u);
  }

  v4 = MCiPCUKeychainMapPath();
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
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

        v11 = [v6 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        [MCKeychain removeItemWithPersistentID:v11 useSystemKeychain:1];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  fileManager = [(MCMigrator *)self fileManager];
  v13 = MCiPCUKeychainMapPath();
  [fileManager removeItemAtPath:v13 error:0];

  v14 = _MCLogObjects[12];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Finished removing iPCU associations.", buf, 2u);
  }
}

- (void)_removeOSXServerPayloadAccount
{
  v2 = +[MCManifest sharedManifest];
  [v2 allInstalledProfileIdentifiers];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v29 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v29)
  {
    v3 = *v37;
    v24 = *v37;
    v25 = v2;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v37 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v36 + 1) + 8 * i);
        v6 = objc_autoreleasePoolPush();
        v7 = [v2 installedProfileWithIdentifier:v5];
        v8 = v7;
        if (v7)
        {
          v27 = v5;
          v30 = v6;
          createHandler = [v7 createHandler];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v31 = v8;
          payloads = [v8 payloads];
          v11 = [payloads countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (!v11)
          {
            goto LABEL_23;
          }

          v12 = v11;
          v28 = i;
          v13 = 0;
          v14 = *v33;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(payloads);
              }

              v16 = *(*(&v32 + 1) + 8 * j);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                uUID = [v16 UUID];
                [createHandler convertPayloadWithUUIDToUnknownPayload:uUID];

                v18 = _MCLogObjects[12];
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v19 = v18;
                  uUID2 = [v16 UUID];
                  *buf = 138543362;
                  v41 = uUID2;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Removed macOS Server Accounts payload with UUID: %{public}@", buf, 0xCu);
                }

                v13 = 1;
              }
            }

            v12 = [payloads countByEnumeratingWithState:&v32 objects:v42 count:16];
          }

          while (v12);

          v3 = v24;
          v2 = v25;
          i = v28;
          if (v13)
          {
            if ([v31 isInstalledForUser])
            {
              MCUserProfileStorageDirectory();
            }

            else
            {
              MCSystemProfileStorageDirectory();
            }
            payloads = ;
            v21 = [v27 MCHashedFilenameWithExtension:{@"stub", v24, v25}];
            v22 = [payloads stringByAppendingPathComponent:v21];

            profile = [createHandler profile];
            [profile writeStubToPath:v22];

            i = v28;
LABEL_23:
          }

          v6 = v30;
          v8 = v31;
        }

        objc_autoreleasePoolPop(v6);
      }

      v29 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v29);
  }
}

- (void)_removeHardwareBoundPayloads
{
  v78 = +[MCManifest sharedManifest];
  [v78 allInstalledProfileIdentifiers];
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v2 = v102 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v99 objects:v110 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v100;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v100 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [v78 installedProfileWithIdentifier:*(*(&v99 + 1) + 8 * v6)];
      v8 = [v7 payloadsWithClass:objc_opt_class()];
      v9 = [v8 count];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v99 objects:v110 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v7 = 0;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  payloads = [v7 payloads];
  v11 = [payloads countByEnumeratingWithState:&v95 objects:v109 count:16];
  v12 = &selRef_markStoredProfileAsInstalled;
  v68 = v7;
  if (v11)
  {
    v13 = v11;
    v14 = *v96;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v96 != v14)
        {
          objc_enumerationMutation(payloads);
        }

        if ([MCMigrator payloadHasHardwareBoundKey:*(*(&v95 + 1) + 8 * i)])
        {
          v16 = _MCLogObjects[12];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Unenrolling from MDM because identity was hardware-bound", buf, 2u);
          }

          v17 = +[MCInstaller sharedInstaller];
          identifier = [v7 identifier];
          [v17 removeProfileWithIdentifier:identifier installationType:objc_msgSend(v7 source:{"installType"), @"Hardware-bound Profile Removal"}];

          allInstalledProfileIdentifiers = [v78 allInstalledProfileIdentifiers];

          v67 = 1;
          v2 = allInstalledProfileIdentifiers;
          goto LABEL_22;
        }
      }

      v13 = [payloads countByEnumeratingWithState:&v95 objects:v109 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v67 = 0;
LABEL_22:

  context = objc_autoreleasePoolPush();
  v70 = +[NSMutableArray array];
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v2;
  v72 = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
  if (v72)
  {
    v71 = *v92;
    v20 = kAppSSOKerberosExtensionID;
    v21 = &MCRestrictedBoolValueKey_ptr;
    v75 = kAppSSOKerberosExtensionID;
    do
    {
      v22 = 0;
      do
      {
        if (*v92 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v74 = v22;
        v23 = [v78 installedProfileWithIdentifier:*(*(&v91 + 1) + 8 * v22)];
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        payloads2 = [v23 payloads];
        v25 = [payloads2 countByEnumeratingWithState:&v87 objects:v107 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v88;
          v73 = v23;
          v76 = *v88;
          v77 = payloads2;
          while (2)
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v88 != v27)
              {
                objc_enumerationMutation(payloads2);
              }

              v29 = *(*(&v87 + 1) + 8 * j);
              if ([v12 + 349 payloadHasHardwareBoundKey:v29])
              {
                v23 = v73;
                [v70 addObject:v73];
                goto LABEL_54;
              }

              v30 = v21[56];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = v29;
                esso_extensionIdentifier = [v31 esso_extensionIdentifier];
                v33 = [esso_extensionIdentifier isEqualToString:v20];

                if (v33)
                {
                  esso_extensionData = [v31 esso_extensionData];
                  v35 = [esso_extensionData objectForKeyedSubscript:@"certificateUUID"];

                  if (v35)
                  {
                    v85 = 0u;
                    v86 = 0u;
                    v83 = 0u;
                    v84 = 0u;
                    allInstalledProfileIdentifiers2 = [v78 allInstalledProfileIdentifiers];
                    v37 = [allInstalledProfileIdentifiers2 countByEnumeratingWithState:&v83 objects:v106 count:16];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = *v84;
LABEL_38:
                      v40 = 0;
                      while (1)
                      {
                        if (*v84 != v39)
                        {
                          objc_enumerationMutation(allInstalledProfileIdentifiers2);
                        }

                        v41 = [v78 installedProfileWithIdentifier:*(*(&v83 + 1) + 8 * v40)];
                        v42 = [v41 payloadWithUUID:v35];
                        if (v42)
                        {
                          break;
                        }

                        if (v38 == ++v40)
                        {
                          v38 = [allInstalledProfileIdentifiers2 countByEnumeratingWithState:&v83 objects:v106 count:16];
                          v12 = &selRef_markStoredProfileAsInstalled;
                          if (v38)
                          {
                            goto LABEL_38;
                          }

                          goto LABEL_47;
                        }
                      }

                      v43 = v42;
                      v12 = &selRef_markStoredProfileAsInstalled;
                      if (![MCMigrator payloadHasHardwareBoundKey:v42])
                      {

                        goto LABEL_47;
                      }

                      v23 = v73;
                      [v70 addObject:v73];

                      v20 = v75;
                      v21 = &MCRestrictedBoolValueKey_ptr;
                      payloads2 = v77;
                      goto LABEL_54;
                    }

LABEL_47:

                    v20 = v75;
                    v27 = v76;
                    v21 = &MCRestrictedBoolValueKey_ptr;
                    payloads2 = v77;
                  }
                }
              }
            }

            v26 = [payloads2 countByEnumeratingWithState:&v87 objects:v107 count:16];
            v23 = v73;
            if (v26)
            {
              continue;
            }

            break;
          }
        }

LABEL_54:

        v22 = v74 + 1;
      }

      while ((v74 + 1) != v72);
      v44 = [obj countByEnumeratingWithState:&v91 objects:v108 count:16];
      v72 = v44;
    }

    while (v44);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v45 = v70;
  v46 = [v45 countByEnumeratingWithState:&v79 objects:v105 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v80;
    do
    {
      for (k = 0; k != v47; k = k + 1)
      {
        if (*v80 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v79 + 1) + 8 * k);
        identifier2 = [v50 identifier];
        v52 = _MCLogObjects[12];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v104 = identifier2;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Removing profile with PayloadIdentifier %@ because it referenced a hardware-bound key", buf, 0xCu);
        }

        v53 = +[MCInstaller sharedInstaller];
        [v53 removeProfileWithIdentifier:identifier2 installationType:objc_msgSend(v50 source:{"installType"), @"Hardware-bound Profile Removal"}];
      }

      v47 = [v45 countByEnumeratingWithState:&v79 objects:v105 count:16];
    }

    while (v47);
  }

  objc_autoreleasePoolPop(context);
  if (v67)
  {
    v54 = MCCloudConfigurationDetailsFilePath();
    v55 = [NSMutableDictionary dictionaryWithContentsOfFile:v54];

    if (v55)
    {
      v56 = [v55 objectForKeyedSubscript:kCCConfigurationSourceKey];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v56 intValue] == 1)
      {
        v57 = _MCLogObjects[12];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Removing cloud configuration for DEP device that was unenrolled due to hardware-bound key", buf, 2u);
        }

        v58 = +[NSFileManager defaultManager];
        v59 = MCCloudConfigurationDetailsFilePath();
        [v58 removeItemAtPath:v59 error:0];

        v60 = +[NSFileManager defaultManager];
        v61 = MCLegacyCloudConfigurationDetailsFilePath();
        [v60 removeItemAtPath:v61 error:0];

        MCSendCloudConfigurationDetailsChangedNotification();
        v62 = +[NSFileManager defaultManager];
        v63 = MCPostSetupAutoInstallProfilePathNF();
        [v62 removeItemAtPath:v63 error:0];

        v64 = +[NSFileManager defaultManager];
        v65 = MCLegacyPostSetupAutoInstallProfilePath();
        [v64 removeItemAtPath:v65 error:0];
      }
    }
  }
}

+ (BOOL)payloadHasHardwareBoundKey:(id)key
{
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isHardwareBound = [keyCopy isHardwareBound];
  }

  else
  {
    isHardwareBound = 0;
  }

  return isHardwareBound;
}

+ (id)stringWithContext:(int)context
{
  if (context > 3)
  {
    return @"Unknown!";
  }

  else
  {
    return *(&off_10011C3C8 + context);
  }
}

- (void)_tellAMFIIfWeAreSupervised
{
  v2 = MCCloudConfigurationDetailsFilePath();
  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:kCCIsSupervisedKey];
    bOOLValue = [v4 BOOLValue];

    if (bOOLValue)
    {
      v6 = _MCLogObjects[12];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Informing AMFI that this device is supervised.", v7, 2u);
      }

      [MCCloudConfigurationWriter setAMFISupervisionFromCloudConfiguration:v3];
    }
  }
}

- (void)_cleanupForReturnToServiceIfNeeded
{
  v3 = objc_opt_new();
  shouldDoRapidReturnToService = [v3 shouldDoRapidReturnToService];

  v5 = _MCLogObjects[12];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (shouldDoRapidReturnToService)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Cleaning up for Rapid Return to Service...", buf, 2u);
    }

    [(MCMigrator *)self _cleanupCloudConfigForReturnToService];
    v7 = +[MCInstaller sharedInstaller];
    verifiedMDMProfileIdentifierWithCleanUp = [v7 verifiedMDMProfileIdentifierWithCleanUp];

    if (!verifiedMDMProfileIdentifierWithCleanUp)
    {
      goto LABEL_21;
    }

    *buf = 0;
    v28 = buf;
    v29 = 0x2020000000;
    v30 = 1;
    v9 = dispatch_semaphore_create(0);
    v10 = +[MDMClient sharedClient];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100031D90;
    v24[3] = &unk_10011BFA0;
    v26 = buf;
    v11 = v9;
    v25 = v11;
    [v10 preserveAppsWithCompletion:v24];

    v12 = dispatch_time(0, 10000000000);
    dispatch_semaphore_wait(v11, v12);
    if (v28[24] == 1)
    {
      v13 = _MCLogObjects[12];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "MCCleanupMigrator: preserveAppsWithCompletion timed out", v23, 2u);
      }
    }

    v14 = _MCLogObjects[12];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Cleaning up MDM profile for Return to Service.", v23, 2u);
    }

    v15 = +[MCInstaller sharedInstaller];
    [v15 removeProfileWithIdentifier:verifiedMDMProfileIdentifierWithCleanUp installationType:1 source:@"Return to Service Enrollment Profile Removal"];

    v16 = _MCLogObjects[12];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Removed Return to Service MDM profile", v23, 2u);
    }

    v17 = MAEDeactivateDeviceWithError();
    v18 = 0;
    v19 = _MCLogObjects[12];
    if (v17)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        v20 = "MCCleanupMigrator: Deactivated the device";
        v21 = v19;
        v22 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v21, v22, v20, v23, 2u);
      }
    }

    else if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      v20 = "MCCleanupMigrator: Failed to deactivate the device";
      v21 = v19;
      v22 = OS_LOG_TYPE_ERROR;
      goto LABEL_19;
    }

    _Block_object_dispose(buf, 8);
LABEL_21:

    return;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Not doing Rapid Return to Service, returning...", buf, 2u);
  }
}

- (void)_removeCloudConfigAndAutoInstallProfile
{
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Removing cloud config details.", buf, 2u);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = MCCloudConfigurationDetailsFilePath();
  v5 = MCRemoveFileIfExists();
  v6 = 0;

  if ((v5 & 1) == 0)
  {
    v7 = _MCLogObjects[12];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "MCCleanupMigrator: Failed to remove cloud config with error: %{public}@.", buf, 0xCu);
    }

    v6 = 0;
  }

  v8 = MCLegacyCloudConfigurationDetailsFilePath();
  v9 = MCRemoveFileIfExists();
  v10 = v6;

  if ((v9 & 1) == 0)
  {
    v11 = _MCLogObjects[12];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "MCCleanupMigrator: Failed to remove legacy cloud config with error: %{public}@.", buf, 0xCu);
    }

    v10 = 0;
  }

  MCSendCloudConfigurationDetailsChangedNotification();
  v12 = MCPostSetupAutoInstallProfilePathNF();
  v13 = MCRemoveFileIfExists();
  v14 = v10;

  if ((v13 & 1) == 0)
  {
    v15 = _MCLogObjects[12];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "MCCleanupMigrator: Failed to remove post Setup auto install profile with error: %{public}@.", buf, 0xCu);
    }

    v14 = 0;
  }

  v16 = MCLegacyPostSetupAutoInstallProfilePath();
  v17 = MCRemoveFileIfExists();
  v18 = v14;

  if ((v17 & 1) == 0)
  {
    v19 = _MCLogObjects[12];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MCCleanupMigrator: Failed to remove legacy post Setup auto install profile with error: %{public}@.", buf, 0xCu);
    }

    v18 = 0;
  }
}

- (void)_removeCloudConfigAndMDMProfileIfNeeded
{
  _shouldIgnoreCloudConfigFromBackup = [(MCMigrator *)self _shouldIgnoreCloudConfigFromBackup];
  if (_shouldIgnoreCloudConfigFromBackup)
  {
    [(MCMigrator *)self _removeCloudConfigAndAutoInstallProfile];
  }

  v4 = +[MCInstaller sharedInstaller];
  verifiedMDMProfileIdentifierWithCleanUp = [v4 verifiedMDMProfileIdentifierWithCleanUp];

  if (verifiedMDMProfileIdentifierWithCleanUp)
  {
    v6 = [MCManifest installedProfileWithIdentifier:verifiedMDMProfileIdentifierWithCleanUp];
    if (!v6)
    {
      v12 = _MCLogObjects[12];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 138543362;
        v18 = verifiedMDMProfileIdentifierWithCleanUp;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MCCleanupMigrator: could not create MDM profile from identifier %{public}@", &v17, 0xCu);
      }

      goto LABEL_24;
    }

    v7 = [v6 payloadsWithClass:objc_opt_class()];
    v8 = v7;
    if (!v7)
    {
      v10 = _MCLogObjects[12];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v17) = 0;
        v11 = "MCCleanupMigrator: payloadsWithClass: unexpectedly returned nil for MDM profile";
        goto LABEL_19;
      }

LABEL_23:

LABEL_24:
      goto LABEL_25;
    }

    v9 = [v7 count];
    if (v9 != 1)
    {
      if (v9)
      {
        v10 = _MCLogObjects[12];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17) = 0;
          v11 = "MCCleanupMigrator: MDM profile contains more than one MDM payload";
          goto LABEL_19;
        }
      }

      else
      {
        v10 = _MCLogObjects[12];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v17) = 0;
          v11 = "MCCleanupMigrator: MDM profile contains no MDM payloads";
LABEL_19:
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v11, &v17, 2u);
          goto LABEL_23;
        }
      }

      goto LABEL_23;
    }

    v13 = [v8 objectAtIndexedSubscript:0];
    personaID = [v13 personaID];

    if (personaID)
    {
      v15 = _MCLogObjects[12];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Removing data separated (PDUE/ADUE/ADDE) MDM profile", &v17, 2u);
      }
    }

    else if (!_shouldIgnoreCloudConfigFromBackup)
    {
LABEL_22:

      goto LABEL_23;
    }

    v16 = +[MCInstaller sharedInstaller];
    [v16 removeProfileWithIdentifier:verifiedMDMProfileIdentifierWithCleanUp installationType:objc_msgSend(v6 source:{"installType"), @"MCCleanupMigrator Profile Removal for same device restore"}];

    goto LABEL_22;
  }

LABEL_25:
}

- (BOOL)_shouldIgnoreCloudConfigFromBackup
{
  v2 = MCCloudConfigurationDetailsFilePath();
  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];

  v4 = MCCloudConfigurationSetAsideDetailsFilePath();
  v5 = [NSDictionary dictionaryWithContentsOfFile:v4];

  v6 = [v5 objectForKeyedSubscript:kCCIgnoreMDMFromBackupKey];
  bOOLValue = [v6 BOOLValue];

  if (!bOOLValue)
  {
    v10 = kCCMDMServerUIDKey;
    v11 = [v5 objectForKeyedSubscript:kCCMDMServerUIDKey];
    v12 = [v3 objectForKeyedSubscript:v10];
    if (v11)
    {
      v13 = [v5 objectForKeyedSubscript:kCCHasUndergoneMigrationKey];
      if (([v13 BOOLValue] & 1) != 0 || v12)
      {
        v14 = [v11 isEqualToString:v12];

        if ((v14 & 1) == 0)
        {
          v16 = _MCLogObjects[12];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 138543618;
            v18 = v11;
            v19 = 2114;
            v20 = v12;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: ServerUID has changed. New ServerUID: %{public}@, backup ServerUID: %{public}@", &v17, 0x16u);
          }

          v9 = 1;
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v8 = _MCLogObjects[12];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: cloud config indicates that we should ignore the MDM from backup.", &v17, 2u);
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (void)_cleanupCloudConfigForReturnToService
{
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MCCleanupMigrator: Cleaning up cloud config for Return to Service.", v6, 2u);
  }

  v3 = MCCloudConfigurationDetailsFilePath();
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:v3];

  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCCloudConfigurationUICompleteKey];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCPostSetupProfileWasInstalledKey];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCCloudConfigurationWasAppliedKey];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:kCCDeviceConfiguredKey];
  v5 = MCCloudConfigurationDetailsFilePath();
  [v4 MCWriteToBinaryFile:v5];

  MCSendCloudConfigurationDetailsChangedNotification();
}

- (void)migrateWithPostMigrationTaskQueue:(id)queue
{
  queueCopy = queue;
  v28 = [[DMCPowerAssertion alloc] initWithReason:@"profiled-MigrateWithPostMigrationTask"];
  _lastSystemMigratedBuildVersion = [(MCMigrator *)self _lastSystemMigratedBuildVersion];

  v6 = _MCLogObjects[12];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (!_lastSystemMigratedBuildVersion)
    {
      v7 = "YES";
    }

    *buf = 136315138;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Managed Configuration migrating (erase = %s) ...", buf, 0xCu);
  }

  [(MCMigrator *)self _createDirectories];
  [MCServerSideHacks setAllowHacksToCallExternalComponents:0];
  if (_lastSystemMigratedBuildVersion)
  {
    [(MCMigrator *)self _removeInvalidOptionsFromLegacyCloudConfiguration];
    [(MCMigrator *)self _createSystemGroupContainerAndMoveFiles];
    [(MCMigrator *)self _moveFilesToPublicDirectories];
    [(MCMigrator *)self _migrateManifestLocation];
    [(MCMigrator *)self _removeUnusedManifestArrays];
    [(MCMigrator *)self _removeDuplicatedHiddenIdentifiers];
    [(MCMigrator *)self _createStubs];
    [(MCMigrator *)self _removeOrphanedManifestEntries];
    [(MCMigrator *)self _transferSignerCertificates];
    [(MCMigrator *)self _transferRemovalPasswordsFromOriginalProfiles];
    [(MCMigrator *)self _migrateOTAProfiles];
    [(MCMigrator *)self _transferInstallationDatesFromOriginalProfiles];
    [(MCMigrator *)self _transferTagsToProfileStubs];
    [(MCMigrator *)self _removeOriginalCopies];
  }

  else
  {
    [(MCMigrator *)self _createSystemGroupContainerAndMoveFiles];
  }

  [(MCMigrator *)self _applyDefaultSettings];
  if (![(MCMigrator *)self _isMultiUserMode])
  {
    [(MCMigrator *)self _migrateSettings];
  }

  if (_lastSystemMigratedBuildVersion)
  {
    [(MCMigrator *)self _migrateClientRestrictions];
    [(MCMigrator *)self _updateClientRestrictions];
    [(MCMigrator *)self _updateProfileRestrictions];
    [(MCMigrator *)self _applyImpliedSettings];
    [(MCMigrator *)self _migrateSharedDeviceConfiguration];
    [(MCMigrator *)self _migrateLostModeLastLocationRequestDate];
    [(MCMigrator *)self _fixManifestFromStubsIfNecessary];
    v8 = +[MCManifest sharedManifest];
    [v8 invalidateCache];

    [(MCMigrator *)self _migrateSupervisionSettings];
    [(MCMigrator *)self _removeSupervisionProfiles];
    [(MCMigrator *)self _cleanUpAppConfiguration];
    [(MCMigrator *)self _removeUnmanageableApps];
  }

  else
  {
    [(MCMigrator *)self _updateClientRestrictions];
    [(MCMigrator *)self _updateProfileRestrictions];
    [(MCMigrator *)self _applyImpliedSettings];
    [(MCMigrator *)self _fixManifestFromStubsIfNecessary];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = +[MCInstaller sharedInstaller];
  [v10 recomputeProfileRestrictionsWithCompletionBlock:&stru_10011C2F0];

  v11 = +[MCRestrictionManager sharedManager];
  systemUserSettings = [v11 systemUserSettings];
  v13 = [systemUserSettings mutableCopy];

  v14 = +[MCHacks sharedHacks];
  [v14 _applyInternalDiagnosticEnforcementToSettings:v13];

  v15 = +[MCHacks sharedHacks];
  v16 = +[MCRestrictionManager sharedManager];
  currentRestrictions = [v16 currentRestrictions];
  [v15 _applyImpliedSettingsToSettingsDictionary:v13 currentSettings:v13 restrictions:currentRestrictions];

  v18 = +[MCRestrictionManagerWriter sharedManager];
  [v18 setParametersForSettingsByType:v13 sender:@"MCMigrator.Migrate"];

  objc_autoreleasePoolPop(v9);
  if (_lastSystemMigratedBuildVersion)
  {
    [(MCMigrator *)self _migrateProfileStubsForNetworkExtension];
    [(MCMigrator *)self _migrateExtensibleSSO];
    GSFontInitialize();
    v19 = +[MCHacks sharedHacks];
    v20 = +[MCRestrictionManagerWriter sharedManager];
    effectiveUserSettings = [v20 effectiveUserSettings];
    [v19 _setRequriesEncryptedBackupInLockdownWithEffectiveUserSettings:effectiveUserSettings];

    [(MCMigrator *)self _correctInstallOptionsOnProfileStubs];
    [(MCMigrator *)self _tagManagedAccounts];
    [(MCMigrator *)self _tagIMAPAccountsWithProfileAndPayloadProperties];
    [(MCMigrator *)self _correctCloudConfigurationIfNecessary];
    [(MCMigrator *)self _validateCloudConfiguration];
    [(MCMigrator *)self _removeLegacyAPNConfigurations];
    [(MCMigrator *)self _correctMDMConfigurationFile];
    [(MCMigrator *)self _checkValidUserEnrollment];
  }

  else
  {
    [(MCMigrator *)self _migrateExtensibleSSO];
    GSFontInitialize();
  }

  [MCServerSideHacks setAllowHacksToCallExternalComponents:1];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000332A4;
  block[3] = &unk_10011B688;
  block[4] = self;
  dispatch_async(queueCopy, block);
  v22 = +[MCProvisioningProfileJanitor sharedJanitor];
  [v22 updateMISTrust];

  v23 = MCProductBuildVersion();
  systemMetadataDictionary = [(MCMigrator *)self systemMetadataDictionary];
  v25 = kMCMetaLastMigratedBuildKey;
  [systemMetadataDictionary setObject:v23 forKey:kMCMetaLastMigratedBuildKey];
  [(MCMigrator *)self setSystemMetadataDictionary:systemMetadataDictionary];
  userMetadataDictionary = [(MCMigrator *)self userMetadataDictionary];
  [userMetadataDictionary setObject:v23 forKey:v25];
  [(MCMigrator *)self setUserMetadataDictionary:userMetadataDictionary];
  v27 = _MCLogObjects[12];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Managed Configuration completed migration.", buf, 2u);
  }
}

- (void)_createDirectoryAtPath:(id)path
{
  pathCopy = path;
  fileManager = [(MCMigrator *)self fileManager];
  v5 = [fileManager fileExistsAtPath:pathCopy];

  if ((v5 & 1) == 0)
  {
    fileManager2 = [(MCMigrator *)self fileManager];
    [fileManager2 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:0];
  }
}

- (void)_createDirectoryAtPath:(id)path attributes:(id)attributes
{
  pathCopy = path;
  attributesCopy = attributes;
  fileManager = [(MCMigrator *)self fileManager];
  v9 = [fileManager fileExistsAtPath:pathCopy];

  if ((v9 & 1) == 0)
  {
    fileManager2 = [(MCMigrator *)self fileManager];
    v13 = 0;
    [fileManager2 createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:attributesCopy error:&v13];
    v11 = v13;

    if (v11)
    {
      v12 = _MCLogObjects[12];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to create directory with error %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)_fixDirectoryAtPath:(id)path permissions:(id)permissions
{
  pathCopy = path;
  permissionsCopy = permissions;
  fileManager = [(MCMigrator *)self fileManager];
  v8 = [fileManager fileExistsAtPath:pathCopy];

  if (v8)
  {
    fileManager2 = [(MCMigrator *)self fileManager];
    [fileManager2 setAttributes:permissionsCopy ofItemAtPath:pathCopy error:0];
  }
}

- (void)_createDirectories
{
  v3 = objc_autoreleasePoolPush();
  v4 = MCSystemPreferencesDirectory();
  [(MCMigrator *)self _createDirectoryAtPath:v4];

  v5 = [NSNumber numberWithUnsignedLong:493];
  v6 = [NSDictionary dictionaryWithObject:v5 forKey:NSFilePosixPermissions];

  v7 = MCLegacyProfileStorageDirectory();
  [(MCMigrator *)self _fixDirectoryAtPath:v7 permissions:v6];

  v8 = MCSystemPreferencesDirectory();
  [(MCMigrator *)self _fixDirectoryAtPath:v8 permissions:v6];

  v9 = MCLegacyPublicInfoDirectory();
  [(MCMigrator *)self _fixDirectoryAtPath:v9 permissions:v6];

  objc_autoreleasePoolPop(v3);
}

- (void)_removeInvalidOptionsFromLegacyCloudConfiguration
{
  v3 = objc_autoreleasePoolPush();
  fileManager = [(MCMigrator *)self fileManager];
  v5 = MCLegacyCloudConfigurationDetailsFilePath();
  v6 = [fileManager fileExistsAtPath:v5];

  if (v6)
  {
    v7 = MCLegacyCloudConfigurationDetailsFilePath();
    v8 = [NSMutableDictionary dictionaryWithContentsOfFile:v7];

    v9 = kCCIsMultiUserKey;
    v10 = [v8 objectForKeyedSubscript:kCCIsMultiUserKey];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      [v8 removeObjectForKey:v9];
      v12 = _MCLogObjects[12];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing invalid options from legacy cloud configuration...", v14, 2u);
      }

      v13 = MCLegacyCloudConfigurationDetailsFilePath();
      [v8 MCWriteToBinaryFile:v13];
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_createSystemGroupContainerAndMoveFiles
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating legacy profile storage directory to system group container...", buf, 2u);
  }

  [(MCMigrator *)self _createSystemProfileStorageDirectoryMigratingFromLegacyStorageIfNecessary];
  v5 = MCSystemPublicInfoDirectory();
  _attributesForSystemProfileStorageItems = [(MCMigrator *)self _attributesForSystemProfileStorageItems];
  [(MCMigrator *)self _createDirectoryAtPath:v5 attributes:_attributesForSystemProfileStorageItems];

  v7 = MCUserProfileStorageDirectory();
  _attributesForUserProfileStorageItem = [(MCMigrator *)self _attributesForUserProfileStorageItem];
  [(MCMigrator *)self _createDirectoryAtPath:v7 attributes:_attributesForUserProfileStorageItem];

  v9 = MCUserPublicInfoDirectory();
  _attributesForUserProfileStorageItem2 = [(MCMigrator *)self _attributesForUserProfileStorageItem];
  [(MCMigrator *)self _createDirectoryAtPath:v9 attributes:_attributesForUserProfileStorageItem2];

  [(MCMigrator *)self _fixPermissionsOnTheSystemProfileLibraryDirectoryAndContents];
  [(MCMigrator *)self _sendCloudConfigurationChangedNotificationIfWeMigratedLegacyProfileStorage];
  v11 = _MCLogObjects[12];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed system group container migration.", v12, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_fixPermissionsOnTheSystemProfileLibraryDirectoryAndContents
{
  fileManager = [(MCMigrator *)self fileManager];
  v3 = MCSystemProfileLibraryDirectory();
  v4 = MCFixPermissionsOfSystemGroupContainerDirectoryAndContentsFM();
  v5 = 0;

  if ((v4 & 1) == 0)
  {
    if ([v5 count])
    {
      v6 = _MCLogObjects[12];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v8 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fix permissions of device profile library with errors %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)_sendCloudConfigurationChangedNotificationIfWeMigratedLegacyProfileStorage
{
  if ([(MCMigrator *)self systemProfileStorageWasMigratedFromLegacyStorage])
  {
    notifier = [(MCMigrator *)self notifier];
    [notifier sendCloudConfigurationDetailsChangedNotification];
  }
}

- (void)_createSystemProfileStorageDirectoryMigratingFromLegacyStorageIfNecessary
{
  [(MCMigrator *)self setSystemProfileStorageWasMigratedFromLegacyStorage:0];
  if ([(MCMigrator *)self _shouldAttemptToMigrateLegacyProfileStorage])
  {
    [(MCMigrator *)self _migrateLegacySystemProfileStorage];
  }

  fileManager = [(MCMigrator *)self fileManager];
  v4 = MCSystemProfileStorageDirectory();
  v5 = [fileManager fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {
    v6 = MCSystemProfileStorageDirectory();
    _attributesForSystemProfileStorageItems = [(MCMigrator *)self _attributesForSystemProfileStorageItems];
    [(MCMigrator *)self _createDirectoryAtPath:v6 attributes:_attributesForSystemProfileStorageItems];
  }

  [(MCMigrator *)self _removeLegacyProfileStorageDirectory];
}

- (void)_migrateLegacySystemProfileStorage
{
  [(MCMigrator *)self _removeExistingSystemProfileStorageDirectoryBlockingMigration];
  v3 = MCLegacyProfileStorageDirectory();
  v4 = MCSystemProfileStorageDirectory();
  v11 = 0;
  v5 = [(MCMigrator *)self _copyAlmostAtomicallyItemAtPath:v3 toPath:v4 error:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v7 = _MCLogObjects[12];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to move legacy profile storage with error %{public}@", buf, 0xCu);
    }
  }

  fileManager = [(MCMigrator *)self fileManager];
  v9 = MCSystemProfileStorageDirectory();
  v10 = [fileManager fileExistsAtPath:v9];

  if (v10)
  {
    [(MCMigrator *)self _setAttributesOnSystemProfileStorageDirectory];
    [(MCMigrator *)self setSystemProfileStorageWasMigratedFromLegacyStorage:1];
  }
}

- (void)_removeExistingSystemProfileStorageDirectoryBlockingMigration
{
  fileManager = [(MCMigrator *)self fileManager];
  v3 = MCSystemProfileStorageDirectory();
  v11 = 0;
  v4 = [fileManager removeItemAtPath:v3 error:&v11];
  v5 = v11;

  v6 = _MCLogObjects[12];
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Removed the system profile storage directory blocking migration from legacy directory";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, buf, v10);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v13 = v5;
    v7 = "Failed to remove the system profile storage directory blocking migration from legacy directory, error: %{public}@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }
}

- (void)_setAttributesOnSystemProfileStorageDirectory
{
  fileManager = [(MCMigrator *)self fileManager];
  _attributesForSystemProfileStorageItems = [(MCMigrator *)self _attributesForSystemProfileStorageItems];
  v5 = MCSystemProfileStorageDirectory();
  v9 = 0;
  v6 = [fileManager setAttributes:_attributesForSystemProfileStorageItems ofItemAtPath:v5 error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0)
  {
    v8 = _MCLogObjects[12];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to set permissions on new profile storage directory with error %{public}@", buf, 0xCu);
    }
  }
}

- (id)_attributeDictionaryForProfileStorageWithPosixPermissions:(unint64_t)permissions
{
  v6[0] = NSFilePosixPermissions;
  v3 = [NSNumber numberWithUnsignedLong:permissions];
  v6[1] = NSFileProtectionKey;
  v7[0] = v3;
  v7[1] = NSFileProtectionNone;
  v4 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

- (BOOL)_copyAlmostAtomicallyItemAtPath:(id)path toPath:(id)toPath error:(id *)error
{
  toPathCopy = toPath;
  pathCopy = path;
  stringByDeletingLastPathComponent = [toPathCopy stringByDeletingLastPathComponent];
  lastPathComponent = [toPathCopy lastPathComponent];
  v12 = [lastPathComponent stringByAppendingString:@".temporary"];
  v13 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v12];
  if ((MCDestinationPathIsSafeFromSymlinkAttacks() & 1) == 0)
  {
    v14 = _MCLogObjects[12];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v34 = toPathCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Destination path contains suspicious symlink: %{public}@", buf, 0xCu);
    }
  }

  fileManager = [(MCMigrator *)self fileManager];
  [fileManager removeItemAtPath:v13 error:0];

  fileManager2 = [(MCMigrator *)self fileManager];
  v32 = 0;
  v17 = [fileManager2 copyItemAtPath:pathCopy toPath:v13 error:&v32];

  v18 = v32;
  if (v17)
  {
    errorCopy = error;
    fileManager3 = [(MCMigrator *)self fileManager];
    v31 = 0;
    v20 = [fileManager3 moveItemAtPath:v13 toPath:toPathCopy error:&v31];
    v21 = v31;

    if ((v20 & 1) == 0)
    {
      fileManager4 = [(MCMigrator *)self fileManager];
      v30 = 0;
      v23 = [fileManager4 removeItemAtPath:v13 error:&v30];
      v28 = v30;

      if ((v23 & 1) == 0)
      {
        v24 = _MCLogObjects[12];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v34 = v28;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to clean up temporary item when copy failed, error %{public}@", buf, 0xCu);
        }
      }

      if (errorCopy)
      {
        v25 = v21;
        *errorCopy = v21;
      }
    }
  }

  else if (error)
  {
    v26 = v18;
    v20 = 0;
    *error = v18;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)_shouldAttemptToMigrateLegacyProfileStorage
{
  if ([(MCMigrator *)self _isLegacyProfileStoragePresent])
  {
    v3 = MCLegacyProfileStorageDirectory();
    v4 = ![(MCMigrator *)self _isDirectoryEmptyAtPath:v3];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_isLegacyProfileStoragePresent
{
  v6 = 0;
  fileManager = [(MCMigrator *)self fileManager];
  v3 = MCLegacyProfileStorageDirectory();
  v4 = [fileManager fileExistsAtPath:v3 isDirectory:&v6];

  return v4 & v6;
}

- (BOOL)_isDirectoryEmptyAtPath:(id)path
{
  pathCopy = path;
  fileManager = [(MCMigrator *)self fileManager];
  v6 = [fileManager contentsOfDirectoryAtPath:pathCopy error:0];

  if (v6)
  {
    v7 = [v6 count] == 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_removeLegacyProfileStorageDirectory
{
  fileManager = [(MCMigrator *)self fileManager];
  v3 = MCLegacyProfileStorageDirectory();
  v9 = 0;
  v4 = [fileManager removeItemAtPath:v3 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    domain = [v5 domain];
    if ([domain isEqualToString:NSCocoaErrorDomain])
    {
      code = [v5 code];

      if (code == 4)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v8 = _MCLogObjects[12];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to delete legacy profile storage with error %{public}@", buf, 0xCu);
    }
  }

LABEL_8:
}

- (void)_moveFilesToPublicDirectories
{
  v3 = objc_autoreleasePoolPush();
  v4 = MCSystemProfileStorageDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"Truth.plist"];

  fileManager = [(MCMigrator *)self fileManager];
  v7 = MCRestrictionsFilePath();
  [fileManager moveItemAtPath:v5 toPath:v7 error:0];

  fileManager2 = [(MCMigrator *)self fileManager];
  v9 = MCEffectiveUserSettingsFilePath();
  [fileManager2 removeItemAtPath:v9 error:0];

  fileManager3 = [(MCMigrator *)self fileManager];
  v11 = MCPublicEffectiveUserSettingsFilePath();
  [fileManager3 removeItemAtPath:v11 error:0];

  v12 = MCSystemProfileStorageDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"MCMeta.plist"];

  fileManager4 = [(MCMigrator *)self fileManager];
  v15 = MCSystemMetadataFilePath();
  [fileManager4 moveItemAtPath:v13 toPath:v15 error:0];

  objc_autoreleasePoolPop(v3);
}

- (void)_migrateManifestLocation
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Beginning manifest migration...", buf, 2u);
  }

  v5 = MCSystemProfileStorageDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"PayloadManifest.plist"];

  v7 = MCSystemProfileStorageDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"PayloadManifest2.plist"];

  fileManager = [(MCMigrator *)self fileManager];
  v10 = [fileManager fileExistsAtPath:v6];

  fileManager2 = [(MCMigrator *)self fileManager];
  v12 = [fileManager2 fileExistsAtPath:v8];

  if ((v10 & 1) != 0 || v12)
  {
    if (v10)
    {
      fileManager3 = [NSData dataWithContentsOfFile:v6];
      if (fileManager3)
      {
        v14 = [NSPropertyListSerialization MCSafePropertyListWithData:fileManager3 options:0 format:0 error:0];
        if (v14)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v16 = isKindOfClass ^ 1;
            v17 = 1;
            goto LABEL_15;
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    fileManager3 = [(MCMigrator *)self fileManager];
    [fileManager3 removeItemAtPath:v6 error:0];
    v16 = 0;
    v17 = 0;
LABEL_15:

    if (v12)
    {
      v18 = [NSDictionary dictionaryWithContentsOfFile:v8];
      if (v18)
      {
        v19 = v18;
        v20 = _MCLogObjects[12];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Migrating manifest from new path", v32, 2u);
        }

        v21 = MCSystemManifestPath();
        [v19 MCWriteToBinaryFile:v21];

        fileManager4 = [(MCMigrator *)self fileManager];
        [fileManager4 removeItemAtPath:v8 error:0];

LABEL_27:
        v28 = _MCLogObjects[12];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Completed manifest migration.", v29, 2u);
        }

        goto LABEL_30;
      }

      fileManager5 = [(MCMigrator *)self fileManager];
      [fileManager5 removeItemAtPath:v8 error:0];
    }

    v24 = _MCLogObjects[12];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
    if ((v16 & v17) == 1)
    {
      if (v25)
      {
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Migrating old-format manifest", v31, 2u);
      }

      v26 = [[NSMutableDictionary alloc] initWithCapacity:1];
      [v26 setObject:v14 forKey:@"OrderedProfiles"];
      v27 = MCSystemManifestPath();
      [v26 MCWriteToBinaryFile:v27];
    }

    else if (v25)
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Not migrating manifest", v30, 2u);
    }

    goto LABEL_27;
  }

LABEL_30:

  objc_autoreleasePoolPop(v3);
}

- (void)_removeUnusedManifestArrays
{
  v3 = objc_autoreleasePoolPush();
  v4 = MCSystemProfileStorageDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PayloadManifest.plist"];

  v6 = [NSData dataWithContentsOfFile:v5];
  v7 = [NSPropertyListSerialization MCSafePropertyListWithData:v6 options:2 format:0 error:0];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v7 removeObjectForKey:@"DisabledProfiles"];
    [v7 removeObjectForKey:@"MissingProfiles"];
    [v7 MCWriteToBinaryFile:v5];
  }

  else
  {
    fileManager = [(MCMigrator *)self fileManager];
    [fileManager removeItemAtPath:v5 error:0];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_removeDuplicatedHiddenIdentifiers
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing duplicated hidden profile identifiers...", buf, 2u);
  }

  v5 = MCSystemProfileStorageDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"PayloadManifest.plist"];

  v7 = [NSData dataWithContentsOfFile:v6];
  v8 = [NSPropertyListSerialization MCSafePropertyListWithData:v7 options:2 format:0 error:0];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    fileManager = [v8 objectForKey:@"OrderedProfiles"];
    v10 = [v8 objectForKey:@"HiddenProfiles"];
    v11 = v10;
    if (fileManager && v10)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v18;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [fileManager removeObject:*(*(&v17 + 1) + 8 * i)];
          }

          v13 = [v11 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v13);
      }

      [v8 MCWriteToBinaryFile:v6];
    }
  }

  else
  {
    fileManager = [(MCMigrator *)self fileManager];
    [fileManager removeItemAtPath:v6 error:0];
  }

  v16 = _MCLogObjects[12];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Completed removing duplicated hidden profile identifiers.", buf, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_createStubs
{
  v2 = objc_autoreleasePoolPush();
  v3 = _MCLogObjects[12];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating stubs...", buf, 2u);
  }

  v4 = MCSystemProfileStorageDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PayloadManifest.plist"];

  v6 = [NSData dataWithContentsOfFile:v5];
  v7 = [NSPropertyListSerialization MCSafePropertyListWithData:v6 options:0 format:0 error:0];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v5;
      v37 = v2;
      v8 = [v7 objectForKey:@"HiddenProfiles"];
      v9 = [v8 mutableCopy];

      v35 = v7;
      v10 = [v7 objectForKey:@"OrderedProfiles"];
      [v9 addObjectsFromArray:v10];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v9;
      v11 = &kSecCMSAdditionalCerts_ptr;
      v40 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
      if (!v40)
      {
        goto LABEL_21;
      }

      v39 = *v44;
      while (1)
      {
        for (i = 0; i != v40; i = i + 1)
        {
          if (*v44 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v43 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = MCSystemProfileStorageDirectory();
          mCOldStyleSafeFilenameHash = [v13 MCOldStyleSafeFilenameHash];
          v17 = [v15 stringByAppendingPathComponent:mCOldStyleSafeFilenameHash];

          v18 = MCSystemProfileStorageDirectory();
          v19 = [v13 MCOldStyleSafeFilenameHashWithExtension:@"stub"];
          v20 = [v18 stringByAppendingPathComponent:v19];

          v21 = MCSystemProfileStorageDirectory();
          v22 = [v13 MCHashedFilenameWithExtension:@"stub"];
          v23 = [v21 stringByAppendingPathComponent:v22];

          fileManager = [(MCMigrator *)self fileManager];
          LODWORD(v22) = [fileManager fileExistsAtPath:v17];

          if (v22)
          {
            v25 = [v11[86] dataWithContentsOfFile:v17];
            v26 = [MCProfile profileWithData:v25 outError:0];

            if (v26)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v26 writeStubToPath:v23];
              }
            }
          }

          else
          {
            fileManager2 = [(MCMigrator *)self fileManager];
            v28 = [fileManager2 fileExistsAtPath:v20];

            if (!v28)
            {
              goto LABEL_19;
            }

            fileManager3 = [(MCMigrator *)self fileManager];
            v42 = 0;
            [fileManager3 moveItemAtPath:v20 toPath:v23 error:&v42];
            v26 = v42;

            if (v26)
            {
              v30 = _MCLogObjects[12];
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = v30;
                code = [v26 code];
                domain = [v26 domain];
                *buf = 138544130;
                v48 = v20;
                v49 = 2114;
                v50 = v23;
                v51 = 2048;
                v52 = code;
                v53 = 2114;
                v54 = domain;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Could not move profile from %{public}@ to %{public}@. Error: %ld / %{public}@", buf, 0x2Au);

                v11 = &kSecCMSAdditionalCerts_ptr;
              }
            }
          }

LABEL_19:
          objc_autoreleasePoolPop(v14);
        }

        v40 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (!v40)
        {
LABEL_21:

          v34 = _MCLogObjects[12];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Completed creating stubs.", buf, 2u);
          }

          v5 = v36;
          v2 = v37;
          v7 = v35;
          break;
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_removeOrphanedManifestEntries
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing orphaned profiles...", buf, 2u);
  }

  v5 = MCSystemProfileStorageDirectory();
  v6 = [(MCMigrator *)self _removeOrphanedManifestEntriesFromManifestInDirectory:v5];

  if (v6)
  {
    v7 = MCSystemManifestPath();
    [v6 MCWriteToBinaryFile:v7];
  }

  v8 = MCUserProfileStorageDirectory();
  v9 = [(MCMigrator *)self _removeOrphanedManifestEntriesFromManifestInDirectory:v8];

  if (v9)
  {
    v10 = MCUserManifestPath();
    [v9 MCWriteToBinaryFile:v10];
  }

  v11 = _MCLogObjects[12];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Completed removing orphaned profiles...", v12, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (id)_removeOrphanedManifestEntriesFromManifestInDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [directoryCopy stringByAppendingPathComponent:@"PayloadManifest.plist"];
  v5 = [NSData dataWithContentsOfFile:v4];
  v6 = [NSPropertyListSerialization MCSafePropertyListWithData:v5 options:1 format:0 error:0];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v31 = v4;
    v32 = v6;
    v7 = [v6 objectForKey:@"OrderedProfiles"];
    obj = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 MCHashedFilenameWithExtension:@"stub"];
          v15 = [directoryCopy stringByAppendingPathComponent:v14];

          v16 = [NSData dataWithContentsOfFile:v15];
          v17 = [MCProfile profileWithData:v16 outError:0];

          if (v17)
          {
            [obj addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    [v32 setObject:obj forKey:@"OrderedProfiles"];
    v18 = [v32 objectForKey:@"HiddenProfiles"];
    v19 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v18 count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obja = v18;
    v20 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(obja);
          }

          v24 = *(*(&v35 + 1) + 8 * j);
          v25 = [v24 MCHashedFilenameWithExtension:@"stub"];
          v26 = [directoryCopy stringByAppendingPathComponent:v25];

          v27 = [NSData dataWithContentsOfFile:v26];
          v28 = [MCProfile profileWithData:v27 outError:0];

          if (v28)
          {
            [v19 addObject:v24];
          }
        }

        v21 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v21);
    }

    v6 = v32;
    [v32 setObject:v19 forKey:@"HiddenProfiles"];

    v29 = v32;
    v4 = v31;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)_moveSignerCertificatesInProfileStubDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"ProfileData"];
  if (v4)
  {
    v20 = 0;
    v5 = [MCProfile dataFromCMSEncodedData:v4 outSignerCertificates:&v20];
    v6 = v20;
    if ([v6 count])
    {
      v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        do
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v16 + 1) + 8 * v12);
            v14 = objc_autoreleasePoolPush();
            v15 = SecCertificateCopyData(v13);
            if (v15)
            {
              [v7 addObject:{v15, v16}];
            }

            objc_autoreleasePoolPop(v14);
            v12 = v12 + 1;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }

      [dictionaryCopy setObject:v7 forKeyedSubscript:@"SignerCerts"];
    }

    [dictionaryCopy removeObjectForKey:{@"ProfileData", v16}];
    [dictionaryCopy removeObjectForKey:@"SignerSummary"];
  }
}

- (void)_transferSignerCertificates
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Transferring profile signer certificates...", buf, 2u);
  }

  v5 = MCSystemProfileStorageDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"PayloadManifest.plist"];

  v7 = &kSecCMSAdditionalCerts_ptr;
  v8 = [NSData dataWithContentsOfFile:v6];
  v9 = [NSPropertyListSerialization MCSafePropertyListWithData:v8 options:0 format:0 error:0];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v6;
      v47 = v3;
      selfCopy = self;
      v10 = [v9 objectForKey:@"HiddenProfiles"];
      v11 = [v10 mutableCopy];

      v45 = v9;
      v12 = [v9 objectForKey:@"OrderedProfiles"];
      [v11 addObjectsFromArray:v12];

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v11;
      v13 = &sem_close_ptr;
      v51 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v51)
      {
        v14 = *v59;
        v48 = *v59;
        do
        {
          for (i = 0; i != v51; i = i + 1)
          {
            if (*v59 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v58 + 1) + 8 * i);
            v17 = objc_autoreleasePoolPush();
            v18 = MCSystemProfileStorageDirectory();
            mCOldStyleSafeFilenameHash = [v16 MCOldStyleSafeFilenameHash];
            v20 = [v18 stringByAppendingPathComponent:mCOldStyleSafeFilenameHash];

            v21 = MCSystemProfileStorageDirectory();
            v22 = [v16 MCHashedFilenameWithExtension:@"stub"];
            v23 = [v21 stringByAppendingPathComponent:v22];

            v24 = [v7[86] dataWithContentsOfFile:v23];
            v25 = [MCProfile profileWithData:v24 outError:0];

            v26 = [v7[86] dataWithContentsOfFile:v20];
            if (v26)
            {
              v27 = v25 == 0;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              v57 = 0;
              v28 = [MCProfile dataFromCMSEncodedData:v26 outSignerCertificates:&v57];
              v29 = v57;
              if (!v28)
              {
                v28 = v26;
              }

              v30 = [v13[246] MCSafePropertyListWithData:v28 options:0 format:0 error:0];
              if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v31 = [v30 objectForKey:@"EncryptedPayloadContent"];

                v27 = v31 == 0;
                v13 = &sem_close_ptr;
                v32 = !v27;
              }

              else
              {
                v32 = 0;
              }

              [v25 setEncrypted:v32];
              if ([v29 count])
              {
                [v25 setSignerCertificates:v29];
              }

              [v25 writeStubToPath:v23];

              v7 = &kSecCMSAdditionalCerts_ptr;
              v14 = v48;
            }

            objc_autoreleasePoolPop(v17);
          }

          v51 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v51);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v52 = obj;
      v33 = [v52 countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v54;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v54 != v35)
            {
              objc_enumerationMutation(v52);
            }

            v37 = *(*(&v53 + 1) + 8 * j);
            v38 = MCSystemProfileStorageDirectory();
            v39 = [v37 MCHashedFilenameWithExtension:@"stub"];
            v40 = [v38 stringByAppendingPathComponent:v39];

            v41 = [NSMutableDictionary dictionaryWithContentsOfFile:v40];
            if (v41)
            {
              [(MCMigrator *)selfCopy _moveSignerCertificatesInProfileStubDictionary:v41];
              v42 = [v41 objectForKeyedSubscript:@"OTAProfileStub"];
              v43 = [v42 mutableCopy];

              if (v43)
              {
                [(MCMigrator *)selfCopy _moveSignerCertificatesInProfileStubDictionary:v43];
                [v41 setObject:v43 forKeyedSubscript:@"OTAProfileStub"];
              }

              [v41 MCWriteToBinaryFile:v40];
            }
          }

          v34 = [v52 countByEnumeratingWithState:&v53 objects:v63 count:16];
        }

        while (v34);
      }

      v44 = _MCLogObjects[12];
      v6 = v46;
      v3 = v47;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Completed transferring profile signer certificates.", buf, 2u);
      }

      v9 = v45;
    }
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_transferRemovalPasswordsFromOriginalProfiles
{
  context = objc_autoreleasePoolPush();
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Migrating profile removal passwords...", buf, 2u);
  }

  v3 = +[MCInstaller sharedInstaller];
  v4 = [v3 identifiersOfInstalledProfilesWithFilterFlags:3];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v34 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v34)
  {
    v33 = *v41;
    v5 = &kSecCMSAdditionalCerts_ptr;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = MCSystemProfileStorageDirectory();
        mCOldStyleSafeFilenameHash = [v7 MCOldStyleSafeFilenameHash];
        v11 = [v9 stringByAppendingPathComponent:mCOldStyleSafeFilenameHash];

        v12 = [v5[86] dataWithContentsOfFile:v11];
        if (v12)
        {
          v35 = v8;
          v13 = [MCProfile profileWithData:v12 outError:0];
          v14 = MCSystemProfileStorageDirectory();
          v15 = [v7 MCHashedFilenameWithExtension:@"stub"];
          v16 = [v14 stringByAppendingPathComponent:v15];

          v17 = [v5[86] dataWithContentsOfFile:v16];
          v18 = [MCProfile profileWithData:v17 outError:0];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && v18)
          {
            [v18 setLocked:{objc_msgSend(v13, "isLocked")}];
            removalPasscode = [v13 removalPasscode];
            if (removalPasscode)
            {
              v31 = v13;
              [v18 setRemovalPasscode:removalPasscode];
              v38 = 0u;
              v39 = 0u;
              v36 = 0u;
              v37 = 0u;
              payloads = [v18 payloads];
              v21 = [payloads countByEnumeratingWithState:&v36 objects:v45 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v37;
                v30 = removalPasscode;
                while (2)
                {
                  for (j = 0; j != v22; j = j + 1)
                  {
                    if (*v37 != v23)
                    {
                      objc_enumerationMutation(payloads);
                    }

                    v25 = *(*(&v36 + 1) + 8 * j);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      removalPasscode = v30;
                      [v25 setRemovalPasscode:v30];
                      goto LABEL_25;
                    }
                  }

                  v22 = [payloads countByEnumeratingWithState:&v36 objects:v45 count:16];
                  removalPasscode = v30;
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_25:

              uUID = [v18 UUID];
              +[MCKeychain setString:forService:account:label:description:useSystemKeychain:outError:](MCKeychain, "setString:forService:account:label:description:useSystemKeychain:outError:", removalPasscode, @"MCProfileRemovalPasscode", uUID, 0, 0, [v18 isInstalledForSystem], 0, context);

              v13 = v31;
            }

            [v18 writeStubToPath:v16];
          }

          else
          {
            v26 = _MCLogObjects[12];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "The original profile cannot be decrypted. Removing the lock on the profile.", buf, 2u);
            }

            [v18 setLocked:0];
            [v18 writeStubToPath:v16];
          }

          v8 = v35;

          v5 = &kSecCMSAdditionalCerts_ptr;
        }

        objc_autoreleasePoolPop(v8);
      }

      v34 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v34);
  }

  v28 = _MCLogObjects[12];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Completed migrating profile removal passwords.", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_migrateOTAProfiles
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Migrating OTA profiles...", buf, 2u);
  }

  v5 = MCSystemProfileStorageDirectory();
  v6 = [v5 stringByAppendingPathComponent:@"ProfileService"];

  v7 = MCSystemProfileStorageDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"PayloadManifest.plist"];

  v9 = [NSData dataWithContentsOfFile:v6];
  v10 = [NSPropertyListSerialization MCSafePropertyListWithData:v9 options:2 format:0 error:0];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v76 = [v10 objectForKey:@"Profile"];
      v81 = [v10 objectForKey:@"Service"];
      v73 = [v10 objectForKey:@"SCEP"];
      v11 = [NSData dataWithContentsOfFile:v8];
      v12 = [NSPropertyListSerialization MCSafePropertyListWithData:v11 options:2 format:0 error:0];

      if (v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [v12 objectForKey:@"HiddenProfiles"];
          v14 = [v13 mutableCopy];

          v64 = v12;
          v15 = [v12 objectForKey:@"OrderedProfiles"];
          v16 = [v15 mutableCopy];

          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v17 = v14;
          v18 = [v17 countByEnumeratingWithState:&v89 objects:v96 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v90;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v90 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [v16 removeObject:*(*(&v89 + 1) + 8 * i)];
              }

              v19 = [v17 countByEnumeratingWithState:&v89 objects:v96 count:16];
            }

            while (v19);
          }

          selfCopy = self;
          v69 = v10;
          v66 = v3;
          v67 = v8;
          v65 = v6;
          v70 = v17;

          v71 = +[NSMutableArray array];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          obj = v16;
          v22 = v76;
          v83 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
          if (v83)
          {
            v82 = *v86;
            do
            {
              for (j = 0; j != v83; j = j + 1)
              {
                if (*v86 != v82)
                {
                  objc_enumerationMutation(obj);
                }

                v24 = *(*(&v85 + 1) + 8 * j);
                v25 = objc_autoreleasePoolPush();
                v26 = MCSystemProfileStorageDirectory();
                v27 = [v24 MCHashedFilenameWithExtension:@"stub"];
                v28 = [v26 stringByAppendingPathComponent:v27];

                v29 = [NSMutableDictionary dictionaryWithContentsOfFile:v28];
                v30 = [v29 objectForKey:@"PayloadUUID"];
                v31 = [v22 objectForKey:v30];
                if (v31)
                {
                  v32 = [v81 objectForKey:v31];
                  mCMutableDeepCopy = [v32 MCMutableDeepCopy];

                  if (mCMutableDeepCopy)
                  {
                    v34 = [NSNumber numberWithBool:1];
                    [mCMutableDeepCopy setObject:v34 forKey:@"MCProfileIsRemovalStub"];

                    v35 = [mCMutableDeepCopy objectForKey:@"PayloadContent"];
                    v36 = v35;
                    if (v35)
                    {
                      v37 = [v35 objectForKey:@"SCEP"];
                      if (v37)
                      {
                        v38 = [v73 objectForKey:v37];
                        if (v38)
                        {
                          v74 = v38;
                          v39 = [v38 objectForKey:@"Persistent Reference"];
                          if (v39)
                          {
                            v77 = v39;
                            [v71 addObject:v39];
                            [v36 setObject:v77 forKey:@"EnrollmentIdentityPersistentID"];
                            [v36 removeObjectForKey:@"SCEP"];
                            [v29 setObject:mCMutableDeepCopy forKey:@"OTAProfileStub"];
                            [v29 MCWriteToBinaryFile:v28];
                            log = _MCLogObjects[12];
                            v40 = os_log_type_enabled(log, OS_LOG_TYPE_INFO);
                            v39 = v77;
                            if (v40)
                            {
                              *buf = 138543362;
                              v94 = v24;
                              _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Migrated OTA profile %{public}@", buf, 0xCu);
                              v39 = v77;
                            }
                          }

                          v38 = v74;
                        }
                      }

                      v22 = v76;
                    }
                  }
                }

                objc_autoreleasePoolPop(v25);
              }

              v83 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
            }

            while (v83);
          }

          v41 = v70;
          v8 = v67;
          self = selfCopy;
          v10 = v69;
          v42 = &kSecCMSAdditionalCerts_ptr;
          if ([v70 count])
          {
            v43 = 0;
            do
            {
              v44 = objc_autoreleasePoolPush();
              v45 = [v41 objectAtIndex:v43];
              v46 = MCSystemProfileStorageDirectory();
              v47 = [v45 MCHashedFilenameWithExtension:@"stub"];
              v48 = [v46 stringByAppendingPathComponent:v47];

              v49 = [v42[89] dictionaryWithContentsOfFile:v48];
              if (v49 && (v50 = v42[89], objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v51 = [v49 objectForKey:@"PayloadContent"];
                if (v51 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v51 count])
                {
                  v52 = [v51 objectAtIndex:0];
                  v84 = v52;
                  if (v52 && (v53 = v52, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v54 = [v53 objectForKey:@"PERSISTENT_REF"];
                    if (v54 && [v71 containsObject:v54])
                    {
                      v55 = _MCLogObjects[12];
                      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138543362;
                        v94 = v45;
                        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "Removing unused hidden profile %{public}@", buf, 0xCu);
                      }

                      [v70 removeObjectAtIndex:v43];
                      fileManager = [(MCMigrator *)self fileManager];
                      v78 = MCSystemProfileStorageDirectory();
                      mCOldStyleSafeFilenameHash = [v45 MCOldStyleSafeFilenameHash];
                      v58 = [v78 stringByAppendingPathComponent:mCOldStyleSafeFilenameHash];
                      [fileManager removeItemAtPath:v58 error:0];

                      fileManager2 = [(MCMigrator *)selfCopy fileManager];
                      v79 = MCSystemProfileStorageDirectory();
                      v59 = [v45 MCHashedFilenameWithExtension:@"stub"];
                      v60 = [v79 stringByAppendingPathComponent:v59];
                      [fileManager2 removeItemAtPath:v60 error:0];

                      self = selfCopy;
                      v61 = 0;
                      v8 = v67;
                    }

                    else
                    {
                      v61 = 1;
                    }

                    v10 = v69;
                  }

                  else
                  {
                    v61 = 1;
                  }
                }

                else
                {
                  v61 = 1;
                }

                v42 = &kSecCMSAdditionalCerts_ptr;
              }

              else
              {
                v61 = 1;
              }

              v43 += v61;
              objc_autoreleasePoolPop(v44);
              v41 = v70;
            }

            while (v43 < [v70 count]);
          }

          v12 = v64;
          [v64 setObject:v41 forKey:@"HiddenProfiles"];
          [v64 setObject:obj forKey:@"OrderedProfiles"];
          [v64 MCWriteToBinaryFile:v8];

          v6 = v65;
          v3 = v66;
        }
      }
    }
  }

  fileManager3 = [(MCMigrator *)self fileManager];
  [fileManager3 removeItemAtPath:v6 error:0];

  v63 = _MCLogObjects[12];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Completed migrating OTA profiles.", buf, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_transferInstallationDatesFromOriginalProfiles
{
  context = objc_autoreleasePoolPush();
  v3 = _MCLogObjects[12];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Transferring installation dates...", buf, 2u);
  }

  v4 = +[MCInstaller sharedInstaller];
  v5 = [v4 identifiersOfInstalledProfilesWithFilterFlags:3];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    selfCopy = self;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = MCSystemProfileStorageDirectory();
        mCOldStyleSafeFilenameHash = [v10 MCOldStyleSafeFilenameHash];
        v14 = [v12 stringByAppendingPathComponent:mCOldStyleSafeFilenameHash];

        v15 = MCSystemProfileStorageDirectory();
        v16 = [v10 MCHashedFilenameWithExtension:@"stub"];
        v17 = [v15 stringByAppendingPathComponent:v16];

        v18 = [NSMutableDictionary dictionaryWithContentsOfFile:v17];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 objectForKey:@"InstallDate"];

          if (!v20)
          {
            fileManager = [(MCMigrator *)self fileManager];
            v22 = [fileManager attributesOfItemAtPath:v14 error:0];

            if (v22)
            {
              v23 = [v22 objectForKey:NSFileCreationDate];
              if (!v23)
              {
                v23 = [v22 objectForKey:NSFileModificationDate];
                if (!v23)
                {
                  goto LABEL_20;
                }
              }
            }

            else
            {
              fileManager2 = [(MCMigrator *)self fileManager];
              v25 = [fileManager2 attributesOfItemAtPath:v17 error:0];

              if (v25)
              {
                v23 = [v25 objectForKey:NSFileCreationDate];
                if (!v23)
                {
                  v23 = [v25 objectForKey:NSFileModificationDate];
                }
              }

              else
              {
                v23 = 0;
              }

              self = selfCopy;
              if (!v23)
              {
                goto LABEL_20;
              }
            }

            [v19 setObject:v23 forKey:@"InstallDate"];
            [v19 MCWriteToBinaryFile:v17];

LABEL_20:
          }
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v26 = _MCLogObjects[12];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Completed transferring installation dates.", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)_applyAccountTagsToProfile:(id)profile
{
  profileCopy = profile;
  if (qword_100136A88 != -1)
  {
    sub_1000C25DC();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = profileCopy;
  payloads = [profileCopy payloads];
  v5 = [payloads countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v5)
  {
    v7 = 0;
    goto LABEL_22;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v18;
  do
  {
    v9 = 0;
    do
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(payloads);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = qword_100136A90;
      uUID = [v10 UUID];
      v13 = [v11 objectForKey:uUID];

      if ([v13 length])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v10 performSelector:"setAccountPersistentUUID:" withObject:v13];
LABEL_14:
          v7 = 1;
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 setPersistentResourceID:v13];
          goto LABEL_14;
        }
      }

LABEL_15:

      v9 = v9 + 1;
    }

    while (v6 != v9);
    v14 = [payloads countByEnumeratingWithState:&v17 objects:v21 count:16];
    v6 = v14;
  }

  while (v14);
LABEL_22:

  return v7 & 1;
}

- (void)_transferTagsToProfileStubs
{
  context = objc_autoreleasePoolPush();
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Transferring tags to profiles...", buf, 2u);
  }

  v3 = +[MCInstaller sharedInstaller];
  v4 = [v3 identifiersOfInstalledProfilesWithFilterFlags:3];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = MCSystemProfileStorageDirectory();
        v12 = [v9 MCHashedFilenameWithExtension:@"stub"];
        v13 = [v11 stringByAppendingPathComponent:v12];

        v14 = [NSData dataWithContentsOfFile:v13];
        v15 = [MCProfile profileWithData:v14 outError:0];

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [(MCMigrator *)self _applyAccountTagsToProfile:v15])
        {
          [v15 writeStubToPath:v13];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  fileManager = [(MCMigrator *)self fileManager];
  v17 = MCTagsMappingFilePath();
  [fileManager removeItemAtPath:v17 error:0];

  v18 = _MCLogObjects[12];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Completed transferring tags.", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_removeOriginalCopies
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing old profile copies...", buf, 2u);
  }

  v5 = +[MCInstaller sharedInstaller];
  v6 = [v5 identifiersOfInstalledProfilesWithFilterFlags:3];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = MCSystemProfileStorageDirectory();
        mCOldStyleSafeFilenameHash = [v12 MCOldStyleSafeFilenameHash];
        v16 = [v14 stringByAppendingPathComponent:mCOldStyleSafeFilenameHash];

        fileManager = [(MCMigrator *)self fileManager];
        [fileManager removeItemAtPath:v16 error:0];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = _MCLogObjects[12];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Completed removing old profile copies.", buf, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_applyDefaultSettings
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Applying default user settings...", buf, 2u);
  }

  v5 = +[MCHacks sharedHacks];
  _deviceSpecificDefaultSettings = [v5 _deviceSpecificDefaultSettings];

  if (_deviceSpecificDefaultSettings)
  {
    selfCopy = self;
    v68 = +[MCRestrictionManagerWriter sharedManager];
    systemUserSettings = [v68 systemUserSettings];
    mCMutableDeepCopy = [systemUserSettings MCMutableDeepCopy];

    v9 = MCRestrictedBoolKey;
    v10 = [mCMutableDeepCopy objectForKey:MCRestrictedBoolKey];
    if (!v10)
    {
      v10 = +[NSMutableDictionary dictionary];
      [mCMutableDeepCopy setObject:v10 forKey:v9];
    }

    v11 = MCRestrictedValueKey;
    v12 = [mCMutableDeepCopy objectForKey:MCRestrictedValueKey];
    if (!v12)
    {
      v12 = +[NSMutableDictionary dictionary];
      [mCMutableDeepCopy setObject:v12 forKey:v11];
    }

    v13 = MCAssignedObjectKey;
    v70 = [mCMutableDeepCopy objectForKey:MCAssignedObjectKey];
    if (!v70)
    {
      v70 = +[NSMutableDictionary dictionary];
      [mCMutableDeepCopy setObject:? forKey:?];
    }

    v64 = v13;
    v14 = MCIntersectionKey;
    v71 = [mCMutableDeepCopy objectForKey:MCIntersectionKey];
    if (!v71)
    {
      v71 = +[NSMutableDictionary dictionary];
      [mCMutableDeepCopy setObject:? forKey:?];
    }

    v63 = v14;
    v15 = MCUnionKey;
    v16 = [mCMutableDeepCopy objectForKey:MCUnionKey];
    if (!v16)
    {
      v16 = +[NSMutableDictionary dictionary];
      [mCMutableDeepCopy setObject:v16 forKey:v15];
    }

    v66 = v15;
    v67 = v16;
    v69 = [_deviceSpecificDefaultSettings objectForKey:v9];
    v62 = v3;
    if (v69)
    {
      [v10 MCDeepCopyMissingEntriesFromDictionary:v69];
      v17 = MCFeatureDiagnosticsSubmissionModificationAllowed;
      v18 = [v69 objectForKey:MCFeatureDiagnosticsSubmissionModificationAllowed];
      v19 = [v10 objectForKey:v17];
      v20 = v19;
      if (v18 && v19)
      {
        v21 = MCSettingParameterValueKey;
        v22 = [v18 objectForKey:MCSettingParameterValueKey];
        v23 = v12;
        v24 = v10;
        v25 = [v22 copy];
        [v20 setObject:v25 forKey:v21];

        v10 = v24;
        v12 = v23;

        v3 = v62;
      }
    }

    v26 = [_deviceSpecificDefaultSettings objectForKey:v11];
    if (v26)
    {
      [v12 MCDeepCopyMissingEntriesFromDictionary:v26];
      v27 = MCFeatureAutoLockTime;
      v28 = [v26 objectForKey:MCFeatureAutoLockTime];
      v29 = [v12 objectForKey:v27];
      v30 = v29;
      if (v28 && v29)
      {
        v31 = MCSettingParameterRangeMinimumKey;
        [v28 objectForKey:MCSettingParameterRangeMinimumKey];
        v33 = v32 = v10;
        v34 = [v33 copy];
        [v30 setObject:v34 forKey:v31];

        v10 = v32;
      }

      v35 = MCFeaturePasscodeKeyboardComplexity;
      v36 = [v26 objectForKey:MCFeaturePasscodeKeyboardComplexity];
      v37 = [v12 objectForKey:v35];
      v38 = v37;
      if (v36 && v37)
      {
        v60 = v10;
        v39 = MCSettingParameterValueKey;
        [v36 objectForKey:MCSettingParameterValueKey];
        v40 = v59 = v26;
        v41 = _deviceSpecificDefaultSettings;
        v42 = v12;
        v43 = [v40 copy];
        v44 = v39;
        v10 = v60;
        [v38 setObject:v43 forKey:v44];

        v12 = v42;
        _deviceSpecificDefaultSettings = v41;

        v26 = v59;
      }

      v3 = v62;
    }

    v65 = v12;
    v45 = v26;
    v46 = [_deviceSpecificDefaultSettings objectForKey:v64];
    if (v46)
    {
      [v70 MCDeepCopyMissingEntriesFromDictionary:v46];
    }

    v47 = [_deviceSpecificDefaultSettings objectForKey:v63];
    if (!v47)
    {
      goto LABEL_37;
    }

    [v71 MCDeepCopyMissingEntriesFromDictionary:v47];
    _lastUserMigratedBuildVersion = [(MCMigrator *)selfCopy _lastUserMigratedBuildVersion];
    if ([_lastUserMigratedBuildVersion compare:@"15G77" options:64] == 1)
    {
      _lastUserMigratedBuildVersion2 = [(MCMigrator *)selfCopy _lastUserMigratedBuildVersion];
      v50 = v10;
      v51 = [_lastUserMigratedBuildVersion2 compare:@"17B1" options:64];

      v52 = v51 + 1 == 0;
      v10 = v50;
      if (!v52)
      {
        goto LABEL_37;
      }

      v53 = _MCLogObjects[12];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Clearing leaked WebContentFilter overrides...", v73, 2u);
      }

      v54 = MCFeatureWebContentFilterWhitelistedURLs;
      v55 = [v47 objectForKeyedSubscript:MCFeatureWebContentFilterWhitelistedURLs];
      [v71 setObject:v55 forKeyedSubscript:v54];

      v56 = MCFeatureWebContentFilterAutoPermittedURLs;
      _lastUserMigratedBuildVersion = [v47 objectForKeyedSubscript:MCFeatureWebContentFilterAutoPermittedURLs];
      [v71 setObject:_lastUserMigratedBuildVersion forKeyedSubscript:v56];
    }

LABEL_37:
    v57 = [_deviceSpecificDefaultSettings objectForKey:v66];
    if (v57)
    {
      [v67 MCDeepCopyMissingEntriesFromDictionary:v57];
    }

    [v68 setParametersForSettingsByType:mCMutableDeepCopy sender:@"MCMigrator.ApplyDefaultSettings"];
  }

  v58 = _MCLogObjects[12];
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Completed applying default user settings.", v72, 2u);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_migrateBoolRestrictions:(id)restrictions withAppID:(id)d forKey:(id)key valuesToRestrictions:(id)toRestrictions currentBoolUserSettings:(id)settings
{
  restrictionsCopy = restrictions;
  dCopy = d;
  keyCopy = key;
  toRestrictionsCopy = toRestrictions;
  settingsCopy = settings;
  key = keyCopy;
  applicationID = dCopy;
  v15 = CFPreferencesCopyAppValue(keyCopy, dCopy);
  v38 = [NSMutableArray arrayWithCapacity:0];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v40;
    v20 = MCRestrictedBoolValueKey;
    do
    {
      v21 = 0;
      v37 = v18;
      do
      {
        if (*v40 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v39 + 1) + 8 * v21);
        v23 = [toRestrictionsCopy objectForKey:v22];
        if (v23)
        {
          v24 = [settingsCopy objectForKey:v23];
          v25 = [v24 objectForKey:v20];

          if (!v25)
          {
            [NSNumber numberWithBool:0];
            v26 = v19;
            v27 = toRestrictionsCopy;
            v28 = v20;
            v29 = settingsCopy;
            v31 = v30 = v16;
            v32 = [NSDictionary dictionaryWithObject:v31 forKey:@"value"];

            v16 = v30;
            settingsCopy = v29;
            v20 = v28;
            toRestrictionsCopy = v27;
            v19 = v26;
            v18 = v37;
            [restrictionsCopy setObject:v32 forKey:v23];
          }
        }

        else
        {
          [v38 addObject:v22];
        }

        v21 = v21 + 1;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v18);
  }

  if ([v38 count])
  {
    v33 = v38;
  }

  else
  {
    v33 = 0;
  }

  CFPreferencesSetAppValue(key, v33, applicationID);
}

- (void)_migrateValueRestrictions:(id)restrictions withAppID:(id)d forKey:(id)key keysToRestricitons:(id)restricitons currentValueUserSettings:(id)settings
{
  restrictionsCopy = restrictions;
  dCopy = d;
  keyCopy = key;
  restricitonsCopy = restricitons;
  settingsCopy = settings;
  v28 = keyCopy;
  v29 = dCopy;
  v14 = CFPreferencesCopyAppValue(keyCopy, dCopy);
  v31 = [NSMutableDictionary dictionaryWithCapacity:0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    v19 = MCRestrictedValueValueKey;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = [v15 objectForKey:v21];
        v23 = [restricitonsCopy objectForKey:v21];
        if (v23)
        {
          v24 = [settingsCopy objectForKey:v23];
          v25 = [v24 objectForKey:v19];

          if (!v25)
          {
            v26 = [NSDictionary dictionaryWithObject:v22 forKey:@"value"];
            [restrictionsCopy setObject:v26 forKey:v23];
          }
        }

        else
        {
          [v31 setObject:v22 forKey:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
  }

  if ([v31 count])
  {
    v27 = v31;
  }

  else
  {
    v27 = 0;
  }

  CFPreferencesSetAppValue(v28, v27, v29);
}

- (void)_migrateBoolValueToFeature:(id)feature withAppID:(id)d forKey:(id)key synchronize:(BOOL)synchronize
{
  synchronizeCopy = synchronize;
  featureCopy = feature;
  dCopy = d;
  keyCopy = key;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(keyCopy, dCopy, &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v13 = AppBooleanValue;
    v14 = +[MCRestrictionManagerWriter sharedManager];
    [v14 setBoolValue:v13 != 0 forSetting:featureCopy sender:@"MCMigrator.MigrateBoolValueToFeature"];
  }

  CFPreferencesSetAppValue(keyCopy, 0, dCopy);
  if (synchronizeCopy)
  {
    CFPreferencesAppSynchronize(dCopy);
  }
}

- (void)_migrateSettings
{
  context = objc_autoreleasePoolPush();
  v3 = _MCLogObjects[12];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Migrating settings...", buf, 2u);
  }

  buf[0] = 0;
  v4 = MCSpringboardBundleIdentifier;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBSensitiveJibblerEnabled", MCSpringboardBundleIdentifier, buf);
  CFPreferencesSetAppValue(@"SBSensitiveJibblerEnabled", 0, @"com.apple.springboard");
  v6 = MCRestrictedBoolKey;
  if (buf[0])
  {
    v144 = MCRestrictedBoolKey;
    v142 = MCFeatureAllowVoiceDialing;
    v140 = MCSettingParameterValueKey;
    v7 = [NSNumber numberWithUnsignedChar:AppBooleanValue];
    v141 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
    v143 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];
    v145 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];

    v11 = +[MCRestrictionManagerWriter sharedManager];
    [v11 setParametersForSettingsByType:v10 sender:@"MCMigrator.MigrateSettings"];
  }

  v12 = +[MCRestrictionManagerWriter sharedManager];
  systemUserSettings = [v12 systemUserSettings];

  v14 = [systemUserSettings objectForKey:v6];
  v15 = MCRestrictedValueKey;
  v116 = systemUserSettings;
  v114 = [systemUserSettings objectForKey:MCRestrictedValueKey];
  v16 = +[NSMutableDictionary dictionary];
  v17 = +[NSMutableDictionary dictionary];
  v112 = v6;
  [v16 setObject:v17 forKey:v6];
  v18 = +[NSMutableDictionary dictionary];
  v120 = v15;
  [v16 setObject:v18 forKey:v15];
  v138[0] = @"explicitContent";
  v138[1] = @"applicationInstallation";
  v19 = MCFeatureAppInstallationAllowed;
  v139[0] = MCFeatureExplicitContentAllowed;
  v139[1] = MCFeatureAppInstallationAllowed;
  v138[2] = @"camera";
  v138[3] = @"screenShot";
  v20 = MCFeatureCameraAllowed;
  v139[2] = MCFeatureCameraAllowed;
  v139[3] = MCFeatureScreenShotAllowed;
  v138[4] = @"inAppPurchases";
  v139[4] = MCFeatureInAppPurchasesAllowed;
  v21 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:5];
  [(MCMigrator *)self _migrateBoolRestrictions:v17 withAppID:v4 forKey:@"SBParentalControlsCapabilities" valuesToRestrictions:v21 currentBoolUserSettings:v14];
  CFPreferencesSetAppValue(@"SBParentalControlsMCCapabilities", 0, v4);
  v136[0] = MCSafariBundleIdentifier;
  v136[1] = MCCameraBundleIdentifier;
  v137[0] = MCFeatureSafariAllowed;
  v137[1] = v20;
  v136[2] = @"com.apple.youtube";
  v136[3] = MCFeatureITunesAllowed;
  v137[2] = MCFeatureYouTubeAllowed;
  v137[3] = MCFeatureITunesAllowed;
  v136[4] = MCAppStoreBundleIdentifier;
  v137[4] = v19;
  v22 = [NSDictionary dictionaryWithObjects:v137 forKeys:v136 count:5];
  v115 = v14;
  [(MCMigrator *)self _migrateBoolRestrictions:v17 withAppID:v4 forKey:@"SBParentalControlsApplications" valuesToRestrictions:v22 currentBoolUserSettings:v14];
  CFPreferencesSetAppValue(@"SBParentalControlsMCApplications", 0, v4);
  v134[0] = @"apps";
  v134[1] = @"tvshows";
  v118 = MCFeatureMaximumAppsRating;
  v135[0] = MCFeatureMaximumAppsRating;
  v135[1] = MCFeatureMaximumTVShowsRating;
  v134[2] = @"movies";
  v135[2] = MCFeatureMaximumMoviesRating;
  v23 = [NSDictionary dictionaryWithObjects:v135 forKeys:v134 count:3];
  selfCopy = self;
  [(MCMigrator *)self _migrateValueRestrictions:v18 withAppID:v4 forKey:@"SBParentalControlsMCContentRestrictions" keysToRestricitons:v23 currentValueUserSettings:v114];
  v24 = [v114 objectForKeyedSubscript:MCFeatureMaximumFailedPasscodeAttempts];
  v113 = MCRestrictedValueValueKey;
  v25 = [v24 objectForKeyedSubscript:?];

  if (v25)
  {
    if (MCGestaltHasSEP())
    {
      unsignedIntegerValue = [v25 unsignedIntegerValue];
      if (unsignedIntegerValue != MCKeybagCurrentMaximumFailedPasscodeAttempts())
      {
        v27 = MCKeybagSetMaximumFailedPasscodeAttempts();
        if (v27)
        {
          log = _MCLogObjects[12];
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v27;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to migrate maximum failed passcode attempts. Error: %{public}@", buf, 0xCu);
          }
        }
      }
    }
  }

  v28 = +[MCRestrictionManagerWriter sharedManager];
  [v28 setParametersForSettingsByType:v16 sender:@"MCMigrator.MigrateSettings"];

  v29 = +[NSMutableDictionary dictionary];
  v30 = +[NSMutableDictionary dictionary];
  [v29 setObject:v30 forKey:v120];
  v31 = CFPreferencesCopyAppValue(@"SBAutoLockTime", v4);
  v32 = &kSecCMSAdditionalCerts_ptr;
  v33 = &sem_close_ptr;
  if (v31)
  {
    v34 = v31;
    v35 = CFGetTypeID(v31);
    if (v35 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v34, kCFNumberIntType, buf);
      if ((*buf & 0x80000000) != 0)
      {
        *buf = 0x7FFFFFFF;
      }

      v132 = v113;
      v36 = [NSNumber numberWithInt:?];
      v133 = v36;
      v37 = [NSDictionary dictionaryWithObjects:&v133 forKeys:&v132 count:1];
      [v30 setObject:v37 forKeyedSubscript:MCFeatureAutoLockTime];

      v33 = &sem_close_ptr;
    }

    CFRelease(v34);
  }

  v38 = CFPreferencesCopyAppValue(@"SBDeviceLockGracePeriod", v4);
  if (v38)
  {
    v39 = v38;
    *buf = 0;
    CFNumberGetValue(v38, kCFNumberLongType, buf);
    v130 = v113;
    v40 = [NSNumber numberWithUnsignedLong:*buf];
    v131 = v40;
    v41 = [NSDictionary dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    [v30 setObject:v41 forKeyedSubscript:MCFeaturePasscodeLockGraceTime];

    v33 = &sem_close_ptr;
    CFRelease(v39);
  }

  CFPreferencesSetAppValue(@"SBAutoLockTime", 0, v4);
  CFPreferencesSetAppValue(@"SBDeviceLockGracePeriod", 0, v4);
  v42 = +[MCRestrictionManagerWriter sharedManager];
  [v42 setParametersForSettingsByType:v29 sender:@"MCMigrator.MigrateSettings"];

  v43 = +[NSMutableDictionary dictionary];
  v44 = +[NSMutableDictionary dictionary];
  [v43 setObject:v44 forKey:MCUnionKey];
  v45 = CFPreferencesCopyAppValue(@"SBTrustedCodeSigningIdentities", v4);
  if (v45)
  {
    v46 = v45;
    v47 = CFGetTypeID(v45);
    if (v47 == CFArrayGetTypeID())
    {
      v48 = +[MCRestrictionManagerWriter sharedManager];
      [v48 setUnionValues:v46 forSetting:MCFeatureTrustedCodeSigningIdentities sender:@"MCMigrator.MigrateSettings"];
    }

    CFRelease(v46);
  }

  CFPreferencesSetAppValue(@"SBTrustedCodeSigningIdentities", 0, v4);
  v49 = +[MCRestrictionManager sharedManager];
  v50 = [v49 clientRestrictionsForClientUUID:@"com.apple.profiled.trustedcodesigningidentities"];

  if (v50 && [v50 count])
  {
    v51 = +[MCRestrictionManagerWriter sharedManager];
    v52 = MCLocalizedFormat();
    v122 = 0;
    LOBYTE(v110) = 0;
    [v51 setClientRestrictions:0 overrideRestrictions:0 appsAndOptions:0 system:1 clientType:@"com.apple.profiled.trustedcodesigningidentities" clientUUID:@"com.apple.profiled.trustedcodesigningidentities" sender:@"MCMigrator._migrateSettings" localizedClientDescription:v52 localizedWarning:0 shouldRecomputeNag:v110 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:&v122];
    v53 = v122;

    v54 = _MCLogObjects[12];
    if (v53)
    {
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v53;
        v55 = "MCMigrator failed to clear legacy client MCFeatureTrustedCodeSigningIdentities with error: %{public}@";
        v56 = v54;
        v57 = OS_LOG_TYPE_ERROR;
        v58 = 12;
LABEL_31:
        _os_log_impl(&_mh_execute_header, v56, v57, v55, buf, v58);
      }
    }

    else if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v55 = "MCMigrator successfully cleared legacy client MCFeatureTrustedCodeSigningIdentities";
      v56 = v54;
      v57 = OS_LOG_TYPE_DEFAULT;
      v58 = 2;
      goto LABEL_31;
    }

    v32 = &kSecCMSAdditionalCerts_ptr;
    v33 = &sem_close_ptr;
  }

  buf[0] = 0;
  v59 = CFPreferencesGetAppBooleanValue(@"Disable While Passcode Locked", @"com.apple.assistant", buf);
  if (buf[0])
  {
    v60 = v59;
    v61 = +[NSMutableDictionary dictionary];
    v62 = +[NSMutableDictionary dictionary];
    [v61 setObject:v62 forKey:v112];
    v63 = +[NSMutableDictionary dictionary];
    [v62 setObject:v63 forKey:MCFeatureAssistantWhileLockedAllowed];
    v64 = [v33[244] numberWithBool:v60 == 0];
    [v63 setObject:v64 forKey:MCRestrictedBoolValueKey];

    v65 = +[MCRestrictionManagerWriter sharedManager];
    [v65 setParametersForSettingsByType:v61 sender:@"MCMigrator.MigrateSettings"];
  }

  CFPreferencesSetAppValue(@"Disable While Passcode Locked", 0, @"com.apple.assistant");
  CFPreferencesAppSynchronize(@"com.apple.assistant");
  CFPreferencesAppSynchronize(v4);
  buf[0] = 0;
  v66 = CFPreferencesGetAppBooleanValue(@"enabled", @"com.apple.adtracking", buf);
  if (buf[0])
  {
    v67 = v66;
    v68 = +[MCRestrictionManagerWriter sharedManager];
    [v68 setBoolValue:v67 == 0 forSetting:MCFeatureLimitAdTrackingForced sender:@"MCMigrator.MigrateSettings"];
  }

  CFPreferencesSetAppValue(@"enabled", 0, @"com.apple.adtracking");
  CFPreferencesAppSynchronize(@"com.apple.adtracking");
  [(MCMigrator *)selfCopy _migrateBoolValueToFeature:MCFeatureAutoCorrectionAllowed withAppID:@"com.apple.Preferences" forKey:@"KeyboardAutocorrection" synchronize:0];
  [(MCMigrator *)selfCopy _migrateBoolValueToFeature:MCFeatureSmartPunctuationAllowed withAppID:@"com.apple.Preferences" forKey:@"SmartPunctuation" synchronize:0];
  [(MCMigrator *)selfCopy _migrateBoolValueToFeature:MCFeaturePredictiveKeyboardAllowed withAppID:@"com.apple.Preferences" forKey:@"KeyboardPrediction" synchronize:0];
  [(MCMigrator *)selfCopy _migrateBoolValueToFeature:MCFeatureSpellCheckAllowed withAppID:@"com.apple.Preferences" forKey:@"KeyboardCheckSpelling" synchronize:1];
  v69 = CFPreferencesCopyAppValue(@"CookieAcceptPolicy", @"com.apple.WebUI");
  if (v69)
  {
    objc_opt_class();
    v70 = 1.5;
    if (objc_opt_isKindOfClass())
    {
      v70 = 2.0;
      if (([v69 isEqualToString:kMCSafariCookieAcceptPolicyAlways] & 1) == 0)
      {
        v70 = 1.5;
        if (([v69 isEqualToString:kMCSafariCookieAcceptPolicyOnlyFromMainDocumentDomain] & 1) == 0)
        {
          v70 = 1.0;
          if (([v69 isEqualToString:kMCSafariCookieAcceptPolicyExclusivelyFromMainDocumentDomain] & 1) == 0)
          {
            if ([v69 isEqualToString:kMCSafariCookieAcceptPolicyNever])
            {
              v70 = 0.0;
            }

            else
            {
              v70 = 1.0;
            }
          }
        }
      }
    }
  }

  else
  {
    v71 = CFPreferencesCopyAppValue(@"NSHTTPAcceptCookies", @"com.apple.WebFoundation");
    v70 = 1.5;
    if (v71)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v70 = 2.0;
        if (([v71 isEqualToString:@"always"] & 1) == 0)
        {
          if ([v71 isEqualToString:@"never"])
          {
            v70 = 0.0;
          }

          else
          {
            v70 = 1.5;
          }
        }

        CFPreferencesSetAppValue(@"NSHTTPAcceptCookies", 0, @"com.apple.WebFoundation");
        CFPreferencesAppSynchronize(@"com.apple.WebFoundation");
      }
    }
  }

  v72 = +[MCRestrictionManager sharedManager];
  v73 = MCFeatureSafariAcceptCookies;
  v74 = [v72 effectiveValueForSetting:MCFeatureSafariAcceptCookies];

  if (!v74 || ([v74 floatValue], v75 != v70))
  {
    v76 = +[MCRestrictionManagerWriter sharedManager];
    *&v77 = v70;
    v78 = [v33[244] numberWithFloat:v77];
    [v76 setValue:v78 forSetting:v73 sender:@"MCMigrator.MigrateSettings"];

    v79 = _MCLogObjects[12];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Migrated safari cookie policy.", buf, 2u);
    }
  }

  v80 = MCSystemRootDirectory();
  v81 = [v80 stringByAppendingPathComponent:@"/System/Library/OnBoardingBundles/com.apple.onboarding.improvehealth.bundle/ImproveHealth.plist"];

  v82 = [NSURL fileURLWithPath:v81 isDirectory:0];
  v121 = 0;
  v83 = [NSDictionary dictionaryWithContentsOfURL:v82 error:&v121];
  v84 = v121;
  if (v83)
  {
    v85 = [v83 objectForKeyedSubscript:@"ContentVersion"];
    v86 = v33[244];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v85 integerValue];
      v88 = CFPreferencesCopyAppValue(@"MCFeatureHealthDataSubmissionAllowedVersion", @"com.apple.managedconfiguration.profiled");
      integerValue2 = [v88 integerValue];

      v90 = _MCLogObjects[12];
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = integerValue;
        v128 = 2048;
        v129 = integerValue2;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "ImproveHealth currentContentVersion: %ld lastResetVersion: %ld", buf, 0x16u);
      }

      v91 = integerValue2 < integerValue;
      v32 = &kSecCMSAdditionalCerts_ptr;
      if (!v91)
      {
        goto LABEL_70;
      }

      v92 = +[MCRestrictionManagerWriter sharedManager];
      [v92 removeBoolSetting:MCFeatureHealthDataSubmissionAllowed sender:@"MCMigrator.MigrateSettings"];

      v32 = &kSecCMSAdditionalCerts_ptr;
      CFPreferencesSetAppValue(@"MCFeatureHealthDataSubmissionAllowedVersion", [NSNumber numberWithInteger:integerValue], @"com.apple.managedconfiguration.profiled");
      v93 = _MCLogObjects[12];
      if (!os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_70;
      }

      *buf = 0;
      v94 = "Reset Allow Health Data Submission.";
      v95 = v93;
      v96 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v98 = _MCLogObjects[12];
      if (!os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
LABEL_70:

        goto LABEL_71;
      }

      *buf = 0;
      v94 = "Failed to read ContentVersion from OnBoardingBundle.";
      v95 = v98;
      v96 = OS_LOG_TYPE_ERROR;
    }

    _os_log_impl(&_mh_execute_header, v95, v96, v94, buf, 2u);
    goto LABEL_70;
  }

  v97 = _MCLogObjects[12];
  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = v84;
    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, "Failed to load ImproveHealth OnBoardingBundle. Error: %{public}@", buf, 0xCu);
  }

LABEL_71:

  v99 = +[MCRestrictionManager sharedManager];
  userSettings = [v99 userSettings];
  v101 = [userSettings objectForKeyedSubscript:v120];
  v102 = [v101 objectForKeyedSubscript:v118];
  v103 = [v102 mutableCopy];

  v104 = MCSettingParameterRangeMaximumKey;
  v105 = [v103 objectForKeyedSubscript:MCSettingParameterRangeMaximumKey];
  LOBYTE(v101) = [v105 isEqualToNumber:&off_1001271B0];

  if ((v101 & 1) == 0)
  {
    [v103 setObject:&off_1001271B0 forKeyedSubscript:v104];
    v124 = v103;
    v125 = v120;
    v123 = v118;
    v106 = [v32[89] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
    v126 = v106;
    v107 = [v32[89] dictionaryWithObjects:&v126 forKeys:&v125 count:1];

    v108 = +[MCRestrictionManagerWriter sharedManager];
    [v108 setParametersForSettingsByType:v107 sender:@"MCMigrator.MigrateSettings"];
  }

  v109 = _MCLogObjects[12];
  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Completed migrating settings.", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_migrateClientRestrictions
{
  context = objc_autoreleasePoolPush();
  v2 = +[MCRestrictionManagerWriter sharedManager];
  systemClientRestrictions = [v2 systemClientRestrictions];

  if ([systemClientRestrictions count])
  {
    mCMutableDeepCopy = [systemClientRestrictions MCMutableDeepCopy];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    keyEnumerator = [systemClientRestrictions keyEnumerator];
    v6 = [keyEnumerator countByEnumeratingWithState:&v80 objects:v87 count:16];
    if (v6)
    {
      v7 = v6;
      obj = keyEnumerator;
      v8 = 0;
      v9 = *v81;
      v10 = kMCClientRestrictionsTruth;
      v70 = kMCClientRestrictionsType;
      v68 = kEASAccountClientType;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v81 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v80 + 1) + 8 * i);
          v13 = [systemClientRestrictions objectForKey:v12];
          v14 = [v13 objectForKey:v10];
          if (v14)
          {
            [mCMutableDeepCopy setObject:v13 forKey:v12];
          }

          else
          {
            v85[0] = v10;
            v85[1] = v70;
            v86[0] = v13;
            v86[1] = v68;
            v15 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:2];
            [mCMutableDeepCopy setObject:v15 forKeyedSubscript:v12];

            v8 = 1;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v80 objects:v87 count:16];
      }

      while (v7);

      if ((v8 & 1) == 0)
      {
        goto LABEL_15;
      }

      keyEnumerator = +[MCRestrictionManagerWriter sharedManager];
      [keyEnumerator setAllClientRestrictions:mCMutableDeepCopy sender:@"MCMigrator.MigrateClientRestrictions" outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];
    }

LABEL_15:
  }

  v16 = +[MCRestrictionManagerWriter sharedManager];
  v17 = MCNewsBundleIdentifier;
  v18 = [v16 clientRestrictionsForClientUUID:MCNewsBundleIdentifier];

  if (v18)
  {
    v19 = +[MCRestrictionManagerWriter sharedManager];
    [v19 setClientRestrictions:&__NSDictionary0__struct clientType:v17 clientUUID:v17 sender:@"MCMigrator.MigrateClientRestrictions" localizedClientDescription:@"News" localizedWarning:0 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];
  }

  v20 = +[MCRestrictionManagerWriter sharedManager];
  v21 = kMCLSSystemAppRemovalClientType;
  v22 = [v20 clientRestrictionsForClientUUID:kMCLSSystemAppRemovalClientType];

  if ([v22 count])
  {
    v23 = MCFeatureRemovedSystemAppBundleIDs;
    v24 = [MCRestrictionManager unionValuesForFeature:MCFeatureRemovedSystemAppBundleIDs withRestrictionsDictionary:v22];
    v25 = [MCRestrictionManager unionValuesForFeature:MCFeatureBlacklistedAppBundleIDs withRestrictionsDictionary:v22];
    v26 = [MCRestrictionManager unionValuesForFeature:MCFeatureBlockedAppBundleIDs withRestrictionsDictionary:v22];
    if (![v24 count] && (objc_msgSend(v25, "count") || objc_msgSend(v26, "count")))
    {
      v27 = objc_opt_new();
      v28 = [NSSet setWithArray:v25];
      v29 = [NSMutableSet setWithArray:v26];
      obja = v28;
      [v29 unionSet:v28];
      allObjects = [v29 allObjects];
      [v27 MCSetUnionRestriction:v23 values:allObjects];
      v31 = +[MCRestrictionManagerWriter sharedManager];
      [v31 setClientRestrictions:v27 clientType:v21 clientUUID:v21 sender:@"MCMigrator.MigrateClientRestrictions" localizedClientDescription:&stru_10011E740 localizedWarning:0 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];

      v32 = _MCLogObjects[12];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Migrated original removed system apps.", buf, 2u);
      }

      v22 = v27;
    }
  }

  v33 = MCiCloudDriveBundleIdentifier;
  v34 = CFPreferencesCopyAppValue(@"SBIconVisibility", MCiCloudDriveBundleIdentifier);
  v35 = v34;
  if (!v34 || ([v34 BOOLValue] & 1) == 0)
  {
    v36 = MCFeatureRemovedSystemAppBundleIDs;
    v37 = [MCRestrictionManager unionValuesForFeature:MCFeatureRemovedSystemAppBundleIDs withRestrictionsDictionary:v22];
    v38 = [NSMutableSet setWithObject:v33];
    v39 = v38;
    if (v37)
    {
      [v38 addObjectsFromArray:v37];
    }

    v40 = +[NSMutableDictionary dictionary];
    allObjects2 = [v39 allObjects];
    [v40 MCSetUnionRestriction:v36 values:allObjects2];

    v42 = +[MCRestrictionManagerWriter sharedManager];
    [v42 setClientRestrictions:v40 clientType:v21 clientUUID:v21 sender:@"MCMigrator.MigrateClientRestrictions" localizedClientDescription:&stru_10011E740 localizedWarning:0 outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];

    CFPreferencesSetAppValue(@"SBIconVisibility", kCFBooleanTrue, v33);
    CFPreferencesAppSynchronize(v33);
    v43 = _MCLogObjects[12];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Migrated iCloud Drive app.", buf, 2u);
    }
  }

  v44 = +[MCRestrictionManagerWriter sharedManager];
  systemClientRestrictions2 = [v44 systemClientRestrictions];

  if ([systemClientRestrictions2 count])
  {
    mCMutableDeepCopy2 = [systemClientRestrictions2 MCMutableDeepCopy];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v46 = systemClientRestrictions2;
    objb = [v46 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (objb)
    {
      v62 = systemClientRestrictions2;
      v47 = 0;
      v69 = *v76;
      v48 = kMCClientRestrictionsTruth;
      v67 = MCUnionKey;
      v71 = MCFeatureLegacyAppsRatingExemptedBundleIDs;
      v66 = MCUnionValuesKey;
      v64 = MCFeatureAppsRatingExemptedBundleIDs;
      do
      {
        for (j = 0; j != objb; j = j + 1)
        {
          if (*v76 != v69)
          {
            objc_enumerationMutation(v46);
          }

          v50 = *(*(&v75 + 1) + 8 * j);
          v51 = [v46 objectForKeyedSubscript:v50];
          v52 = [v51 objectForKeyedSubscript:v48];
          v53 = v52;
          if (v52)
          {
            v54 = [v52 objectForKeyedSubscript:v67];
            v55 = [v54 objectForKeyedSubscript:v71];
            v56 = [v55 objectForKeyedSubscript:v66];

            if (v56)
            {
              mCMutableDeepCopy3 = [v51 MCMutableDeepCopy];
              mCMutableDeepCopy4 = [v53 MCMutableDeepCopy];
              [mCMutableDeepCopy4 MCSetUnionRestriction:v71 values:0];
              if ([v56 count])
              {
                [mCMutableDeepCopy4 MCSetIntersectionRestriction:v64 values:v56];
              }

              v59 = [mCMutableDeepCopy4 copy];
              [mCMutableDeepCopy3 setObject:v59 forKeyedSubscript:v48];

              v60 = [mCMutableDeepCopy3 copy];
              [mCMutableDeepCopy2 setObject:v60 forKeyedSubscript:v50];

              v47 = 1;
            }
          }
        }

        objb = [v46 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (objb);

      systemClientRestrictions2 = v62;
      if ((v47 & 1) == 0)
      {
        goto LABEL_50;
      }

      v46 = +[MCRestrictionManagerWriter sharedManager];
      v61 = [mCMutableDeepCopy2 copy];
      [v46 setAllClientRestrictions:v61 sender:@"MCMigrator.MigrateClientRestrictions" outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];
    }

LABEL_50:
  }

  objc_autoreleasePoolPop(context);
}

- (void)_updateClientRestrictions
{
  context = objc_autoreleasePoolPush();
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating client restrictions...", buf, 2u);
  }

  v3 = +[MCRestrictionManagerWriter sharedManager];
  systemClientRestrictions = [v3 systemClientRestrictions];

  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [systemClientRestrictions count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = systemClientRestrictions;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v6 objectForKey:v11];
        v13 = [v12 mutableCopy];
        v14 = +[MCHacks sharedHacks];
        [v14 _applyHeuristicsToRestrictions:v13 forProfile:0 ignoresUnrestrictableApps:0];

        [v5 setObject:v13 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = +[MCRestrictionManagerWriter sharedManager];
  [v15 setAllClientRestrictions:v5 sender:@"MCMigrator.UpdateClientRestrictions" outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outRecomputedNag:0 outError:0];

  v16 = _MCLogObjects[12];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v5 count];
    *buf = 67109120;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Done updating. %d client restrictions processed.", buf, 8u);
  }

  objc_autoreleasePoolPop(context);
}

- (id)_updateProfileRestrictionsForProfileRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [restrictionsCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = restrictionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v15}];
        v12 = [v11 mutableCopy];
        v13 = +[MCHacks sharedHacks];
        [v13 _applyHeuristicsToRestrictions:v12 forProfile:0 ignoresUnrestrictableApps:0];

        [v4 setObject:v12 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_updateProfileRestrictions
{
  v3 = objc_autoreleasePoolPush();
  v4 = _MCLogObjects[12];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating profile restrictions...", buf, 2u);
  }

  v5 = +[MCRestrictionManagerWriter sharedManager];
  systemProfileRestrictions = [v5 systemProfileRestrictions];

  v7 = [(MCMigrator *)self _updateProfileRestrictionsForProfileRestrictions:systemProfileRestrictions];
  v8 = +[MCRestrictionManagerWriter sharedManager];
  userProfileRestrictions = [v8 userProfileRestrictions];

  v10 = [(MCMigrator *)self _updateProfileRestrictionsForProfileRestrictions:userProfileRestrictions];
  v11 = +[MCRestrictionManagerWriter sharedManager];
  [v11 setSystemProfileRestrictions:v7 userProfileRestrictions:v10 sender:@"MCMigrator.UpdateProfileRestrictions" outRestrictionsChanged:0 outEffectiveSettingsChanged:0 outAppWhitelistSettingsChanged:0 outRecomputedNag:0 outError:0];

  v12 = +[MCInstaller sharedInstaller];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003A770;
  v15[3] = &unk_10011C338;
  v16 = v7;
  v17 = v10;
  v13 = v10;
  v14 = v7;
  [v12 recomputeProfileRestrictionsWithCompletionBlock:v15];

  objc_autoreleasePoolPop(v3);
}

- (void)_applyImpliedSettings
{
  v2 = objc_autoreleasePoolPush();
  v3 = _MCLogObjects[12];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating implied settings...", buf, 2u);
  }

  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 effectiveRestrictedBoolForSetting:MCFeatureDiagnosticsSubmissionAllowed];

  if (v5 == 2)
  {
    v6 = +[MCRestrictionManagerWriter sharedManager];
    [v6 setBoolValue:0 forSetting:MCFeatureAppAnalyticsAllowed sender:@"MCMigrator.ApplyImpliedSettings"];
  }

  v7 = _MCLogObjects[12];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Done updating.", v8, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_migrateProfileStubsForNetworkExtension
{
  v2 = objc_autoreleasePoolPush();
  if (!MCNEProfileIngestionClass())
  {
    v5 = _MCLogObjects[12];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v44 = "Skipping migrating NetworkExtension settings: not applicable";
LABEL_48:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
    goto LABEL_49;
  }

  v3 = NSClassFromString(@"NEProfileIngestion");
  v4 = objc_opt_respondsToSelector();
  v5 = _MCLogObjects[12];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_49;
    }

    *buf = 0;
    v44 = "Skipping migrating NetworkExtension settings: nothing to do";
    goto LABEL_48;
  }

  v45 = v2;
  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Migrating NetworkExtension settings to profiles...", buf, 2u);
  }

  v7 = +[MCInstaller sharedInstaller];
  v8 = [v7 identifiersOfInstalledProfilesWithFilterFlags:3];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = &MCRestrictedBoolValueKey_ptr;
    v12 = &kSecCMSAdditionalCerts_ptr;
    v13 = *v58;
    v47 = *v58;
    do
    {
      v14 = 0;
      v46 = v10;
      do
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v14;
        v15 = *(*(&v57 + 1) + 8 * v14);
        context = objc_autoreleasePoolPush();
        v16 = MCSystemProfileStorageDirectory();
        v17 = [v15 MCHashedFilenameWithExtension:@"stub"];
        v18 = [v16 stringByAppendingPathComponent:v17];

        v19 = v11[78];
        v52 = v18;
        v20 = [v12[86] dataWithContentsOfFile:v18];
        v21 = [v19 profileWithData:v20 outError:0];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          payloads = [v21 payloads];
          v23 = [payloads countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v23)
          {
            v24 = v23;
            v49 = v21;
            v25 = 0;
            v26 = *v54;
            do
            {
              for (i = 0; i != v24; i = i + 1)
              {
                if (*v54 != v26)
                {
                  objc_enumerationMutation(payloads);
                }

                v28 = *(*(&v53 + 1) + 8 * i);
                v29 = [NSMutableDictionary dictionaryWithCapacity:4];
                type = [v28 type];

                if (type)
                {
                  type2 = [v28 type];
                  [v29 setObject:type2 forKey:@"PayloadType"];
                }

                uUID = [v28 UUID];

                if (uUID)
                {
                  uUID2 = [v28 UUID];
                  [v29 setObject:uUID2 forKey:@"PayloadUUID"];
                }

                identifier = [v28 identifier];

                if (identifier)
                {
                  identifier2 = [v28 identifier];
                  [v29 setObject:identifier2 forKey:@"PayloadIdentifier"];
                }

                displayName = [v28 displayName];

                if (displayName)
                {
                  displayName2 = [v28 displayName];
                  [v29 setObject:displayName2 forKey:@"PayloadDisplayName"];
                }

                persistentResourceID = [v28 persistentResourceID];

                if (persistentResourceID)
                {
                  persistentResourceID2 = [v28 persistentResourceID];
                  [v29 setObject:persistentResourceID2 forKey:@"IdentificationUUID"];
                }

                if ([v28 version])
                {
                  v40 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v28 version]);
                  [v29 setObject:v40 forKey:@"PayloadVersion"];
                }

                v41 = [(objc_class *)v3 performSelector:"getServiceIDForPayload:" withObject:v29];
                if (v41)
                {
                  [v28 setPersistentResourceID:v41];
                  v25 = 1;
                }
              }

              v24 = [payloads countByEnumeratingWithState:&v53 objects:v63 count:16];
            }

            while (v24);

            v11 = &MCRestrictedBoolValueKey_ptr;
            v10 = v46;
            v13 = v47;
            v12 = &kSecCMSAdditionalCerts_ptr;
            v21 = v49;
            if (v25)
            {
              v42 = _MCLogObjects[12];
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v62 = v52;
                _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Migrating NetworkExtension: updating profile stub %{public}@", buf, 0xCu);
              }

              v21 = v49;
              [v49 writeStubToPath:v52];
            }
          }

          else
          {

            v13 = v47;
          }
        }

        objc_autoreleasePoolPop(context);
        v14 = v51 + 1;
      }

      while ((v51 + 1) != v10);
      v10 = [obj countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v10);
  }

  if (objc_opt_respondsToSelector())
  {
    [(objc_class *)v3 performSelector:"profileMigrationComplete"];
  }

  v43 = _MCLogObjects[12];
  v2 = v45;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Completed migrating NetworkExtension settings.", buf, 2u);
  }

LABEL_49:
  objc_autoreleasePoolPop(v2);
}

- (void)_migrateExtensibleSSO
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MCManifest sharedManifest];
  v4 = [v3 allInstalledPayloadsOfClass:objc_opt_class()];

  if ([v4 count])
  {
    v15 = 0;
    v5 = [MCExtensibleSingleSignOnPayloadHandler rebuildConfigurationIncludingPayloads:v4 excludingPayloads:0 error:&v15];
    v6 = v15;
    v7 = _MCLogObjects[12];
    if (v5)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v4 count];
        *buf = 134217984;
        v17 = v9;
        v10 = "Rebuilt Extensible SSO configuration from %ld payload(s)";
        v11 = v8;
        v12 = OS_LOG_TYPE_DEFAULT;
        v13 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v11, v12, v10, buf, v13);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v14 = [v4 count];
      *buf = 134218242;
      v17 = v14;
      v18 = 2114;
      v19 = v6;
      v10 = "Failed to rebuild Extensible SSO configuration from %ld payload(s): %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_migrateSharedDeviceConfiguration
{
  v2 = objc_autoreleasePoolPush();
  v3 = MCSharedDeviceConfigurationFilePath();
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"IfLostReturnToMessage"];
    if (v6)
    {
      [v5 setObject:v6 forKeyedSubscript:kMCSharedDeviceLockScreenFootnoteKey];
      [v5 removeObjectForKey:@"IfLostReturnToMessage"];
      [v5 MCWriteToBinaryFile:v3];
    }
  }

  v7 = _MCLogObjects[12];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Completed migrating Shared Device Configuration keys.", v8, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_migrateLostModeLastLocationRequestDate
{
  v2 = objc_autoreleasePoolPush();
  v3 = kMCMDMLostModeLastLocationRequestDateKey;
  v4 = kMCNotBackedUpPreferencesDomain;
  v5 = CFPreferencesCopyAppValue(kMCMDMLostModeLastLocationRequestDateKey, kMCNotBackedUpPreferencesDomain);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    MCConfigurationProfilesSystemGroupContainer();
    v6 = _CFPreferencesCopyValueWithContainer();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  v7 = _MCLogObjects[12];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Migrating the Lost Mode last location request date.", buf, 2u);
  }

  v8 = [NSURL alloc];
  v9 = MCSystemLostModeRequestPath();
  v10 = [v8 initFileURLWithPath:v9 isDirectory:0];

  *buf = 0;
  v20 = buf;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = objc_opt_new();
  v17 = buf;
  v18 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003B618;
  v15[3] = &unk_10011C360;
  v6 = v6;
  v16 = v6;
  [v11 coordinateWritingItemAtURL:v10 options:0 error:&v18 byAccessor:v15];
  v12 = v18;

  if ((v20[24] & 1) == 0)
  {
    v13 = _MCLogObjects[12];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 138543362;
      v24 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Could not read device lost mode last location for migration: %{public}@", v23, 0xCu);
    }
  }

  MCConfigurationProfilesSystemGroupContainer();
  _CFPreferencesSetValueWithContainer();
  MCConfigurationProfilesSystemGroupContainer();
  _CFPreferencesSynchronizeWithContainer();
  CFPreferencesSetValue(v3, 0, v4, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(v4, kCFPreferencesAnyUser, kCFPreferencesCurrentHost);
  CFPreferencesSetAppValue(v3, 0, v4);
  CFPreferencesAppSynchronize(v4);

  _Block_object_dispose(buf, 8);
LABEL_10:
  v14 = _MCLogObjects[12];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Completed migrating the Lost Mode last location request date.", buf, 2u);
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_fixManifestFromStubsIfNecessary
{
  v3 = objc_autoreleasePoolPush();
  v4 = MCSystemProfileStorageDirectory();
  v5 = MCSystemManifestPath();
  [(MCMigrator *)self _fixManifestFromStubsIfNecessaryWithStubPath:v4 manifestPath:v5];

  v6 = MCUserProfileStorageDirectory();
  v7 = MCUserManifestPath();
  [(MCMigrator *)self _fixManifestFromStubsIfNecessaryWithStubPath:v6 manifestPath:v7];

  objc_autoreleasePoolPop(v3);
}

- (void)_fixManifestFromStubsIfNecessaryWithStubPath:(id)path manifestPath:(id)manifestPath
{
  pathCopy = path;
  manifestPathCopy = manifestPath;
  v8 = manifestPathCopy;
  if (pathCopy && manifestPathCopy)
  {
    v9 = [(MCMigrator *)self _profilesFromManifestAtPath:manifestPathCopy];
    v19 = 0;
    v20 = 0;
    [(MCMigrator *)self _profilesFromStubsAtPath:pathCopy orderedProfiles:&v20 hiddenProfiles:&v19];
    v10 = v20;
    v11 = v19;
    v12 = [(MCMigrator *)self _generatedManifestIfNeededFromOrderedProfiles:v10 hiddenProfiles:v11 existingManifest:v9];
    v13 = _MCLogObjects[12];
    if (v12)
    {
      if (os_log_type_enabled(_MCLogObjects[12], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Fixing incomplete profile manifest at path: %@", buf, 0xCu);
      }

      if ([v12 MCWriteToBinaryFile:v8])
      {
        goto LABEL_14;
      }

      v14 = _MCLogObjects[12];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 138412290;
      v22 = v8;
      v15 = "Could not write replacement manifest file to path: %@";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(_MCLogObjects[12], OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      *buf = 138412290;
      v22 = v8;
      v15 = "Profile manifest is complete, not rewriting, path: %@";
      v16 = v13;
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, 0xCu);
    goto LABEL_14;
  }

  v18 = _MCLogObjects[12];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = pathCopy;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "stub path (%@) or manifest path (%@) is nil", buf, 0x16u);
  }

LABEL_15:
}

- (id)_profilesFromManifestAtPath:(id)path
{
  v3 = [NSData dataWithContentsOfFile:path];
  v4 = [NSPropertyListSerialization MCSafePropertyListWithData:v3 options:0 format:0 error:0];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = objc_opt_new();
    v6 = [v4 objectForKeyedSubscript:@"OrderedProfiles"];
    v7 = v6;
    if (v6)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v5 addObject:v12];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v9);
      }
    }

    v13 = [v4 objectForKeyedSubscript:@"HiddenProfiles"];
    v14 = v13;
    if (v13)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v22 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v5 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v22 objects:v30 count:16];
        }

        while (v16);
      }
    }

    v20 = [v5 copy];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_profilesFromStubsAtPath:(id)path orderedProfiles:(id *)profiles hiddenProfiles:(id *)hiddenProfiles
{
  pathCopy = path;
  fileManager = [(MCMigrator *)self fileManager];
  v41 = 0;
  v35 = pathCopy;
  v10 = [fileManager contentsOfDirectoryAtPath:pathCopy error:&v41];
  v11 = v41;

  if (v10)
  {
    v28 = v11;
    profilesCopy = profiles;
    hiddenProfilesCopy = hiddenProfiles;
    v33 = objc_opt_new();
    v32 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v29 = v10;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      v34 = kMCInstallProfileOptionFilterFlag;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          pathExtension = [v16 pathExtension];
          v18 = [pathExtension isEqualToString:@"stub"];

          if (v18)
          {
            v19 = [pathCopy stringByAppendingPathComponent:v16];
            v20 = [NSData dataWithContentsOfFile:v19];
            v21 = [MCProfile profileWithData:v20 outError:0];
            installOptions = [v21 installOptions];
            v23 = [installOptions objectForKeyedSubscript:v34];
            intValue = [v23 intValue];

            identifier = [v21 identifier];
            if (identifier)
            {
              if ((intValue & 2) != 0)
              {
                v26 = v33;
              }

              else
              {
                v26 = v32;
              }

              [v26 addObject:identifier];
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }

    *profilesCopy = [v32 copy];
    *hiddenProfilesCopy = [v33 copy];

    v11 = v28;
    v10 = v29;
  }

  else
  {
    v27 = _MCLogObjects[12];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v44 = v35;
      v45 = 2112;
      v46 = v11;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Cannot read directory for profiles stubs: %@: %@", buf, 0x16u);
    }

    *profiles = 0;
    *hiddenProfiles = 0;
  }
}

- (id)_generatedManifestIfNeededFromOrderedProfiles:(id)profiles hiddenProfiles:(id)hiddenProfiles existingManifest:(id)manifest
{
  profilesCopy = profiles;
  hiddenProfilesCopy = hiddenProfiles;
  manifestCopy = manifest;
  v10 = manifestCopy;
  if (profilesCopy || hiddenProfilesCopy || manifestCopy)
  {
    v12 = objc_opt_new();
    v13 = v12;
    if (profilesCopy)
    {
      v14 = [v12 setByAddingObjectsFromSet:profilesCopy];

      v13 = v14;
    }

    if (hiddenProfilesCopy)
    {
      v15 = [v13 setByAddingObjectsFromSet:hiddenProfilesCopy];

      v13 = v15;
    }

    if (v10 && ([v13 isSubsetOfSet:v10] & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v16 = objc_opt_new();
      if (profilesCopy)
      {
        allObjects = [profilesCopy allObjects];
        [v16 setObject:allObjects forKeyedSubscript:@"OrderedProfiles"];
      }

      if (hiddenProfilesCopy)
      {
        allObjects2 = [hiddenProfilesCopy allObjects];
        [v16 setObject:allObjects2 forKeyedSubscript:@"HiddenProfiles"];
      }

      v11 = [v16 copy];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_migrateSupervisionSettings
{
  v3 = objc_autoreleasePoolPush();
  if ((MCGestaltIsAppleTV() & 1) == 0)
  {
    v4 = MCSystemPublicInfoDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"Chaperone.plist"];

    fileManager = [(MCMigrator *)self fileManager];
    v7 = MCCloudConfigurationDetailsFilePath();
    v8 = [fileManager fileExistsAtPath:v7 isDirectory:0];

    if (v8)
    {
      v9 = _MCLogObjects[12];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Supervision settings have been migrated.", buf, 2u);
      }
    }

    else
    {
      fileManager2 = [(MCMigrator *)self fileManager];
      v11 = [fileManager2 fileExistsAtPath:v5 isDirectory:0];

      v12 = 0;
      if (v11)
      {
        v13 = _MCLogObjects[12];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Migrating supervision settings...", buf, 2u);
        }

        v14 = [NSDictionary dictionaryWithContentsOfFile:v5];
        v47 = [v14 objectForKeyedSubscript:@"organization"];
        v15 = +[MCManifest sharedManifest];
        allInstalledProfileIdentifiers = [v15 allInstalledProfileIdentifiers];

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        obj = allInstalledProfileIdentifiers;
        v17 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
        v48 = v14;
        if (v17)
        {
          v45 = v5;
          v18 = *v55;
          while (2)
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v55 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v20 = *(*(&v54 + 1) + 8 * i);
              v21 = objc_autoreleasePoolPush();
              v22 = +[MCManifest sharedManifest];
              v23 = [v22 installedProfileWithIdentifier:v20];

              if ([v23 containsPayloadOfClass:objc_opt_class()])
              {
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                payloads = [v23 payloads];
                v26 = [payloads countByEnumeratingWithState:&v50 objects:v60 count:16];
                if (v26)
                {
                  v27 = v26;
                  v44 = v3;
                  v28 = *v51;
                  while (2)
                  {
                    for (j = 0; j != v27; j = j + 1)
                    {
                      if (*v51 != v28)
                      {
                        objc_enumerationMutation(payloads);
                      }

                      v30 = *(*(&v50 + 1) + 8 * j);
                      v31 = objc_autoreleasePoolPush();
                      objc_opt_class();
                      LOBYTE(v17) = objc_opt_isKindOfClass();
                      if (v17)
                      {
                        v32 = v30;
                        v33 = _MCLogObjects[12];
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Supervision profile found. Using information in profile for migration.", buf, 2u);
                        }

                        nonChaperonePairingAllowed = [v32 nonChaperonePairingAllowed];
                        pairingCertificateData = [v32 pairingCertificateData];

                        objc_autoreleasePoolPop(v31);
                        goto LABEL_30;
                      }

                      objc_autoreleasePoolPop(v31);
                    }

                    v27 = [payloads countByEnumeratingWithState:&v50 objects:v60 count:16];
                    if (v27)
                    {
                      continue;
                    }

                    break;
                  }

                  pairingCertificateData = 0;
                  nonChaperonePairingAllowed = 1;
LABEL_30:
                  v3 = v44;
                }

                else
                {
                  pairingCertificateData = 0;
                  LOBYTE(v17) = 0;
                  nonChaperonePairingAllowed = 1;
                }

                objc_autoreleasePoolPop(v21);
                goto LABEL_33;
              }

              objc_autoreleasePoolPop(v21);
            }

            v17 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }

          pairingCertificateData = 0;
          nonChaperonePairingAllowed = 1;
LABEL_33:
          v5 = v45;
        }

        else
        {
          pairingCertificateData = 0;
          nonChaperonePairingAllowed = 1;
        }

        v12 = pairingCertificateData;

        fileManager3 = [(MCMigrator *)self fileManager];
        [fileManager3 removeItemAtPath:v5 error:0];

        v35 = +[NSMutableDictionary dictionary];
        v36 = v35;
        if (v47)
        {
          [v35 setObject:v47 forKeyedSubscript:kCCOrganizationNameKey];
        }

        v37 = [NSNumber numberWithBool:v17 & 1];
        [v36 setObject:v37 forKeyedSubscript:kCCIsSupervisedKey];

        v38 = [NSNumber numberWithBool:nonChaperonePairingAllowed];
        [v36 setObject:v38 forKeyedSubscript:kCCAllowPairingKey];

        if (v12)
        {
          v59 = v12;
          v39 = [NSArray arrayWithObjects:&v59 count:1];
          [v36 setObject:v39 forKeyedSubscript:kCCSupervisorHostCertificatesKey];
        }

        [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCIsMandatoryKey];
        [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCCloudConfigurationUICompleteKey];
        [v36 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCPostSetupProfileWasInstalledKey];
        v40 = MCCloudConfigurationDetailsFilePath();
        [v36 MCWriteToBinaryFile:v40];

        MCSendCloudConfigurationDetailsChangedNotification();
        v41 = +[MCRestrictionManagerWriter sharedManager];
        [v41 setBoolValue:nonChaperonePairingAllowed forSetting:MCFeatureHostPairingAllowed sender:@"MCMigrator.MigrateSupervisionSettings"];
      }

      v42 = _MCLogObjects[12];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Finished migrating supervision settings.", buf, 2u);
      }
    }

    fileManager4 = [(MCMigrator *)self fileManager];
    [fileManager4 removeItemAtPath:v5 error:0];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)_removeSupervisionProfiles
{
  context = objc_autoreleasePoolPush();
  v2 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v2 allInstalledProfileIdentifiers];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = allInstalledProfileIdentifiers;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = +[MCManifest sharedManifest];
        v12 = [v11 installedProfileWithIdentifier:v9];

        if ([v12 containsPayloadOfClass:objc_opt_class()])
        {
          v13 = +[MCInstaller sharedInstaller];
          [v13 removeProfileWithIdentifier:v9 installationType:objc_msgSend(v12 source:{"installType"), @"Supervision Profile Removal"}];

          v14 = _MCLogObjects[12];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Removed supervision profile.", buf, 2u);
          }
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_cleanUpAppConfiguration
{
  v47 = objc_autoreleasePoolPush();
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Cleaning up app configuration.", buf, 2u);
  }

  v3 = +[NSMutableSet set];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v4 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v4 allInstalledProfileIdentifiers];

  v49 = [allInstalledProfileIdentifiers countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (v49)
  {
    v48 = *v66;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v66 != v48)
        {
          objc_enumerationMutation(allInstalledProfileIdentifiers);
        }

        v7 = *(*(&v65 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v8 = +[MCManifest sharedManifest];
        v9 = [v8 installedProfileWithIdentifier:v7];

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        payloads = [v9 payloads];
        v11 = [payloads countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v62;
          do
          {
            for (j = 0; j != v12; j = j + 1)
            {
              if (*v62 != v13)
              {
                objc_enumerationMutation(payloads);
              }

              v15 = *(*(&v61 + 1) + 8 * j);
              v16 = objc_autoreleasePoolPush();
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                domains = [v15 domains];
                [v3 addObjectsFromArray:domains];
              }

              objc_autoreleasePoolPop(v16);
            }

            v12 = [payloads countByEnumeratingWithState:&v61 objects:v73 count:16];
          }

          while (v12);
        }

        objc_autoreleasePoolPop(context);
      }

      v49 = [allInstalledProfileIdentifiers countByEnumeratingWithState:&v65 objects:v74 count:16];
    }

    while (v49);
  }

  v18 = MDMAppManagementFilePath();
  v19 = [NSDictionary dictionaryWithContentsOfFile:v18];

  contexta = v19;
  v20 = [v19 objectForKeyedSubscript:kMDMManagedAppMetadataByBundleIDKey];
  allKeys = [v20 allKeys];

  v50 = allKeys;
  [v3 addObjectsFromArray:allKeys];
  v22 = +[MCManagedPreferencesManager globalManagedPreferencesDomain];
  [v3 addObject:v22];

  v23 = +[NSMutableArray array];
  fileManager = [v46 fileManager];
  v25 = MCSystemPreferencesDirectory();
  v26 = [fileManager contentsOfDirectoryAtPath:v25 error:0];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v58;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v58 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v57 + 1) + 8 * k);
        v33 = objc_autoreleasePoolPush();
        stringByDeletingPathExtension = [v32 stringByDeletingPathExtension];
        if (([stringByDeletingPathExtension rangeOfString:@"com.apple." options:8] || (objc_msgSend(stringByDeletingPathExtension, "isEqualToString:", @"com.apple.Numbers") & 1) != 0 || (objc_msgSend(stringByDeletingPathExtension, "isEqualToString:", @"com.apple.Pages") & 1) != 0 || objc_msgSend(stringByDeletingPathExtension, "isEqualToString:", @"com.apple.Keynote")) && (objc_msgSend(v3, "containsObject:", stringByDeletingPathExtension) & 1) == 0)
        {
          [v23 addObject:stringByDeletingPathExtension];
        }

        objc_autoreleasePoolPop(v33);
      }

      v29 = [v27 countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v29);
  }

  if ([v23 count])
  {
    v35 = _MCLogObjects[12];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v35;
      v37 = [v23 count];
      *buf = 134217984;
      v71 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Removing %lu unused managed default domains.", buf, 0xCu);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v38 = v23;
    v39 = [v38 countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v54;
      do
      {
        for (m = 0; m != v40; m = m + 1)
        {
          if (*v54 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v53 + 1) + 8 * m);
          if ([v43 length])
          {
            [MCManagedPreferencesManager setManagedPreferences:&__NSDictionary0__struct forDomain:v43];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v53 objects:v69 count:16];
      }

      while (v40);
    }
  }

  v44 = _MCLogObjects[12];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Finished cleaning up app configuration.", buf, 2u);
  }

  objc_autoreleasePoolPop(v47);
}

- (void)_removeUnmanageableApps
{
  v2 = objc_autoreleasePoolPush();
  v34[0] = MCiBooksBundleIdentifier;
  v34[1] = MCShortcutsOldBundleIdentifier;
  v3 = [NSArray arrayWithObjects:v34 count:2];
  v4 = [NSSet setWithArray:v3];

  v5 = MDMAppManagementFilePath();
  v6 = [NSDictionary dictionaryWithContentsOfFile:v5];

  if ([v6 count])
  {
    v7 = kMDMManagedAppMetadataByBundleIDKey;
    v8 = [v6 objectForKeyedSubscript:kMDMManagedAppMetadataByBundleIDKey];
    v9 = [v8 mutableCopy];

    if ([v9 count])
    {
      v10 = _MCLogObjects[12];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cleaning up managed apps...", buf, 2u);
      }

      v24 = v7;
      v26 = v2;
      v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v9 count]);
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v9;
      v12 = v9;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v28;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v27 + 1) + 8 * i);
            if ([v4 containsObject:v18])
            {
              ++v15;
            }

            else
            {
              v19 = [v12 objectForKeyedSubscript:v18];
              [v11 setObject:v19 forKeyedSubscript:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      if (([v12 isEqualToDictionary:v11] & 1) == 0)
      {
        v20 = [v6 mutableCopy];
        [v20 setObject:v11 forKeyedSubscript:v24];
        v21 = MDMAppManagementFilePath();
        [v20 MCWriteToBinaryFile:v21];

        v22 = _MCLogObjects[12];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v32 = v15;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Removed %d apps.", buf, 8u);
        }
      }

      v23 = _MCLogObjects[12];
      v9 = v25;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Finished cleaning up managed apps.", buf, 2u);
      }

      v2 = v26;
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_correctInstallOptionsOnProfileStubs
{
  context = objc_autoreleasePoolPush();
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Correcting stubs with incorrect install options...", buf, 2u);
  }

  v3 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v3 allInstalledProfileIdentifiers];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = allInstalledProfileIdentifiers;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v29 = *v31;
    v7 = kMCInstallProfileOptionIsInstalledByMDM;
    v28 = kMCInstallProfileOptionsIsInstalledByDeclarativeManagement;
    v8 = kMCInstallProfileOptionManagingProfileIdentifier;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = +[MCManifest sharedManifest];
        v13 = [v12 installedProfileWithIdentifier:v10];

        installOptions = [v13 installOptions];
        v15 = [installOptions objectForKeyedSubscript:v7];
        LODWORD(v12) = [v15 BOOLValue];

        v16 = [installOptions objectForKeyedSubscript:v28];
        bOOLValue = [v16 BOOLValue];

        v18 = [installOptions objectForKeyedSubscript:v8];
        v19 = v18;
        if (v12)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (v20 && (bOOLValue & 1) == 0)
        {
          v21 = [installOptions mutableCopy];
          [v21 removeObjectForKey:v7];
          v22 = [v21 copy];
          [v13 setInstallOptions:v22];

          if ([v13 isInstalledForUser])
          {
            MCUserProfileStorageDirectory();
          }

          else
          {
            MCSystemProfileStorageDirectory();
          }
          v23 = ;
          [v13 writeStubToDirectory:v23];
        }

        objc_autoreleasePoolPop(v11);
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  v24 = _MCLogObjects[12];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Completed install options corrections.", buf, 2u);
  }

  objc_autoreleasePoolPop(contexta);
}

- (void)_tagManagedAccounts
{
  context = objc_autoreleasePoolPush();
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Tagging managed accounts...", buf, 2u);
  }

  v3 = +[ACAccountStore defaultStore];
  v20 = +[MCDependencyManager sharedManager];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v3;
  obj = [v3 accounts];
  v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    v8 = kMCDMManagedProfileToManagingProfileKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        mcProfileUUID = [v10 mcProfileUUID];
        if (mcProfileUUID)
        {
          v12 = [v20 dependentsOfParent:mcProfileUUID inDomain:v8];
          v13 = [v12 count];

          v14 = v13 != 0;
          if (v13)
          {
            ++v6;
          }
        }

        else
        {
          v14 = 0;
        }

        v15 = [NSNumber numberWithBool:v14];
        [v10 setAccountProperty:v15 forKey:@"MCAccountIsManaged"];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v16 = _MCLogObjects[12];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Completed tagging %d accounts as managed.", buf, 8u);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_tagIMAPAccountsWithProfileAndPayloadProperties
{
  v34 = objc_autoreleasePoolPush();
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Adding missing tags to IMAP accounts...", buf, 2u);
  }

  v41 = +[MailAccount mailAccounts];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v3 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v3 allInstalledProfileIdentifiers];

  obj = allInstalledProfileIdentifiers;
  v38 = [allInstalledProfileIdentifiers countByEnumeratingWithState:&v61 objects:v69 count:16];
  v5 = 0;
  if (v38)
  {
    v37 = *v62;
    v6 = MailAccountManagedTag;
    v47 = kMCAccountProfileUUIDKey;
    v45 = MailAccountManagedTag;
    v46 = kMCAccountPayloadUUIDKey;
    v7 = &MCRestrictedBoolValueKey_ptr;
    do
    {
      v8 = 0;
      do
      {
        if (*v62 != v37)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v40 = v8;
        v10 = *(*(&v61 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v11 = +[MCManifest sharedManifest];
        v12 = [v11 installedProfileWithIdentifier:v10];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v48 = v12;
        payloads = [v12 payloads];
        v13 = [payloads countByEnumeratingWithState:&v57 objects:v68 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v58;
          v42 = *v58;
          do
          {
            v16 = 0;
            v43 = v14;
            do
            {
              if (*v58 != v15)
              {
                objc_enumerationMutation(payloads);
              }

              v17 = *(*(&v57 + 1) + 8 * v16);
              v18 = objc_autoreleasePoolPush();
              v19 = v7[55];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v50 = v17;
                persistentResourceID = [v50 persistentResourceID];
                v53 = 0u;
                v54 = 0u;
                v55 = 0u;
                v56 = 0u;
                v51 = v41;
                v21 = [v51 countByEnumeratingWithState:&v53 objects:v67 count:16];
                if (v21)
                {
                  v22 = v21;
                  v23 = *v54;
                  v49 = persistentResourceID;
                  do
                  {
                    for (i = 0; i != v22; i = i + 1)
                    {
                      if (*v54 != v23)
                      {
                        objc_enumerationMutation(v51);
                      }

                      v25 = *(*(&v53 + 1) + 8 * i);
                      v26 = [v25 accountPropertyForKey:v6];
                      v27 = v26;
                      if (v26 && [v26 isEqualToString:persistentResourceID])
                      {
                        [v48 UUID];
                        v28 = v52 = v5;
                        [v25 setAccountProperty:v28 forKey:v47];

                        uUID = [v50 UUID];
                        [v25 setAccountProperty:uUID forKey:v46];

                        deliveryAccount = [v25 deliveryAccount];
                        uUID2 = [v48 UUID];
                        [deliveryAccount setAccountProperty:uUID2 forKey:v47];

                        uUID3 = [v50 UUID];
                        [deliveryAccount setAccountProperty:uUID3 forKey:v46];

                        v6 = v45;
                        persistentResourceID = v49;
                        v5 = v52 + 1;
                      }
                    }

                    v22 = [v51 countByEnumeratingWithState:&v53 objects:v67 count:16];
                  }

                  while (v22);
                }

                v7 = &MCRestrictedBoolValueKey_ptr;
                v15 = v42;
                v14 = v43;
              }

              objc_autoreleasePoolPop(v18);
              v16 = v16 + 1;
            }

            while (v16 != v14);
            v14 = [payloads countByEnumeratingWithState:&v57 objects:v68 count:16];
          }

          while (v14);
        }

        objc_autoreleasePoolPop(context);
        v8 = v40 + 1;
      }

      while ((v40 + 1) != v38);
      v38 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v38);
  }

  v33 = _MCLogObjects[12];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v66 = v5;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Done adding missing tags to %d IMAP accounts.", buf, 8u);
  }

  objc_autoreleasePoolPop(v35);
}

- (void)_validateCloudConfiguration
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MCCloudConfigurationWriter sharedInstance];
  v4 = MCCloudConfigurationDetailsFilePath();
  v5 = [NSMutableDictionary dictionaryWithContentsOfFile:v4];

  v18 = 0;
  v6 = [v3 _validateDetails:v5 outReasonWhyInvalid:&v18];
  v7 = v18;
  v8 = _MCLogObjects[12];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Cloud configuration is valid";
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Cloud configuration is invalid: %{public}@", buf, 0xCu);
    }

    [v5 removeObjectForKey:kCCSkipSetupKey];
    v17 = 0;
    v13 = [v3 _validateDetails:v5 outReasonWhyInvalid:&v17];
    v7 = v17;
    v14 = _MCLogObjects[12];
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Fixed cloud configuration by deleting skip keys", buf, 2u);
      }

      v16 = MCCloudConfigurationDetailsFilePath();
      [v5 MCWriteToBinaryFile:v16];

      MCSendCloudConfigurationDetailsChangedNotification();
    }

    else if (v15)
    {
      *buf = 138543362;
      v20 = v7;
      v9 = "Unable to fix cloud configuration: %{public}@";
      v10 = v14;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_12;
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_correctCloudConfigurationIfNecessary
{
  v2 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v2);
}

- (void)_wakeDaemonsPostMigration
{
  v2 = _MCLogObjects[12];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Waking daemons post migration", v4, 2u);
  }

  v3 = MCPowerlogControlReadMode();
  MCPowerlogControlSwitchMode();
}

- (void)_removeLegacyAPNConfigurations
{
  context = objc_autoreleasePoolPush();
  v2 = +[MCAPNPayload apnDomainName];
  v3 = [MCManagedPreferencesManager managedPreferencesForDomain:v2];

  if (v3)
  {
    v4 = _MCLogObjects[12];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MCMigrator removing APN defaults: %@", buf, 0xCu);
    }

    allKeys = [v3 allKeys];
    v6 = +[MCAPNPayload apnDomainName];
    [MCManagedPreferencesManager removeManagedPreferences:allKeys fromDomain:v6];
  }

  v7 = +[MCManifest sharedManifest];
  allInstalledProfileIdentifiers = [v7 allInstalledProfileIdentifiers];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = allInstalledProfileIdentifiers;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = +[MCManifest sharedManifest];
        v16 = [v15 installedProfileWithIdentifier:v14];

        if ([v16 containsPayloadOfClass:objc_opt_class()])
        {
          v17 = +[MCInstaller sharedInstaller];
          [v17 removeProfileWithIdentifier:v14 installationType:objc_msgSend(v16 source:{"installType"), @"migrator APN cleanup"}];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  objc_autoreleasePoolPop(context);
}

- (void)_correctMDMConfigurationFile
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MDMConfiguration sharedConfiguration];
  [v3 refreshDetailsFromDisk];
  details = [v3 details];

  if (details)
  {
    details2 = [v3 details];
    v6 = [details2 objectForKeyedSubscript:kMDMIsProfileLockedKey];

    if (v6)
    {
      isLocked = 0;
    }

    else
    {
      v8 = +[MCInstaller sharedInstaller];
      verifiedMDMProfileIdentifierWithCleanUp = [v8 verifiedMDMProfileIdentifierWithCleanUp];

      if (verifiedMDMProfileIdentifierWithCleanUp)
      {
        v10 = [MCManifest installedProfileWithIdentifier:verifiedMDMProfileIdentifierWithCleanUp];
        isLocked = [v10 isLocked];
      }

      else
      {
        isLocked = 0;
      }
    }

    if ([v3 isADEProfile])
    {
      bOOLValue = 0;
    }

    else
    {
      v12 = +[MCManifest sharedManifest];
      installedMDMProfile = [v12 installedMDMProfile];

      installOptions = [installedMDMProfile installOptions];
      v15 = [installOptions objectForKeyedSubscript:kMCInstallProfileOptionIsCloudProfile];
      bOOLValue = [v15 BOOLValue];

      if (bOOLValue)
      {
        v16 = _MCLogObjects[12];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "MCMigrator: Updating isADEProfile value...", buf, 2u);
        }
      }
    }

    if (v6)
    {
      v17 = bOOLValue == 0;
    }

    else
    {
      v17 = 0;
    }

    if (!v17)
    {
      v20 = 0;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10003E6CC;
      v21[3] = &unk_10011C380;
      v22 = v6 == 0;
      v23 = isLocked;
      v24 = bOOLValue;
      v25 = bOOLValue;
      [v3 updateMDMConfigurationWithUpdateBlock:v21 error:&v20];
      v18 = v20;
      if (v18)
      {
        v19 = _MCLogObjects[12];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MCMigrator: _correctMDMConfigurationFile Failed to update MDM config with error: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_checkValidUserEnrollment
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[MCManifest sharedManifest];
  installedMDMProfile = [v3 installedMDMProfile];

  if (installedMDMProfile)
  {
    v5 = [installedMDMProfile payloadsWithClass:objc_opt_class()];
    firstObject = [v5 firstObject];

    if (firstObject)
    {
      if (([firstObject isUserEnrollment] & 1) == 0)
      {
        enrollmentID = [firstObject enrollmentID];

        if (enrollmentID)
        {
          v8 = _MCLogObjects[12];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Fixing UserEnrollment in profile stub and MDM.plist", buf, 2u);
          }

          [firstObject setIsUserEnrollment:1];
          if ([installedMDMProfile isInstalledForUser])
          {
            MCUserProfileStorageDirectory();
          }

          else
          {
            MCSystemProfileStorageDirectory();
          }
          v9 = ;
          [installedMDMProfile writeStubToDirectory:v9];
          v10 = +[MDMConfiguration sharedConfiguration];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10003E9F4;
          v14[3] = &unk_10011C3A8;
          v15 = firstObject;
          v13 = 0;
          [v10 updateMDMConfigurationWithUpdateBlock:v14 error:&v13];
          v11 = v13;

          if (v11)
          {
            v12 = _MCLogObjects[12];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v17 = v11;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "MCMigrator: _checkValidUserEnrollment Failed to update MDM config with error: %{public}@", buf, 0xCu);
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

@end