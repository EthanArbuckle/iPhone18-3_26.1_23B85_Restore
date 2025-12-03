@interface MIUninstaller
+ (id)uninstallerForIdentities:(id)identities withOptions:(id)options forClient:(id)client;
- (BOOL)_removeReferenceForBundleWithIdentity:(id)identity linkedToChildren:(id)children temporaryReference:(id)reference removedInfo:(id)info wasLastReference:(BOOL *)lastReference gatherOptions:(unint64_t *)options error:(id *)error;
- (BOOL)_uninstallUserStuffForIdentity:(id)identity error:(id *)error;
- (BOOL)performUninstallationByRevokingTemporaryReference:(id)reference error:(id *)error;
- (MIUninstaller)initWithIdentitites:(id)identitites options:(id)options forClient:(id)client;
- (id)_uninstallBundleWithIdentity:(id)identity linkedToChildren:(id)children waitForDeletion:(BOOL)deletion uninstallReason:(id)reason temporaryReference:(id)reference deleteDataContainers:(BOOL)containers wasLastReference:(BOOL *)lastReference error:(id *)self0;
- (void)_fireCallbackWithStatus:(id)status;
@end

@implementation MIUninstaller

- (MIUninstaller)initWithIdentitites:(id)identitites options:(id)options forClient:(id)client
{
  identititesCopy = identitites;
  optionsCopy = options;
  clientCopy = client;
  v15.receiver = self;
  v15.super_class = MIUninstaller;
  v12 = [(MIUninstaller *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identities, identitites);
    objc_storeStrong(&v13->_options, options);
    objc_storeStrong(&v13->_client, client);
  }

  return v13;
}

+ (id)uninstallerForIdentities:(id)identities withOptions:(id)options forClient:(id)client
{
  clientCopy = client;
  optionsCopy = options;
  identitiesCopy = identities;
  v10 = [objc_alloc(objc_opt_class()) initWithIdentitites:identitiesCopy options:optionsCopy forClient:clientCopy];

  return v10;
}

- (void)_fireCallbackWithStatus:(id)status
{
  statusCopy = status;
  [(MIUninstaller *)self _fireCallbackWithStatus:statusCopy percentComplete:[(MIUninstaller *)self percentComplete]];
}

- (BOOL)_uninstallUserStuffForIdentity:(id)identity error:(id *)error
{
  identityCopy = identity;
  bundleID = [identityCopy bundleID];
  personaUniqueString = [identityCopy personaUniqueString];
  v27 = 0;
  v8 = [MIContainer allContainersForIdentifier:bundleID persona:personaUniqueString options:2 error:&v27];
  v9 = v27;

  if (v8)
  {
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
    {
      v21 = identityCopy;
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
    sub_100010734("[MIUninstaller _uninstallUserStuffForIdentity:error:]", 102, MIInstallerErrorDomain, 26, v9, 0, @"Could not get containers with identity %@", v10, identityCopy);
    LOBYTE(v18) = 0;
    v9 = v11 = v9;
  }

  if (error && (v18 & 1) == 0)
  {
    v19 = v9;
    *error = v9;
  }

  return v18;
}

- (BOOL)_removeReferenceForBundleWithIdentity:(id)identity linkedToChildren:(id)children temporaryReference:(id)reference removedInfo:(id)info wasLastReference:(BOOL *)lastReference gatherOptions:(unint64_t *)options error:(id *)error
{
  identityCopy = identity;
  childrenCopy = children;
  referenceCopy = reference;
  infoCopy = info;
  v16 = +[MIAppReferenceManager defaultManager];
  v17 = sub_100009864();
  v77 = 0;
  bundleID = [identityCopy bundleID];
  v76 = 0;
  v64 = 3;
  v19 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:3 withError:&v76];
  v20 = v76;
  v21 = v20;
  if (!v19)
  {
    domain = [v20 domain];
    if ([domain isEqualToString:MIContainerManagerErrorDomain])
    {
      code = [v21 code];

      if (code == 21)
      {

        v75 = 0;
        v64 = 2;
        v19 = [MIBundleContainer appBundleContainerForIdentifier:bundleID inDomain:2 withError:&v75];
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
  if (referenceCopy)
  {
    v74 = v21;
    v22 = [v16 revokeTemporaryReference:referenceCopy wasLastReference:&v77 error:&v74];
    v62 = v74;

    if (v22)
    {
      lastReferenceCopy2 = lastReference;
      v23 = 0;
      v24 = 0;
LABEL_5:
      v25 = 0;
LABEL_6:
      *options = v23;
      *lastReferenceCopy2 = v77;
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
    v30 = [v16 removeReferenceForIdentity:identityCopy inDomain:v64 forUserWithID:v17 wasLastReference:&v77 resultingPersonaUniqueStrings:&v73 error:&v72];
    v59 = v73;
    v62 = v72;

    if (v30)
    {
      v57 = v19;
      v58 = bundleID;
      lastReferenceCopy2 = lastReference;
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
        v56 = identityCopy;
        bundleID2 = [identityCopy bundleID];
        [v32 setBundleIdentifier:bundleID2];

        bundle = [v31 bundle];
        [v32 setIsPlaceholder:{objc_msgSend(bundle, "isPlaceholder")}];

        [v32 setHasParallelPlaceholder:{objc_msgSend(v31, "hasParallelPlaceholder")}];
        [infoCopy addObject:v32];
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v55 = childrenCopy;
        v35 = childrenCopy;
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
                bundle2 = [v24 bundle];
                v44 = objc_opt_new();
                identifier = [bundle2 identifier];
                [v32 setBundleIdentifier:identifier];

                [v32 setIsPlaceholder:{objc_msgSend(bundle2, "isPlaceholder")}];
                [v32 setHasParallelPlaceholder:{objc_msgSend(v24, "hasParallelPlaceholder")}];
                [infoCopy addObject:v44];
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
        childrenCopy = v55;
        identityCopy = v56;
        v16 = v54;
        referenceCopy = 0;
        v19 = v57;
        bundleID = v58;
      }

      if (!v59)
      {
        goto LABEL_5;
      }

      v46 = +[MILaunchServicesOperationManager instanceForCurrentUser];
      bundleID3 = [identityCopy bundleID];
      v66 = v62;
      v48 = [v46 setPersonaUniqueStrings:v59 forAppBundleID:bundleID3 inDomain:v64 error:&v66];
      v65 = v66;

      if (v48)
      {
        v62 = v65;
        v19 = v57;
        bundleID = v58;
        v25 = v59;
        goto LABEL_6;
      }

      v27 = v65;
      v19 = v57;
      bundleID = v58;
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
  if (error)
  {
    v49 = v25;
    v50 = v27;
    v25 = v49;
    v26 = 0;
    *error = v27;
  }

  else
  {
    v26 = 0;
  }

LABEL_51:

  return v26;
}

- (id)_uninstallBundleWithIdentity:(id)identity linkedToChildren:(id)children waitForDeletion:(BOOL)deletion uninstallReason:(id)reason temporaryReference:(id)reference deleteDataContainers:(BOOL)containers wasLastReference:(BOOL *)lastReference error:(id *)self0
{
  containersCopy = containers;
  deletionCopy = deletion;
  identityCopy = identity;
  childrenCopy = children;
  reasonCopy = reason;
  referenceCopy = reference;
  v18 = objc_opt_new();
  v96 = objc_opt_new();
  bundleID = [identityCopy bundleID];
  v122 = 0;
  v121 = 0;
  personaUniqueString = [identityCopy personaUniqueString];
  if (!+[ICLFeatureFlags appReferencesEnabled])
  {
    v22 = 0;
    v121 = 1;
LABEL_6:
    v23 = 5;
    if (containersCopy)
    {
      v23 = 7;
    }

    v122 = v23;
    if (_os_feature_enabled_impl())
    {

      personaUniqueString = 0;
    }

    goto LABEL_10;
  }

  v120 = 0;
  v21 = [(MIUninstaller *)self _removeReferenceForBundleWithIdentity:identityCopy linkedToChildren:childrenCopy temporaryReference:referenceCopy removedInfo:v18 wasLastReference:&v121 gatherOptions:&v122 error:&v120];
  v22 = v120;
  if ((v21 & 1) == 0)
  {
LABEL_32:
    v37 = 0;
    v38 = 0;
    v92 = 0;
LABEL_97:
    errorCopy2 = error;
    goto LABEL_98;
  }

  if (v121)
  {
    goto LABEL_6;
  }

LABEL_10:
  v24 = v22;
  v119 = v22;
  v25 = [MIContainer allContainersForIdentifier:bundleID persona:personaUniqueString options:v122 error:&v119];
  v22 = v119;

  if (!v25)
  {
    goto LABEL_32;
  }

  [v96 addObjectsFromArray:v25];
  v88 = referenceCopy;
  v89 = identityCopy;
  v94 = v18;
  v95 = childrenCopy;
  v90 = bundleID;
  v98 = personaUniqueString;
  v92 = v25;
  if ([childrenCopy count])
  {
    v26 = objc_opt_new();
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v27 = childrenCopy;
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
          v34 = [MIContainer allContainersForIdentifier:v33 persona:personaUniqueString options:v122 error:&v114, v83, path];
          v22 = v114;

          if (v34)
          {
LABEL_18:
            [v96 addObjectsFromArray:v34];
            [v26 addObject:v33];
            goto LABEL_26;
          }

          domain = [v22 domain];
          if ([domain isEqualToString:v103])
          {
            code = [v22 code];

            personaUniqueString = v98;
            if (code == 21)
            {
              goto LABEL_18;
            }
          }

          else
          {

            personaUniqueString = v98;
          }

          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
          {
            v83 = v33;
            path = v22;
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
      path = v26;
      MOLogWrite();
    }
  }

  else if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
  {
    v83 = bundleID;
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
        identifier = [*(*(&v110 + 1) + 8 * v39) identifier];
        personaUniqueString2 = [v41 personaUniqueString];
        containerURL = [v41 containerURL];
        [containerURL path];
        v87 = path = personaUniqueString2;
        v83 = identifier;
        MOLogWrite();
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = v40;
        goto LABEL_84;
      }

      v38 = v41;

      bundle = [v38 bundle];
      identifier2 = [bundle identifier];

      if (!identifier2)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          v83 = v38;
          MOLogWrite();
        }

        goto LABEL_83;
      }

      v47 = +[MIFreeProfileValidatedAppTracker sharedTracker];
      bundle2 = [v38 bundle];
      v109 = v22;
      v49 = [v47 removeReferenceForBundle:bundle2 error:&v109];
      v50 = v109;

      if ((v49 & 1) == 0)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          bundle3 = [v38 bundle];
          bundleURL = [bundle3 bundleURL];
          path = [bundleURL path];
          v87 = v50;
          v83 = identifier2;
          MOLogWrite();
        }

        [v47 invalidateCache];
        v50 = 0;
      }

      v101 = v47;
      bundle4 = [v38 bundle];
      isPlaceholder = [bundle4 isPlaceholder];

      hasParallelPlaceholder = [v38 hasParallelPlaceholder];
      bundle5 = [v38 bundle];
      bundleURL2 = [bundle5 bundleURL];

      v100 = bundleURL2;
      if ((isPlaceholder & 1) == 0)
      {
        v59 = +[MIFileManager defaultManager];
        v108 = v50;
        v57 = [v59 insecureCachedAppIdentifierIfAppClipForBundle:bundleURL2 error:&v108];
        v58 = v108;

        if (v57)
        {
          v60 = SecItemDeleteKeychainItemsForAppClip();
          if (v60 && (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3))
          {
            path2 = v57;
            path = v60;
            MOLogWrite();
          }

          goto LABEL_70;
        }

        domain2 = [v58 domain];
        if ([domain2 isEqualToString:NSPOSIXErrorDomain])
        {
          code2 = [v58 code];

          if (code2 == 93)
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
          path2 = [bundleURL2 path];
          path = v58;
          MOLogWrite();
        }

        goto LABEL_69;
      }

      v57 = 0;
      v58 = v50;
LABEL_70:
      v63 = +[MIKeychainAccessGroupTracker sharedTracker];
      bundle6 = [v38 bundle];
      v107 = v58;
      v65 = [v63 removeReferencesForBundle:bundle6 error:&v107];
      v22 = v107;

      if ((v65 & 1) == 0)
      {
        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          bundle7 = [v38 bundle];
          identifier3 = [bundle7 identifier];
          path = v22;
          MOLogWrite();
        }

        [v63 invalidateCache];
        v22 = 0;
      }

      v67 = [v95 containsObject:{identifier2, identifier3}];
      v68 = objc_opt_new();
      [v68 setBundleIdentifier:identifier2];
      [v68 setIsPlaceholder:isPlaceholder];
      [v68 setHasParallelPlaceholder:hasParallelPlaceholder];
      [v68 setIsLinked:v67];
      [v68 setIsLastReference:v121];
      [v94 addObject:v68];
      v69 = +[MIUninstalledAppList sharedList];
      [v69 addIdentifier:identifier2];

      bundle8 = [v38 bundle];
      bundleType = [bundle8 bundleType];

      if (bundleType == 1)
      {
        if (reasonCopy)
        {
          if ([reasonCopy isEqualToString:@"UninstallReasonSystemAppNotAllowed"])
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
        [v73 addIdentifier:identifier2 withState:v72];
      }

      personaUniqueString = v98;
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
  v75 = [MIContainer removeContainers:v74 waitForDeletion:deletionCopy error:&v106];
  v76 = v106;

  if ((v75 & 1) == 0)
  {
    referenceCopy = v88;
    identityCopy = v89;
    v18 = v94;
    childrenCopy = v95;
    if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
    {
      bundleID = v90;
      MOLogWrite();
LABEL_96:
      sub_100035A00(v76);
      v37 = 0;
      v22 = v76;
      goto LABEL_97;
    }

LABEL_95:
    bundleID = v90;
    goto LABEL_96;
  }

  v77 = [MIContainerLinkManager sharedInstanceForDomain:2];
  v105 = v76;
  v78 = [v77 removeParent:v90 error:&v105];
  v22 = v105;

  referenceCopy = v88;
  identityCopy = v89;
  v18 = v94;
  childrenCopy = v95;
  if (!v78)
  {
    v76 = v22;
    goto LABEL_95;
  }

  sub_100035A00(0);
  v37 = [v94 copy];
  if (!lastReference)
  {
    bundleID = v90;
    goto LABEL_97;
  }

  bundleID = v90;
  errorCopy2 = error;
  if (v37)
  {
    *lastReference = v121;
    goto LABEL_101;
  }

LABEL_98:
  if (errorCopy2 && !v37)
  {
    v80 = v22;
    v37 = 0;
    *errorCopy2 = v22;
  }

LABEL_101:
  v81 = v37;

  return v81;
}

- (BOOL)performUninstallationByRevokingTemporaryReference:(id)reference error:(id *)error
{
  referenceCopy = reference;
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
  identities = [(MIUninstaller *)self identities];
  v5 = [identities countByEnumeratingWithState:&v210 objects:v226 count:16];
  obj = identities;
  if (!v5)
  {
LABEL_9:

    options = [(MIUninstaller *)self options];

    if (options)
    {
      options2 = [(MIUninstaller *)self options];
      v14 = [options2 objectForKeyedSubscript:@"UserDataOnly"];
      v15 = [v14 isEqual:&__kCFBooleanTrue];

      options3 = [(MIUninstaller *)self options];
      v17 = [options3 objectForKeyedSubscript:@"Placeholder"];
      v173 = [v17 isEqual:&__kCFBooleanTrue];

      if (v173)
      {
        v18 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          client = [(MIUninstaller *)self client];
          clientName = [client clientName];
          sub_100058D4C(clientName, v225, client);
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          client2 = [(MIUninstaller *)self client];
          clientName2 = [client2 clientName];
          v145 = @"Placeholder";
          MOLogWrite();
        }
      }

      v22 = [(MIUninstaller *)self options:clientName2];
      v23 = [v22 objectForKeyedSubscript:@"ParallelPlaceholderOnlyIfExists"];
      HIDWORD(v172) = [v23 isEqual:&__kCFBooleanTrue];

      if (HIDWORD(v172))
      {
        v24 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          client3 = [(MIUninstaller *)self client];
          clientName3 = [client3 clientName];
          sub_100058DC4(clientName3, v224, client3);
        }

        if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
        {
          client4 = [(MIUninstaller *)self client];
          clientName4 = [client4 clientName];
          v146 = @"ParallelPlaceholderOnlyIfExists";
          MOLogWrite();
        }
      }

      v28 = [(MIUninstaller *)self options:clientName4];
      v29 = [v28 objectForKeyedSubscript:kMIUninstallParallelPlaceholderKey];
      LODWORD(v172) = [v29 isEqual:&__kCFBooleanTrue];

      options4 = [(MIUninstaller *)self options];
      v31 = [options4 objectForKeyedSubscript:@"UninstallPlaceholdersOnly"];
      v164 = [v31 isEqual:&__kCFBooleanTrue];

      options5 = [(MIUninstaller *)self options];
      v33 = [options5 objectForKeyedSubscript:@"WaitForStorageDeletion"];
      v150 = [v33 isEqual:&__kCFBooleanTrue];

      options6 = [(MIUninstaller *)self options];
      v35 = [options6 objectForKeyedSubscript:@"UninstallReason"];
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
          v38 = sub_100010734("[MIUninstaller performUninstallationByRevokingTemporaryReference:error:]", 492, MIInstallerErrorDomain, 25, 0, 0, @"Illegal option combination passed to MobileInstallationUninstall. Can't uninstall user stuff only and uninstall placeholders.", v37, clientName2);
          allObjects = 0;
          builtInApplicationBundleIDs = 0;
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
          v43 = [v175 childrenForParentBundleID:v42 error:{&v204, clientName2}];
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

          v145 = [MIContainerLinkManager sharedInstanceForDomain:2, v142, v145];
          v203 = 0;
          v202 = 0;
          v47 = [v145 getLinkedParent:&v203 forChild:v42 error:&v202];
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
            clientName2 = v42;
            v145 = v49;
            MOLogWrite();
          }
        }

        v39 = [v177 countByEnumeratingWithState:&v205 objects:v223 count:16];
      }

      while (v39);
    }

    allObjects = [v176 allObjects];
    v51 = +[MIDaemonConfiguration sharedInstance];
    builtInApplicationBundleIDs = [v51 builtInApplicationBundleIDs];

    sub_100054630(allObjects);
    [(MIUninstaller *)self _fireCallbackWithStatus:@"RemovingApplication" percentComplete:50];
    v52 = +[MIDaemonConfiguration sharedInstance];
    allowDeletableSystemApps = [v52 allowDeletableSystemApps];

    if (allowDeletableSystemApps)
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
    identities2 = [(MIUninstaller *)self identities];
    v56 = [identities2 countByEnumeratingWithState:&v198 objects:v222 count:16];
    if (!v56)
    {
LABEL_175:

      [(MIUninstaller *)self _fireCallbackWithStatus:@"GeneratingApplicationMap" percentComplete:90];
      sub_100054780(allObjects);
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
      selfCopy = self;
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
    v165 = identities2;
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
      bundleID = [v59 bundleID];
      v178 = [v60 personaUniqueStringsForAppWithBundleID:bundleID domain:2 forUserWithID:sub_100009864() error:0];

      if (v178 && [v178 count])
      {
        bundleID2 = [v59 bundleID];
        [v163 addObject:bundleID2];
      }

      personaUniqueString = [v59 personaUniqueString];
      bundleID3 = [v59 bundleID];
      if (v170)
      {
        break;
      }

      _MILogTransactionStep(v169, 1, 1, bundleID3, personaUniqueString, 0, v64, v65, path);
      isPlaceholder = 0;
      v78 = 0;
      v79 = 0;
      v80 = v169;
LABEL_107:
      v96 = 1;
      if ((v172 | HIDWORD(v172) & v78))
      {
        goto LABEL_147;
      }

      if (((v168 | isPlaceholder) & 1) == 0)
      {
        goto LABEL_147;
      }

      v96 = v79;
      if (v164 & (v78 | isPlaceholder ^ 1))
      {
        goto LABEL_147;
      }

      if ((v159 & 1) == 0)
      {
        if (![builtInApplicationBundleIDs containsObject:bundleID3])
        {
          goto LABEL_141;
        }

        v97 = +[MIDaemonConfiguration sharedInstance];
        allowsInternalSecurityPolicy = [v97 allowsInternalSecurityPolicy];

        if (allowsInternalSecurityPolicy)
        {
          v99 = (v215 + 5);
          v192 = v215[5];
          v100 = [MIBundleContainer appBundleContainerForIdentifier:bundleID3 inDomain:2 withError:&v192];
          objc_storeStrong(v99, v192);
          if (!v100)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
            {
              path = bundleID3;
              MOLogWrite();
            }

            _MILogTransactionStep(v80, 2, 0, bundleID3, personaUniqueString, 0, v101, v102, path);
            goto LABEL_148;
          }

          v103 = +[MIDaemonConfiguration sharedInstance];
          systemAppBundleIDToInfoMap = [v103 systemAppBundleIDToInfoMap];
          v105 = [systemAppBundleIDToInfoMap objectForKeyedSubscript:bundleID3];

          if (v105)
          {
            v106 = +[MIDaemonConfiguration sharedInstance];
            systemAppBundleIDToInfoMap2 = [v106 systemAppBundleIDToInfoMap];
            v108 = [systemAppBundleIDToInfoMap2 objectForKeyedSubscript:bundleID3];
            goto LABEL_132;
          }

          v109 = +[MIDaemonConfiguration sharedInstance];
          internalAppBundleIDToInfoMap = [v109 internalAppBundleIDToInfoMap];
          v111 = [internalAppBundleIDToInfoMap objectForKeyedSubscript:bundleID3];

          if (v111)
          {
            v106 = +[MIDaemonConfiguration sharedInstance];
            systemAppBundleIDToInfoMap2 = [v106 internalAppBundleIDToInfoMap];
            v108 = [systemAppBundleIDToInfoMap2 objectForKeyedSubscript:bundleID3];
            goto LABEL_132;
          }

          v112 = +[MIDaemonConfiguration sharedInstance];
          coreServicesAppBundleIDToInfoMap = [v112 coreServicesAppBundleIDToInfoMap];
          v114 = [coreServicesAppBundleIDToInfoMap objectForKeyedSubscript:bundleID3];

          if (v114)
          {
            v106 = +[MIDaemonConfiguration sharedInstance];
            systemAppBundleIDToInfoMap2 = [v106 coreServicesAppBundleIDToInfoMap];
            v108 = [systemAppBundleIDToInfoMap2 objectForKeyedSubscript:bundleID3];
LABEL_132:
            v115 = v108;
          }

          else
          {
            v115 = 0;
          }

          v116 = [v115 objectForKeyedSubscript:{@"com.apple.MobileInstallation.bundleURL", path}];
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
            _MILogTransactionStep(v80, 2, 0, bundleID3, personaUniqueString, 0, v119, v120, path);

            goto LABEL_165;
          }

          [v153 setObject:v118 forKeyedSubscript:bundleID3];
          if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
          {
            [v118 path];
            v145 = path = bundleID3;
            MOLogWrite();
          }

LABEL_141:
          if (!obj || ![obj containsObject:bundleID3])
          {
            v100 = [v167 objectForKeyedSubscript:{bundleID3, path}];
            LOBYTE(v187) = 0;
            v121 = [v153 objectForKeyedSubscript:bundleID3];
            v122 = v121 == 0;

            v191 = 0;
            v145 = &v191;
            v123 = [MIUninstaller _uninstallBundleWithIdentity:"_uninstallBundleWithIdentity:linkedToChildren:waitForDeletion:uninstallReason:temporaryReference:deleteDataContainers:wasLastReference:error:" linkedToChildren:v59 waitForDeletion:v100 uninstallReason:v150 temporaryReference:v151 deleteDataContainers:referenceCopy wasLastReference:v122 error:?];
            v124 = v191;
            _MILogTransactionStep(v80, 2, v123 != 0, bundleID3, personaUniqueString, 0, v125, v126, &v187);
            if (v123)
            {
              goto LABEL_151;
            }

            domain = [(__CFString *)v124 domain];
            if ([domain isEqualToString:v149] && -[__CFString code](v124, "code") == 26)
            {

LABEL_159:
              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                v143 = v59;
                v145 = v124;
                MOLogWrite();
              }

              v127 = objc_opt_new();
              bundleID4 = [v59 bundleID];
              [v127 setBundleIdentifier:bundleID4];

              [v127 setIsLastReference:1];
              [v127 setHasParallelPlaceholder:1];
              [v127 setDoesNotHaveBundleContainer:1];
              [v155 addObject:v127];
LABEL_163:
            }

            else
            {
              domain2 = [(__CFString *)v124 domain];
              if ([domain2 isEqualToString:v160])
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
                v127 = [v166 objectForKeyedSubscript:bundleID3];
                if (v127)
                {
                  [v175 unlinkChild:bundleID3 fromParent:v127 error:0];
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
            path = bundleID3;
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
      _MILogTransactionStep(v80, 2, v96, bundleID3, personaUniqueString, 0, v75, v76, path);
LABEL_148:

      if (v174 == ++v58)
      {
        identities2 = v165;
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
      v70 = [MIBundleContainer appBundleContainerForIdentifier:bundleID3 inDomain:3 withError:&v197];
      objc_storeStrong(v69, v197);
      if (v70)
      {
LABEL_76:
        bundle = [v70 bundle];
        isPlaceholder = [bundle isPlaceholder];

        if (v162)
        {
          _MILogTransactionStep(9, 1, 1, bundleID3, personaUniqueString, 0, v84, v85, path);
          if (([builtInApplicationBundleIDs containsObject:bundleID3] & isPlaceholder) == 1)
          {
            if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 5)
            {
              containerURL = [v70 containerURL];
              [containerURL path];
              v145 = path = bundleID3;
              MOLogWrite();
            }

            v87 = (v215 + 5);
            v194 = v215[5];
            v88 = [v70 removeUnderlyingContainerWaitingForDeletion:0 error:{&v194, path, v145}];
            objc_storeStrong(v87, v194);
            if ((v88 & 1) == 0)
            {
              if (!qword_1000A9720 || *(qword_1000A9720 + 44) >= 3)
              {
                path = bundleID3;
                v145 = v215[5];
                MOLogWrite();
              }

              v79 = 0;
              parallelPlaceholderURL2 = v215[5];
              v215[5] = 0;
              isPlaceholder = 1;
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
              path = bundleID3;
              MOLogWrite();
            }

            v90 = +[MIFileManager defaultManager];
            parallelPlaceholderURL = [v70 parallelPlaceholderURL];
            v92 = (v215 + 5);
            v193 = v215[5];
            v93 = [v90 removeItemAtURL:parallelPlaceholderURL error:&v193];
            objc_storeStrong(v92, v193);

            if ((v93 & 1) == 0)
            {
              if (qword_1000A9720 && *(qword_1000A9720 + 44) < 3)
              {
                v79 = 0;
                goto LABEL_94;
              }

              parallelPlaceholderURL2 = [v70 parallelPlaceholderURL];
              path = [parallelPlaceholderURL2 path];
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

          parallelPlaceholderURL2 = objc_opt_new();
          [parallelPlaceholderURL2 setBundleIdentifier:bundleID3];
          [parallelPlaceholderURL2 setHasParallelPlaceholder:1];
          [parallelPlaceholderURL2 setIsPlaceholder:1];
          [v155 addObject:parallelPlaceholderURL2];
          v79 = 1;
          goto LABEL_93;
        }

        _MILogTransactionStep(10, 1, 1, bundleID3, personaUniqueString, 0, v84, v85, path);
        v78 = 0;
        v79 = 0;
        v80 = 10;
LABEL_106:

        goto LABEL_107;
      }

      domain3 = [v215[5] domain];
      if (([domain3 isEqualToString:v160] & 1) == 0)
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
      v70 = [MIBundleContainer appBundleContainerForIdentifier:bundleID3 inDomain:2 withError:&v196];
      v74 = v196;
    }

    else
    {
      v195 = v215[5];
      v70 = [MIBundleContainer appBundleContainerWithIdentifier:bundleID3 createIfNeeded:0 created:0 error:&v195];
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
    domain4 = [v215[5] domain];
    if ([domain4 isEqualToString:v160])
    {
      v95 = [v215[5] code] == 21;

      if (v95)
      {
LABEL_103:
        v70 = 0;
        isPlaceholder = 0;
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
      path = bundleID3;
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

    bundleID5 = [v8 bundleID];
    [v154 addObject:bundleID5];

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

  allObjects = 0;
  builtInApplicationBundleIDs = 0;
  v151 = 0;
LABEL_179:

LABEL_180:
  v138 = 0;
  if (error)
  {
    *error = v215[5];
  }

LABEL_182:

  _Block_object_dispose(&v214, 8);
  return v138;
}

@end