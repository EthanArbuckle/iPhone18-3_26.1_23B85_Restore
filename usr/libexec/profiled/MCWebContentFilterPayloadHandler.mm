@interface MCWebContentFilterPayloadHandler
+ (id)internalErrorWithUnderlyingError:(id)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (id)_copyCertificateWithPayloadUUID:(id)d intoKeychainAccessGroup:(id)group personaID:(id)iD;
- (void)_installDependency;
- (void)_removeDependency;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCWebContentFilterPayloadHandler

- (void)_installDependency
{
  v8 = +[MCDependencyManager sharedManager];
  payload = [(MCNewPayloadHandler *)self payload];
  uUID = [payload UUID];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  identifier = [profile identifier];
  [v8 addDependent:uUID ofParent:identifier inDomain:kMCDMProfileWithWebContentFilterToPayloadUUIDDependencyKey];
}

- (void)_removeDependency
{
  v8 = +[MCDependencyManager sharedManager];
  payload = [(MCNewPayloadHandler *)self payload];
  uUID = [payload UUID];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  profile = [profileHandler profile];
  identifier = [profile identifier];
  [v8 removeDependent:uUID fromParent:identifier inDomain:kMCDMProfileWithWebContentFilterToPayloadUUIDDependencyKey];
}

+ (id)internalErrorWithUnderlyingError:(id)error
{
  v3 = MCWebContentFilterErrorDomain;
  errorCopy = error;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:40000 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  installerCopy = installer;
  optionsCopy = options;
  clientCopy = client;
  selfCopy = self;
  payload = [(MCNewPayloadHandler *)self payload];
  v83 = objc_alloc_init(NSMutableArray);
  contentFilterUUID = [payload contentFilterUUID];
  if (contentFilterUUID)
  {
  }

  else
  {
    v12 = +[MDMCloudConfiguration sharedConfiguration];
    isSupervised = [v12 isSupervised];

    if ((isSupervised & 1) == 0)
    {
      if (error)
      {
        v29 = MCErrorArray();
        *error = [NSError MCErrorWithDomain:MCWebContentFilterErrorDomain code:40003 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
      }

      goto LABEL_72;
    }
  }

  filterType = [payload filterType];
  v15 = [filterType isEqualToString:kMCWebContentFilterTypePlugin];

  if (!v15)
  {
    [(MCWebContentFilterPayloadHandler *)self _installDependency];
LABEL_12:
    v27 = 1;
    goto LABEL_73;
  }

  v16 = +[MCWebContentFilterPayload typeStrings];
  firstObject = [v16 firstObject];
  v78 = MCNEProfileIngestionHandlerClassForPayload();

  v18 = v78;
  if (([v78 lockConfigurations] & 1) == 0)
  {
    v28 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", buf, 2u);
    }

    if (error)
    {
      +[MCWebContentFilterPayloadHandler internalError];
      *error = v18 = v78;
    }

    goto LABEL_72;
  }

  [v78 loadConfigurationsForceReloadFromDisk];
  pluginConfiguration = [payload pluginConfiguration];
  v76 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:pluginConfiguration];

  v20 = +[MCWebContentFilterPayload typeStrings];
  firstObject2 = [v20 firstObject];
  [v78 createConfigurationFromPayload:v76 payloadType:firstObject2];

  ingestedConfiguration = [v78 ingestedConfiguration];
  v77 = ingestedConfiguration;
  if (!ingestedConfiguration)
  {
    v30 = +[MCWebContentFilterPayloadHandler internalError];
    goto LABEL_61;
  }

  v87 = [ingestedConfiguration getPendingCertificateInfo:v76];
  if (v87)
  {
    v23 = [optionsCopy objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    bOOLValue = [v23 BOOLValue];

    if (bOOLValue)
    {
      v25 = kMDMPersonaKey;
      v26 = [optionsCopy objectForKeyedSubscript:kMDMPersonaKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v88 = [optionsCopy objectForKeyedSubscript:v25];
      }

      else
      {
        v88 = 0;
      }
    }

    else
    {
      v88 = 0;
    }

    v85 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v87, "count")}];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = [v87 allKeys];
    v31 = [obj countByEnumeratingWithState:&v107 objects:v112 count:16];
    if (v31)
    {
      v86 = *v108;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v108 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v107 + 1) + 8 * i);
          *buf = 0;
          v102 = buf;
          v103 = 0x3032000000;
          v104 = sub_10009F7D0;
          v105 = sub_10009F7E0;
          v106 = 0;
          v34 = [v87 objectForKeyedSubscript:v33];
          v35 = [v34 objectForKeyedSubscript:@"PayloadUUID"];
          v36 = [v34 objectForKeyedSubscript:@"AccessGroup"];
          if (v36)
          {
            if ([v88 length])
            {
              v96[0] = _NSConcreteStackBlock;
              v96[1] = 3221225472;
              v96[2] = sub_10009F7E8;
              v96[3] = &unk_10011CF68;
              v100 = buf;
              v96[4] = selfCopy;
              v97 = v35;
              v98 = v36;
              v99 = v88;
              v37 = [DMCPersonaHelper performBlockUnderPersona:v99 block:v96];
            }

            else
            {
              v39 = [(MCWebContentFilterPayloadHandler *)selfCopy _copyCertificateWithPayloadUUID:v35 intoKeychainAccessGroup:v36 personaID:0];
              v40 = *(v102 + 5);
              *(v102 + 5) = v39;
            }

            v41 = *(v102 + 5);
            if (v41)
            {
              uUID = [payload UUID];
              [(MCNewPayloadHandler *)selfCopy _retainDependencyBetweenPersistentID:v41 andUUID:uUID forSystem:1 user:0 personaID:v88];

              [v83 addObject:*(v102 + 5)];
            }
          }

          else
          {
            if (v35)
            {
              profileHandler = [(MCNewPayloadHandler *)selfCopy profileHandler];
              v6 = [profileHandler persistentIDForCertificateUUID:v35];
              v38 = v6;
            }

            else
            {
              v38 = 0;
            }

            objc_storeStrong(v102 + 5, v38);
            if (v35)
            {
            }
          }

          v43 = *(v102 + 5);
          if (v43)
          {
            [v85 setObject:v43 forKey:v33];
          }

          _Block_object_dispose(buf, 8);
        }

        v31 = [obj countByEnumeratingWithState:&v107 objects:v112 count:16];
      }

      while (v31);
    }

    v44 = [v87 count];
    if (v44 != [v85 count] || !objc_msgSend(v77, "setCertificates:", v85))
    {
      v62 = MCErrorArray();
      v30 = [NSError MCErrorWithDomain:MCWebContentFilterErrorDomain code:40001 descriptionArray:v62 errorType:MCErrorTypeFatal, 0];

      goto LABEL_61;
    }
  }

  [v77 setPayloadInfoIdentity:v76];
  uUID2 = [payload UUID];
  organization = [payload organization];
  [v77 setPayloadInfoCommon:uUID2 payloadOrganization:organization];

  contentFilterUUID2 = [payload contentFilterUUID];
  if (!contentFilterUUID2 || ([payload contentFilterUUID], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v77, "setPerAppUUID:andSafariDomains:", v48, 0), v48, contentFilterUUID2, (v49 & 1) != 0))
  {
    profileHandler2 = [(MCNewPayloadHandler *)selfCopy profileHandler];
    profile = [profileHandler2 profile];

    if (profile)
    {
      v52 = objc_alloc_init(NSMutableDictionary);
      uUID3 = [profile UUID];
      v54 = uUID3 == 0;

      if (!v54)
      {
        uUID4 = [profile UUID];
        [v52 setObject:uUID4 forKeyedSubscript:kMCPayloadUUIDKey];
      }

      identifier = [profile identifier];
      v57 = identifier == 0;

      if (!v57)
      {
        identifier2 = [profile identifier];
        [v52 setObject:identifier2 forKeyedSubscript:kMCPayloadIdentifierKey];
      }

      if (optionsCopy)
      {
        [v52 addEntriesFromDictionary:optionsCopy];
      }

      [v77 setProfileInfo:v52];
    }

    [v78 updateDefaultAfterAddingConfiguration];
    getConfigurationIdentifier = [v77 getConfigurationIdentifier];
    [payload setPersistentResourceID:getConfigurationIdentifier];

    v95 = 0;
    v60 = [v78 saveIngestedConfiguration:&v95];
    v30 = v95;
    if ((v60 & 1) == 0)
    {
      v61 = [MCWebContentFilterPayloadHandler internalErrorWithUnderlyingError:v30];

      v30 = v61;
    }

LABEL_61:
    [v78 unlockConfigurations];

    if (v30)
    {
      if (error)
      {
        v63 = v30;
        *error = v30;
      }

      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v64 = v83;
      v65 = [v64 countByEnumeratingWithState:&v91 objects:v111 count:16];
      if (v65)
      {
        v66 = *v92;
        do
        {
          for (j = 0; j != v65; j = j + 1)
          {
            if (*v92 != v66)
            {
              objc_enumerationMutation(v64);
            }

            v68 = *(*(&v91 + 1) + 8 * j);
            uUID5 = [payload UUID];
            [(MCNewPayloadHandler *)selfCopy _releaseDependencyBetweenPersistentID:v68 andUUID:uUID5];
          }

          v65 = [v64 countByEnumeratingWithState:&v91 objects:v111 count:16];
        }

        while (v65);
      }

LABEL_72:
      v27 = 0;
      goto LABEL_73;
    }

    goto LABEL_12;
  }

  v71 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Could not configure content filter UUID", buf, 2u);
  }

  payload2 = [(MCNewPayloadHandler *)selfCopy payload];
  displayName = [payload2 displayName];
  v74 = MCErrorArray();
  v75 = [NSError MCErrorWithDomain:MCWebContentFilterErrorDomain code:40002 descriptionArray:v74 errorType:MCErrorTypeFatal, displayName, 0];
  v27 = v75 != 0;

LABEL_73:
  return v27;
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  filterType = [payload filterType];
  v5 = [filterType isEqualToString:kMCWebContentFilterTypePlugin];

  if (v5)
  {
    v6 = +[MCWebContentFilterPayload typeStrings];
    firstObject = [v6 firstObject];
    v8 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v8 lockConfigurations])
    {
      [v8 loadConfigurationsForceReloadFromDisk];
      persistentResourceID = [payload persistentResourceID];
      v10 = [v8 setAsideConfigurationName:persistentResourceID unsetAside:0];

      [v8 unlockConfigurations];
    }

    else
    {
      v11 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", v12, 2u);
      }
    }
  }

  else
  {
    [(MCWebContentFilterPayloadHandler *)self _removeDependency];
  }
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  filterType = [payload filterType];
  v5 = [filterType isEqualToString:kMCWebContentFilterTypePlugin];

  if (v5)
  {
    v6 = +[MCWebContentFilterPayload typeStrings];
    firstObject = [v6 firstObject];
    v8 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v8 lockConfigurations])
    {
      [v8 loadConfigurationsForceReloadFromDisk];
      persistentResourceID = [payload persistentResourceID];
      v10 = [v8 setAsideConfigurationName:persistentResourceID unsetAside:1];

      [v8 unlockConfigurations];
    }

    else
    {
      v11 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", v12, 2u);
      }
    }
  }

  else
  {
    [(MCWebContentFilterPayloadHandler *)self _installDependency];
  }
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  filterType = [payload filterType];
  v5 = [filterType isEqualToString:kMCWebContentFilterTypePlugin];

  if (v5)
  {
    v6 = +[MCWebContentFilterPayload typeStrings];
    firstObject = [v6 firstObject];
    v8 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v8 lockConfigurations])
    {
      [v8 loadConfigurationsForceReloadFromDisk];
      persistentResourceID = [payload persistentResourceID];

      if (persistentResourceID)
      {
        persistentResourceID2 = [payload persistentResourceID];
        v11 = [v8 getCertificatesForConfigurationWithIdentifier:persistentResourceID2];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          do
          {
            v16 = 0;
            do
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v27 + 1) + 8 * v16);
              uUID = [payload UUID];
              [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v17 andUUID:uUID];

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v27 objects:v33 count:16];
          }

          while (v14);
        }

        v19 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
        {
          v20 = v19;
          persistentResourceID3 = [payload persistentResourceID];
          *buf = 138543362;
          v32 = persistentResourceID3;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Calling removeConfigurationWithIdentifier for id: %{public}@", buf, 0xCu);
        }

        persistentResourceID4 = [payload persistentResourceID];
        [v8 removeConfigurationWithIdentifier:persistentResourceID4];
      }

      else
      {
        v26 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "MCWebContentFilterPayloadHandler remove failed: empty configuration id", buf, 2u);
        }
      }

      [v8 updateDefaultAfterDeletingConfiguration];
      [v8 unlockConfigurations];
    }

    else
    {
      v25 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock. Skipping removal.", buf, 2u);
      }
    }
  }

  else
  {
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    isSetAside = [profileHandler isSetAside];

    if ((isSetAside & 1) == 0)
    {
      [(MCWebContentFilterPayloadHandler *)self _removeDependency];
    }
  }
}

- (id)_copyCertificateWithPayloadUUID:(id)d intoKeychainAccessGroup:(id)group personaID:(id)iD
{
  dCopy = d;
  groupCopy = group;
  iDCopy = iD;
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  v12 = [profileHandler payloadHandlerWithUUID:dCopy];

  if (v12)
  {
    v28 = 0;
    v13 = [v12 copyIdentityImmediatelyWithInteractionClient:0 outError:&v28];
    v14 = v28;
    if (!v14 && v13)
    {
      goto LABEL_7;
    }

    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v30 = dCopy;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ContentFilter: Failed to get the identity for UUID %{public}@: %{public}@", buf, 0x16u);
    }

    if (v13)
    {
LABEL_7:
      v26 = v14;
      v27 = iDCopy;
      v16 = groupCopy;
      accessibility = [v12 accessibility];
      v18 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = accessibility;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Web content filter identity, storing with accessibility %@", buf, 0xCu);
      }

      v19 = [@"NE:" stringByAppendingString:dCopy];
      profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
      profile = [profileHandler2 profile];
      groupCopy = v16;
      v22 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v13, v19, v16, [profile isInstalledForSystem], accessibility);

      iDCopy = v27;
      if (v22)
      {
        payload = [(MCNewPayloadHandler *)self payload];
        uUID = [payload UUID];
        [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v22 andUUID:uUID personaID:v27];
      }

      CFRelease(v13);
      v14 = v26;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end