@interface MIInstallationJournalEntry
+ (void)_attemptLSUpdateWithDiscoveredStateForIdentity:(id)identity domain:(unint64_t)domain;
- (BOOL)_beginLaunchServicesRegistrationWithError:(id *)error;
- (BOOL)_commitContainersWithError:(id *)error;
- (BOOL)_findBundleContainerForToken:(id)token error:(id *)error;
- (BOOL)_linkToParentApplication:(id *)application;
- (BOOL)_performJournaledInstallAsReplay:(BOOL)replay withError:(id *)error;
- (BOOL)_populateSigningInfoWithError:(id *)error;
- (BOOL)_refreshUUIDForContainer:(id)container withError:(id *)error;
- (BOOL)_updateJournalPhaseTo:(unint64_t)to withError:(id *)error;
- (BOOL)_updateReferencesWithError:(id *)error;
- (BOOL)_writeJournalEntryWithError:(id *)error;
- (BOOL)cleanUpJournaledDataOnDiskWithError:(id *)error;
- (BOOL)finalizeContainersWithError:(id *)error;
- (BOOL)finalizeWithError:(id *)error;
- (BOOL)isPlaceholderInstall;
- (BOOL)isStagedUpdate;
- (BOOL)makeStagedBackgroundUpdateLive:(id *)live;
- (BOOL)performLaunchServicesRegistrationWithError:(id *)error;
- (BOOL)stageUpdateForLaterWithError:(id *)error;
- (MIExecutableBundle)bundle;
- (MIInstallationJournalEntry)initWithCoder:(id)coder;
- (MIInstallationJournalEntry)initWithIdentity:(id)identity bundleContainer:(id)container existingBundleContainer:(id)bundleContainer installationDomain:(unint64_t)domain operationType:(unint64_t)type installOptions:(id)options bundleSigningInfo:(id)info;
- (NSString)description;
- (NSString)uniqueIdentifier;
- (id)_containerLinkManager;
- (id)_gatherLaunchServicesRegistrationInfoForStagedPlaceholder:(BOOL)placeholder withError:(id *)error;
- (id)installParallelPlaceholderForStagedUpdateFromURL:(id)l withResultingRecord:(id *)record error:(id *)error;
- (void)_purgeJournalEntry;
- (void)_updateContainerStatePostCommit;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIInstallationJournalEntry

- (id)_containerLinkManager
{
  installationDomain = [(MIInstallationJournalEntry *)self installationDomain];

  return [MIContainerLinkManager sharedInstanceForDomain:installationDomain];
}

+ (void)_attemptLSUpdateWithDiscoveredStateForIdentity:(id)identity domain:(unint64_t)domain
{
  identityCopy = identity;
  v7 = MIStringForInstallationDomain();
  if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v10 = identityCopy;
    v11 = v7;
    MOLogWrite();
  }

  v12 = 0;
  v8 = [self _registerUsingDiscoveredInfoForAppIdentity:identityCopy inDomain:domain error:{&v12, v10, v11}];
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

- (MIInstallationJournalEntry)initWithIdentity:(id)identity bundleContainer:(id)container existingBundleContainer:(id)bundleContainer installationDomain:(unint64_t)domain operationType:(unint64_t)type installOptions:(id)options bundleSigningInfo:(id)info
{
  identityCopy = identity;
  containerCopy = container;
  bundleContainerCopy = bundleContainer;
  optionsCopy = options;
  infoCopy = info;
  v28.receiver = self;
  v28.super_class = MIInstallationJournalEntry;
  v18 = [(MIInstallationJournalEntry *)&v28 init];
  if (v18)
  {
    v19 = [identityCopy copy];
    identity = v18->_identity;
    v18->_identity = v19;

    objc_storeStrong(&v18->_bundleContainer, container);
    objc_storeStrong(&v18->_existingBundleContainer, bundleContainer);
    v18->_installationDomain = domain;
    v18->_operationType = type;
    objc_storeStrong(&v18->_installOptions, options);
    objc_storeStrong(&v18->_bundleSigningInfo, info);
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

- (BOOL)_populateSigningInfoWithError:(id *)error
{
  bundle = [(MIInstallationJournalEntry *)self bundle];
  v12 = 0;
  v6 = [bundle codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v12];
  v8 = v12;
  if (v6)
  {
    objc_storeStrong(&self->_bundleSigningInfo, v6);
  }

  else
  {
    v9 = sub_100010734("[MIInstallationJournalEntry _populateSigningInfoWithError:]", 230, MIInstallerErrorDomain, 4, v8, 0, @"Failed to get signing info for bundle %@", v7, bundle);

    if (error)
    {
      v10 = v9;
      *error = v9;
    }

    v8 = v9;
  }

  return v6 != 0;
}

- (BOOL)_findBundleContainerForToken:(id)token error:(id *)error
{
  tokenCopy = token;
  if (self->_journalPhase == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  v16 = 0;
  v8 = [[MIBundleContainer alloc] initWithToken:tokenCopy options:v7 error:&v16];
  v9 = v16;
  bundleContainer = self->_bundleContainer;
  self->_bundleContainer = v8;

  v12 = self->_bundleContainer;
  if (!v12)
  {
    v13 = sub_100010734("[MIInstallationJournalEntry _findBundleContainerForToken:error:]", 259, MIInstallerErrorDomain, 186, v9, 0, @"Failed to locate bundle container for token %@", v11, tokenCopy);

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    v9 = v13;
  }

  return v12 != 0;
}

- (MIInstallationJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
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

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
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

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"journalPhase"];
  v5->_journalPhase = [v9 unsignedIntegerValue];

  if (v5->_journalPhase - 8 <= 0xFFFFFFFFFFFFFFF8)
  {
    sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 287, MIInstallerErrorDomain, 186, 0, 0, @"Got invalid journal phase: %lu.", v10, v5->_journalPhase);
    v13 = LABEL_13:;
    v22 = 0;
    goto LABEL_14;
  }

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attemptCount"];
  v5->_attemptCount = [v17 unsignedIntegerValue];

  ++v5->_attemptCount;
  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationDomain"];
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

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationType"];
  v5->_operationType = [v20 unsignedIntegerValue];

  if (v5->_operationType - 6 <= 0xFFFFFFFFFFFFFFFALL)
  {
    sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 306, MIInstallerErrorDomain, 186, 0, 0, @"Got invalid journal operation type: %lu.", v21, v5->_operationType);
    goto LABEL_13;
  }

  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installOptions"];
  installOptions = v5->_installOptions;
  v5->_installOptions = v25;

  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"journalEntryID"];
  journalEntryID = v5->_journalEntryID;
  v5->_journalEntryID = v27;

  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BundleContainerToken"];
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
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ExistingBundleContainerToken"];

  if ([(MIInstallationJournalEntry *)v5 journalPhase]< 2)
  {
    v76 = v22;
    if (v22)
    {
      objc_storeStrong(&v5->_existingBundleContainer, v5->_bundleContainer);
    }

LABEL_30:
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkToParentBundleID"];
    linkToParentBundleID = v5->_linkToParentBundleID;
    v5->_linkToParentBundleID = v36;

    v38 = objc_opt_new();
    v39 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"NoLongerPresentContainerTokens"];
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

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DataContainerToken"];
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
    v52 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"AppExtensionDataContainerTokens"];
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
            bundle2 = obj;
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

    bundle = [(MIInstallationJournalEntry *)v5 bundle];
    v79 = v13;
    v65 = [bundle appExtensionBundlesWithError:&v79];
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
    bundle2 = [(MIInstallationJournalEntry *)v5 bundle];
    v68 = sub_100010734("[MIInstallationJournalEntry initWithCoder:]", 397, v70, 186, v11, 0, @"Failed to locate app extension bundles in bundle %@.", v71, bundle2);
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

  [coderCopy failWithError:v13];
  v12 = 0;
LABEL_18:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identity = [(MIInstallationJournalEntry *)self identity];
  [coderCopy encodeObject:identity forKey:@"identity"];

  v6 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self journalPhase]];
  [coderCopy encodeObject:v6 forKey:@"journalPhase"];

  v7 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self attemptCount]];
  [coderCopy encodeObject:v7 forKey:@"attemptCount"];

  v8 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self installationDomain]];
  [coderCopy encodeObject:v8 forKey:@"installationDomain"];

  v9 = [NSNumber numberWithUnsignedInteger:[(MIInstallationJournalEntry *)self operationType]];
  [coderCopy encodeObject:v9 forKey:@"operationType"];

  installOptions = [(MIInstallationJournalEntry *)self installOptions];
  [coderCopy encodeObject:installOptions forKey:@"installOptions"];

  journalEntryID = [(MIInstallationJournalEntry *)self journalEntryID];
  [coderCopy encodeObject:journalEntryID forKey:@"journalEntryID"];

  v12 = [MIBundleContainerToken alloc];
  bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
  v14 = [v12 initWithContainer:bundleContainer];

  [coderCopy encodeObject:v14 forKey:@"BundleContainerToken"];
  existingBundleContainer = [(MIInstallationJournalEntry *)self existingBundleContainer];
  v35 = existingBundleContainer;
  if (existingBundleContainer)
  {
    v16 = [[MIBundleContainerToken alloc] initWithContainer:existingBundleContainer];

    [coderCopy encodeObject:v16 forKey:@"ExistingBundleContainerToken"];
    v14 = v16;
  }

  linkToParentBundleID = [(MIInstallationJournalEntry *)self linkToParentBundleID];
  [coderCopy encodeObject:linkToParentBundleID forKey:@"linkToParentBundleID"];

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
    [coderCopy encodeObject:v25 forKey:@"NoLongerPresentContainerTokens"];
  }

  dataContainer = [(MIInstallationJournalEntry *)self dataContainer];
  if (dataContainer)
  {
    v27 = [[MIContainerToken alloc] initWithContainer:dataContainer];
    [coderCopy encodeObject:v27 forKey:@"DataContainerToken"];
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
    [coderCopy encodeObject:v34 forKey:@"AppExtensionDataContainerTokens"];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  identity = [(MIInstallationJournalEntry *)self identity];
  [(MIInstallationJournalEntry *)self installationDomain];
  v6 = MIStringForInstallationDomain();
  operationType = [(MIInstallationJournalEntry *)self operationType];
  v8 = sub_1000317C4([(MIInstallationJournalEntry *)self journalPhase]);
  bundle = [(MIInstallationJournalEntry *)self bundle];
  bundleVersion = [bundle bundleVersion];
  v11 = [NSString stringWithFormat:@"<%@<%p> %@/%@ op:%lu phase:%@ version:%@>", v4, self, identity, v6, operationType, v8, bundleVersion];

  return v11;
}

- (NSString)uniqueIdentifier
{
  journalEntryID = [(MIInstallationJournalEntry *)self journalEntryID];
  uUIDString = [journalEntryID UUIDString];
  identity = [(MIInstallationJournalEntry *)self identity];
  bundleID = [identity bundleID];
  v7 = [NSString stringWithFormat:@"%@_%@", uUIDString, bundleID];

  return v7;
}

- (MIExecutableBundle)bundle
{
  bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
  bundle = [bundleContainer bundle];

  return bundle;
}

- (BOOL)isPlaceholderInstall
{
  installOptions = [(MIInstallationJournalEntry *)self installOptions];
  installTargetType = [installOptions installTargetType];

  return (installTargetType & 0xFFFFFFFFFFFFFFFELL) == 2;
}

- (BOOL)isStagedUpdate
{
  bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
  isStagedContainer = [bundleContainer isStagedContainer];

  return isStagedContainer;
}

- (BOOL)_writeJournalEntryWithError:(id *)error
{
  _journalInstance = [(MIInstallationJournalEntry *)self _journalInstance];
  LOBYTE(error) = [_journalInstance writeJournalEntry:self withError:error];

  return error;
}

- (void)_purgeJournalEntry
{
  _journalInstance = [(MIInstallationJournalEntry *)self _journalInstance];
  [_journalInstance purgeJournalEntry:self withError:0];
}

- (BOOL)_updateJournalPhaseTo:(unint64_t)to withError:(id *)error
{
  [(MIInstallationJournalEntry *)self setJournalPhase:?];
  v15 = 0;
  v7 = [(MIInstallationJournalEntry *)self _writeJournalEntryWithError:&v15];
  v8 = v15;
  if (!v7)
  {
    v9 = MIInstallerErrorDomain;
    identity = [(MIInstallationJournalEntry *)self identity];
    v11 = sub_100010734("[MIInstallationJournalEntry _updateJournalPhaseTo:withError:]", 541, v9, 188, v8, 0, @"Failed to write updated journal with phase %lu for %@", v10, to);

    if (error)
    {
      v12 = v11;
      *error = v11;
    }

    v8 = v11;
  }

  return v7;
}

- (BOOL)_refreshUUIDForContainer:(id)container withError:(id *)error
{
  containerCopy = container;
  if (!-[MIInstallationJournalEntry shouldModifyExistingContainers](self, "shouldModifyExistingContainers") || [containerCopy status] != 1)
  {
    v9 = 0;
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  v16 = 0;
  v7 = [containerCopy regenerateDirectoryUUIDWithError:&v16];
  v8 = v16;
  v9 = v8;
  if (v7)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      identifier = [containerCopy identifier];
      containerURL = [containerCopy containerURL];
      path = [containerURL path];
      MOLogWrite();
    }

    goto LABEL_8;
  }

  if (error)
  {
    v14 = v8;
    v12 = 0;
    *error = v9;
  }

  else
  {
    v12 = 0;
  }

LABEL_9:

  return v12;
}

- (BOOL)_linkToParentApplication:(id *)application
{
  linkToParentBundleID = [(MIInstallationJournalEntry *)self linkToParentBundleID];
  if (linkToParentBundleID)
  {
    _containerLinkManager = [(MIInstallationJournalEntry *)self _containerLinkManager];
    bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
    identifier = [bundleContainer identifier];
    v13 = 0;
    v9 = [_containerLinkManager linkChild:identifier toParent:linkToParentBundleID error:&v13];
    v10 = v13;

    if (application && (v9 & 1) == 0)
    {
      v11 = v10;
      v9 = 0;
      *application = v10;
    }
  }

  else
  {
    v10 = 0;
    v9 = 1;
  }

  return v9;
}

- (BOOL)_updateReferencesWithError:(id *)error
{
  _keychainAccessGroupTracker = [(MIInstallationJournalEntry *)self _keychainAccessGroupTracker];
  _freeProfileValidatedAppTracker = [(MIInstallationJournalEntry *)self _freeProfileValidatedAppTracker];
  existingBundleContainer = [(MIInstallationJournalEntry *)self existingBundleContainer];

  if (existingBundleContainer)
  {
    existingBundleContainer2 = [(MIInstallationJournalEntry *)self existingBundleContainer];
    bundle = [existingBundleContainer2 bundle];
    bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
    bundle2 = [bundleContainer bundle];
    v33 = 0;
    v12 = [_keychainAccessGroupTracker updateReferencesWithOldBundle:bundle newBundle:bundle2 error:&v33];
    v13 = v33;

    if ((v12 & 1) == 0)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        bundle3 = [(MIInstallationJournalEntry *)self bundle];
        identifier = [bundle3 identifier];
        v29 = v13;
        MOLogWrite();
      }

      [_keychainAccessGroupTracker invalidateCache];
      v13 = 0;
    }

LABEL_8:
    v17 = [(MIInstallationJournalEntry *)self bundleSigningInfo:identifier];
    profileValidationType = [v17 profileValidationType];

    if (profileValidationType == 3)
    {
      bundleSigningInfo = [(MIInstallationJournalEntry *)self bundleSigningInfo];
      entitlements = [bundleSigningInfo entitlements];
      v21 = sub_10004C3B0(entitlements);

      if (v21)
      {
        bundle4 = [(MIInstallationJournalEntry *)self bundle];
        v31 = v13;
        v23 = [_freeProfileValidatedAppTracker addReferenceForApplicationIdentifier:v21 bundle:bundle4 error:&v31];
        v24 = v31;

        if (!v23)
        {
          v25 = 0;
LABEL_14:

          v13 = v24;
          if (!error)
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

  bundle5 = [(MIInstallationJournalEntry *)self bundle];
  v32 = 0;
  v16 = [_keychainAccessGroupTracker addReferencesForBundle:bundle5 error:&v32];
  v13 = v32;

  if (v16)
  {
    goto LABEL_8;
  }

  v25 = 0;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v25)
  {
    v26 = v13;
    *error = v13;
  }

LABEL_17:

  return v25;
}

- (BOOL)_commitContainersWithError:(id *)error
{
  dataContainer = [(MIInstallationJournalEntry *)self dataContainer];
  bundle = [(MIInstallationJournalEntry *)self bundle];
  identifier = [bundle identifier];

  if (!dataContainer || [dataContainer status] == 3)
  {
    errorCopy2 = error;
    v8 = 0;
    goto LABEL_4;
  }

  v61 = 0;
  v24 = [(MIInstallationJournalEntry *)self _refreshUUIDForContainer:dataContainer withError:&v61];
  v25 = v61;
  v16 = v25;
  if (v24)
  {
    errorCopy2 = error;
    v60 = v25;
    v26 = [dataContainer makeContainerLiveWithError:&v60];
    v8 = v60;

    if (!v26)
    {
      bundleContainer = 0;
      goto LABEL_60;
    }

LABEL_4:
    v45 = dataContainer;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    appExtensionDataContainers = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
    v10 = [appExtensionDataContainers countByEnumeratingWithState:&v56 objects:v63 count:16];
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
            objc_enumerationMutation(appExtensionDataContainers);
          }

          v14 = *(*(&v56 + 1) + 8 * i);
          v55 = v8;
          v15 = [(MIInstallationJournalEntry *)self _refreshUUIDForContainer:v14 withError:&v55];
          v16 = v55;

          if (!v15)
          {
            bundleContainer = 0;
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
              bundleContainer = 0;
LABEL_26:
              v16 = v8;
              goto LABEL_27;
            }
          }
        }

        v11 = [appExtensionDataContainers countByEnumeratingWithState:&v56 objects:v63 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    if ([(MIInstallationJournalEntry *)self operationType]== 4)
    {
      bundle2 = [(MIInstallationJournalEntry *)self bundle];
      bundleType = [bundle2 bundleType];

      dataContainer = v45;
      if (bundleType == 1)
      {
        installOptions = [(MIInstallationJournalEntry *)self installOptions];
        lsInstallType = [installOptions lsInstallType];

        if ((lsInstallType - 7) >= 3)
        {
          if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
          {
            v22 = 3;
          }

          else
          {
            v44 = lsInstallType;
            v22 = 3;
            MOLogWrite();
          }
        }

        else
        {
          v22 = (lsInstallType - 4);
        }

        existingBundleContainer = [(MIInstallationJournalEntry *)self existingBundleContainer];
        bundle3 = [existingBundleContainer bundle];
        bundleType2 = [bundle3 bundleType];

        if (bundleType2 == 1)
        {
          _systemAppState = [(MIInstallationJournalEntry *)self _systemAppState];
          [_systemAppState addIdentifier:identifier withState:v22];
        }
      }

      v30 = 1;
    }

    else
    {
      existingBundleContainer2 = [(MIInstallationJournalEntry *)self existingBundleContainer];

      if (existingBundleContainer2)
      {
        v30 = 2;
      }

      else
      {
        v30 = 3;
      }

      dataContainer = v45;
    }

    installOptions2 = [(MIInstallationJournalEntry *)self installOptions];
    waitForDeletion = [installOptions2 waitForDeletion];

    bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
    existingBundleContainer3 = [(MIInstallationJournalEntry *)self existingBundleContainer];
    v53 = v8;
    v17 = [bundleContainer makeContainerLiveReplacingContainer:existingBundleContainer3 reason:v30 waitForDeletion:waitForDeletion withError:&v53];
    v16 = v53;

    if (!v17)
    {
LABEL_29:
      error = errorCopy2;
      if (!errorCopy2)
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    if (!dataContainer || [dataContainer status] != 3)
    {
LABEL_49:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      appExtensionDataContainers = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
      v39 = [appExtensionDataContainers countByEnumeratingWithState:&v48 objects:v62 count:16];
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
              objc_enumerationMutation(appExtensionDataContainers);
            }

            v43 = *(*(&v48 + 1) + 8 * j);
            if ([v43 status] == 3)
            {
              [v43 setParentBundleID:identifier];
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

          v40 = [appExtensionDataContainers countByEnumeratingWithState:&v48 objects:v62 count:16];
          LOBYTE(v17) = 1;
        }

        while (v40);
LABEL_27:
        dataContainer = v45;
      }

      else
      {
        LOBYTE(v17) = 1;
      }

      goto LABEL_29;
    }

    v52 = v16;
    v38 = [dataContainer makeContainerLiveWithError:&v52];
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

  bundleContainer = 0;
  LOBYTE(v17) = 0;
  if (!error)
  {
    goto LABEL_32;
  }

LABEL_30:
  if ((v17 & 1) == 0)
  {
    v27 = v16;
    *error = v16;
  }

LABEL_32:

  return v17;
}

- (void)_updateContainerStatePostCommit
{
  selfCopy = self;
  noLongerPresentAppExtensionDataContainers = [(MIInstallationJournalEntry *)self noLongerPresentAppExtensionDataContainers];
  if (![noLongerPresentAppExtensionDataContainers count])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v74 = 0;
  v4 = [MIContainer removeContainers:noLongerPresentAppExtensionDataContainers waitForDeletion:0 error:&v74];
  v5 = v74;
  if ((v4 & 1) == 0)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v58 = noLongerPresentAppExtensionDataContainers;
      v60 = v5;
      MOLogWrite();
    }

    goto LABEL_7;
  }

LABEL_8:
  if ([(MIInstallationJournalEntry *)selfCopy shouldModifyExistingContainers:v58]&& ![(MIInstallationJournalEntry *)selfCopy isPlaceholderInstall])
  {
    _containerProtectionManager = [(MIInstallationJournalEntry *)selfCopy _containerProtectionManager];
    dataContainer = [(MIInstallationJournalEntry *)selfCopy dataContainer];

    if (dataContainer)
    {
      dataContainer2 = [(MIInstallationJournalEntry *)selfCopy dataContainer];
      bundle = [(MIInstallationJournalEntry *)selfCopy bundle];
      [_containerProtectionManager setDataProtectionOnDataContainer:dataContainer2 forNewBundle:bundle retryIfLocked:1];
    }

    appExtensionBundles = [(MIInstallationJournalEntry *)selfCopy appExtensionBundles];
    v11 = [appExtensionBundles count];

    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        appExtensionDataContainers = [(MIInstallationJournalEntry *)selfCopy appExtensionDataContainers];
        v14 = [appExtensionDataContainers objectAtIndexedSubscript:i];

        appExtensionBundles2 = [(MIInstallationJournalEntry *)selfCopy appExtensionBundles];
        v16 = [appExtensionBundles2 objectAtIndexedSubscript:i];

        [_containerProtectionManager setDataProtectionOnDataContainer:v14 forNewBundle:v16 retryIfLocked:1];
      }
    }
  }

  v65 = selfCopy;
  if (![(MIInstallationJournalEntry *)selfCopy isPlaceholderInstall])
  {
    v63 = v5;
    v64 = noLongerPresentAppExtensionDataContainers;
    bundleSigningInfo = [(MIInstallationJournalEntry *)selfCopy bundleSigningInfo];
    entitlements = [bundleSigningInfo entitlements];
    v19 = sub_10004C758(entitlements);

    bundleSigningInfo2 = [(MIInstallationJournalEntry *)selfCopy bundleSigningInfo];
    entitlements2 = [bundleSigningInfo2 entitlements];
    v22 = sub_10004C3B0(entitlements2);

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
          v31 = [(MIInstallationJournalEntry *)selfCopy _promoteKeychainItemsForAppClipWithAppIdentifier:v27 toParentAppWithAppIdentifier:v22];
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

        domain = [v29 domain];
        if ([domain isEqualToString:v66])
        {
          code = [v30 code];

          v34 = code == 21;
          selfCopy = v65;
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
        noLongerPresentAppExtensionDataContainers = v64;
        break;
      }
    }
  }

  _uninstalledAppList = [(MIInstallationJournalEntry *)selfCopy _uninstalledAppList];
  bundle2 = [(MIInstallationJournalEntry *)selfCopy bundle];
  identifier = [bundle2 identifier];
  v75 = identifier;
  v38 = [NSArray arrayWithObjects:&v75 count:1];
  [_uninstalledAppList removeIdentifiers:v38];

  v39 = v65;
  bundle3 = [(MIInstallationJournalEntry *)v65 bundle];
  if ([bundle3 bundleType] == 1)
  {
    operationType = [(MIInstallationJournalEntry *)v65 operationType];

    if (operationType == 4)
    {
      goto LABEL_42;
    }

    bundle3 = [(MIInstallationJournalEntry *)v65 _systemAppState];
    bundle4 = [(MIInstallationJournalEntry *)v65 bundle];
    identifier2 = [bundle4 identifier];
    [bundle3 addIdentifier:identifier2 withState:1];

    v39 = v65;
  }

LABEL_42:
  bundle5 = [(MIInstallationJournalEntry *)v39 bundle];
  if ([bundle5 isPlaceholder])
  {
LABEL_43:

    goto LABEL_50;
  }

  bundleContainer = [(MIInstallationJournalEntry *)v39 bundleContainer];
  compatibilityLinkDestination = [bundleContainer compatibilityLinkDestination];

  if (compatibilityLinkDestination)
  {
    dataContainer3 = [(MIInstallationJournalEntry *)v39 dataContainer];
    if (dataContainer3)
    {
      bundle5 = dataContainer3;
      bundleContainer2 = [(MIInstallationJournalEntry *)v39 bundleContainer];
      if (bundleContainer2)
      {
        v49 = bundleContainer2;
        bundle6 = [(MIInstallationJournalEntry *)v39 bundle];
        bundleType = [bundle6 bundleType];

        if (bundleType != 4)
        {
          goto LABEL_50;
        }

        _helperServiceClient = [(MIInstallationJournalEntry *)v39 _helperServiceClient];
        bundle7 = [(MIInstallationJournalEntry *)v39 bundle];
        identifier3 = [bundle7 identifier];
        identity = [(MIInstallationJournalEntry *)v39 identity];
        personaUniqueString = [identity personaUniqueString];
        v68 = v5;
        v57 = [_helperServiceClient makeSymlinkFromAppDataContainerToBundleForIdentifier:identifier3 forPersona:personaUniqueString withError:&v68];
        bundle5 = v68;

        if (v57)
        {
          v5 = bundle5;
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

- (id)_gatherLaunchServicesRegistrationInfoForStagedPlaceholder:(BOOL)placeholder withError:(id *)error
{
  placeholderCopy = placeholder;
  v38 = objc_opt_new();
  bundle = [(MIInstallationJournalEntry *)self bundle];
  identifier = [bundle identifier];

  if (placeholderCopy)
  {
    [(MIInstallationJournalEntry *)self existingBundleContainer];
  }

  else
  {
    [(MIInstallationJournalEntry *)self bundleContainer];
  }
  v8 = ;
  progressBlock = [(MIInstallationJournalEntry *)self progressBlock];
  v10 = progressBlock;
  if (progressBlock)
  {
    (*(progressBlock + 16))(progressBlock, @"GeneratingApplicationMap", 90);
  }

  v11 = [MIInstalledInfoGatherer alloc];
  dataContainer = [(MIInstallationJournalEntry *)self dataContainer];
  v13 = [v11 initWithBundleContainer:v8 dataContainer:dataContainer];

  v40 = 0;
  v14 = [v13 bundleRecordWithError:&v40];
  v15 = v40;
  if (!v14)
  {
    v29 = 0;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  [v38 addObject:v14];
  appExtensionBundles = [(MIInstallationJournalEntry *)self appExtensionBundles];
  v17 = [appExtensionBundles count];

  appExtensionDataContainers = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
  v19 = [appExtensionDataContainers count];

  if (v17 != v19)
  {
    v30 = sub_100010734("[MIInstallationJournalEntry _gatherLaunchServicesRegistrationInfoForStagedPlaceholder:withError:]", 925, MIInstallerErrorDomain, 4, 0, 0, @"Have %ld app extensions and %ld app extension data containers they should be equal.", v20, v17);;

    v29 = 0;
    v15 = v30;
    if (!error)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v34 = v10;
  v35 = v8;
  errorCopy = error;
  if (v17)
  {
    v21 = 0;
    while (1)
    {
      v22 = v13;
      v23 = v15;
      appExtensionBundles2 = [(MIInstallationJournalEntry *)self appExtensionBundles];
      v25 = [appExtensionBundles2 objectAtIndexedSubscript:v21];

      appExtensionDataContainers2 = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
      v27 = [appExtensionDataContainers2 objectAtIndexedSubscript:v21];

      v13 = [[MIInstalledInfoGatherer alloc] initWithAppExtensionBundle:v25 inBundleIdentifier:identifier dataContainer:v27];
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
  error = errorCopy;
  v10 = v34;
  if (errorCopy)
  {
LABEL_21:
    if (!v29)
    {
      v31 = v15;
      *error = v15;
    }
  }

LABEL_23:
  v32 = v29;

  return v29;
}

- (BOOL)_beginLaunchServicesRegistrationWithError:(id *)error
{
  installationDomain = [(MIInstallationJournalEntry *)self installationDomain];
  identity = [(MIInstallationJournalEntry *)self identity];
  v7 = [(MIInstallationJournalEntry *)self _registerInstalledInfo:self->_bundleRecordsToRegister forIdentity:identity inDomain:installationDomain error:error];
  if (v7)
  {
    objc_storeStrong(&self->_recordPromise, v7);
  }

  return v7 != 0;
}

- (BOOL)_performJournaledInstallAsReplay:(BOOL)replay withError:(id *)error
{
  replayCopy = replay;
  attemptCount = [(MIInstallationJournalEntry *)self attemptCount];
  if (attemptCount >= 6)
  {
    v8 = attemptCount;
    [(MIInstallationJournalEntry *)self _purgeJournalEntry];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100058C9C(self, v8);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      identity = [(MIInstallationJournalEntry *)self identity];
      v39 = v8;
      MOLogWrite();
    }

    v9 = MIInstallerErrorDomain;
    identity3 = [(MIInstallationJournalEntry *)self identity:identity];
    sub_100010734("[MIInstallationJournalEntry _performJournaledInstallAsReplay:withError:]", 996, v9, 4, 0, 0, @"Tried %lu times to replay journal entry for %@; assuming something is wrong; failing.", v11, v8);
    goto LABEL_8;
  }

  journalPhase = [(MIInstallationJournalEntry *)self journalPhase];
  v21 = journalPhase;
  v13 = 0;
  v22 = 0;
  if (journalPhase <= 3)
  {
    switch(journalPhase)
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
          identity2 = [(MIInstallationJournalEntry *)self identity];
          MOLogWrite();
        }

        v41 = v22;
        v28 = [(MIInstallationJournalEntry *)self _gatherLaunchServicesRegistrationInfoForStagedPlaceholder:0 withError:&v41, identity2];
        v12 = v41;

        bundleRecordsToRegister = self->_bundleRecordsToRegister;
        self->_bundleRecordsToRegister = v28;

        v30 = self->_bundleRecordsToRegister;
        v14 = v30 != 0;
        if (!v30 || !replayCopy)
        {
          goto LABEL_10;
        }

        if (replayCopy)
        {
          goto LABEL_58;
        }

        goto LABEL_54;
      default:
LABEL_52:
        v31 = MIInstallerErrorDomain;
        identity3 = [(MIInstallationJournalEntry *)self identity];
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
      identity = [(MIInstallationJournalEntry *)self identity];
      MOLogWrite();
    }

    v13 = 1;
    goto LABEL_44;
  }

  if (journalPhase > 5)
  {
    if (journalPhase == 6)
    {
      v33 = MIInstallerErrorDomain;
      identity4 = [(MIInstallationJournalEntry *)self identity];
      v12 = sub_100010734("[MIInstallationJournalEntry _performJournaledInstallAsReplay:withError:]", 1085, v33, 4, 0, 0, @"Called again after install journal entry was already complete for %@", v35, identity4);

      goto LABEL_9;
    }

    if (journalPhase == 7)
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        identity5 = [(MIInstallationJournalEntry *)self identity];
        MOLogWrite();
      }

      v12 = 0;
      goto LABEL_18;
    }

    goto LABEL_52;
  }

  if (journalPhase == 4)
  {
    v12 = 0;
    if (replayCopy)
    {
LABEL_58:
      v22 = v12;
      goto LABEL_59;
    }

LABEL_54:
    if (![(MIInstallationJournalEntry *)self _updateJournalPhaseTo:5 withError:0]&& (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      identity = [(MIInstallationJournalEntry *)self identity];
      MOLogWrite();
    }

    goto LABEL_58;
  }

LABEL_59:
  v40 = v22;
  v14 = [(MIInstallationJournalEntry *)self _beginLaunchServicesRegistrationWithError:&v40, identity];
  v12 = v40;

  if (v14)
  {
    [(MIInstallationJournalEntry *)self setJournalPhase:6];
    [(MIInstallationJournalEntry *)self _purgeJournalEntry];
    goto LABEL_18;
  }

LABEL_10:
  if (error && !v14)
  {
    v15 = v12;
    *error = v12;
  }

  if ((v13 | replayCopy) == 1 && !v14)
  {
    existingBundleContainer = [(MIInstallationJournalEntry *)self existingBundleContainer];

    if (existingBundleContainer)
    {
      v17 = objc_opt_class();
      identity6 = [(MIInstallationJournalEntry *)self identity];
      [v17 _attemptLSUpdateWithDiscoveredStateForIdentity:identity6 domain:{-[MIInstallationJournalEntry installationDomain](self, "installationDomain")}];
    }
  }

  if (!v14)
  {
    _keychainAccessGroupTracker = [(MIInstallationJournalEntry *)self _keychainAccessGroupTracker];
    [_keychainAccessGroupTracker invalidateCache];

    _freeProfileValidatedAppTracker = [(MIInstallationJournalEntry *)self _freeProfileValidatedAppTracker];
    [_freeProfileValidatedAppTracker invalidateCache];

    [(MIInstallationJournalEntry *)self _purgeJournalEntry];
    v19 = 0;
    goto LABEL_24;
  }

LABEL_18:
  v19 = 1;
LABEL_24:

  return v19;
}

- (BOOL)finalizeContainersWithError:(id *)error
{
  journalPhase = [(MIInstallationJournalEntry *)self journalPhase];
  if (journalPhase == 1)
  {
    v13 = 0;
    v6 = [(MIInstallationJournalEntry *)self _performJournaledInstallAsReplay:0 withError:&v13];
    v7 = v13;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MIInstallerErrorDomain;
    v9 = sub_1000317C4(journalPhase);
    v7 = sub_100010734("[MIInstallationJournalEntry finalizeContainersWithError:]", 1133, v8, 4, 0, 0, @"Finalize called on journal entry in unexpected state found journal phase %@, should have been %@", v10, v9);;

    v6 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v11 = v7;
    *error = v7;
  }

LABEL_7:

  return v6;
}

- (BOOL)performLaunchServicesRegistrationWithError:(id *)error
{
  journalPhase = [(MIInstallationJournalEntry *)self journalPhase];
  if (journalPhase == 4)
  {
    v13 = 0;
    v6 = [(MIInstallationJournalEntry *)self _performJournaledInstallAsReplay:0 withError:&v13];
    v7 = v13;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = MIInstallerErrorDomain;
    v9 = sub_1000317C4(journalPhase);
    v7 = sub_100010734("[MIInstallationJournalEntry performLaunchServicesRegistrationWithError:]", 1157, v8, 4, 0, 0, @"Asked to register journal entry with LaunchServices in unexpected state found journal phase %@, should have been %@", v10, v9);;

    v6 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v6)
  {
    v11 = v7;
    *error = v7;
  }

LABEL_7:

  return v6;
}

- (BOOL)finalizeWithError:(id *)error
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

    return [(MIInstallationJournalEntry *)self _performJournaledInstallAsReplay:1 withError:error];
  }
}

- (BOOL)stageUpdateForLaterWithError:(id *)error
{
  v13 = 0;
  v5 = [(MIInstallationJournalEntry *)self _updateJournalPhaseTo:7 withError:&v13];
  v6 = v13;
  if (v5)
  {
    bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
    v12 = v6;
    v8 = [bundleContainer markContainerAsStagedUpdateWithError:&v12];
    v9 = v12;

    v6 = v9;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if ((v8 & 1) == 0)
  {
    v10 = v6;
    *error = v6;
  }

LABEL_7:

  return v8;
}

- (id)installParallelPlaceholderForStagedUpdateFromURL:(id)l withResultingRecord:(id *)record error:(id *)error
{
  lCopy = l;
  v7 = +[MIFileManager defaultManager];
  identity = [(MIInstallationJournalEntry *)self identity];
  bundleID = [identity bundleID];
  personaUniqueString = [identity personaUniqueString];
  existingBundleContainer = [(MIInstallationJournalEntry *)self existingBundleContainer];
  parallelPlaceholderURL = [existingBundleContainer parallelPlaceholderURL];

  v60 = 0;
  v51 = bundleID;
  _MILogTransactionStep(15, 1, 1, bundleID, personaUniqueString, 0, v12, v13, v42);
  v14 = +[MIHelperServiceFrameworkClient sharedInstance];
  location = [identity location];
  v59 = 0;
  v16 = [v14 stagingLocationForInstallLocation:location withinStagingSubsytem:1 usingUniqueName:0 error:&v59];
  v17 = v59;

  if (!v16)
  {
    v22 = 0;
    v28 = 0;
    uRLByDeletingLastPathComponent = 0;
LABEL_27:
    if (error)
    {
      v39 = v17;
      v38 = 0;
      v29 = 0;
      *error = v17;
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
  installOptions = [(MIInstallationJournalEntry *)self installOptions];
  v58 = v17;
  v22 = [v20 stageItemAtURL:lCopy toStagingLocation:v16 options:installOptions containedSymlink:&v60 error:&v58];
  v23 = v58;

  if (!v22)
  {
    v28 = 0;
    uRLByDeletingLastPathComponent = 0;
    v17 = v23;
    v7 = v49;
    goto LABEL_27;
  }

  uRLByDeletingLastPathComponent = [v22 URLByDeletingLastPathComponent];
  if (v60 == 1)
  {
    v24 = MIInstallerErrorDomain;
    path = [lCopy path];
    v27 = sub_100010734("[MIInstallationJournalEntry installParallelPlaceholderForStagedUpdateFromURL:withResultingRecord:error:]", 1240, v24, 70, 0, 0, @"Discovered unexpected symlinks in %@", v26, path);
    v28 = 0;
    v29 = 0;
LABEL_15:

    v23 = v27;
    v7 = v49;
    goto LABEL_16;
  }

  v57 = v23;
  v7 = v49;
  v30 = [v49 removeItemAtURL:parallelPlaceholderURL error:&v57];
  v47 = v57;

  if ((v30 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
  {
    path2 = [parallelPlaceholderURL path];
    path4 = v47;
    MOLogWrite();
  }

  if (renamex_np([v22 fileSystemRepresentation], objc_msgSend(parallelPlaceholderURL, "fileSystemRepresentation"), 4u))
  {
    v31 = *__error();
    path3 = [v22 path];
    path4 = [parallelPlaceholderURL path];
    v46 = strerror(v31);
    path = sub_1000106F4("[MIInstallationJournalEntry installParallelPlaceholderForStagedUpdateFromURL:withResultingRecord:error:]", 1251, NSPOSIXErrorDomain, v31, 0, 0, @"renamex_np failed from %@ to %@ : %s", v33, path3);

    v27 = sub_100010734("[MIInstallationJournalEntry installParallelPlaceholderForStagedUpdateFromURL:withResultingRecord:error:]", 1252, MIInstallerErrorDomain, 4, path, 0, @"Failed to make staged placeholder live", v34, v44);
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
    path = [(MIInstallationJournalEntry *)self identity];
    v55 = v23;
    v29 = [(MIInstallationJournalEntry *)self _registerInstalledInfo:v28 forIdentity:path inDomain:[(MIInstallationJournalEntry *)self installationDomain] error:&v55];
    v27 = v55;
    goto LABEL_15;
  }

  v29 = 0;
LABEL_16:
  if (uRLByDeletingLastPathComponent)
  {
    v54 = 0;
    v35 = [v7 removeItemAtURL:uRLByDeletingLastPathComponent error:&v54];
    v36 = v54;
    if ((v35 & 1) == 0 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
    {
      path2 = [uRLByDeletingLastPathComponent path];
      MOLogWrite();
    }

    v7 = v49;
  }

  if (!v29)
  {
    v17 = v23;
    goto LABEL_27;
  }

  if (record)
  {
    v37 = v29;
    *record = v29;
  }

  v38 = 1;
LABEL_31:
  _MILogTransactionStep(15, 2, v38, v51, personaUniqueString, 0, v18, v19, path2);
  v40 = v28;

  return v40;
}

- (BOOL)makeStagedBackgroundUpdateLive:(id *)live
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
    if (!live)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    if (!live)
    {
      goto LABEL_7;
    }
  }

  if (!v8)
  {
    v10 = v7;
    *live = v7;
  }

LABEL_7:

  return v8;
}

- (BOOL)cleanUpJournaledDataOnDiskWithError:(id *)error
{
  bundleContainer = [(MIInstallationJournalEntry *)self bundleContainer];
  v6 = objc_opt_new();
  if ([bundleContainer isStagedContainer])
  {
    v30 = 0;
    v7 = [bundleContainer clearStagedUpdateContainerStatusWithError:&v30];
    v8 = v30;
    if (v7)
    {
      goto LABEL_8;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v23 = bundleContainer;
      v24 = v8;
      MOLogWrite();
    }
  }

  v8 = 0;
LABEL_8:
  if ([bundleContainer isTransient])
  {
    [v6 addObject:bundleContainer];
  }

  dataContainer = [(MIInstallationJournalEntry *)self dataContainer];
  isTransient = [dataContainer isTransient];

  if (isTransient)
  {
    dataContainer2 = [(MIInstallationJournalEntry *)self dataContainer];
    [v6 addObject:dataContainer2];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  appExtensionDataContainers = [(MIInstallationJournalEntry *)self appExtensionDataContainers];
  v13 = [appExtensionDataContainers countByEnumeratingWithState:&v26 objects:v31 count:16];
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
          objc_enumerationMutation(appExtensionDataContainers);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        if ([v17 isTransient])
        {
          [v6 addObject:v17];
        }
      }

      v14 = [appExtensionDataContainers countByEnumeratingWithState:&v26 objects:v31 count:16];
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

    else if (error)
    {
      v21 = v19;
      v20 = 0;
      *error = v19;
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