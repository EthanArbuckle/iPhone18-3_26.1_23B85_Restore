@interface MIInstallationJournalEntry
+ (void)_attemptLSUpdateWithDiscoveredStateForIdentity:(id)a3 domain:(unint64_t)a4;
- (BOOL)_beginLaunchServicesRegistrationWithError:(id *)a3;
- (BOOL)_commitContainersWithError:(id *)a3;
- (BOOL)_findBundleContainerForToken:(id)a3 error:(id *)a4;
- (BOOL)_linkToParentApplication:(id *)a3;
- (BOOL)_performJournaledInstallAsReplay:(BOOL)a3 withError:(id *)a4;
- (BOOL)_populateSigningInfoWithError:(id *)a3;
- (BOOL)_refreshUUIDForContainer:(id)a3 withError:(id *)a4;
- (BOOL)_updateJournalPhaseTo:(unint64_t)a3 withError:(id *)a4;
- (BOOL)_updateReferencesWithError:(id *)a3;
- (BOOL)_writeJournalEntryWithError:(id *)a3;
- (BOOL)cleanUpJournaledDataOnDiskWithError:(id *)a3;
- (BOOL)finalizeContainersWithError:(id *)a3;
- (BOOL)finalizeWithError:(id *)a3;
- (BOOL)isPlaceholderInstall;
- (BOOL)isStagedUpdate;
- (BOOL)makeStagedBackgroundUpdateLive:(id *)a3;
- (BOOL)performLaunchServicesRegistrationWithError:(id *)a3;
- (BOOL)stageUpdateForLaterWithError:(id *)a3;
- (MIExecutableBundle)bundle;
- (MIInstallationJournalEntry)initWithCoder:(id)a3;
- (MIInstallationJournalEntry)initWithIdentity:(id)a3 bundleContainer:(id)a4 existingBundleContainer:(id)a5 installationDomain:(unint64_t)a6 operationType:(unint64_t)a7 installOptions:(id)a8 bundleSigningInfo:(id)a9;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (id)_containerLinkManager;
- (id)_gatherLaunchServicesRegistrationInfoForStagedPlaceholder:(BOOL)a3 withError:(id *)a4;
- (id)installParallelPlaceholderForStagedUpdateFromURL:(id)a3 withResultingRecord:(id *)a4 error:(id *)a5;
- (void)_purgeJournalEntry;
- (void)_updateContainerStatePostCommit;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIInstallationJournalEntry

- (id)_containerLinkManager
{
  v2 = [(MIInstallationJournalEntry *)self installationDomain];

  return [MIContainerLinkManager sharedInstanceForDomain:v2];
}

+ (void)_attemptLSUpdateWithDiscoveredStateForIdentity:(id)a3 domain:(unint64_t)a4
{
  v6 = a3;
  v7 = MIStringForInstallationDomain();
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v10 = v6;
    v11 = v7;
    MOLogWrite();
  }

  v12 = 0;
  v8 = [a1 _registerUsingDiscoveredInfoForAppIdentity:v6 inDomain:a4 error:{&v12, v10, v11}];
  v9 = v12;

  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058C04();
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }
  }
}

- (MIInstallationJournalEntry)initWithIdentity:(id)a3 bundleContainer:(id)a4 existingBundleContainer:(id)a5 installationDomain:(unint64_t)a6 operationType:(unint64_t)a7 installOptions:(id)a8 bundleSigningInfo:(id)a9
{
  v15 = a3;
  v27 = a4;
  v26 = a5;
  v16 = a8;
  v17 = a9;
  v28.receiver = self;
  v28.super_class = MIInstallationJournalEntry;
  v18 = [(MIInstallationJournalEntry *)&v28 init];
  if (v18)
  {
    v19 = [v15 copy];
    identity = v18->_identity;
    v18->_identity = v19;

    objc_storeStrong(&v18->_bundleContainer, a4);
    objc_storeStrong(&v18->_existingBundleContainer, a5);
    v18->_installationDomain = a6;
    v18->_operationType = a7;
    objc_storeStrong(&v18->_installOptions, a8);
    objc_storeStrong(&v18->_bundleSigningInfo, a9);
    v18->_journalPhase = 1;
    v18->_attemptCount = 0;
    v21 = objc_opt_new();
    journalEntryID = v18->_journalEntryID;
    v18->_journalEntryID = v21;

    if (_os_feature_enabled_impl())
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v24 = v18->_journalEntryID;
        v25 = v18->_identity;
        MOLogWrite();
      }
    }
  }

  return v18;
}

- (BOOL)_populateSigningInfoWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self bundle];
  v12 = 0;
  v6 = [v5 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v12];
  v8 = v12;
  if (v6)
  {
    objc_storeStrong(&self->_bundleSigningInfo, v6);
  }

  else
  {
    v9 = sub_100010734("[MIInstallationJournalEntry _populateSigningInfoWithError:]", 230, MIInstallerErrorDomain, 4, v8, 0, @"Failed to get signing info for bundle %@", v7, v5);

    if (a3)
    {
      v10 = v9;
      *a3 = v9;
    }

    v8 = v9;
  }

  return v6 != 0;
}

- (BOOL)_findBundleContainerForToken:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (self->_journalPhase == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v16 = 0;
  v8 = [[MIBundleContainer alloc] initWithToken:v6 options:v7 error:&v16];
  v9 = v16;
  bundleContainer = self->_bundleContainer;
  self->_bundleContainer = v8;

  v12 = self->_bundleContainer;
  if (!v12)
  {
    v13 = sub_100010734("[MIInstallationJournalEntry _findBundleContainerForToken:error:]", 259, MIInstallerErrorDomain, 186, v9, 0, @"Failed to locate bundle container for token %@", v11, v6);

    if (a4)
    {
      v14 = v13;
      *a4 = v13;
    }

    v9 = v13;
  }

  return v12 != 0;
}

- (MIInstallationJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v92.receiver = self;
  v92.super_class = MIInstallationJournalEntry;
  v5 = [(MIInstallationJournalEntry *)&v92 init];
  if (!v5)
  {
    v11 = 0;
LABEL_6:
    v12 = v5;
    v13 = v11;
    goto LABEL_18;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
  identity = v5->_identity;
  v5->_identity = v6;

  if (!v5->_identity)
  {
    v14 = MIInstallerErrorDomain;
    v15 = @"Decoded object was missing identity.";
    v16 = 280;
LABEL_12:
    sub_100010734("[MIInstallationJournalEntry initWithCoder:]", v16, v14, 186, 0, 0, v15, v8, v72);
    goto LABEL_13;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"journalPhase"];
  v5->_journalPhase = [v9 unsignedIntegerValue];

  if (v5->_journalPhase - 8 <= 0xFFFFFFFFFFFFFFF8)
  {
    sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 287, MIInstallerErrorDomain, 186, 0, 0, @"Got invalid journal phase: %lu.", v10, v5->_journalPhase);
    v13 = LABEL_13:;
    v22 = 0;
    goto LABEL_14;
  }

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attemptCount"];
  v5->_attemptCount = [v17 unsignedIntegerValue];

  ++v5->_attemptCount;
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationDomain"];
  v5->_installationDomain = [v18 unsignedIntegerValue];

  installationDomain = v5->_installationDomain;
  if ((MIIsValidInstallationDomain() & 1) == 0)
  {
    v14 = MIInstallerErrorDomain;
    v72 = installationDomain;
    v15 = @"Got invalid installation domain: %lu.";
    v16 = 297;
    goto LABEL_12;
  }

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operationType"];
  v5->_operationType = [v20 unsignedIntegerValue];

  if (v5->_operationType - 6 <= 0xFFFFFFFFFFFFFFFALL)
  {
    sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 306, MIInstallerErrorDomain, 186, 0, 0, @"Got invalid journal operation type: %lu.", v21, v5->_operationType);
    goto LABEL_13;
  }

  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installOptions"];
  installOptions = v5->_installOptions;
  v5->_installOptions = v25;

  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"journalEntryID"];
  journalEntryID = v5->_journalEntryID;
  v5->_journalEntryID = v27;

  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BundleContainerToken"];
  if (!v29)
  {
    v14 = MIInstallerErrorDomain;
    v15 = @"Serialized journal entry did not contain bundle container token.";
    v16 = 316;
    goto LABEL_12;
  }

  v30 = v29;
  v91 = 0;
  v31 = [(MIInstallationJournalEntry *)v5 _findBundleContainerForToken:v29 error:&v91];
  v13 = v91;
  if (!v31)
  {
    v22 = v30;
    goto LABEL_14;
  }

  [(MIInstallationJournalEntry *)v5 _populateSigningInfoWithError:0];
  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ExistingBundleContainerToken"];

  if ([(MIInstallationJournalEntry *)v5 journalPhase]< 2)
  {
    v76 = v22;
    if (v22)
    {
      objc_storeStrong(&v5->_existingBundleContainer, v5->_bundleContainer);
    }

LABEL_30:
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkToParentBundleID"];
    linkToParentBundleID = v5->_linkToParentBundleID;
    v5->_linkToParentBundleID = v36;

    v38 = objc_opt_new();
    v39 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NoLongerPresentContainerTokens"];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v40 = [v39 countByEnumeratingWithState:&v86 objects:v94 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v87;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v87 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [[MIPluginDataContainer alloc] initWithToken:*(*(&v86 + 1) + 8 * i) options:0 error:0];
          if (v44)
          {
            [v38 addObject:v44];
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v86 objects:v94 count:16];
      }

      while (v41);
    }

    if ([v38 count])
    {
      v45 = [v38 copy];
      noLongerPresentAppExtensionDataContainers = v5->_noLongerPresentAppExtensionDataContainers;
      v5->_noLongerPresentAppExtensionDataContainers = v45;
    }

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DataContainerToken"];
    if (v47)
    {
      v85 = v13;
      v48 = [[MIDataContainer alloc] initWithToken:v47 options:0 error:&v85];
      v49 = v85;

      dataContainer = v5->_dataContainer;
      v5->_dataContainer = v48;

      if (!v5->_dataContainer)
      {
        v13 = sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 374, MIInstallerErrorDomain, 186, v49, 0, @"Expected to find data container but lookup failed.", v51, v72);

LABEL_62:
        v22 = v76;
        goto LABEL_14;
      }

      v13 = v49;
    }

    v75 = v47;
    v52 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AppExtensionDataContainerTokens"];
    [v38 removeAllObjects];
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v53 = v52;
    v54 = [v53 countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v54)
    {
      v55 = v54;
      obj = v53;
      v78 = *v82;
      while (2)
      {
        v56 = 0;
        v57 = v13;
        do
        {
          if (*v82 != v78)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v81 + 1) + 8 * v56);
          v59 = [MIPluginDataContainer alloc];
          v80 = v57;
          v60 = [v59 initWithToken:v58 options:0 error:&v80];
          v13 = v80;

          if (!v60)
          {
            v68 = sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 385, MIInstallerErrorDomain, 186, v13, 0, @"Expected to find app extension data container but lookup failed.", v61, v72);
            v53 = obj;
            v69 = obj;
            v67 = v75;
            goto LABEL_60;
          }

          [v38 addObject:v60];

          v56 = v56 + 1;
          v57 = v13;
        }

        while (v55 != v56);
        v53 = obj;
        v55 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
        if (v55)
        {
          continue;
        }

        break;
      }
    }

    if ([v38 count])
    {
      v62 = [v38 copy];
      appExtensionDataContainers = v5->_appExtensionDataContainers;
      v5->_appExtensionDataContainers = v62;
    }

    v64 = [(MIInstallationJournalEntry *)v5 bundle];
    v79 = v13;
    v65 = [v64 appExtensionBundlesWithError:&v79];
    v11 = v79;

    appExtensionBundles = v5->_appExtensionBundles;
    v5->_appExtensionBundles = v65;

    v67 = v75;
    if (v5->_appExtensionBundles)
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) >= 7)
      {
        v73 = v5->_journalEntryID;
        v74 = v5->_identity;
        MOLogWrite();
      }

      goto LABEL_6;
    }

    v70 = MIInstallerErrorDomain;
    v69 = [(MIInstallationJournalEntry *)v5 bundle];
    v68 = sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 397, v70, 186, v11, 0, @"Failed to locate app extension bundles in bundle %@.", v71, v69);
    v13 = v11;
LABEL_60:

    v13 = v68;
    goto LABEL_62;
  }

  if (!v22)
  {
    v76 = 0;
    goto LABEL_30;
  }

  v90 = v13;
  v32 = [[MIBundleContainer alloc] initWithToken:v22 options:1 error:&v90];
  v33 = v90;

  existingBundleContainer = v5->_existingBundleContainer;
  v5->_existingBundleContainer = v32;

  if (v5->_existingBundleContainer)
  {
    v76 = v22;
    v13 = v33;
    goto LABEL_30;
  }

  v13 = sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 332, MIInstallerErrorDomain, 186, v33, 0, @"Expected to find existing bundle container but lookup failed.", v35, v72);

LABEL_14:
  if (v5->_identity)
  {
    v23 = v5->_installationDomain;
    if (MIIsValidInstallationDomain())
    {
      [objc_opt_class() _attemptLSUpdateWithDiscoveredStateForIdentity:v5->_identity domain:v5->_installationDomain];
    }
  }

  [v4 failWithError:v13];
  v12 = 0;
LABEL_18:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIInstallationJournalEntry *)self identity];
  [v4 encodeObject:v5 forKey:@"identity"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self journalPhase]];
  [v4 encodeObject:v6 forKey:@"journalPhase"];

  v7 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self attemptCount]];
  [v4 encodeObject:v7 forKey:@"attemptCount"];

  v8 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self installationDomain]];
  [v4 encodeObject:v8 forKey:@"installationDomain"];

  v9 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self operationType]];
  [v4 encodeObject:v9 forKey:@"operationType"];

  v10 = [(MIInstallationJournalEntry *)self installOptions];
  [v4 encodeObject:v10 forKey:@"installOptions"];

  v11 = [(MIInstallationJournalEntry *)self journalEntryID];
  [v4 encodeObject:v11 forKey:@"journalEntryID"];

  v12 = [MIBundleContainerToken alloc];
  v13 = [(MIInstallationJournalEntry *)self bundleContainer];
  v14 = [v12 initWithContainer:v13];

  [v4 encodeObject:v14 forKey:@"BundleContainerToken"];
  v15 = [(MIInstallationJournalEntry *)self existingBundleContainer];
  v35 = v15;
  if (v15)
  {
    v16 = [[MIBundleContainerToken alloc] initWithContainer:v15];

    [v4 encodeObject:v16 forKey:@"ExistingBundleContainerToken"];
    v14 = v16;
  }

  v17 = [(MIInstallationJournalEntry *)self linkToParentBundleID];
  [v4 encodeObject:v17 forKey:@"linkToParentBundleID"];

  v18 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v19 = self->_noLongerPresentAppExtensionDataContainers;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v41;
    do
    {
      v23 = 0;
      do
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [[MIContainerToken alloc] initWithContainer:*(*(&v40 + 1) + 8 * v23)];
        [v18 addObject:v24];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v21);
  }

  if ([v18 count])
  {
    v25 = [v18 copy];
    [v4 encodeObject:v25 forKey:@"NoLongerPresentContainerTokens"];
  }

  v26 = [(MIInstallationJournalEntry *)self dataContainer];
  if (v26)
  {
    v27 = [[MIContainerToken alloc] initWithContainer:v26];
    [v4 encodeObject:v27 forKey:@"DataContainerToken"];
  }

  [v18 removeAllObjects];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = self->_appExtensionDataContainers;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      v32 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [[MIContainerToken alloc] initWithContainer:*(*(&v36 + 1) + 8 * v32)];
        [v18 addObject:v33];

        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v30);
  }

  if ([v18 count])
  {
    v34 = [v18 copy];
    [v4 encodeObject:v34 forKey:@"AppExtensionDataContainerTokens"];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MIInstallationJournalEntry *)self identity];
  [(MIInstallationJournalEntry *)self installationDomain];
  v6 = MIStringForInstallationDomain();
  v7 = [(MIInstallationJournalEntry *)self operationType];
  v8 = sub_1000317C4([(MIInstallationJournalEntry *)self journalPhase]);
  v9 = [(MIInstallationJournalEntry *)self bundle];
  v10 = [v9 bundleVersion];
  v11 = [NSString stringWithFormat:@"<%@<%p> %@/%@ op:%lu phase:%@ version:%@>", v4, self, v5, v6, v7, v8, v10];

  return v11;
}

- (NSString)uniqueIdentifier
{
  v3 = [(MIInstallationJournalEntry *)self journalEntryID];
  v4 = [v3 UUIDString];
  v5 = [(MIInstallationJournalEntry *)self identity];
  v6 = [v5 bundleID];
  v7 = [NSString stringWithFormat:@"%@_%@", v4, v6];

  return v7;
}

- (MIExecutableBundle)bundle
{
  v2 = [(MIInstallationJournalEntry *)self bundleContainer];
  v3 = [v2 bundle];

  return v3;
}

- (BOOL)isPlaceholderInstall
{
  v2 = [(MIInstallationJournalEntry *)self installOptions];
  v3 = [v2 installTargetType];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (BOOL)isStagedUpdate
{
  v2 = [(MIInstallationJournalEntry *)self bundleContainer];
  v3 = [v2 isStagedContainer];

  return v3;
}

- (BOOL)_writeJournalEntryWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self _journalInstance];
  LOBYTE(a3) = [v5 writeJournalEntry:self withError:a3];

  return a3;
}

- (void)_purgeJournalEntry
{
  v3 = [(MIInstallationJournalEntry *)self _journalInstance];
  [v3 purgeJournalEntry:self withError:0];
}

- (BOOL)_updateJournalPhaseTo:(unint64_t)a3 withError:(id *)a4
{
  [(MIInstallationJournalEntry *)self setJournalPhase:?];
  v15 = 0;
  v7 = [(MIInstallationJournalEntry *)self _writeJournalEntryWithError:&v15];
  v8 = v15;
  if (!v7)
  {
    v9 = MIInstallerErrorDomain;
    v14 = [(MIInstallationJournalEntry *)self identity];
    v11 = sub_100010734("[MIInstallationJournalEntry _updateJournalPhaseTo:withError:]", 541, v9, 188, v8, 0, @"Failed to write updated journal with phase %lu for %@", v10, a3);

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
    }

    v8 = v11;
  }

  return v7;
}

- (BOOL)_refreshUUIDForContainer:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (!-[MIInstallationJournalEntry shouldModifyExistingContainers](self, "shouldModifyExistingContainers") || [v6 status] != 1)
  {
    v9 = 0;
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v16 = 0;
  v7 = [v6 regenerateDirectoryUUIDWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v10 = [v6 identifier];
      v11 = [v6 containerURL];
      v15 = [v11 path];
      MOLogWrite();
    }

    goto LABEL_8;
  }

  if (a4)
  {
    v14 = v8;
    v12 = 0;
    *a4 = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (BOOL)_linkToParentApplication:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self linkToParentBundleID];
  if (v5)
  {
    v6 = [(MIInstallationJournalEntry *)self _containerLinkManager];
    v7 = [(MIInstallationJournalEntry *)self bundleContainer];
    v8 = [v7 identifier];
    v13 = 0;
    v9 = [v6 linkChild:v8 toParent:v5 error:&v13];
    v10 = v13;

    if (a3 && (v9 & 1) == 0)
    {
      v11 = v10;
      v9 = 0;
      *a3 = v10;
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  return v9;
}

- (BOOL)_updateReferencesWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self _keychainAccessGroupTracker];
  v6 = [(MIInstallationJournalEntry *)self _freeProfileValidatedAppTracker];
  v7 = [(MIInstallationJournalEntry *)self existingBundleContainer];

  if (v7)
  {
    v8 = [(MIInstallationJournalEntry *)self existingBundleContainer];
    v9 = [v8 bundle];
    v10 = [(MIInstallationJournalEntry *)self bundleContainer];
    v11 = [v10 bundle];
    v33 = 0;
    v12 = [v5 updateReferencesWithOldBundle:v9 newBundle:v11 error:&v33];
    v13 = v33;

    if ((v12 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v14 = [(MIInstallationJournalEntry *)self bundle];
        v28 = [v14 identifier];
        v29 = v13;
        MOLogWrite();
      }

      [v5 invalidateCache];
      v13 = 0;
    }

LABEL_8:
    v17 = [(MIInstallationJournalEntry *)self bundleSigningInfo:v28];
    v18 = [v17 profileValidationType];

    if (v18 == 3)
    {
      v19 = [(MIInstallationJournalEntry *)self bundleSigningInfo];
      v20 = [v19 entitlements];
      v21 = sub_10004C3B0(v20);

      if (v21)
      {
        v22 = [(MIInstallationJournalEntry *)self bundle];
        v31 = v13;
        v23 = [v6 addReferenceForApplicationIdentifier:v21 bundle:v22 error:&v31];
        v24 = v31;

        if (!v23)
        {
          v25 = 0;
LABEL_14:

          v13 = v24;
          if (!a3)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        v13 = v24;
      }
    }

    v30 = v13;
    v25 = [(MIInstallationJournalEntry *)self _linkToParentApplication:&v30];
    v24 = v30;
    v21 = v13;
    goto LABEL_14;
  }

  v15 = [(MIInstallationJournalEntry *)self bundle];
  v32 = 0;
  v16 = [v5 addReferencesForBundle:v15 error:&v32];
  v13 = v32;

  if (v16)
  {
    goto LABEL_8;
  }

  v25 = 0;
  if (!a3)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v25)
  {
    v26 = v13;
    *a3 = v13;
  }

LABEL_17:

  return v25;
}

- (BOOL)_commitContainersWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self dataContainer];
  v6 = [(MIInstallationJournalEntry *)self bundle];
  v7 = [v6 identifier];

  if (!v5 || [v5 status] == 3)
  {
    v46 = a3;
    v8 = 0;
    goto LABEL_4;
  }

  v61 = 0;
  v24 = [(MIInstallationJournalEntry *)self _refreshUUIDForContainer:v5 withError:&v61];
  v25 = v61;
  v16 = v25;
  if (v24)
  {
    v46 = a3;
    v60 = v25;
    v26 = [v5 makeContainerLiveWithError:&v60];
    v8 = v60;

    if (!v26)
    {
      v23 = 0;
      goto LABEL_60;
    }

LABEL_4:
    v45 = v5;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v9 = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
    v10 = [v9 countByEnumeratingWithState:&v56 objects:v63 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v57;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v57 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v56 + 1) + 8 * i);
          v55 = v8;
          v15 = [(MIInstallationJournalEntry *)self _refreshUUIDForContainer:v14 withError:&v55];
          v16 = v55;

          if (!v15)
          {
            v23 = 0;
            LOBYTE(v17) = 0;
            goto LABEL_27;
          }

          if ([v14 status] == 3)
          {
            v8 = v16;
          }

          else
          {
            v54 = v16;
            v17 = [v14 makeContainerLiveWithError:&v54];
            v8 = v54;

            if (!v17)
            {
              v23 = 0;
LABEL_26:
              v16 = v8;
              goto LABEL_27;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v56 objects:v63 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if ([(MIInstallationJournalEntry *)self operationType]== 4)
    {
      v18 = [(MIInstallationJournalEntry *)self bundle];
      v19 = [v18 bundleType];

      v5 = v45;
      if (v19 == 1)
      {
        v20 = [(MIInstallationJournalEntry *)self installOptions];
        v21 = [v20 lsInstallType];

        if ((v21 - 7) >= 3)
        {
          if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
          {
            v22 = 3;
          }

          else
          {
            v44 = v21;
            v22 = 3;
            MOLogWrite();
          }
        }

        else
        {
          v22 = (v21 - 4);
        }

        v31 = [(MIInstallationJournalEntry *)self existingBundleContainer];
        v32 = [v31 bundle];
        v33 = [v32 bundleType];

        if (v33 == 1)
        {
          v34 = [(MIInstallationJournalEntry *)self _systemAppState];
          [v34 addIdentifier:v7 withState:v22];
        }
      }

      v30 = 1;
    }

    else
    {
      v29 = [(MIInstallationJournalEntry *)self existingBundleContainer];

      if (v29)
      {
        v30 = 2;
      }

      else
      {
        v30 = 3;
      }

      v5 = v45;
    }

    v35 = [(MIInstallationJournalEntry *)self installOptions];
    v36 = [v35 waitForDeletion];

    v23 = [(MIInstallationJournalEntry *)self bundleContainer];
    v37 = [(MIInstallationJournalEntry *)self existingBundleContainer];
    v53 = v8;
    v17 = [v23 makeContainerLiveReplacingContainer:v37 reason:v30 waitForDeletion:v36 withError:&v53];
    v16 = v53;

    if (!v17)
    {
LABEL_29:
      a3 = v46;
      if (!v46)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (!v5 || [v5 status] != 3)
    {
LABEL_49:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v9 = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
      v39 = [v9 countByEnumeratingWithState:&v48 objects:v62 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v49;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v49 != v41)
            {
              objc_enumerationMutation(v9);
            }

            v43 = *(*(&v48 + 1) + 8 * j);
            if ([v43 status] == 3)
            {
              [v43 setParentBundleID:v7];
              v47 = v16;
              v17 = [v43 makeContainerLiveWithError:&v47];
              v8 = v47;

              if (!v17)
              {
                goto LABEL_26;
              }

              v16 = v8;
            }
          }

          v40 = [v9 countByEnumeratingWithState:&v48 objects:v62 count:16];
          LOBYTE(v17) = 1;
        }

        while (v40);
LABEL_27:
        v5 = v45;
      }

      else
      {
        LOBYTE(v17) = 1;
      }

      goto LABEL_29;
    }

    v52 = v16;
    v38 = [v5 makeContainerLiveWithError:&v52];
    v8 = v52;

    if (v38)
    {
      v16 = v8;
      goto LABEL_49;
    }

LABEL_60:
    LOBYTE(v17) = 0;
    v16 = v8;
    goto LABEL_29;
  }

  v23 = 0;
  LOBYTE(v17) = 0;
  if (!a3)
  {
    goto LABEL_32;
  }

LABEL_30:
  if ((v17 & 1) == 0)
  {
    v27 = v16;
    *a3 = v16;
  }

LABEL_32:

  return v17;
}

- (void)_updateContainerStatePostCommit
{
  v2 = self;
  v3 = [(MIInstallationJournalEntry *)self noLongerPresentAppExtensionDataContainers];
  if (![v3 count])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v74 = 0;
  v4 = [MIContainer removeContainers:v3 waitForDeletion:0 error:&v74];
  v5 = v74;
  if ((v4 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v58 = v3;
      v60 = v5;
      MOLogWrite();
    }

    goto LABEL_7;
  }

LABEL_8:
  if ([(MIInstallationJournalEntry *)v2 shouldModifyExistingContainers:v58]&& ![(MIInstallationJournalEntry *)v2 isPlaceholderInstall])
  {
    v6 = [(MIInstallationJournalEntry *)v2 _containerProtectionManager];
    v7 = [(MIInstallationJournalEntry *)v2 dataContainer];

    if (v7)
    {
      v8 = [(MIInstallationJournalEntry *)v2 dataContainer];
      v9 = [(MIInstallationJournalEntry *)v2 bundle];
      [v6 setDataProtectionOnDataContainer:v8 forNewBundle:v9 retryIfLocked:1];
    }

    v10 = [(MIInstallationJournalEntry *)v2 appExtensionBundles];
    v11 = [v10 count];

    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = [(MIInstallationJournalEntry *)v2 appExtensionDataContainers];
        v14 = [v13 objectAtIndexedSubscript:i];

        v15 = [(MIInstallationJournalEntry *)v2 appExtensionBundles];
        v16 = [v15 objectAtIndexedSubscript:i];

        [v6 setDataProtectionOnDataContainer:v14 forNewBundle:v16 retryIfLocked:1];
      }
    }
  }

  v65 = v2;
  if (![(MIInstallationJournalEntry *)v2 isPlaceholderInstall])
  {
    v63 = v5;
    v64 = v3;
    v17 = [(MIInstallationJournalEntry *)v2 bundleSigningInfo];
    v18 = [v17 entitlements];
    v19 = sub_10004C758(v18);

    v20 = [(MIInstallationJournalEntry *)v2 bundleSigningInfo];
    v21 = [v20 entitlements];
    v22 = sub_10004C3B0(v21);

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v19;
    v23 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (!v23)
    {
      goto LABEL_37;
    }

    v24 = v23;
    v25 = *v71;
    v66 = MIContainerManagerErrorDomain;
    while (1)
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v71 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v70 + 1) + 8 * j);
        v69 = 0;
        v28 = [MIBundleContainer appBundleContainerWithIdentifier:v27 createIfNeeded:0 created:0 error:&v69, v59, v61, v62];
        v29 = v69;
        v30 = v29;
        if (v28)
        {
LABEL_23:
          v31 = [(MIInstallationJournalEntry *)v2 _promoteKeychainItemsForAppClipWithAppIdentifier:v27 toParentAppWithAppIdentifier:v22];
          if (v31 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
          {
            v61 = v22;
            v62 = v31;
            v59 = v27;
LABEL_34:
            MOLogWrite();
            goto LABEL_35;
          }

          goto LABEL_35;
        }

        v32 = [v29 domain];
        if ([v32 isEqualToString:v66])
        {
          v33 = [v30 code];

          v34 = v33 == 21;
          v2 = v65;
          if (v34)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v59 = v27;
          v61 = v30;
          goto LABEL_34;
        }

LABEL_35:
      }

      v24 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
      if (!v24)
      {
LABEL_37:

        v5 = v63;
        v3 = v64;
        break;
      }
    }
  }

  v35 = [(MIInstallationJournalEntry *)v2 _uninstalledAppList];
  v36 = [(MIInstallationJournalEntry *)v2 bundle];
  v37 = [v36 identifier];
  v75 = v37;
  v38 = [NSArray arrayWithObjects:&v75 count:1];
  [v35 removeIdentifiers:v38];

  v39 = v65;
  v40 = [(MIInstallationJournalEntry *)v65 bundle];
  if ([v40 bundleType] == 1)
  {
    v41 = [(MIInstallationJournalEntry *)v65 operationType];

    if (v41 == 4)
    {
      goto LABEL_42;
    }

    v40 = [(MIInstallationJournalEntry *)v65 _systemAppState];
    v42 = [(MIInstallationJournalEntry *)v65 bundle];
    v43 = [v42 identifier];
    [v40 addIdentifier:v43 withState:1];

    v39 = v65;
  }

LABEL_42:
  v44 = [(MIInstallationJournalEntry *)v39 bundle];
  if ([v44 isPlaceholder])
  {
LABEL_43:

    goto LABEL_50;
  }

  v45 = [(MIInstallationJournalEntry *)v39 bundleContainer];
  v46 = [v45 compatibilityLinkDestination];

  if (v46)
  {
    v47 = [(MIInstallationJournalEntry *)v39 dataContainer];
    if (v47)
    {
      v44 = v47;
      v48 = [(MIInstallationJournalEntry *)v39 bundleContainer];
      if (v48)
      {
        v49 = v48;
        v50 = [(MIInstallationJournalEntry *)v39 bundle];
        v51 = [v50 bundleType];

        if (v51 != 4)
        {
          goto LABEL_50;
        }

        v52 = [(MIInstallationJournalEntry *)v39 _helperServiceClient];
        v53 = [(MIInstallationJournalEntry *)v39 bundle];
        v54 = [v53 identifier];
        v55 = [(MIInstallationJournalEntry *)v39 identity];
        v56 = [v55 personaUniqueString];
        v68 = v5;
        v57 = [v52 makeSymlinkFromAppDataContainerToBundleForIdentifier:v54 forPersona:v56 withError:&v68];
        v44 = v68;

        if (v57)
        {
          v5 = v44;
          goto LABEL_50;
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          MOLogWrite();
        }

        v5 = 0;
      }

      goto LABEL_43;
    }
  }

LABEL_50:
}

- (id)_gatherLaunchServicesRegistrationInfoForStagedPlaceholder:(BOOL)a3 withError:(id *)a4
{
  v5 = a3;
  v38 = objc_opt_new();
  v7 = [(MIInstallationJournalEntry *)self bundle];
  v37 = [v7 identifier];

  if (v5)
  {
    [(MIInstallationJournalEntry *)self existingBundleContainer];
  }

  else
  {
    [(MIInstallationJournalEntry *)self bundleContainer];
  }
  v8 = ;
  v9 = [(MIInstallationJournalEntry *)self progressBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, @"GeneratingApplicationMap", 90);
  }

  v11 = [MIInstalledInfoGatherer alloc];
  v12 = [(MIInstallationJournalEntry *)self dataContainer];
  v13 = [v11 initWithBundleContainer:v8 dataContainer:v12];

  v40 = 0;
  v14 = [v13 bundleRecordWithError:&v40];
  v15 = v40;
  if (!v14)
  {
    v29 = 0;
    if (!a4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  [v38 addObject:v14];
  v16 = [(MIInstallationJournalEntry *)self appExtensionBundles];
  v17 = [v16 count];

  v18 = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
  v19 = [v18 count];

  if (v17 != v19)
  {
    v30 = sub_100010734("[MIInstallationJournalEntry _gatherLaunchServicesRegistrationInfoForStagedPlaceholder:withError:]", 925, MIInstallerErrorDomain, 4, 0, 0, @"Have %ld app extensions and %ld app extension data containers they should be equal.", v20, v17);;

    v29 = 0;
    v15 = v30;
    if (!a4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v34 = v10;
  v35 = v8;
  v36 = a4;
  if (v17)
  {
    v21 = 0;
    while (1)
    {
      v22 = v13;
      v23 = v15;
      v24 = [(MIInstallationJournalEntry *)self appExtensionBundles];
      v25 = [v24 objectAtIndexedSubscript:v21];

      v26 = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
      v27 = [v26 objectAtIndexedSubscript:v21];

      v13 = [[MIInstalledInfoGatherer alloc] initWithAppExtensionBundle:v25 inBundleIdentifier:v37 dataContainer:v27];
      v39 = v15;
      v28 = [v13 bundleRecordWithError:&v39];
      v15 = v39;

      if (!v28)
      {
        break;
      }

      [v38 addObject:v28];

      ++v21;
      v14 = v28;
      if (v17 == v21)
      {
        goto LABEL_18;
      }
    }

    v14 = 0;
    v29 = 0;
  }

  else
  {
    v28 = v14;
LABEL_18:
    v29 = [v38 copy];
    v14 = v28;
  }

  v8 = v35;
  a4 = v36;
  v10 = v34;
  if (v36)
  {
LABEL_21:
    if (!v29)
    {
      v31 = v15;
      *a4 = v15;
    }
  }

LABEL_23:
  v32 = v29;

  return v29;
}

- (BOOL)_beginLaunchServicesRegistrationWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self installationDomain];
  v6 = [(MIInstallationJournalEntry *)self identity];
  v7 = [(MIInstallationJournalEntry *)self _registerInstalledInfo:self->_bundleRecordsToRegister forIdentity:v6 inDomain:v5 error:a3];
  if (v7)
  {
    objc_storeStrong(&self->_recordPromise, v7);
  }

  return v7 != 0;
}

- (BOOL)_performJournaledInstallAsReplay:(BOOL)a3 withError:(id *)a4
{
  v5 = a3;
  v7 = [(MIInstallationJournalEntry *)self attemptCount];
  if (v7 >= 6)
  {
    v8 = v7;
    [(MIInstallationJournalEntry *)self _purgeJournalEntry];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058C9C(self, v8);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v36 = [(MIInstallationJournalEntry *)self identity];
      v39 = v8;
      MOLogWrite();
    }

    v9 = MIInstallerErrorDomain;
    v10 = [(MIInstallationJournalEntry *)self identity:v36];
    sub_100010734("[MIInstallationJournalEntry _performJournaledInstallAsReplay:withError:]", 996, v9, 4, 0, 0, @"Tried %lu times to replay journal entry for %@; assuming something is wrong; failing.", v11, v8);
    goto LABEL_8;
  }

  v20 = [(MIInstallationJournalEntry *)self journalPhase];
  v21 = v20;
  v13 = 0;
  v22 = 0;
  if (v20 <= 3)
  {
    switch(v20)
    {
      case 1:
        v44 = 0;
        v26 = [(MIInstallationJournalEntry *)self _updateJournalPhaseTo:2 withError:&v44];
        v27 = v44;
        v12 = v27;
        if (!v26)
        {
          goto LABEL_9;
        }

        v22 = v27;
        break;
      case 2:
        break;
      case 3:
LABEL_44:
        [(MIInstallationJournalEntry *)self _updateContainerStatePostCommit];
        if (![(MIInstallationJournalEntry *)self _updateJournalPhaseTo:4 withError:0]&& (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
        {
          v38 = [(MIInstallationJournalEntry *)self identity];
          MOLogWrite();
        }

        v41 = v22;
        v28 = [(MIInstallationJournalEntry *)self _gatherLaunchServicesRegistrationInfoForStagedPlaceholder:0 withError:&v41, v38];
        v12 = v41;

        bundleRecordsToRegister = self->_bundleRecordsToRegister;
        self->_bundleRecordsToRegister = v28;

        v30 = self->_bundleRecordsToRegister;
        v14 = v30 != 0;
        if (!v30 || !v5)
        {
          goto LABEL_10;
        }

        if (v5)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      default:
LABEL_52:
        v31 = MIInstallerErrorDomain;
        v10 = [(MIInstallationJournalEntry *)self identity];
        sub_100010734("[MIInstallationJournalEntry _performJournaledInstallAsReplay:withError:]", 1095, v31, 4, 0, 0, @"Unknown journal phase %lu when finalizing %@", v32, v21);
        v12 = LABEL_8:;

LABEL_9:
        v13 = 0;
        v14 = 0;
        goto LABEL_10;
    }

    v43 = v22;
    v14 = [(MIInstallationJournalEntry *)self _updateReferencesWithError:&v43];
    v12 = v43;

    if (!v14)
    {
      v13 = 0;
      goto LABEL_10;
    }

    v42 = v12;
    v14 = [(MIInstallationJournalEntry *)self _commitContainersWithError:&v42];
    v22 = v42;

    if (!v14)
    {
      v13 = 1;
      v12 = v22;
      goto LABEL_10;
    }

    if (![(MIInstallationJournalEntry *)self _updateJournalPhaseTo:3 withError:0]&& (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v36 = [(MIInstallationJournalEntry *)self identity];
      MOLogWrite();
    }

    v13 = 1;
    goto LABEL_44;
  }

  if (v20 > 5)
  {
    if (v20 == 6)
    {
      v33 = MIInstallerErrorDomain;
      v34 = [(MIInstallationJournalEntry *)self identity];
      v12 = sub_100010734("[MIInstallationJournalEntry _performJournaledInstallAsReplay:withError:]", 1085, v33, 4, 0, 0, @"Called again after install journal entry was already complete for %@", v35, v34);

      goto LABEL_9;
    }

    if (v20 == 7)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v37 = [(MIInstallationJournalEntry *)self identity];
        MOLogWrite();
      }

      v12 = 0;
      goto LABEL_18;
    }

    goto LABEL_52;
  }

  if (v20 == 4)
  {
    v12 = 0;
    if (v5)
    {
LABEL_58:
      v22 = v12;
      goto LABEL_59;
    }

LABEL_54:
    if (![(MIInstallationJournalEntry *)self _updateJournalPhaseTo:5 withError:0]&& (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v36 = [(MIInstallationJournalEntry *)self identity];
      MOLogWrite();
    }

    goto LABEL_58;
  }

LABEL_59:
  v40 = v22;
  v14 = [(MIInstallationJournalEntry *)self _beginLaunchServicesRegistrationWithError:&v40, v36];
  v12 = v40;

  if (v14)
  {
    [(MIInstallationJournalEntry *)self setJournalPhase:6];
    [(MIInstallationJournalEntry *)self _purgeJournalEntry];
    goto LABEL_18;
  }

LABEL_10:
  if (a4 && !v14)
  {
    v15 = v12;
    *a4 = v12;
  }

  if ((v13 | v5) == 1 && !v14)
  {
    v16 = [(MIInstallationJournalEntry *)self existingBundleContainer];

    if (v16)
    {
      v17 = objc_opt_class();
      v18 = [(MIInstallationJournalEntry *)self identity];
      [v17 _attemptLSUpdateWithDiscoveredStateForIdentity:v18 domain:{-[MIInstallationJournalEntry installationDomain](self, "installationDomain")}];
    }
  }

  if (!v14)
  {
    v23 = [(MIInstallationJournalEntry *)self _keychainAccessGroupTracker];
    [v23 invalidateCache];

    v24 = [(MIInstallationJournalEntry *)self _freeProfileValidatedAppTracker];
    [v24 invalidateCache];

    [(MIInstallationJournalEntry *)self _purgeJournalEntry];
    v19 = 0;
    goto LABEL_24;
  }

LABEL_18:
  v19 = 1;
LABEL_24:

  return v19;
}

- (BOOL)finalizeContainersWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self journalPhase];
  if (v5 == 1)
  {
    v13 = 0;
    v6 = [(MIInstallationJournalEntry *)self _performJournaledInstallAsReplay:0 withError:&v13];
    v7 = v13;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MIInstallerErrorDomain;
    v9 = sub_1000317C4(v5);
    v7 = sub_100010734("[MIInstallationJournalEntry finalizeContainersWithError:]", 1133, v8, 4, 0, 0, @"Finalize called on journal entry in unexpected state found journal phase %@, should have been %@", v10, v9);;

    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v11 = v7;
    *a3 = v7;
  }

LABEL_7:

  return v6;
}

- (BOOL)performLaunchServicesRegistrationWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self journalPhase];
  if (v5 == 4)
  {
    v13 = 0;
    v6 = [(MIInstallationJournalEntry *)self _performJournaledInstallAsReplay:0 withError:&v13];
    v7 = v13;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MIInstallerErrorDomain;
    v9 = sub_1000317C4(v5);
    v7 = sub_100010734("[MIInstallationJournalEntry performLaunchServicesRegistrationWithError:]", 1157, v8, 4, 0, 0, @"Asked to register journal entry with LaunchServices in unexpected state found journal phase %@, should have been %@", v10, v9);;

    v6 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v11 = v7;
    *a3 = v7;
  }

LABEL_7:

  return v6;
}

- (BOOL)finalizeWithError:(id *)a3
{
  if ([(MIInstallationJournalEntry *)self journalPhase]== 7)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    return 1;
  }

  else
  {

    return [(MIInstallationJournalEntry *)self _performJournaledInstallAsReplay:1 withError:a3];
  }
}

- (BOOL)stageUpdateForLaterWithError:(id *)a3
{
  v13 = 0;
  v5 = [(MIInstallationJournalEntry *)self _updateJournalPhaseTo:7 withError:&v13];
  v6 = v13;
  if (v5)
  {
    v7 = [(MIInstallationJournalEntry *)self bundleContainer];
    v12 = v6;
    v8 = [v7 markContainerAsStagedUpdateWithError:&v12];
    v9 = v12;

    v6 = v9;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if ((v8 & 1) == 0)
  {
    v10 = v6;
    *a3 = v6;
  }

LABEL_7:

  return v8;
}

- (id)installParallelPlaceholderForStagedUpdateFromURL:(id)a3 withResultingRecord:(id *)a4 error:(id *)a5
{
  v6 = a3;
  v7 = +[MIFileManager defaultManager];
  v8 = [(MIInstallationJournalEntry *)self identity];
  v9 = [v8 bundleID];
  v10 = [v8 personaUniqueString];
  v11 = [(MIInstallationJournalEntry *)self existingBundleContainer];
  v52 = [v11 parallelPlaceholderURL];

  v60 = 0;
  v51 = v9;
  _MILogTransactionStep(15, 1, 1, v9, v10, 0, v12, v13, v42);
  v14 = +[MIHelperServiceFrameworkClient sharedInstance];
  v15 = [v8 location];
  v59 = 0;
  v16 = [v14 stagingLocationForInstallLocation:v15 withinStagingSubsytem:1 usingUniqueName:0 error:&v59];
  v17 = v59;

  if (!v16)
  {
    v22 = 0;
    v28 = 0;
    v53 = 0;
LABEL_27:
    if (a5)
    {
      v39 = v17;
      v38 = 0;
      v29 = 0;
      *a5 = v17;
    }

    else
    {
      v38 = 0;
      v29 = 0;
    }

    v23 = v17;
    goto LABEL_31;
  }

  v49 = v7;
  v20 = +[MIHelperServiceClient sharedInstance];
  v21 = [(MIInstallationJournalEntry *)self installOptions];
  v58 = v17;
  v22 = [v20 stageItemAtURL:v6 toStagingLocation:v16 options:v21 containedSymlink:&v60 error:&v58];
  v23 = v58;

  if (!v22)
  {
    v28 = 0;
    v53 = 0;
    v17 = v23;
    v7 = v49;
    goto LABEL_27;
  }

  v53 = [v22 URLByDeletingLastPathComponent];
  if (v60 == 1)
  {
    v24 = MIInstallerErrorDomain;
    v25 = [v6 path];
    v27 = sub_100010734("[MIInstallationJournalEntry installParallelPlaceholderForStagedUpdateFromURL:withResultingRecord:error:]", 1240, v24, 70, 0, 0, @"Discovered unexpected symlinks in %@", v26, v25);
    v28 = 0;
    v29 = 0;
LABEL_15:

    v23 = v27;
    v7 = v49;
    goto LABEL_16;
  }

  v57 = v23;
  v7 = v49;
  v30 = [v49 removeItemAtURL:v52 error:&v57];
  v47 = v57;

  if ((v30 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
  {
    v43 = [v52 path];
    v45 = v47;
    MOLogWrite();
  }

  if (renamex_np([v22 fileSystemRepresentation], objc_msgSend(v52, "fileSystemRepresentation"), 4u))
  {
    v31 = *__error();
    v32 = [v22 path];
    v45 = [v52 path];
    v46 = strerror(v31);
    v25 = sub_1000106F4("[MIInstallationJournalEntry installParallelPlaceholderForStagedUpdateFromURL:withResultingRecord:error:]", 1251, NSPOSIXErrorDomain, v31, 0, 0, @"renamex_np failed from %@ to %@ : %s", v33, v32);

    v27 = sub_100010734("[MIInstallationJournalEntry installParallelPlaceholderForStagedUpdateFromURL:withResultingRecord:error:]", 1252, MIInstallerErrorDomain, 4, v25, 0, @"Failed to make staged placeholder live", v34, v44);
    v28 = 0;
    v29 = 0;
    v23 = v47;
    goto LABEL_15;
  }

  v56 = v47;
  v28 = [(MIInstallationJournalEntry *)self _gatherLaunchServicesRegistrationInfoForStagedPlaceholder:1 withError:&v56];
  v23 = v56;

  if (v28)
  {
    v25 = [(MIInstallationJournalEntry *)self identity];
    v55 = v23;
    v29 = [(MIInstallationJournalEntry *)self _registerInstalledInfo:v28 forIdentity:v25 inDomain:[(MIInstallationJournalEntry *)self installationDomain] error:&v55];
    v27 = v55;
    goto LABEL_15;
  }

  v29 = 0;
LABEL_16:
  if (v53)
  {
    v54 = 0;
    v35 = [v7 removeItemAtURL:v53 error:&v54];
    v36 = v54;
    if ((v35 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      v43 = [v53 path];
      MOLogWrite();
    }

    v7 = v49;
  }

  if (!v29)
  {
    v17 = v23;
    goto LABEL_27;
  }

  if (a4)
  {
    v37 = v29;
    *a4 = v29;
  }

  v38 = 1;
LABEL_31:
  _MILogTransactionStep(15, 2, v38, v51, v10, 0, v18, v19, v43);
  v40 = v28;

  return v40;
}

- (BOOL)makeStagedBackgroundUpdateLive:(id *)a3
{
  v13 = 0;
  v5 = [(MIInstallationJournalEntry *)self _updateJournalPhaseTo:2 withError:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v12 = v6;
    v8 = [(MIInstallationJournalEntry *)self _performJournaledInstallAsReplay:0 withError:&v12];
    v9 = v12;

    v7 = v9;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *a3 = v7;
  }

LABEL_7:

  return v8;
}

- (BOOL)cleanUpJournaledDataOnDiskWithError:(id *)a3
{
  v5 = [(MIInstallationJournalEntry *)self bundleContainer];
  v6 = objc_opt_new();
  if ([v5 isStagedContainer])
  {
    v30 = 0;
    v7 = [v5 clearStagedUpdateContainerStatusWithError:&v30];
    v8 = v30;
    if (v7)
    {
      goto LABEL_8;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v23 = v5;
      v24 = v8;
      MOLogWrite();
    }
  }

  v8 = 0;
LABEL_8:
  if ([v5 isTransient])
  {
    [v6 addObject:v5];
  }

  v9 = [(MIInstallationJournalEntry *)self dataContainer];
  v10 = [v9 isTransient];

  if (v10)
  {
    v11 = [(MIInstallationJournalEntry *)self dataContainer];
    [v6 addObject:v11];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 isTransient])
        {
          [v6 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v14);
  }

  if ([v6 count])
  {
    v25 = v8;
    v18 = [MIContainer removeContainers:v6 waitForDeletion:0 error:&v25];
    v19 = v25;

    if (v18)
    {
      v20 = 1;
    }

    else if (a3)
    {
      v21 = v19;
      v20 = 0;
      *a3 = v19;
    }

    else
    {
      v20 = 0;
    }

    v8 = v19;
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

@end