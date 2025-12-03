@interface MCDNSSettingsPayloadHandler
+ (id)internalErrorWithUnderlyingError:(id)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (MCDNSSettingsPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (id)_copyCertificateWithPayloadUUID:(id)d intoKeychainAccessGroup:(id)group;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCDNSSettingsPayloadHandler

- (MCDNSSettingsPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = MCDNSSettingsPayloadHandler;
  v7 = [(MCNewPayloadHandler *)&v11 initWithPayload:payload profileHandler:handlerCopy];
  if (v7)
  {
    profile = [handlerCopy profile];
    profile = v7->_profile;
    v7->_profile = profile;
  }

  return v7;
}

+ (id)internalErrorWithUnderlyingError:(id)error
{
  v3 = MCDNSSettingsErrorDomain;
  errorCopy = error;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:57000 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  type = [payload type];
  v64 = objc_alloc_init(NSMutableArray);
  v11 = MCNEProfileIngestionHandlerClassForPayload();
  if (!v11)
  {
    sub_1000C2DF8(a2, self);
  }

  if ([v11 lockConfigurations])
  {
    [v11 loadConfigurationsForceReloadFromDisk];
    configurationDictionary = [payload configurationDictionary];
    v13 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:configurationDictionary];

    if (!v13)
    {
      sub_1000C2E74(a2, self);
    }

    [v11 createConfigurationFromPayload:v13 payloadType:type];
    ingestedConfiguration = [v11 ingestedConfiguration];
    v15 = ingestedConfiguration;
    if (!ingestedConfiguration)
    {
      if (error)
      {
        *error = [objc_opt_class() internalError];
      }

      [v11 unlockConfigurations];
      v39 = 0;
      goto LABEL_61;
    }

    errorCopy = error;
    v16 = [ingestedConfiguration getPendingCertificateInfo:v13];
    v67 = v16;
    if (v16)
    {
      v17 = v16;
      v62 = v11;
      v63 = v15;
      v59 = type;
      v61 = v13;
      v57 = optionsCopy;
      v66 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v16, "count")}];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      obj = [v17 allKeys];
      v18 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v79;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v79 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v78 + 1) + 8 * i);
            v23 = [v17 objectForKeyedSubscript:v22];
            v24 = [v23 objectForKeyedSubscript:@"PayloadUUID"];
            v25 = [v23 objectForKeyedSubscript:@"AccessGroup"];
            if (v25)
            {
              v26 = [(MCDNSSettingsPayloadHandler *)self _copyCertificateWithPayloadUUID:v24 intoKeychainAccessGroup:v25];
              if (!v26)
              {
                goto LABEL_19;
              }

              v27 = v26;
              uUID = [payload UUID];
              [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v27 andUUID:uUID];

              v17 = v67;
              [v64 addObject:v27];
LABEL_18:
              [v66 setObject:v27 forKey:v22];

              goto LABEL_19;
            }

            if (v24)
            {
              profileHandler = [(MCNewPayloadHandler *)self profileHandler];
              v27 = [profileHandler persistentIDForCertificateUUID:v24];

              v17 = v67;
              if (v27)
              {
                goto LABEL_18;
              }
            }

LABEL_19:
          }

          v19 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
        }

        while (v19);
      }

      v30 = [v17 count];
      v15 = v63;
      if (v30 != [v66 count] || (objc_msgSend(v63, "setCertificates:", v66) & 1) == 0)
      {
        optionsCopy = v57;
        type = v59;
        v13 = v61;
        v11 = v62;
        if (errorCopy)
        {
          v41 = MCDNSSettingsErrorDomain;
          v42 = MCErrorArray();
          *errorCopy = [NSError MCErrorWithDomain:v41 code:57001 descriptionArray:v42 errorType:MCErrorTypeFatal, 0];

          v15 = v63;
        }

        [v62 unlockConfigurations];
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v40 = v64;
        v43 = [v40 countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (!v43)
        {
          v39 = 0;
          goto LABEL_60;
        }

        v44 = v43;
        v45 = *v75;
        do
        {
          for (j = 0; j != v44; j = j + 1)
          {
            if (*v75 != v45)
            {
              objc_enumerationMutation(v40);
            }

            v47 = *(*(&v74 + 1) + 8 * j);
            uUID2 = [payload UUID];
            [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v47 andUUID:uUID2];
          }

          v44 = [v40 countByEnumeratingWithState:&v74 objects:v83 count:16];
        }

        while (v44);
        v39 = 0;
        goto LABEL_58;
      }

      optionsCopy = v57;
      type = v59;
      v13 = v61;
      v11 = v62;
    }

    uUID3 = [payload UUID];
    organization = [payload organization];
    [v15 setPayloadInfoCommon:uUID3 payloadOrganization:organization];

    v33 = objc_alloc_init(NSMutableDictionary);
    uUID4 = [(MCProfile *)self->_profile UUID];

    if (uUID4)
    {
      uUID5 = [(MCProfile *)self->_profile UUID];
      [v33 setObject:uUID5 forKeyedSubscript:kMCPayloadUUIDKey];
    }

    identifier = [(MCProfile *)self->_profile identifier];

    if (identifier)
    {
      identifier2 = [(MCProfile *)self->_profile identifier];
      [v33 setObject:identifier2 forKeyedSubscript:kMCPayloadIdentifierKey];
    }

    if (optionsCopy)
    {
      [v33 addEntriesFromDictionary:optionsCopy];
    }

    v66 = v33;
    [v15 setProfileInfo:v33];
    [v11 updateDefaultAfterAddingConfiguration];
    getConfigurationIdentifier = [v15 getConfigurationIdentifier];
    [payload setPersistentResourceID:getConfigurationIdentifier];

    v73 = 0;
    v39 = [v11 saveIngestedConfiguration:&v73];
    v40 = v73;
    if (v39)
    {
      [v11 unlockConfigurations];
LABEL_60:

LABEL_61:
      goto LABEL_62;
    }

    v63 = v15;
    v60 = type;
    v61 = v13;
    if (errorCopy)
    {
      *errorCopy = [objc_opt_class() internalErrorWithUnderlyingError:v40];
    }

    v62 = v11;
    [v11 unlockConfigurations];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v49 = v64;
    v50 = [v49 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v70;
      do
      {
        for (k = 0; k != v51; k = k + 1)
        {
          if (*v70 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v69 + 1) + 8 * k);
          uUID6 = [payload UUID];
          [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v54 andUUID:uUID6];
        }

        v51 = [v49 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v51);
    }

    type = v60;
LABEL_58:
    v13 = v61;
    v11 = v62;
    v15 = v63;
    goto LABEL_60;
  }

  if (error)
  {
    [objc_opt_class() internalError];
    *error = v39 = 0;
  }

  else
  {
    v39 = 0;
  }

LABEL_62:

  return v39;
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  type = [payload type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    payload2 = [(MCNewPayloadHandler *)self payload];
    persistentResourceID = [payload2 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:persistentResourceID unsetAside:0];

    [v5 unlockConfigurations];
  }

  else
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", v10, 2u);
    }
  }
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  type = [payload type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    payload2 = [(MCNewPayloadHandler *)self payload];
    persistentResourceID = [payload2 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:persistentResourceID unsetAside:0];

    [v5 unlockConfigurations];
  }

  else
  {
    v9 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", v10, 2u);
    }
  }
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  persistentResourceID = [payload persistentResourceID];

  payload2 = [(MCNewPayloadHandler *)self payload];
  type = [payload2 type];
  v7 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v7 lockConfigurations])
  {
    [v7 loadConfigurationsForceReloadFromDisk];
    if (persistentResourceID)
    {
      [v7 removeConfigurationWithIdentifier:persistentResourceID];
    }

    else
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "NetworkUsageRules remove failed: empty configuration id", buf, 2u);
      }
    }

    [v7 updateDefaultAfterDeletingConfiguration];
    [v7 unlockConfigurations];
  }

  else
  {
    v8 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock. Skipping removal.", v10, 2u);
    }
  }
}

- (id)_copyCertificateWithPayloadUUID:(id)d intoKeychainAccessGroup:(id)group
{
  dCopy = d;
  groupCopy = group;
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  v9 = [profileHandler payloadHandlerWithUUID:dCopy];

  if (v9)
  {
    v23 = 0;
    v10 = [v9 copyIdentityImmediatelyWithInteractionClient:0 outError:&v23];
    v11 = v23;
    if (!v11 && v10)
    {
      goto LABEL_7;
    }

    v12 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = dCopy;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "DNSSettings: Failed to get the identity for UUID %{public}@: %{public}@", buf, 0x16u);
    }

    if (v10)
    {
LABEL_7:
      accessibility = [v9 accessibility];
      v14 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = accessibility;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "DNS Settings identity, storing with accessibility %@", buf, 0xCu);
      }

      v15 = [@"NE:" stringByAppendingString:dCopy];
      profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
      profile = [profileHandler2 profile];
      groupCopy = v22;
      v18 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v10, v15, v22, [profile isInstalledForSystem], accessibility);

      if (v18)
      {
        payload = [(MCNewPayloadHandler *)self payload];
        uUID = [payload UUID];
        [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v18 andUUID:uUID];

        groupCopy = v22;
      }

      CFRelease(v10);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end