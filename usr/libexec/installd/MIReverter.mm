@interface MIReverter
+ (id)reverterForAppIdentity:(id)a3 withOptions:(id)a4 forClient:(id)a5;
- (BOOL)_finalizeInstallationWithError:(id *)a3;
- (BOOL)_performInstallationWithError:(id *)a3;
- (BOOL)_performPreflightWithError:(id *)a3;
- (BOOL)_performVerificationWithError:(id *)a3;
- (BOOL)_postFlightAppExtensionsWithError:(id *)a3;
- (BOOL)_postFlightInstallationWithError:(id *)a3;
- (BOOL)_refreshUUIDForContainer:(id)a3 withError:(id *)a4;
- (BOOL)_validateAndEstablishLinkToParentContainer:(id *)a3;
- (BOOL)performRevertWithError:(id *)a3;
- (MIClientConnection)client;
- (id)_launchServicesBundleRecordsWithError:(id *)a3;
- (id)_validateBundle:(id)a3 error:(id *)a4;
- (id)initForAppIdentity:(id)a3 options:(id)a4 forClient:(id)a5;
- (void)_fireCallbackWithStatus:(id)a3;
- (void)dealloc;
@end

@implementation MIReverter

+ (id)reverterForAppIdentity:(id)a3 withOptions:(id)a4 forClient:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initForAppIdentity:v9 options:v8 forClient:v7];

  return v10;
}

- (id)initForAppIdentity:(id)a3 options:(id)a4 forClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MIReverter;
  v12 = [(MIReverter *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeWeak(&v12->_client, v11);
    objc_storeStrong(p_isa + 5, a4);
    objc_storeStrong(p_isa + 6, a3);
  }

  return p_isa;
}

- (void)dealloc
{
  v3 = [(MIReverter *)self bundleContainer];
  sub_10000A160(v3);

  v4 = [(MIReverter *)self dataContainer];
  sub_10000A160(v4);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(MIReverter *)self appExtensionDataContainers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        sub_10000A160(*(*(&v13 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if ([(MIReverter *)self isLocked])
  {
    v10 = [(MIReverter *)self identity];
    v11 = [v10 bundleID];
    sub_100054780();
  }

  v12.receiver = self;
  v12.super_class = MIReverter;
  [(MIReverter *)&v12 dealloc];
}

- (void)_fireCallbackWithStatus:(id)a3
{
  v4 = a3;
  v5 = [(MIReverter *)self client];
  [v5 sendProgressWithStatus:v4];
}

- (BOOL)_performPreflightWithError:(id *)a3
{
  v5 = [(MIReverter *)self identity];
  v6 = [v5 bundleID];

  [(MIReverter *)self _fireCallbackWithStatus:@"PreflightingApplication" percentComplete:30];
  v21 = 0;
  v7 = [MIBundleContainer appBundleContainerWithIdentifier:v6 createIfNeeded:0 created:0 error:&v21];
  v9 = v21;
  if (!v7)
  {
    v15 = sub_100010734("[MIReverter _performPreflightWithError:]", 138, MIInstallerErrorDomain, 26, v9, 0, @"Could not locate an existing installed app with bundle ID %@ to revert", v8, v6);
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
    v15 = sub_100010734("[MIReverter _performPreflightWithError:]", 145, MIInstallerErrorDomain, 167, v11, 0, @"Installed app with bundle ID %@ did not have a stashed version", v12, v6);
    v9 = v11;
    goto LABEL_7;
  }

  [(MIReverter *)self setStashedContainer:v10];
  v13 = [v10 bundle];
  v19 = v11;
  v14 = [v13 appExtensionBundlesWithError:&v19];
  v15 = v19;

  if (v14)
  {
    [(MIReverter *)self setAppExtensionBundles:v14];

    v16 = 1;
    goto LABEL_11;
  }

LABEL_8:
  if (a3)
  {
    v17 = v15;
    v16 = 0;
    *a3 = v15;
  }

  else
  {
    v16 = 0;
  }

LABEL_11:

  return v16;
}

- (id)_validateBundle:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v7 = [v6 codeSigningInfoByValidatingResources:0 performingOnlineAuthorization:0 ignoringCachedSigningInfo:1 checkingTrustCacheIfApplicable:0 skippingProfileIDValidation:0 error:&v21];
  v8 = v21;
  v9 = v8;
  if (v7)
  {
    if ([v6 codeSignatureVerificationState] != 2)
    {
      v16 = MIInstallerErrorDomain;
      v17 = [v6 codeSignatureVerificationState];
      v13 = sub_100010734("[MIReverter _validateBundle:error:]", 181, v16, 4, 0, 0, @"Unexpectedly failed to validate code signing (status %lu) for %@", v18, v17);

      if (a4)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v10 = [(MIReverter *)self identity];
    v11 = [v10 personaUniqueString];
    v20 = v9;
    v12 = [v6 hasNoConflictsWithOtherInstalledEntitiesForSigningInfo:v7 forPersona:v11 error:&v20];
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

  if (a4)
  {
LABEL_7:
    v15 = v13;
    v14 = 0;
    *a4 = v13;
    goto LABEL_10;
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)_performVerificationWithError:(id *)a3
{
  [(MIReverter *)self _fireCallbackWithStatus:@"VerifyingApplication" percentComplete:40];
  v5 = [(MIReverter *)self stashedContainer];
  v6 = [v5 bundle];
  v25 = 0;
  v7 = [(MIReverter *)self _validateBundle:v6 error:&v25];
  v8 = v25;

  if (!v7)
  {
    v17 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = [(MIReverter *)self appExtensionBundles];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v9);
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
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_12:

  if (a3)
  {
LABEL_15:
    if (!v17)
    {
      v18 = v8;
      *a3 = v8;
    }
  }

LABEL_17:

  return v17;
}

- (BOOL)_validateAndEstablishLinkToParentContainer:(id *)a3
{
  v5 = [(MIReverter *)self bundleContainer];
  v18 = 0;
  v6 = [v5 bundleMetadataWithError:&v18];
  v7 = v18;

  if (v6)
  {
    v8 = [(MIReverter *)self existingBundleContainer];
    v17 = v7;
    v9 = [v8 bundleMetadataWithError:&v17];
    v10 = v17;

    if (v9)
    {
      v11 = [v9 linkedChildBundleIDs];
      [v6 setLinkedChildBundleIDs:v11];

      v12 = [(MIReverter *)self bundleContainer];
      v16 = v10;
      v13 = [v12 saveBundleMetadata:v6 withError:&v16];
      v7 = v16;

      if (!a3)
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
    if (a3)
    {
LABEL_14:
      if ((v13 & 1) == 0)
      {
        v14 = v7;
        *a3 = v7;
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
    if (a3)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  return v13;
}

- (BOOL)_performInstallationWithError:(id *)a3
{
  [(MIReverter *)self _fireCallbackWithStatus:@"CreatingContainer" percentComplete:50];
  v5 = [(MIReverter *)self identity];
  v6 = [v5 bundleID];
  v19 = 0;
  v7 = [MIBundleContainer tempAppBundleContainerWithIdentifier:v6 error:&v19];
  v8 = v19;

  if (v7)
  {
    [(MIReverter *)self setBundleContainer:v7];
    [(MIReverter *)self _fireCallbackWithStatus:@"InstallingApplication" percentComplete:60];
    v10 = [(MIReverter *)self stashedContainer];
    v18 = v8;
    v11 = [v7 cloneContentFromStashedBundleContainer:v10 error:&v18];
    v12 = v18;

    if (!v11)
    {
      v13 = 0;
      if (!a3)
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

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (!v13)
  {
    v14 = v12;
    *a3 = v12;
  }

LABEL_10:

  return v13;
}

- (BOOL)_postFlightAppExtensionsWithError:(id *)a3
{
  v5 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v32 = self;
  obj = [(MIReverter *)self appExtensionBundles];
  v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v29 = a3;
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
      v15 = [(MIReverter *)v32 identity];
      v16 = [v15 personaUniqueString];
      v33 = v10;
      v17 = [v11 dataContainerCreatingIfNeeded:1 forPersona:v16 makeLive:0 created:0 error:&v33];
      v8 = v33;

      if (!v17)
      {
        v23 = MIInstallerErrorDomain;
        v21 = [v11 identifier];
        v19 = sub_100010734("[MIReverter _postFlightAppExtensionsWithError:]", 332, v23, 21, v8, &off_10009BCF0, @"Failed to create app extension data container for  %@", v24, v21);
        v10 = v8;
        v5 = v14;
LABEL_18:

        if (v29)
        {
          v25 = v19;
          v18 = 0;
          *v29 = v19;
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
      v27 = [v11 identifier];
      v28 = v13;
      MOLogWrite();
    }

    v20 = MIInstallerErrorDomain;
    v21 = [v11 identifier];
    [v11 isPlaceholder];
    v19 = sub_100010734("[MIReverter _postFlightAppExtensionsWithError:]", 325, v20, 110, v13, 0, @"Failed to set app extension code signing info with container manager for %@, isPlaceholder: %c", v22, v21);
    goto LABEL_18;
  }

  v8 = 0;
LABEL_12:

  [(MIReverter *)v32 setAppExtensionDataContainers:v5];
  v18 = 1;
  v19 = v8;
LABEL_21:

  return v18;
}

- (BOOL)_postFlightInstallationWithError:(id *)a3
{
  v5 = [(MIReverter *)self identity];
  v6 = [v5 bundleID];
  [(MIReverter *)self _fireCallbackWithStatus:@"PostflightingApplication" percentComplete:70];
  v7 = [(MIReverter *)self bundleContainer];
  v8 = [v7 bundle];

  if ([v8 needsDataContainer])
  {
    v9 = [v5 personaUniqueString];
    v18 = 0;
    v10 = [v8 dataContainerCreatingIfNeeded:1 forPersona:v9 makeLive:0 created:0 error:&v18];
    v11 = v18;

    if (!v10)
    {
      v14 = sub_100010734("[MIReverter _postFlightInstallationWithError:]", 371, MIInstallerErrorDomain, 4, v11, 0, @"Failed to locate data container for stashed app %@", v12, v6);
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

  if (a3 && !v13)
  {
    v15 = v14;
    *a3 = v14;
  }

  return v13;
}

- (BOOL)_refreshUUIDForContainer:(id)a3 withError:(id *)a4
{
  v5 = a3;
  if ([v5 status] != 1)
  {
    v8 = 0;
LABEL_7:
    v11 = 1;
    goto LABEL_8;
  }

  v15 = 0;
  v6 = [v5 regenerateDirectoryUUIDWithError:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v9 = [v5 identifier];
      v10 = [v5 containerURL];
      v14 = [v10 path];
      MOLogWrite();
    }

    goto LABEL_7;
  }

  if (a4)
  {
    v13 = v7;
    v11 = 0;
    *a4 = v8;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:

  return v11;
}

- (BOOL)_finalizeInstallationWithError:(id *)a3
{
  v3 = self;
  v4 = [(MIReverter *)self bundleContainer];
  v5 = [v4 bundle];

  v6 = [NSMutableArray arrayWithCapacity:0];
  [(MIReverter *)v3 _fireCallbackWithStatus:@"SandboxingApplication" percentComplete:80];
  v7 = [(MIReverter *)v3 existingBundleContainer];

  v93 = v6;
  if (v7)
  {
    v8 = [(MIReverter *)v3 existingBundleContainer];
    v9 = [v8 bundle];

    v121 = 0;
    v10 = [v9 appExtensionBundlesWithError:&v121];
    v11 = v121;
    if (v10)
    {
      v91 = v10;
      v12 = [NSMutableArray arrayWithCapacity:0];
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v13 = [(MIReverter *)v3 appExtensionBundles];
      v14 = [v13 countByEnumeratingWithState:&v117 objects:v125 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [*(*(&v117 + 1) + 8 * i) identifier];
            [v12 addObject:v18];
          }

          v15 = [v13 countByEnumeratingWithState:&v117 objects:v125 count:16];
        }

        while (v15);
      }

      v90 = v5;

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
        v89 = v9;
        v94 = v3;
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
            v25 = [v24 identifier];
            v26 = [v12 containsObject:v25];

            if (v26)
            {
              v11 = v23;
            }

            else
            {
              v27 = [(MIReverter *)v94 identity];
              v28 = [v27 personaUniqueString];
              v112 = v23;
              v29 = [v24 dataContainerCreatingIfNeeded:0 forPersona:v28 makeLive:0 created:0 error:&v112];
              v11 = v112;

              if (v29)
              {
                if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
                {
                  v85 = [v24 identifier];
                  MOLogWrite();
                }

                [v93 addObject:{v29, v85}];
              }

              else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v85 = [v24 identifier];
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
        v9 = v89;
        v5 = v90;
        v3 = v94;
        v10 = v91;
      }
    }

    else
    {
      if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
      {
        goto LABEL_33;
      }

      v12 = [v9 bundleURL];
      v85 = [v12 path];
      v87 = v11;
      obj = v85;
      MOLogWrite();
    }

LABEL_33:
  }

  v30 = [(MIReverter *)v3 dataContainer:v85];
  if (v30 && (v31 = v30, -[MIReverter dataContainer](v3, "dataContainer"), v32 = objc_claimAutoreleasedReturnValue(), v33 = [v32 status], v32, v31, v33 != 3))
  {
    v67 = [(MIReverter *)v3 dataContainer];
    v111 = 0;
    v68 = [(MIReverter *)v3 _refreshUUIDForContainer:v67 withError:&v111];
    v50 = v111;

    if (!v68)
    {
      goto LABEL_69;
    }

    v69 = [(MIReverter *)v3 dataContainer];
    v110 = v50;
    v70 = [v69 makeContainerLiveWithError:&v110];
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
  v35 = v3;
  v36 = [(MIReverter *)v3 appExtensionDataContainers];
  v37 = [v36 countByEnumeratingWithState:&v106 objects:v123 count:16];
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
        objc_enumerationMutation(v36);
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
        v38 = [v36 countByEnumeratingWithState:&v106 objects:v123 count:16];
        if (v38)
        {
          goto LABEL_39;
        }

        break;
      }
    }
  }

  v45 = [(MIReverter *)v35 options];
  v46 = [v45 objectForKeyedSubscript:@"WaitForStorageDeletion"];
  v47 = sub_100010A60(v46, 0);

  v48 = [(MIReverter *)v35 bundleContainer];
  v49 = [(MIReverter *)v35 existingBundleContainer];
  v103 = v34;
  LODWORD(v47) = [v48 makeContainerLiveReplacingContainer:v49 reason:2 waitForDeletion:v47 withError:&v103];
  v50 = v103;

  if (!v47)
  {
    goto LABEL_69;
  }

  v51 = [(MIReverter *)v35 dataContainer];
  if (v51)
  {
    v52 = v51;
    v53 = [(MIReverter *)v35 dataContainer];
    v54 = [v53 status];

    if (v54 == 3)
    {
      v55 = [(MIReverter *)v35 dataContainer];
      v102 = v50;
      v56 = [v55 makeContainerLiveWithError:&v102];
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
  v36 = [(MIReverter *)v35 appExtensionDataContainers];
  v58 = [v36 countByEnumeratingWithState:&v98 objects:v122 count:16];
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
        objc_enumerationMutation(v36);
      }

      v62 = *(*(&v98 + 1) + 8 * v61);
      if ([v62 status] == 3)
      {
        v63 = [v5 identifier];
        [v62 setParentBundleID:v63];

        v97 = v50;
        LODWORD(v63) = [v62 makeContainerLiveWithError:&v97];
        v43 = v97;

        v50 = v43;
        if (!v63)
        {
          break;
        }
      }

      if (v59 == ++v61)
      {
        v59 = [v36 countByEnumeratingWithState:&v98 objects:v122 count:16];
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
    if (a3)
    {
      v71 = v50;
      v72 = 0;
      *a3 = v50;
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
    v76 = [(MIReverter *)v35 dataContainer];
    [v75 setDataProtectionOnDataContainer:v76 forNewBundle:v5 retryIfLocked:1];
  }

  v77 = [(MIReverter *)v35 appExtensionBundles];
  v78 = [v77 count];

  if (v78)
  {
    for (j = 0; j != v78; ++j)
    {
      v80 = [(MIReverter *)v35 appExtensionDataContainers];
      v81 = [v80 objectAtIndexedSubscript:j];

      v82 = [(MIReverter *)v35 appExtensionBundles];
      v83 = [v82 objectAtIndexedSubscript:j];

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

- (id)_launchServicesBundleRecordsWithError:(id *)a3
{
  v5 = objc_opt_new();
  v6 = [(MIReverter *)self identity];
  v35 = [v6 bundleID];
  [(MIReverter *)self _fireCallbackWithStatus:@"GeneratingApplicationMap" percentComplete:90];
  v7 = [MIInstalledInfoGatherer alloc];
  v8 = [(MIReverter *)self bundleContainer];
  v9 = [(MIReverter *)self dataContainer];
  v10 = [v7 initWithBundleContainer:v8 dataContainer:v9];

  v37 = 0;
  v11 = [v10 bundleRecordWithError:&v37];
  v12 = v37;
  if (!v11)
  {
    v26 = 0;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  [v5 addObject:v11];
  v13 = [(MIReverter *)self appExtensionBundles];
  v14 = [v13 count];

  v15 = [(MIReverter *)self appExtensionDataContainers];
  v16 = [v15 count];

  if (v14 != v16)
  {
    v27 = sub_100010734("[MIReverter _launchServicesBundleRecordsWithError:]", 590, MIInstallerErrorDomain, 4, 0, 0, @"Have %ld app extensions and %ld app extension data containers they should be equal.", v17, v14);;

    v26 = 0;
    v12 = v27;
    if (!a3)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v31 = v11;
  v32 = v6;
  v33 = a3;
  if (v14)
  {
    v34 = v14;
    v18 = 0;
    while (1)
    {
      v19 = v10;
      v20 = v12;
      v21 = [(MIReverter *)self appExtensionBundles];
      v22 = [v21 objectAtIndexedSubscript:v18];

      v23 = [(MIReverter *)self appExtensionDataContainers];
      v24 = [v23 objectAtIndexedSubscript:v18];

      v10 = [[MIInstalledInfoGatherer alloc] initWithAppExtensionBundle:v22 inBundleIdentifier:v35 dataContainer:v24];
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

  v6 = v32;
  a3 = v33;
  v11 = v31;
  if (v33)
  {
LABEL_14:
    if (!v26)
    {
      v28 = v12;
      *a3 = v12;
    }
  }

LABEL_16:
  v29 = v26;

  return v26;
}

- (BOOL)performRevertWithError:(id *)a3
{
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_10000C2C8;
  v44 = sub_10000C2D8;
  v45 = 0;
  v5 = [(MIReverter *)self identity];
  v6 = [v5 bundleID];
  [(MIReverter *)self _fireCallbackWithStatus:@"CreatingStagingDirectory" percentComplete:5];
  [(MIReverter *)self _fireCallbackWithStatus:@"ExtractingPackage" percentComplete:15];
  [(MIReverter *)self _fireCallbackWithStatus:@"InspectingPackage" percentComplete:20];
  [(MIReverter *)self _fireCallbackWithStatus:@"TakingInstallLock"];
  sub_100054630(v6);
  [(MIReverter *)self setIsLocked:1];
  v7 = v41;
  v39 = v41[5];
  v8 = [v5 resolvePersonaWithError:&v39];
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
    sub_100054780(v6);
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
  v24 = v5;
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
    v20 = v6;
    v21 = v41[5];
    MOLogWrite();
  }

  _Block_object_dispose(&v27, 8);
LABEL_15:
  if ([(MIReverter *)self isLocked:v20])
  {
    sub_100054780(v6);
    [(MIReverter *)self setIsLocked:0];
  }

  if (a3)
  {
    v18 = v10;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    *a3 = v41[5];
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