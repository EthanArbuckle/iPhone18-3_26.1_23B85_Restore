@interface MIUninstaller
+ (id)uninstallerForIdentities:(id)a3 withOptions:(id)a4 forClient:(id)a5;
- (BOOL)_removeReferenceForBundleWithIdentity:(id)a3 linkedToChildren:(id)a4 temporaryReference:(id)a5 removedInfo:(id)a6 wasLastReference:(BOOL *)a7 gatherOptions:(unint64_t *)a8 error:(id *)a9;
- (BOOL)_uninstallUserStuffForIdentity:(id)a3 error:(id *)a4;
- (BOOL)performUninstallationByRevokingTemporaryReference:(id)a3 error:(id *)a4;
- (MIUninstaller)initWithIdentitites:(id)a3 options:(id)a4 forClient:(id)a5;
- (id)_uninstallBundleWithIdentity:(id)a3 linkedToChildren:(id)a4 waitForDeletion:(BOOL)a5 uninstallReason:(id)a6 temporaryReference:(id)a7 deleteDataContainers:(BOOL)a8 wasLastReference:(BOOL *)a9 error:(id *)a10;
- (void)_fireCallbackWithStatus:(id)a3;
@end

@implementation MIUninstaller

- (MIUninstaller)initWithIdentitites:(id)a3 options:(id)a4 forClient:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MIUninstaller;
  v12 = [(MIUninstaller *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identities, a3);
    objc_storeStrong(&v13->_options, a4);
    objc_storeStrong(&v13->_client, a5);
  }

  return v13;
}

+ (id)uninstallerForIdentities:(id)a3 withOptions:(id)a4 forClient:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithIdentitites:v9 options:v8 forClient:v7];

  return v10;
}

- (void)_fireCallbackWithStatus:(id)a3
{
  v4 = a3;
  [(MIUninstaller *)self _fireCallbackWithStatus:v4 percentComplete:[(MIUninstaller *)self percentComplete]];
}

- (BOOL)_uninstallUserStuffForIdentity:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bundleID];
  v7 = [v5 personaUniqueString];
  v27 = 0;
  v8 = [MIContainer allContainersForIdentifier:v6 persona:v7 options:2 error:&v27];
  v9 = v27;

  if (v8)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v21 = v5;
      MOLogWrite();
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
LABEL_7:
      v15 = 0;
      v16 = v9;
      while (1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * v15);
        v22 = v16;
        v18 = [v17 purgeContentWithError:{&v22, v21}];
        v9 = v22;

        if (!v18)
        {
          break;
        }

        v15 = v15 + 1;
        v16 = v9;
        if (v13 == v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
          LOBYTE(v18) = 1;
          if (v13)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }
  }

  else
  {
    sub_100010734("[MIUninstaller _uninstallUserStuffForIdentity:error:]", 102, MIInstallerErrorDomain, 26, v9, 0, @"Could not get containers with identity %@", v10, v5);
    LOBYTE(v18) = 0;
    v9 = v11 = v9;
  }

  if (a4 && (v18 & 1) == 0)
  {
    v19 = v9;
    *a4 = v9;
  }

  return v18;
}

- (BOOL)_removeReferenceForBundleWithIdentity:(id)a3 linkedToChildren:(id)a4 temporaryReference:(id)a5 removedInfo:(id)a6 wasLastReference:(BOOL *)a7 gatherOptions:(unint64_t *)a8 error:(id *)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v63 = a6;
  v16 = +[MIAppReferenceManager defaultManager];
  v17 = sub_100009864();
  v77 = 0;
  v18 = [v13 bundleID];
  v76 = 0;
  v64 = 3;
  v19 = [MIBundleContainer appBundleContainerForIdentifier:v18 inDomain:3 withError:&v76];
  v20 = v76;
  v21 = v20;
  if (!v19)
  {
    v28 = [v20 domain];
    if ([v28 isEqualToString:MIContainerManagerErrorDomain])
    {
      v29 = [v21 code];

      if (v29 == 21)
      {

        v75 = 0;
        v64 = 2;
        v19 = [MIBundleContainer appBundleContainerForIdentifier:v18 inDomain:2 withError:&v75];
        v21 = v75;
        if (v19)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
    }

    v27 = v21;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      MOLogWrite();
    }

    v19 = 0;
    goto LABEL_22;
  }

LABEL_2:
  if (v15)
  {
    v74 = v21;
    v22 = [v16 revokeTemporaryReference:v15 wasLastReference:&v77 error:&v74];
    v62 = v74;

    if (v22)
    {
      v60 = a7;
      v23 = 0;
      v24 = 0;
LABEL_5:
      v25 = 0;
LABEL_6:
      *a8 = v23;
      *v60 = v77;
      v26 = 1;
      v27 = v62;
      goto LABEL_51;
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v27 = v62;
      MOLogWrite();
LABEL_22:
      v24 = 0;
      v25 = 0;
      goto LABEL_48;
    }

    v24 = 0;
    v25 = 0;
    v27 = v62;
  }

  else
  {
    v72 = v21;
    v73 = 0;
    v30 = [v16 removeReferenceForIdentity:v13 inDomain:v64 forUserWithID:v17 wasLastReference:&v77 resultingPersonaUniqueStrings:&v73 error:&v72];
    v59 = v73;
    v62 = v72;

    if (v30)
    {
      v57 = v19;
      v58 = v18;
      v60 = a7;
      if (v77)
      {
        v24 = 0;
        v23 = 0;
      }

      else
      {
        v54 = v16;
        v31 = v19;
        v32 = objc_opt_new();
        v56 = v13;
        v33 = [v13 bundleID];
        [v32 setBundleIdentifier:v33];

        v34 = [v31 bundle];
        [v32 setIsPlaceholder:{objc_msgSend(v34, "isPlaceholder")}];

        [v32 setHasParallelPlaceholder:{objc_msgSend(v31, "hasParallelPlaceholder")}];
        [v63 addObject:v32];
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v55 = v14;
        v35 = v14;
        v36 = [v35 countByEnumeratingWithState:&v68 objects:v78 count:16];
        if (v36)
        {
          v37 = v36;
          v24 = 0;
          v38 = *v69;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              v40 = v24;
              if (*v69 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v41 = *(*(&v68 + 1) + 8 * i);
              v67 = 0;
              v24 = [MIBundleContainer appBundleContainerForIdentifier:v41 inDomain:v64 withError:&v67, v52, v53];
              v42 = v67;

              if (v24)
              {
                v43 = [v24 bundle];
                v44 = objc_opt_new();
                v45 = [v43 identifier];
                [v32 setBundleIdentifier:v45];

                [v32 setIsPlaceholder:{objc_msgSend(v43, "isPlaceholder")}];
                [v32 setHasParallelPlaceholder:{objc_msgSend(v24, "hasParallelPlaceholder")}];
                [v63 addObject:v44];
              }

              else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v52 = v41;
                v53 = v42;
                MOLogWrite();
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v68 objects:v78 count:16];
          }

          while (v37);
        }

        else
        {
          v24 = 0;
        }

        v23 = 2;
        v14 = v55;
        v13 = v56;
        v16 = v54;
        v15 = 0;
        v19 = v57;
        v18 = v58;
      }

      if (!v59)
      {
        goto LABEL_5;
      }

      v46 = +[MILaunchServicesOperationManager instanceForCurrentUser];
      v47 = [v13 bundleID];
      v66 = v62;
      v48 = [v46 setPersonaUniqueStrings:v59 forAppBundleID:v47 inDomain:v64 error:&v66];
      v65 = v66;

      if (v48)
      {
        v62 = v65;
        v19 = v57;
        v18 = v58;
        v25 = v59;
        goto LABEL_6;
      }

      v27 = v65;
      v19 = v57;
      v18 = v58;
    }

    else if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
    {
      v24 = 0;
      v27 = v62;
    }

    else
    {
      v27 = v62;
      MOLogWrite();
      v24 = 0;
    }

    v25 = v59;
  }

LABEL_48:
  if (a9)
  {
    v49 = v25;
    v50 = v27;
    v25 = v49;
    v26 = 0;
    *a9 = v27;
  }

  else
  {
    v26 = 0;
  }

LABEL_51:

  return v26;
}

- (id)_uninstallBundleWithIdentity:(id)a3 linkedToChildren:(id)a4 waitForDeletion:(BOOL)a5 uninstallReason:(id)a6 temporaryReference:(id)a7 deleteDataContainers:(BOOL)a8 wasLastReference:(BOOL *)a9 error:(id *)a10
{
  v10 = a8;
  v91 = a5;
  v15 = a3;
  v16 = a4;
  v93 = a6;
  v17 = a7;
  v18 = objc_opt_new();
  v96 = objc_opt_new();
  v19 = [v15 bundleID];
  v122 = 0;
  v121 = 0;
  v20 = [v15 personaUniqueString];
  if (!+[ICLFeatureFlags appReferencesEnabled])
  {
    v22 = 0;
    v121 = 1;
LABEL_6:
    v23 = 5;
    if (v10)
    {
      v23 = 7;
    }

    v122 = v23;
    if (_os_feature_enabled_impl())
    {

      v20 = 0;
    }

    goto LABEL_10;
  }

  v120 = 0;
  v21 = [(MIUninstaller *)self _removeReferenceForBundleWithIdentity:v15 linkedToChildren:v16 temporaryReference:v17 removedInfo:v18 wasLastReference:&v121 gatherOptions:&v122 error:&v120];
  v22 = v120;
  if ((v21 & 1) == 0)
  {
LABEL_32:
    v37 = 0;
    v38 = 0;
    v92 = 0;
LABEL_97:
    v79 = a10;
    goto LABEL_98;
  }

  if (v121)
  {
    goto LABEL_6;
  }

LABEL_10:
  v24 = v22;
  v119 = v22;
  v25 = [MIContainer allContainersForIdentifier:v19 persona:v20 options:v122 error:&v119];
  v22 = v119;

  if (!v25)
  {
    goto LABEL_32;
  }

  [v96 addObjectsFromArray:v25];
  v88 = v17;
  v89 = v15;
  v94 = v18;
  v95 = v16;
  v90 = v19;
  v98 = v20;
  v92 = v25;
  if ([v16 count])
  {
    v26 = objc_opt_new();
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v27 = v16;
    v28 = [v27 countByEnumeratingWithState:&v115 objects:v124 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v116;
      v103 = MIContainerManagerErrorDomain;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          v32 = v22;
          if (*v116 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v115 + 1) + 8 * i);
          v114 = v22;
          v34 = [MIContainer allContainersForIdentifier:v33 persona:v20 options:v122 error:&v114, v83, v86];
          v22 = v114;

          if (v34)
          {
LABEL_18:
            [v96 addObjectsFromArray:v34];
            [v26 addObject:v33];
            goto LABEL_26;
          }

          v35 = [v22 domain];
          if ([v35 isEqualToString:v103])
          {
            v36 = [v22 code];

            v20 = v98;
            if (v36 == 21)
            {
              goto LABEL_18;
            }
          }

          else
          {

            v20 = v98;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            v83 = v33;
            v86 = v22;
            MOLogWrite();
          }

LABEL_26:
        }

        v29 = [v27 countByEnumeratingWithState:&v115 objects:v124 count:16];
      }

      while (v29);
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v83 = v90;
      v86 = v26;
      MOLogWrite();
    }
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v83 = v19;
    MOLogWrite();
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v96;
  v104 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
  v38 = 0;
  if (!v104)
  {
    goto LABEL_86;
  }

  v102 = *v111;
  do
  {
    v39 = 0;
    v40 = v38;
    do
    {
      if (*v111 != v102)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v110 + 1) + 8 * v39);
      if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
      {
        v42 = [*(*(&v110 + 1) + 8 * v39) identifier];
        v43 = [v41 personaUniqueString];
        v44 = [v41 containerURL];
        [v44 path];
        v87 = v86 = v43;
        v83 = v42;
        MOLogWrite();
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = v40;
        goto LABEL_84;
      }

      v38 = v41;

      v45 = [v38 bundle];
      v46 = [v45 identifier];

      if (!v46)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v83 = v38;
          MOLogWrite();
        }

        goto LABEL_83;
      }

      v47 = +[MIFreeProfileValidatedAppTracker sharedTracker];
      v48 = [v38 bundle];
      v109 = v22;
      v49 = [v47 removeReferenceForBundle:v48 error:&v109];
      v50 = v109;

      if ((v49 & 1) == 0)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v51 = [v38 bundle];
          v52 = [v51 bundleURL];
          v86 = [v52 path];
          v87 = v50;
          v83 = v46;
          MOLogWrite();
        }

        [v47 invalidateCache];
        v50 = 0;
      }

      v101 = v47;
      v53 = [v38 bundle];
      v54 = [v53 isPlaceholder];

      v99 = [v38 hasParallelPlaceholder];
      v55 = [v38 bundle];
      v56 = [v55 bundleURL];

      v100 = v56;
      if ((v54 & 1) == 0)
      {
        v59 = +[MIFileManager defaultManager];
        v108 = v50;
        v57 = [v59 insecureCachedAppIdentifierIfAppClipForBundle:v56 error:&v108];
        v58 = v108;

        if (v57)
        {
          v60 = SecItemDeleteKeychainItemsForAppClip();
          if (v60 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
          {
            v84 = v57;
            v86 = v60;
            MOLogWrite();
          }

          goto LABEL_70;
        }

        v61 = [v58 domain];
        if ([v61 isEqualToString:NSPOSIXErrorDomain])
        {
          v62 = [v58 code];

          if (v62 == 93)
          {
LABEL_69:

            v57 = 0;
            v58 = 0;
            goto LABEL_70;
          }
        }

        else
        {
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v84 = [v56 path];
          v86 = v58;
          MOLogWrite();
        }

        goto LABEL_69;
      }

      v57 = 0;
      v58 = v50;
LABEL_70:
      v63 = +[MIKeychainAccessGroupTracker sharedTracker];
      v64 = [v38 bundle];
      v107 = v58;
      v65 = [v63 removeReferencesForBundle:v64 error:&v107];
      v22 = v107;

      if ((v65 & 1) == 0)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v66 = [v38 bundle];
          v85 = [v66 identifier];
          v86 = v22;
          MOLogWrite();
        }

        [v63 invalidateCache];
        v22 = 0;
      }

      v67 = [v95 containsObject:{v46, v85}];
      v68 = objc_opt_new();
      [v68 setBundleIdentifier:v46];
      [v68 setIsPlaceholder:v54];
      [v68 setHasParallelPlaceholder:v99];
      [v68 setIsLinked:v67];
      [v68 setIsLastReference:v121];
      [v94 addObject:v68];
      v69 = +[MIUninstalledAppList sharedList];
      [v69 addIdentifier:v46];

      v70 = [v38 bundle];
      v71 = [v70 bundleType];

      if (v71 == 1)
      {
        if (v93)
        {
          if ([v93 isEqualToString:@"UninstallReasonSystemAppNotAllowed"])
          {
            v72 = 6;
          }

          else
          {
            v72 = 2;
          }
        }

        else
        {
          v72 = 2;
        }

        v73 = +[MISystemAppState sharedList];
        [v73 addIdentifier:v46 withState:v72];
      }

      v20 = v98;
LABEL_83:

      v40 = v38;
LABEL_84:
      v39 = v39 + 1;
    }

    while (v104 != v39);
    v104 = [obj countByEnumeratingWithState:&v110 objects:v123 count:16];
  }

  while (v104);
LABEL_86:

  v74 = [obj copy];
  v106 = v22;
  v75 = [MIContainer removeContainers:v74 waitForDeletion:v91 error:&v106];
  v76 = v106;

  if ((v75 & 1) == 0)
  {
    v17 = v88;
    v15 = v89;
    v18 = v94;
    v16 = v95;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v19 = v90;
      MOLogWrite();
LABEL_96:
      sub_100035A00(v76);
      v37 = 0;
      v22 = v76;
      goto LABEL_97;
    }

LABEL_95:
    v19 = v90;
    goto LABEL_96;
  }

  v77 = [MIContainerLinkManager sharedInstanceForDomain:2];
  v105 = v76;
  v78 = [v77 removeParent:v90 error:&v105];
  v22 = v105;

  v17 = v88;
  v15 = v89;
  v18 = v94;
  v16 = v95;
  if (!v78)
  {
    v76 = v22;
    goto LABEL_95;
  }

  sub_100035A00(0);
  v37 = [v94 copy];
  if (!a9)
  {
    v19 = v90;
    goto LABEL_97;
  }

  v19 = v90;
  v79 = a10;
  if (v37)
  {
    *a9 = v121;
    goto LABEL_101;
  }

LABEL_98:
  if (v79 && !v37)
  {
    v80 = v22;
    v37 = 0;
    *v79 = v22;
  }

LABEL_101:
  v81 = v37;

  return v81;
}

- (BOOL)performUninstallationByRevokingTemporaryReference:(id)a3 error:(id *)a4
{
  v152 = a3;
  v214 = 0;
  v215 = &v214;
  v216 = 0x3032000000;
  v217 = sub_1000374BC;
  v218 = sub_1000374CC;
  v219 = 0;
  v176 = objc_opt_new();
  v155 = objc_opt_new();
  v163 = objc_opt_new();
  v154 = objc_opt_new();
  v175 = [MIContainerLinkManager sharedInstanceForDomain:2];
  v167 = objc_opt_new();
  v166 = objc_opt_new();
  v153 = objc_opt_new();
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  v4 = [(MIUninstaller *)self identities];
  v5 = [v4 countByEnumeratingWithState:&v210 objects:v226 count:16];
  obj = v4;
  if (!v5)
  {
LABEL_9:

    v12 = [(MIUninstaller *)self options];

    if (v12)
    {
      v13 = [(MIUninstaller *)self options];
      v14 = [v13 objectForKeyedSubscript:@"UserDataOnly"];
      v15 = [v14 isEqual:&__kCFBooleanTrue];

      v16 = [(MIUninstaller *)self options];
      v17 = [v16 objectForKeyedSubscript:@"Placeholder"];
      v173 = [v17 isEqual:&__kCFBooleanTrue];

      if (v173)
      {
        v18 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v19 = [(MIUninstaller *)self client];
          v20 = [v19 clientName];
          sub_100058D4C(v20, v225, v19);
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v21 = [(MIUninstaller *)self client];
          v140 = [v21 clientName];
          v145 = @"Placeholder";
          MOLogWrite();
        }
      }

      v22 = [(MIUninstaller *)self options:v140];
      v23 = [v22 objectForKeyedSubscript:@"ParallelPlaceholderOnlyIfExists"];
      HIDWORD(v172) = [v23 isEqual:&__kCFBooleanTrue];

      if (HIDWORD(v172))
      {
        v24 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          v25 = [(MIUninstaller *)self client];
          v26 = [v25 clientName];
          sub_100058DC4(v26, v224, v25);
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v27 = [(MIUninstaller *)self client];
          v141 = [v27 clientName];
          v146 = @"ParallelPlaceholderOnlyIfExists";
          MOLogWrite();
        }
      }

      v28 = [(MIUninstaller *)self options:v141];
      v29 = [v28 objectForKeyedSubscript:kMIUninstallParallelPlaceholderKey];
      LODWORD(v172) = [v29 isEqual:&__kCFBooleanTrue];

      v30 = [(MIUninstaller *)self options];
      v31 = [v30 objectForKeyedSubscript:@"UninstallPlaceholdersOnly"];
      v164 = [v31 isEqual:&__kCFBooleanTrue];

      v32 = [(MIUninstaller *)self options];
      v33 = [v32 objectForKeyedSubscript:@"WaitForStorageDeletion"];
      v150 = [v33 isEqual:&__kCFBooleanTrue];

      v34 = [(MIUninstaller *)self options];
      v35 = [v34 objectForKeyedSubscript:@"UninstallReason"];
      objc_opt_class();
      v36 = v35;
      if (objc_opt_isKindOfClass())
      {
        v151 = v36;
      }

      else
      {
        v151 = 0;
      }

      if (v15)
      {
        if ((HIDWORD(v172) | v173 | v164 | v172))
        {
          v38 = sub_100010734("[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]", 492, MIInstallerErrorDomain, 25, 0, 0, @"Illegal option combination passed to MobileInstallationUninstall. Can't uninstall user stuff only and uninstall placeholders.", v37, v140);
          v148 = 0;
          v161 = 0;
          obja = v215[5];
          v215[5] = v38;

          goto LABEL_180;
        }

        v172 = 0;
        v173 = 0;
        v164 = 0;
        v159 = 1;
      }

      else
      {
        v159 = 0;
      }
    }

    else
    {
      v159 = 0;
      v172 = 0;
      v173 = 0;
      v164 = 0;
      v150 = 0;
      v151 = 0;
    }

    [v176 addObjectsFromArray:v154];
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    v177 = v154;
    v39 = [v177 countByEnumeratingWithState:&v205 objects:v223 count:16];
    if (v39)
    {
      v40 = *v206;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v206 != v40)
          {
            objc_enumerationMutation(v177);
          }

          v42 = *(*(&v205 + 1) + 8 * i);
          v204 = 0;
          v43 = [v175 childrenForParentBundleID:v42 error:{&v204, v140}];
          v44 = v204;
          v45 = v44;
          if (v43)
          {
            [v167 setObject:v43 forKeyedSubscript:v42];
            [v176 unionSet:v43];
          }

          else if (v44 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
          {
            v142 = v42;
            v145 = v44;
            MOLogWrite();
          }

          v46 = [MIContainerLinkManager sharedInstanceForDomain:2, v142, v145];
          v203 = 0;
          v202 = 0;
          v47 = [v46 getLinkedParent:&v203 forChild:v42 error:&v202];
          v48 = v203;
          v49 = v202;

          if (v48)
          {
            v50 = v47;
          }

          else
          {
            v50 = 0;
          }

          if (v50 == 1)
          {
            [v176 addObject:v48];
            [v166 setObject:v48 forKeyedSubscript:v42];
          }

          else if (v49 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
          {
            v140 = v42;
            v145 = v49;
            MOLogWrite();
          }
        }

        v39 = [v177 countByEnumeratingWithState:&v205 objects:v223 count:16];
      }

      while (v39);
    }

    v148 = [v176 allObjects];
    v51 = +[MIDaemonConfiguration sharedInstance];
    v161 = [v51 builtInApplicationBundleIDs];

    sub_100054630(v148);
    [(MIUninstaller *)self _fireCallbackWithStatus:@"RemovingApplication" percentComplete:50];
    v52 = +[MIDaemonConfiguration sharedInstance];
    v53 = [v52 allowDeletableSystemApps];

    if (v53)
    {
      obj = 0;
    }

    else
    {
      v54 = +[MIDaemonConfiguration sharedInstance];
      obj = [v54 systemAppPlaceholderBundleIDs];
    }

    v200 = 0u;
    v201 = 0u;
    v198 = 0u;
    v199 = 0u;
    v55 = [(MIUninstaller *)self identities];
    v56 = [v55 countByEnumeratingWithState:&v198 objects:v222 count:16];
    if (!v56)
    {
LABEL_175:

      [(MIUninstaller *)self _fireCallbackWithStatus:@"GeneratingApplicationMap" percentComplete:90];
      sub_100054780(v148);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v221) = 0;
      v187 = 0;
      v188 = &v187;
      v189 = 0x2020000000;
      v190 = 0;
      v133 = sub_10000998C();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000374D4;
      block[3] = &unk_100091770;
      v134 = v155;
      v180 = v134;
      v184 = &v214;
      v185 = &v187;
      v181 = v153;
      v182 = self;
      v183 = v163;
      v186 = buf;
      dispatch_sync(v133, block);

      if (*(*&buf[8] + 24))
      {

        _Block_object_dispose(&v187, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v135 = *(v188 + 24);

        _Block_object_dispose(&v187, 8);
        _Block_object_dispose(buf, 8);
        if ((v135 ^ 1))
        {
          v136 = [MIUninstallRecord uninstallRecordArrayToICLUninstallRecordArray:v134];
          receipt = self->_receipt;
          self->_receipt = v136;

          v138 = 1;
          goto LABEL_182;
        }
      }

      goto LABEL_179;
    }

    v170 = BYTE4(v172) | v164 | v173 | v172;
    v171 = *v199;
    v57 = 11;
    if (v159)
    {
      v57 = 12;
    }

    v169 = v57;
    v160 = MIContainerManagerErrorDomain;
    v168 = v173 ^ 1;
    v162 = (v173 ^ 1) & (v172 | HIDWORD(v172) | v164);
    v149 = MIInstallerErrorDomain;
    v165 = v55;
LABEL_61:
    v174 = v56;
    v58 = 0;
    while (1)
    {
      if (*v199 != v171)
      {
        objc_enumerationMutation(v165);
      }

      v59 = *(*(&v198 + 1) + 8 * v58);
      v60 = +[MIAppReferenceManager defaultManager];
      v61 = [v59 bundleID];
      v178 = [v60 personaUniqueStringsForAppWithBundleID:v61 domain:2 forUserWithID:sub_100009864() error:0];

      if (v178 && [v178 count])
      {
        v62 = [v59 bundleID];
        [v163 addObject:v62];
      }

      v63 = [v59 personaUniqueString];
      v66 = [v59 bundleID];
      if (v170)
      {
        break;
      }

      _MILogTransactionStep(v169, 1, 1, v66, v63, 0, v64, v65, v144);
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v80 = v169;
LABEL_107:
      v96 = 1;
      if ((v172 | HIDWORD(v172) & v78))
      {
        goto LABEL_147;
      }

      if (((v168 | v77) & 1) == 0)
      {
        goto LABEL_147;
      }

      v96 = v79;
      if (v164 & (v78 | v77 ^ 1))
      {
        goto LABEL_147;
      }

      if ((v159 & 1) == 0)
      {
        if (![v161 containsObject:v66])
        {
          goto LABEL_141;
        }

        v97 = +[MIDaemonConfiguration sharedInstance];
        v98 = [v97 allowsInternalSecurityPolicy];

        if (v98)
        {
          v99 = (v215 + 5);
          v192 = v215[5];
          v100 = [MIBundleContainer appBundleContainerForIdentifier:v66 inDomain:2 withError:&v192];
          objc_storeStrong(v99, v192);
          if (!v100)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              v144 = v66;
              MOLogWrite();
            }

            _MILogTransactionStep(v80, 2, 0, v66, v63, 0, v101, v102, v144);
            goto LABEL_148;
          }

          v103 = +[MIDaemonConfiguration sharedInstance];
          v104 = [v103 systemAppBundleIDToInfoMap];
          v105 = [v104 objectForKeyedSubscript:v66];

          if (v105)
          {
            v106 = +[MIDaemonConfiguration sharedInstance];
            v107 = [v106 systemAppBundleIDToInfoMap];
            v108 = [v107 objectForKeyedSubscript:v66];
            goto LABEL_132;
          }

          v109 = +[MIDaemonConfiguration sharedInstance];
          v110 = [v109 internalAppBundleIDToInfoMap];
          v111 = [v110 objectForKeyedSubscript:v66];

          if (v111)
          {
            v106 = +[MIDaemonConfiguration sharedInstance];
            v107 = [v106 internalAppBundleIDToInfoMap];
            v108 = [v107 objectForKeyedSubscript:v66];
            goto LABEL_132;
          }

          v112 = +[MIDaemonConfiguration sharedInstance];
          v113 = [v112 coreServicesAppBundleIDToInfoMap];
          v114 = [v113 objectForKeyedSubscript:v66];

          if (v114)
          {
            v106 = +[MIDaemonConfiguration sharedInstance];
            v107 = [v106 coreServicesAppBundleIDToInfoMap];
            v108 = [v107 objectForKeyedSubscript:v66];
LABEL_132:
            v115 = v108;
          }

          else
          {
            v115 = 0;
          }

          v116 = [v115 objectForKeyedSubscript:{@"com.apple.MobileInstallation.bundleURL", v144}];
          objc_opt_class();
          v117 = v116;
          if (objc_opt_isKindOfClass())
          {
            v118 = v117;
          }

          else
          {
            v118 = 0;
          }

          if (!v118)
          {
            _MILogTransactionStep(v80, 2, 0, v66, v63, 0, v119, v120, v144);

            goto LABEL_165;
          }

          [v153 setObject:v118 forKeyedSubscript:v66];
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            [v118 path];
            v145 = v144 = v66;
            MOLogWrite();
          }

LABEL_141:
          if (!obj || ![obj containsObject:v66])
          {
            v100 = [v167 objectForKeyedSubscript:{v66, v144}];
            LOBYTE(v187) = 0;
            v121 = [v153 objectForKeyedSubscript:v66];
            v122 = v121 == 0;

            v191 = 0;
            v145 = &v191;
            v123 = [MIUninstaller _uninstallBundleWithIdentity:"_uninstallBundleWithIdentity:linkedToChildren:waitForDeletion:uninstallReason:temporaryReference:deleteDataContainers:wasLastReference:error:" linkedToChildren:v59 waitForDeletion:v100 uninstallReason:v150 temporaryReference:v151 deleteDataContainers:v152 wasLastReference:v122 error:?];
            v124 = v191;
            _MILogTransactionStep(v80, 2, v123 != 0, v66, v63, 0, v125, v126, &v187);
            if (v123)
            {
              goto LABEL_151;
            }

            v128 = [(__CFString *)v124 domain];
            if ([v128 isEqualToString:v149] && -[__CFString code](v124, "code") == 26)
            {

LABEL_159:
              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v143 = v59;
                v145 = v124;
                MOLogWrite();
              }

              v127 = objc_opt_new();
              v131 = [v59 bundleID];
              [v127 setBundleIdentifier:v131];

              [v127 setIsLastReference:1];
              [v127 setHasParallelPlaceholder:1];
              [v127 setDoesNotHaveBundleContainer:1];
              [v155 addObject:v127];
LABEL_163:
            }

            else
            {
              v129 = [(__CFString *)v124 domain];
              if ([v129 isEqualToString:v160])
              {
                v130 = [(__CFString *)v124 code]== 21;

                if (v130)
                {
                  goto LABEL_159;
                }
              }

              else
              {
              }

              v132 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315650;
                *&buf[4] = "[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]";
                *&buf[12] = 2112;
                *&buf[14] = v59;
                *&buf[22] = 2112;
                v221 = v124;
                _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "%s: Failed to uninstall %@ : %@", buf, 0x20u);
              }

              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v143 = v59;
                v145 = v124;
                MOLogWrite();
              }

LABEL_151:
              [v155 addObjectsFromArray:{v123, v143}];
              if (v187 == 1)
              {
                v127 = [v166 objectForKeyedSubscript:v66];
                if (v127)
                {
                  [v175 unlinkChild:v66 fromParent:v127 error:0];
                }

                goto LABEL_163;
              }
            }

LABEL_165:
            goto LABEL_148;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
LABEL_145:
            v144 = v66;
            MOLogWrite();
          }
        }

        else if (!qword_1000A9720 || *(qword_1000A9720 + 44) > 2)
        {
          goto LABEL_145;
        }

        v96 = 0;
        goto LABEL_147;
      }

      [(MIUninstaller *)self _uninstallUserStuffForIdentity:v59 error:0];
      v96 = 1;
LABEL_147:
      _MILogTransactionStep(v80, 2, v96, v66, v63, 0, v75, v76, v144);
LABEL_148:

      if (v174 == ++v58)
      {
        v55 = v165;
        v56 = [v165 countByEnumeratingWithState:&v198 objects:v222 count:16];
        if (!v56)
        {
          goto LABEL_175;
        }

        goto LABEL_61;
      }
    }

    v67 = +[ICLFeatureFlags appReferencesEnabled];
    v69 = (v215 + 5);
    v68 = v215[5];
    if (v67)
    {
      v197 = v215[5];
      v70 = [MIBundleContainer appBundleContainerForIdentifier:v66 inDomain:3 withError:&v197];
      objc_storeStrong(v69, v197);
      if (v70)
      {
LABEL_76:
        v83 = [v70 bundle];
        v77 = [v83 isPlaceholder];

        if (v162)
        {
          _MILogTransactionStep(9, 1, 1, v66, v63, 0, v84, v85, v144);
          if (([v161 containsObject:v66] & v77) == 1)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
            {
              v86 = [v70 containerURL];
              [v86 path];
              v145 = v144 = v66;
              MOLogWrite();
            }

            v87 = (v215 + 5);
            v194 = v215[5];
            v88 = [v70 removeUnderlyingContainerWaitingForDeletion:0 error:{&v194, v144, v145}];
            objc_storeStrong(v87, v194);
            if ((v88 & 1) == 0)
            {
              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v144 = v66;
                v145 = v215[5];
                MOLogWrite();
              }

              v79 = 0;
              v89 = v215[5];
              v215[5] = 0;
              v77 = 1;
              goto LABEL_93;
            }
          }

          else
          {
            if (![v70 hasParallelPlaceholder])
            {
              v78 = 0;
              v79 = 0;
              goto LABEL_105;
            }

            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
            {
              v144 = v66;
              MOLogWrite();
            }

            v90 = +[MIFileManager defaultManager];
            v91 = [v70 parallelPlaceholderURL];
            v92 = (v215 + 5);
            v193 = v215[5];
            v93 = [v90 removeItemAtURL:v91 error:&v193];
            objc_storeStrong(v92, v193);

            if ((v93 & 1) == 0)
            {
              if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
              {
                v79 = 0;
                goto LABEL_94;
              }

              v89 = [v70 parallelPlaceholderURL];
              v144 = [v89 path];
              v145 = v215[5];
              MOLogWrite();

              v79 = 0;
LABEL_93:

LABEL_94:
              v78 = 1;
LABEL_105:
              v80 = 9;
              goto LABEL_106;
            }
          }

          v89 = objc_opt_new();
          [v89 setBundleIdentifier:v66];
          [v89 setHasParallelPlaceholder:1];
          [v89 setIsPlaceholder:1];
          [v155 addObject:v89];
          v79 = 1;
          goto LABEL_93;
        }

        _MILogTransactionStep(10, 1, 1, v66, v63, 0, v84, v85, v144);
        v78 = 0;
        v79 = 0;
        v80 = 10;
LABEL_106:

        goto LABEL_107;
      }

      v71 = [v215[5] domain];
      if (([v71 isEqualToString:v160] & 1) == 0)
      {

        goto LABEL_96;
      }

      v72 = [v215[5] code] == 21;

      if (!v72)
      {
        goto LABEL_96;
      }

      v73 = v215[5];
      v215[5] = 0;

      v69 = (v215 + 5);
      v196 = v215[5];
      v70 = [MIBundleContainer appBundleContainerForIdentifier:v66 inDomain:2 withError:&v196];
      v74 = v196;
    }

    else
    {
      v195 = v215[5];
      v70 = [MIBundleContainer appBundleContainerWithIdentifier:v66 createIfNeeded:0 created:0 error:&v195];
      v74 = v195;
    }

    v81 = v74;
    v82 = *v69;
    *v69 = v81;

    if (v70)
    {
      goto LABEL_76;
    }

LABEL_96:
    v94 = [v215[5] domain];
    if ([v94 isEqualToString:v160])
    {
      v95 = [v215[5] code] == 21;

      if (v95)
      {
LABEL_103:
        v70 = 0;
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        goto LABEL_106;
      }
    }

    else
    {
    }

    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      v144 = v66;
      v145 = v215[5];
      MOLogWrite();
    }

    goto LABEL_103;
  }

  v6 = *v211;
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (*v211 != v6)
    {
      objc_enumerationMutation(obj);
    }

    v8 = *(*(&v210 + 1) + 8 * v7);
    v9 = (v215 + 5);
    v209 = v215[5];
    v10 = [v8 resolvePersonaWithError:&v209];
    objc_storeStrong(v9, v209);
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = [v8 bundleID];
    [v154 addObject:v11];

    if (v5 == ++v7)
    {
      v5 = [obj countByEnumeratingWithState:&v210 objects:v226 count:16];
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_3;
    }
  }

  v148 = 0;
  v161 = 0;
  v151 = 0;
LABEL_179:

LABEL_180:
  v138 = 0;
  if (a4)
  {
    *a4 = v215[5];
  }

LABEL_182:

  _Block_object_dispose(&v214, 8);
  return v138;
}

@end