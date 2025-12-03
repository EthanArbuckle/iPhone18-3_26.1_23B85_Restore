@interface MIReverter
+ (id)reverterForAppIdentity:(id)identity withOptions:(id)options forClient:(id)client;
- (BOOL)_finalizeInstallationWithError:(id *)error;
- (BOOL)_performInstallationWithError:(id *)error;
- (BOOL)_performPreflightWithError:(id *)error;
- (BOOL)_performVerificationWithError:(id *)error;
- (BOOL)_postFlightAppExtensionsWithError:(id *)error;
- (BOOL)_postFlightInstallationWithError:(id *)error;
- (BOOL)_refreshUUIDForContainer:(id)container withError:(id *)error;
- (BOOL)_validateAndEstablishLinkToParentContainer:(id *)container;
- (BOOL)performRevertWithError:(id *)error;
- (MIClientConnection)client;
- (id)_launchServicesBundleRecordsWithError:(id *)error;
- (id)_validateBundle:(id)bundle error:(id *)error;
- (id)initForAppIdentity:(id)identity options:(id)options forClient:(id)client;
- (void)_fireCallbackWithStatus:(id)status;
- (void)dealloc;
@end

@implementation MIReverter

+ (id)reverterForAppIdentity:(id)identity withOptions:(id)options forClient:(id)client
{
  clientCopy = client;
  optionsCopy = options;
  identityCopy = identity;
  v10 = [objc_alloc(objc_opt_class()) initForAppIdentity:identityCopy options:optionsCopy forClient:clientCopy];

  return v10;
}

- (id)initForAppIdentity:(id)identity options:(id)options forClient:(id)client
{
  identityCopy = identity;
  optionsCopy = options;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = MIReverter;
  v12 = [(MIReverter *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeWeak(&v12->_client, clientCopy);
    objc_storeStrong(p_isa + 5, options);
    objc_storeStrong(p_isa + 6, identity);
  }

  return p_isa;
}

- (void)dealloc
{
  bundleContainer = [(MIReverter *)self bundleContainer];
  sub_10000A160(bundleContainer);

  dataContainer = [(MIReverter *)self dataContainer];
  sub_10000A160(dataContainer);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  appExtensionDataContainers = [(MIReverter *)self appExtensionDataContainers];
  v6 = [appExtensionDataContainers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(appExtensionDataContainers);
        }

        sub_10000A160(*(*(&v13 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [appExtensionDataContainers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(MIReverter *)self isLocked])
  {
    identity = [(MIReverter *)self identity];
    bundleID = [identity bundleID];
    sub_100054780();
  }

  v12.receiver = self;
  v12.super_class = MIReverter;
  [(MIReverter *)&v12 dealloc];
}

- (void)_fireCallbackWithStatus:(id)status
{
  statusCopy = status;
  client = [(MIReverter *)self client];
  [client sendProgressWithStatus:statusCopy];
}

- (BOOL)_performPreflightWithError:(id *)error
{
  identity = [(MIReverter *)self identity];
  bundleID = [identity bundleID];

  [(MIReverter *)self _fireCallbackWithStatus:@"PreflightingApplication" percentComplete:30];
  v21 = 0;
  v7 = [MIBundleContainer appBundleContainerWithIdentifier:bundleID createIfNeeded:0 created:0 error:&v21];
  v9 = v21;
  if (!v7)
  {
    v15 = sub_100010734("[MIReverter _performPreflightWithError:]", 138, MIInstallerErrorDomain, 26, v9, 0, @"Could not locate an existing installed app with bundle ID %@ to revert", v8, bundleID);
LABEL_7:

    v10 = 0;
    goto LABEL_8;
  }

  [(MIReverter *)self setExistingBundleContainer:v7];
  v20 = v9;
  v10 = [v7 stashedBundleContainerWithError:&v20];
  v11 = v20;

  if (!v10)
  {
    v15 = sub_100010734("[MIReverter _performPreflightWithError:]", 145, MIInstallerErrorDomain, 167, v11, 0, @"Installed app with bundle ID %@ did not have a stashed version", v12, bundleID);
    v9 = v11;
    goto LABEL_7;
  }

  [(MIReverter *)self setStashedContainer:v10];
  bundle = [v10 bundle];
  v19 = v11;
  v14 = [bundle appExtensionBundlesWithError:&v19];
  v15 = v19;

  if (v14)
  {
    [(MIReverter *)self setAppExtensionBundles:v14];

    v16 = 1;
    goto LABEL_11;
  }

LABEL_8:
  if (error)
  {
    v17 = v15;
    v16 = 0;
    *error = v15;
  }

  else
  {
    v16 = 0;
  }

LABEL_11:

  return v16;
}

- (id)_validateBundle:(id)bundle error:(id *)error
{
  bundleCopy = bundle;
  v21 = 0;
  v7 = [bundleCopy codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v21];
  v8 = v21;
  v9 = v8;
  if (v7)
  {
    if ([bundleCopy codeSignatureVerificationState] != 2)
    {
      v16 = MIInstallerErrorDomain;
      codeSignatureVerificationState = [bundleCopy codeSignatureVerificationState];
      v13 = sub_100010734("[MIReverter _validateBundle:error:]", 181, v16, 4, 0, 0, @"Unexpectedly failed to validate code signing (status %lu) for %@", v18, codeSignatureVerificationState);

      if (error)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    identity = [(MIReverter *)self identity];
    personaUniqueString = [identity personaUniqueString];
    v20 = v9;
    v12 = [bundleCopy hasNoConflictsWithOtherInstalledEntitiesForSigningInfo:v7 forPersona:personaUniqueString error:&v20];
    v13 = v20;

    if (v12)
    {
      v14 = v7;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v8;
  }

  if (error)
  {
LABEL_7:
    v15 = v13;
    v14 = 0;
    *error = v13;
    goto LABEL_10;
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)_performVerificationWithError:(id *)error
{
  [(MIReverter *)self _fireCallbackWithStatus:@"VerifyingApplication" percentComplete:40];
  stashedContainer = [(MIReverter *)self stashedContainer];
  bundle = [stashedContainer bundle];
  v25 = 0;
  v7 = [(MIReverter *)self _validateBundle:bundle error:&v25];
  v8 = v25;

  if (!v7)
  {
    v17 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  appExtensionBundles = [(MIReverter *)self appExtensionBundles];
  v10 = [appExtensionBundles countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    while (2)
    {
      v13 = 0;
      v14 = v8;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(appExtensionBundles);
        }

        v15 = *(*(&v21 + 1) + 8 * v13);
        v20 = v14;
        v16 = [(MIReverter *)self _validateBundle:v15 error:&v20];
        v8 = v20;

        if (!v16)
        {
          v17 = 0;
          goto LABEL_12;
        }

        v13 = v13 + 1;
        v14 = v8;
      }

      while (v11 != v13);
      v11 = [appExtensionBundles countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_12:

  if (error)
  {
LABEL_15:
    if (!v17)
    {
      v18 = v8;
      *error = v8;
    }
  }

LABEL_17:

  return v17;
}

- (BOOL)_validateAndEstablishLinkToParentContainer:(id *)container
{
  bundleContainer = [(MIReverter *)self bundleContainer];
  v18 = 0;
  v6 = [bundleContainer bundleMetadataWithError:&v18];
  v7 = v18;

  if (v6)
  {
    existingBundleContainer = [(MIReverter *)self existingBundleContainer];
    v17 = v7;
    v9 = [existingBundleContainer bundleMetadataWithError:&v17];
    v10 = v17;

    if (v9)
    {
      linkedChildBundleIDs = [v9 linkedChildBundleIDs];
      [v6 setLinkedChildBundleIDs:linkedChildBundleIDs];

      bundleContainer2 = [(MIReverter *)self bundleContainer];
      v16 = v10;
      v13 = [bundleContainer2 saveBundleMetadata:v6 withError:&v16];
      v7 = v16;

      if (!container)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v13 = 0;
    v7 = v10;
    if (container)
    {
LABEL_14:
      if ((v13 & 1) == 0)
      {
        v14 = v7;
        *container = v7;
      }
    }
  }

  else
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v13 = 0;
    if (container)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  return v13;
}

- (BOOL)_performInstallationWithError:(id *)error
{
  [(MIReverter *)self _fireCallbackWithStatus:@"CreatingContainer" percentComplete:50];
  identity = [(MIReverter *)self identity];
  bundleID = [identity bundleID];
  v19 = 0;
  v7 = [MIBundleContainer tempAppBundleContainerWithIdentifier:bundleID error:&v19];
  v8 = v19;

  if (v7)
  {
    [(MIReverter *)self setBundleContainer:v7];
    [(MIReverter *)self _fireCallbackWithStatus:@"InstallingApplication" percentComplete:60];
    stashedContainer = [(MIReverter *)self stashedContainer];
    v18 = v8;
    v11 = [v7 cloneContentFromStashedBundleContainer:stashedContainer error:&v18];
    v12 = v18;

    if (!v11)
    {
      v13 = 0;
      if (!error)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    v17 = v12;
    v13 = [(MIReverter *)self _validateAndEstablishLinkToParentContainer:&v17];
    v8 = v12;
    v12 = v17;
  }

  else
  {
    v12 = sub_100010734("[MIReverter _performInstallationWithError:]", 279, MIInstallerErrorDomain, 21, v8, &off_10009BCC8, @"Failed to create container", v9, v16);
    v13 = 0;
  }

  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v13)
  {
    v14 = v12;
    *error = v12;
  }

LABEL_10:

  return v13;
}

- (BOOL)_postFlightAppExtensionsWithError:(id *)error
{
  v5 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  selfCopy = self;
  obj = [(MIReverter *)self appExtensionBundles];
  v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    errorCopy = error;
    v8 = 0;
    v31 = *v36;
LABEL_3:
    v9 = 0;
    v10 = v8;
    while (1)
    {
      if (*v36 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v35 + 1) + 8 * v9);
      v34 = 0;
      v12 = [v11 updateMCMWithCodeSigningInfoAsAdvanceCopy:1 withError:&v34];
      v13 = v34;
      if ((v12 & 1) == 0)
      {
        break;
      }

      v14 = v5;
      identity = [(MIReverter *)selfCopy identity];
      personaUniqueString = [identity personaUniqueString];
      v33 = v10;
      v17 = [v11 dataContainerCreatingIfNeeded:1 forPersona:personaUniqueString makeLive:0 created:0 error:&v33];
      v8 = v33;

      if (!v17)
      {
        v23 = MIInstallerErrorDomain;
        identifier = [v11 identifier];
        v19 = sub_100010734("[MIReverter _postFlightAppExtensionsWithError:]", 332, v23, 21, v8, &off_10009BCF0, @"Failed to create app extension data container for  %@", v24, identifier);
        v10 = v8;
        v5 = v14;
LABEL_18:

        if (errorCopy)
        {
          v25 = v19;
          v18 = 0;
          *errorCopy = v19;
        }

        else
        {
          v18 = 0;
        }

        goto LABEL_21;
      }

      v5 = v14;
      [v14 addObject:v17];

      v9 = v9 + 1;
      v10 = v8;
      if (v7 == v9)
      {
        v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      identifier2 = [v11 identifier];
      v28 = v13;
      MOLogWrite();
    }

    v20 = MIInstallerErrorDomain;
    identifier = [v11 identifier];
    [v11 isPlaceholder];
    v19 = sub_100010734("[MIReverter _postFlightAppExtensionsWithError:]", 325, v20, 110, v13, 0, @"Failed to set app extension code signing info with container manager for %@, isPlaceholder: %c", v22, identifier);
    goto LABEL_18;
  }

  v8 = 0;
LABEL_12:

  [(MIReverter *)selfCopy setAppExtensionDataContainers:v5];
  v18 = 1;
  v19 = v8;
LABEL_21:

  return v18;
}

- (BOOL)_postFlightInstallationWithError:(id *)error
{
  identity = [(MIReverter *)self identity];
  bundleID = [identity bundleID];
  [(MIReverter *)self _fireCallbackWithStatus:@"PostflightingApplication" percentComplete:70];
  bundleContainer = [(MIReverter *)self bundleContainer];
  bundle = [bundleContainer bundle];

  if ([bundle needsDataContainer])
  {
    personaUniqueString = [identity personaUniqueString];
    v18 = 0;
    v10 = [bundle dataContainerCreatingIfNeeded:1 forPersona:personaUniqueString makeLive:0 created:0 error:&v18];
    v11 = v18;

    if (!v10)
    {
      v14 = sub_100010734("[MIReverter _postFlightInstallationWithError:]", 371, MIInstallerErrorDomain, 4, v11, 0, @"Failed to locate data container for stashed app %@", v12, bundleID);
      v13 = 0;
      goto LABEL_6;
    }

    [(MIReverter *)self setDataContainer:v10];
  }

  else
  {
    v11 = 0;
  }

  v17 = v11;
  v13 = [(MIReverter *)self _postFlightAppExtensionsWithError:&v17];
  v14 = v17;
LABEL_6:

  if (error && !v13)
  {
    v15 = v14;
    *error = v14;
  }

  return v13;
}

- (BOOL)_refreshUUIDForContainer:(id)container withError:(id *)error
{
  containerCopy = container;
  if ([containerCopy status] != 1)
  {
    v8 = 0;
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v15 = 0;
  v6 = [containerCopy regenerateDirectoryUUIDWithError:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      identifier = [containerCopy identifier];
      containerURL = [containerCopy containerURL];
      path = [containerURL path];
      MOLogWrite();
    }

    goto LABEL_7;
  }

  if (error)
  {
    v13 = v7;
    v11 = 0;
    *error = v8;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (BOOL)_finalizeInstallationWithError:(id *)error
{
  selfCopy = self;
  bundleContainer = [(MIReverter *)self bundleContainer];
  bundle = [bundleContainer bundle];

  v6 = [NSMutableArray arrayWithCapacity:0];
  [(MIReverter *)selfCopy _fireCallbackWithStatus:@"SandboxingApplication" percentComplete:80];
  existingBundleContainer = [(MIReverter *)selfCopy existingBundleContainer];

  v93 = v6;
  if (existingBundleContainer)
  {
    existingBundleContainer2 = [(MIReverter *)selfCopy existingBundleContainer];
    bundle2 = [existingBundleContainer2 bundle];

    v121 = 0;
    v10 = [bundle2 appExtensionBundlesWithError:&v121];
    v11 = v121;
    if (v10)
    {
      v91 = v10;
      bundleURL = [NSMutableArray arrayWithCapacity:0];
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      appExtensionBundles = [(MIReverter *)selfCopy appExtensionBundles];
      v14 = [appExtensionBundles countByEnumeratingWithState:&v117 objects:v125 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v118;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v118 != v16)
            {
              objc_enumerationMutation(appExtensionBundles);
            }

            identifier = [*(*(&v117 + 1) + 8 * i) identifier];
            [bundleURL addObject:identifier];
          }

          v15 = [appExtensionBundles countByEnumeratingWithState:&v117 objects:v125 count:16];
        }

        while (v15);
      }

      v90 = bundle;

      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v10 = v91;
      obj = v91;
      v19 = [obj countByEnumeratingWithState:&v113 objects:v124 count:16];
      if (v19)
      {
        v20 = v19;
        v89 = bundle2;
        v94 = selfCopy;
        v21 = *v114;
        do
        {
          v22 = 0;
          v23 = v11;
          do
          {
            if (*v114 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v113 + 1) + 8 * v22);
            identifier2 = [v24 identifier];
            v26 = [bundleURL containsObject:identifier2];

            if (v26)
            {
              v11 = v23;
            }

            else
            {
              identity = [(MIReverter *)v94 identity];
              personaUniqueString = [identity personaUniqueString];
              v112 = v23;
              v29 = [v24 dataContainerCreatingIfNeeded:0 forPersona:personaUniqueString makeLive:0 created:0 error:&v112];
              v11 = v112;

              if (v29)
              {
                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
                {
                  identifier3 = [v24 identifier];
                  MOLogWrite();
                }

                [v93 addObject:{v29, identifier3}];
              }

              else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                identifier3 = [v24 identifier];
                v87 = v11;
                MOLogWrite();
              }

              v23 = v11;
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [obj countByEnumeratingWithState:&v113 objects:v124 count:16];
        }

        while (v20);
        bundle2 = v89;
        bundle = v90;
        selfCopy = v94;
        v10 = v91;
      }
    }

    else
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_33;
      }

      bundleURL = [bundle2 bundleURL];
      identifier3 = [bundleURL path];
      v87 = v11;
      obj = identifier3;
      MOLogWrite();
    }

LABEL_33:
  }

  v30 = [(MIReverter *)selfCopy dataContainer:identifier3];
  if (v30 && (v31 = v30, -[MIReverter dataContainer](selfCopy, "dataContainer"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 status], v32, v31, v33 != 3))
  {
    dataContainer = [(MIReverter *)selfCopy dataContainer];
    v111 = 0;
    v68 = [(MIReverter *)selfCopy _refreshUUIDForContainer:dataContainer withError:&v111];
    v50 = v111;

    if (!v68)
    {
      goto LABEL_69;
    }

    dataContainer2 = [(MIReverter *)selfCopy dataContainer];
    v110 = v50;
    v70 = [dataContainer2 makeContainerLiveWithError:&v110];
    v34 = v110;

    v50 = v34;
    if (!v70)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v34 = 0;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v35 = selfCopy;
  appExtensionDataContainers = [(MIReverter *)selfCopy appExtensionDataContainers];
  v37 = [appExtensionDataContainers countByEnumeratingWithState:&v106 objects:v123 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v107;
LABEL_39:
    v40 = 0;
    while (1)
    {
      if (*v107 != v39)
      {
        objc_enumerationMutation(appExtensionDataContainers);
      }

      v41 = *(*(&v106 + 1) + 8 * v40);
      v105 = v34;
      v42 = [(MIReverter *)v35 _refreshUUIDForContainer:v41 withError:&v105];
      v43 = v105;

      if (!v42)
      {
        goto LABEL_68;
      }

      if ([v41 status] == 3)
      {
        v34 = v43;
      }

      else
      {
        v104 = v43;
        v44 = [v41 makeContainerLiveWithError:&v104];
        v34 = v104;

        if (!v44)
        {
          v43 = v34;
          goto LABEL_68;
        }
      }

      if (v38 == ++v40)
      {
        v38 = [appExtensionDataContainers countByEnumeratingWithState:&v106 objects:v123 count:16];
        if (v38)
        {
          goto LABEL_39;
        }

        break;
      }
    }
  }

  options = [(MIReverter *)v35 options];
  v46 = [options objectForKeyedSubscript:@"WaitForStorageDeletion"];
  v47 = sub_100010A60(v46, 0);

  bundleContainer2 = [(MIReverter *)v35 bundleContainer];
  existingBundleContainer3 = [(MIReverter *)v35 existingBundleContainer];
  v103 = v34;
  LODWORD(v47) = [bundleContainer2 makeContainerLiveReplacingContainer:existingBundleContainer3 reason:2 waitForDeletion:v47 withError:&v103];
  v50 = v103;

  if (!v47)
  {
    goto LABEL_69;
  }

  dataContainer3 = [(MIReverter *)v35 dataContainer];
  if (dataContainer3)
  {
    v52 = dataContainer3;
    dataContainer4 = [(MIReverter *)v35 dataContainer];
    status = [dataContainer4 status];

    if (status == 3)
    {
      dataContainer5 = [(MIReverter *)v35 dataContainer];
      v102 = v50;
      v56 = [dataContainer5 makeContainerLiveWithError:&v102];
      v57 = v102;

      v50 = v57;
      if (!v56)
      {
        goto LABEL_69;
      }
    }
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  appExtensionDataContainers = [(MIReverter *)v35 appExtensionDataContainers];
  v58 = [appExtensionDataContainers countByEnumeratingWithState:&v98 objects:v122 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v99;
LABEL_54:
    v61 = 0;
    while (1)
    {
      if (*v99 != v60)
      {
        objc_enumerationMutation(appExtensionDataContainers);
      }

      v62 = *(*(&v98 + 1) + 8 * v61);
      if ([v62 status] == 3)
      {
        identifier4 = [bundle identifier];
        [v62 setParentBundleID:identifier4];

        v97 = v50;
        LODWORD(identifier4) = [v62 makeContainerLiveWithError:&v97];
        v43 = v97;

        v50 = v43;
        if (!identifier4)
        {
          break;
        }
      }

      if (v59 == ++v61)
      {
        v59 = [appExtensionDataContainers countByEnumeratingWithState:&v98 objects:v122 count:16];
        if (v59)
        {
          goto LABEL_54;
        }

        goto LABEL_61;
      }
    }

LABEL_68:

    v50 = v43;
LABEL_69:
    v64 = v93;
    if (error)
    {
      v71 = v50;
      v72 = 0;
      *error = v50;
    }

    else
    {
      v72 = 0;
    }

    goto LABEL_72;
  }

LABEL_61:

  v64 = v93;
  if ([v93 count])
  {
    v96 = v50;
    v65 = [MIContainer removeContainers:v93 waitForDeletion:0 error:&v96];
    v66 = v96;

    if (v65)
    {
      v50 = v66;
    }

    else
    {
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
      {
        v86 = v93;
        v88 = v66;
        MOLogWrite();
      }

      v50 = 0;
    }
  }

  v74 = [(MIReverter *)v35 dataContainer:v86];

  if (v74)
  {
    v75 = +[MIContainerProtectionManager defaultManager];
    dataContainer6 = [(MIReverter *)v35 dataContainer];
    [v75 setDataProtectionOnDataContainer:dataContainer6 forNewBundle:bundle retryIfLocked:1];
  }

  appExtensionBundles2 = [(MIReverter *)v35 appExtensionBundles];
  v78 = [appExtensionBundles2 count];

  if (v78)
  {
    for (j = 0; j != v78; ++j)
    {
      appExtensionDataContainers2 = [(MIReverter *)v35 appExtensionDataContainers];
      v81 = [appExtensionDataContainers2 objectAtIndexedSubscript:j];

      appExtensionBundles3 = [(MIReverter *)v35 appExtensionBundles];
      v83 = [appExtensionBundles3 objectAtIndexedSubscript:j];

      v84 = +[MIContainerProtectionManager defaultManager];
      v72 = 1;
      [v84 setDataProtectionOnDataContainer:v81 forNewBundle:v83 retryIfLocked:1];
    }

    v64 = v93;
  }

  else
  {
    v72 = 1;
  }

LABEL_72:

  return v72;
}

- (id)_launchServicesBundleRecordsWithError:(id *)error
{
  v5 = objc_opt_new();
  identity = [(MIReverter *)self identity];
  bundleID = [identity bundleID];
  [(MIReverter *)self _fireCallbackWithStatus:@"GeneratingApplicationMap" percentComplete:90];
  v7 = [MIInstalledInfoGatherer alloc];
  bundleContainer = [(MIReverter *)self bundleContainer];
  dataContainer = [(MIReverter *)self dataContainer];
  v10 = [v7 initWithBundleContainer:bundleContainer dataContainer:dataContainer];

  v37 = 0;
  v11 = [v10 bundleRecordWithError:&v37];
  v12 = v37;
  if (!v11)
  {
    v26 = 0;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  [v5 addObject:v11];
  appExtensionBundles = [(MIReverter *)self appExtensionBundles];
  v14 = [appExtensionBundles count];

  appExtensionDataContainers = [(MIReverter *)self appExtensionDataContainers];
  v16 = [appExtensionDataContainers count];

  if (v14 != v16)
  {
    v27 = sub_100010734("[MIReverter _launchServicesBundleRecordsWithError:]", 590, MIInstallerErrorDomain, 4, 0, 0, @"Have %ld app extensions and %ld app extension data containers they should be equal.", v17, v14);;

    v26 = 0;
    v12 = v27;
    if (!error)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v31 = v11;
  v32 = identity;
  errorCopy = error;
  if (v14)
  {
    v34 = v14;
    v18 = 0;
    while (1)
    {
      v19 = v10;
      v20 = v12;
      appExtensionBundles2 = [(MIReverter *)self appExtensionBundles];
      v22 = [appExtensionBundles2 objectAtIndexedSubscript:v18];

      appExtensionDataContainers2 = [(MIReverter *)self appExtensionDataContainers];
      v24 = [appExtensionDataContainers2 objectAtIndexedSubscript:v18];

      v10 = [[MIInstalledInfoGatherer alloc] initWithAppExtensionBundle:v22 inBundleIdentifier:bundleID dataContainer:v24];
      v36 = v12;
      v25 = [v10 bundleRecordWithError:&v36];
      v12 = v36;

      if (!v25)
      {
        break;
      }

      [v5 addObject:v25];

      if (v34 == ++v18)
      {
        goto LABEL_7;
      }
    }

    v26 = 0;
  }

  else
  {
LABEL_7:
    v26 = v5;
  }

  identity = v32;
  error = errorCopy;
  v11 = v31;
  if (errorCopy)
  {
LABEL_14:
    if (!v26)
    {
      v28 = v12;
      *error = v12;
    }
  }

LABEL_16:
  v29 = v26;

  return v26;
}

- (BOOL)performRevertWithError:(id *)error
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10000C2C8;
  v44 = sub_10000C2D8;
  v45 = 0;
  identity = [(MIReverter *)self identity];
  bundleID = [identity bundleID];
  [(MIReverter *)self _fireCallbackWithStatus:@"CreatingStagingDirectory" percentComplete:5];
  [(MIReverter *)self _fireCallbackWithStatus:@"ExtractingPackage" percentComplete:15];
  [(MIReverter *)self _fireCallbackWithStatus:@"InspectingPackage" percentComplete:20];
  [(MIReverter *)self _fireCallbackWithStatus:@"TakingInstallLock"];
  sub_100054630(bundleID);
  [(MIReverter *)self setIsLocked:1];
  v7 = v41;
  v39 = v41[5];
  v8 = [identity resolvePersonaWithError:&v39];
  objc_storeStrong(v7 + 5, v39);
  if ((v8 & 1) == 0)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v9 = v41;
  v38 = v41[5];
  LODWORD(v10) = [(MIReverter *)self _performPreflightWithError:&v38];
  objc_storeStrong(v9 + 5, v38);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v41;
  v37 = v41[5];
  LODWORD(v10) = [(MIReverter *)self _performVerificationWithError:&v37];
  objc_storeStrong(v11 + 5, v37);
  if (!v10)
  {
    goto LABEL_14;
  }

  v12 = v41;
  obj = v41[5];
  LODWORD(v10) = [(MIReverter *)self _performInstallationWithError:&obj];
  objc_storeStrong(v12 + 5, obj);
  if (!v10)
  {
    goto LABEL_14;
  }

  v13 = v41;
  v35 = v41[5];
  LODWORD(v10) = [(MIReverter *)self _postFlightInstallationWithError:&v35];
  objc_storeStrong(v13 + 5, v35);
  if (!v10 || (v14 = v41, v34 = v41[5], LODWORD(v10) = [(MIReverter *)self _finalizeInstallationWithError:&v34], objc_storeStrong(v14 + 5, v34), !v10))
  {
LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v15 = v41;
  v33 = v41[5];
  v16 = [(MIReverter *)self _launchServicesBundleRecordsWithError:&v33];
  objc_storeStrong(v15 + 5, v33);
  if (!v16)
  {
LABEL_13:
    LOBYTE(v10) = 0;
    goto LABEL_15;
  }

  objc_storeStrong(&self->_receipt, v16);
  if ([(MIReverter *)self isLocked])
  {
    sub_100054780(bundleID);
    [(MIReverter *)self setIsLocked:0];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_10000C2C8;
  v31 = sub_10000C2D8;
  v32 = 0;
  v10 = sub_10000998C();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C2E0;
  block[3] = &unk_100090CD8;
  v25 = &v27;
  v16 = v16;
  v23 = v16;
  v24 = identity;
  v26 = &v40;
  dispatch_sync(v10, block);

  v17 = v28[5];
  LOBYTE(v10) = v17 != 0;
  if (v17)
  {
    objc_storeStrong(&self->_recordPromise, v17);
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
  {
    v20 = bundleID;
    v21 = v41[5];
    MOLogWrite();
  }

  _Block_object_dispose(&v27, 8);
LABEL_15:
  if ([(MIReverter *)self isLocked:v20])
  {
    sub_100054780(bundleID);
    [(MIReverter *)self setIsLocked:0];
  }

  if (error)
  {
    v18 = v10;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    *error = v41[5];
  }

  _Block_object_dispose(&v40, 8);
  return v10;
}

- (MIClientConnection)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end