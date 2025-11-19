@interface MCWebContentFilterPayloadHandler
+ (id)internalErrorWithUnderlyingError:(id)a3;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (id)_copyCertificateWithPayloadUUID:(id)a3 intoKeychainAccessGroup:(id)a4 personaID:(id)a5;
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
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 UUID];
  v5 = [(MCNewPayloadHandler *)self profileHandler];
  v6 = [v5 profile];
  v7 = [v6 identifier];
  [v8 addDependent:v4 ofParent:v7 inDomain:kMCDMProfileWithWebContentFilterToPayloadUUIDDependencyKey];
}

- (void)_removeDependency
{
  v8 = +[MCDependencyManager sharedManager];
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 UUID];
  v5 = [(MCNewPayloadHandler *)self profileHandler];
  v6 = [v5 profile];
  v7 = [v6 identifier];
  [v8 removeDependent:v4 fromParent:v7 inDomain:kMCDMProfileWithWebContentFilterToPayloadUUIDDependencyKey];
}

+ (id)internalErrorWithUnderlyingError:(id)a3
{
  v3 = MCWebContentFilterErrorDomain;
  v4 = a3;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:40000 descriptionArray:v5 underlyingError:v4 errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v80 = a3;
  v82 = a4;
  v81 = a5;
  v90 = self;
  v89 = [(MCNewPayloadHandler *)self payload];
  v83 = objc_alloc_init(NSMutableArray);
  v11 = [v89 contentFilterUUID];
  if (v11)
  {
  }

  else
  {
    v12 = +[MDMCloudConfiguration sharedConfiguration];
    v13 = [v12 isSupervised];

    if ((v13 & 1) == 0)
    {
      if (a6)
      {
        v29 = MCErrorArray();
        *a6 = [NSError MCErrorWithDomain:MCWebContentFilterErrorDomain code:40003 descriptionArray:v29 errorType:MCErrorTypeFatal, 0];
      }

      goto LABEL_72;
    }
  }

  v14 = [v89 filterType];
  v15 = [v14 isEqualToString:kMCWebContentFilterTypePlugin];

  if (!v15)
  {
    [(MCWebContentFilterPayloadHandler *)self _installDependency];
LABEL_12:
    v27 = 1;
    goto LABEL_73;
  }

  v16 = +[MCWebContentFilterPayload typeStrings];
  v17 = [v16 firstObject];
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

    if (a6)
    {
      +[MCWebContentFilterPayloadHandler internalError];
      *a6 = v18 = v78;
    }

    goto LABEL_72;
  }

  [v78 loadConfigurationsForceReloadFromDisk];
  v19 = [v89 pluginConfiguration];
  v76 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:v19];

  v20 = +[MCWebContentFilterPayload typeStrings];
  v21 = [v20 firstObject];
  [v78 createConfigurationFromPayload:v76 payloadType:v21];

  v22 = [v78 ingestedConfiguration];
  v77 = v22;
  if (!v22)
  {
    v30 = +[MCWebContentFilterPayloadHandler internalError];
    goto LABEL_61;
  }

  v87 = [v22 getPendingCertificateInfo:v76];
  if (v87)
  {
    v23 = [v82 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    v24 = [v23 BOOLValue];

    if (v24)
    {
      v25 = kMDMPersonaKey;
      v26 = [v82 objectForKeyedSubscript:kMDMPersonaKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v88 = [v82 objectForKeyedSubscript:v25];
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
              v96[4] = v90;
              v97 = v35;
              v98 = v36;
              v99 = v88;
              v37 = [DMCPersonaHelper performBlockUnderPersona:v99 block:v96];
            }

            else
            {
              v39 = [(MCWebContentFilterPayloadHandler *)v90 _copyCertificateWithPayloadUUID:v35 intoKeychainAccessGroup:v36 personaID:0];
              v40 = *(v102 + 5);
              *(v102 + 5) = v39;
            }

            v41 = *(v102 + 5);
            if (v41)
            {
              v42 = [v89 UUID];
              [(MCNewPayloadHandler *)v90 _retainDependencyBetweenPersistentID:v41 andUUID:v42 forSystem:1 user:0 personaID:v88];

              [v83 addObject:*(v102 + 5)];
            }
          }

          else
          {
            if (v35)
            {
              v7 = [(MCNewPayloadHandler *)v90 profileHandler];
              v6 = [v7 persistentIDForCertificateUUID:v35];
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
  v45 = [v89 UUID];
  v46 = [v89 organization];
  [v77 setPayloadInfoCommon:v45 payloadOrganization:v46];

  v47 = [v89 contentFilterUUID];
  if (!v47 || ([v89 contentFilterUUID], v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v77, "setPerAppUUID:andSafariDomains:", v48, 0), v48, v47, (v49 & 1) != 0))
  {
    v50 = [(MCNewPayloadHandler *)v90 profileHandler];
    v51 = [v50 profile];

    if (v51)
    {
      v52 = objc_alloc_init(NSMutableDictionary);
      v53 = [v51 UUID];
      v54 = v53 == 0;

      if (!v54)
      {
        v55 = [v51 UUID];
        [v52 setObject:v55 forKeyedSubscript:kMCPayloadUUIDKey];
      }

      v56 = [v51 identifier];
      v57 = v56 == 0;

      if (!v57)
      {
        v58 = [v51 identifier];
        [v52 setObject:v58 forKeyedSubscript:kMCPayloadIdentifierKey];
      }

      if (v82)
      {
        [v52 addEntriesFromDictionary:v82];
      }

      [v77 setProfileInfo:v52];
    }

    [v78 updateDefaultAfterAddingConfiguration];
    v59 = [v77 getConfigurationIdentifier];
    [v89 setPersistentResourceID:v59];

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
      if (a6)
      {
        v63 = v30;
        *a6 = v30;
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
            v69 = [v89 UUID];
            [(MCNewPayloadHandler *)v90 _releaseDependencyBetweenPersistentID:v68 andUUID:v69];
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

  v72 = [(MCNewPayloadHandler *)v90 payload];
  v73 = [v72 displayName];
  v74 = MCErrorArray();
  v75 = [NSError MCErrorWithDomain:MCWebContentFilterErrorDomain code:40002 descriptionArray:v74 errorType:MCErrorTypeFatal, v73, 0];
  v27 = v75 != 0;

LABEL_73:
  return v27;
}

- (void)setAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 filterType];
  v5 = [v4 isEqualToString:kMCWebContentFilterTypePlugin];

  if (v5)
  {
    v6 = +[MCWebContentFilterPayload typeStrings];
    v7 = [v6 firstObject];
    v8 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v8 lockConfigurations])
    {
      [v8 loadConfigurationsForceReloadFromDisk];
      v9 = [v3 persistentResourceID];
      v10 = [v8 setAsideConfigurationName:v9 unsetAside:0];

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
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 filterType];
  v5 = [v4 isEqualToString:kMCWebContentFilterTypePlugin];

  if (v5)
  {
    v6 = +[MCWebContentFilterPayload typeStrings];
    v7 = [v6 firstObject];
    v8 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v8 lockConfigurations])
    {
      [v8 loadConfigurationsForceReloadFromDisk];
      v9 = [v3 persistentResourceID];
      v10 = [v8 setAsideConfigurationName:v9 unsetAside:1];

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
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 filterType];
  v5 = [v4 isEqualToString:kMCWebContentFilterTypePlugin];

  if (v5)
  {
    v6 = +[MCWebContentFilterPayload typeStrings];
    v7 = [v6 firstObject];
    v8 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v8 lockConfigurations])
    {
      [v8 loadConfigurationsForceReloadFromDisk];
      v9 = [v3 persistentResourceID];

      if (v9)
      {
        v10 = [v3 persistentResourceID];
        v11 = [v8 getCertificatesForConfigurationWithIdentifier:v10];

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
              v18 = [v3 UUID];
              [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v17 andUUID:v18];

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
          v21 = [v3 persistentResourceID];
          *buf = 138543362;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Calling removeConfigurationWithIdentifier for id: %{public}@", buf, 0xCu);
        }

        v22 = [v3 persistentResourceID];
        [v8 removeConfigurationWithIdentifier:v22];
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
    v23 = [(MCNewPayloadHandler *)self profileHandler];
    v24 = [v23 isSetAside];

    if ((v24 & 1) == 0)
    {
      [(MCWebContentFilterPayloadHandler *)self _removeDependency];
    }
  }
}

- (id)_copyCertificateWithPayloadUUID:(id)a3 intoKeychainAccessGroup:(id)a4 personaID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MCNewPayloadHandler *)self profileHandler];
  v12 = [v11 payloadHandlerWithUUID:v8];

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
      v30 = v8;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ContentFilter: Failed to get the identity for UUID %{public}@: %{public}@", buf, 0x16u);
    }

    if (v13)
    {
LABEL_7:
      v26 = v14;
      v27 = v10;
      v16 = v9;
      v17 = [v12 accessibility];
      v18 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Web content filter identity, storing with accessibility %@", buf, 0xCu);
      }

      v19 = [@"NE:" stringByAppendingString:v8];
      v20 = [(MCNewPayloadHandler *)self profileHandler];
      v21 = [v20 profile];
      v9 = v16;
      v22 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v13, v19, v16, [v21 isInstalledForSystem], v17);

      v10 = v27;
      if (v22)
      {
        v23 = [(MCNewPayloadHandler *)self payload];
        v24 = [v23 UUID];
        [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v22 andUUID:v24 personaID:v27];
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