@interface MCRelayPayloadHandler
+ (id)internalErrorWithUnderlyingError:(id)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (MCRelayPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler;
- (id)_copyCertificateWithPayloadUUID:(id)d intoKeychainAccessGroup:(id)group;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCRelayPayloadHandler

- (MCRelayPayloadHandler)initWithPayload:(id)payload profileHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = MCRelayPayloadHandler;
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
  v3 = MCRelayErrorDomain;
  errorCopy = error;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:61000 descriptionArray:v5 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  optionsCopy = options;
  payload = [(MCNewPayloadHandler *)self payload];
  type = [payload type];
  v88 = objc_alloc_init(NSMutableArray);
  relayUUID = [payload relayUUID];
  if (relayUUID)
  {

    goto LABEL_6;
  }

  v13 = +[MDMConfiguration sharedConfiguration];
  isUserEnrollment = [v13 isUserEnrollment];

  if (!isUserEnrollment)
  {
LABEL_6:
    v17 = MCNEProfileIngestionHandlerClassForPayload();
    if (!v17)
    {
      sub_1000C26CC(a2, self);
    }

    if (([v17 lockConfigurations] & 1) == 0)
    {
      if (error)
      {
        internalError = [objc_opt_class() internalError];
        errorCopy = error;
        LOBYTE(error) = 0;
        *errorCopy = internalError;
      }

      goto LABEL_78;
    }

    v86 = optionsCopy;
    [v17 loadConfigurationsForceReloadFromDisk];
    configurationDictionary = [payload configurationDictionary];
    v19 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:configurationDictionary];

    if (!v19)
    {
      sub_1000C2748(a2, self);
    }

    [v17 createConfigurationFromPayload:v19 payloadType:type];
    ingestedConfiguration = [v17 ingestedConfiguration];
    v21 = ingestedConfiguration;
    if (!ingestedConfiguration)
    {
      if (error)
      {
        *error = [objc_opt_class() internalError];
      }

      [v17 unlockConfigurations];
      LOBYTE(error) = 0;
      goto LABEL_77;
    }

    v22 = [ingestedConfiguration getPendingCertificateInfo:v19];
    v85 = v21;
    v91 = v22;
    if (v22)
    {
      v23 = v22;
      errorCopy2 = error;
      v81 = type;
      selfCopy = self;
      v83 = v19;
      v84 = v17;
      v87 = payload;
      v90 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v22, "count")}];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = [v23 allKeys];
      v25 = [obj countByEnumeratingWithState:&v102 objects:v108 count:16];
      v26 = v23;
      if (v25)
      {
        v27 = v25;
        v28 = *v103;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v103 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v102 + 1) + 8 * i);
            v31 = [v26 objectForKeyedSubscript:v30];
            v32 = [v31 objectForKeyedSubscript:@"PayloadUUID"];
            v33 = [v31 objectForKeyedSubscript:@"AccessGroup"];
            if (v33)
            {
              v34 = [(MCRelayPayloadHandler *)selfCopy _copyCertificateWithPayloadUUID:v32 intoKeychainAccessGroup:v33];
              if (!v34)
              {
                goto LABEL_24;
              }

              v35 = v34;
              uUID = [v87 UUID];
              [(MCNewPayloadHandler *)selfCopy _retainDependencyBetweenPersistentID:v35 andUUID:uUID];

              v26 = v91;
              [v88 addObject:v35];
LABEL_23:
              [v90 setObject:v35 forKey:v30];

              goto LABEL_24;
            }

            if (v32)
            {
              profileHandler = [(MCNewPayloadHandler *)selfCopy profileHandler];
              v35 = [profileHandler persistentIDForCertificateUUID:v32];

              v26 = v91;
              if (v35)
              {
                goto LABEL_23;
              }
            }

LABEL_24:
          }

          v27 = [obj countByEnumeratingWithState:&v102 objects:v108 count:16];
        }

        while (v27);
      }

      v38 = [v26 count];
      v21 = v85;
      if (v38 != [v90 count] || (objc_msgSend(v85, "setCertificates:", v90) & 1) == 0)
      {
        payload = v87;
        type = v81;
        v19 = v83;
        v17 = v84;
        v55 = selfCopy;
        if (errorCopy2)
        {
          v56 = MCRelayErrorDomain;
          v57 = MCErrorArray();
          *errorCopy2 = [NSError MCErrorWithDomain:v56 code:61001 descriptionArray:v57 errorType:MCErrorTypeFatal, 0];
        }

        [v84 unlockConfigurations];
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        displayName = v88;
        v58 = [displayName countByEnumeratingWithState:&v98 objects:v107 count:16];
        if (!v58)
        {
          LOBYTE(error) = 0;
          goto LABEL_74;
        }

        v59 = v58;
        v60 = *v99;
        do
        {
          for (j = 0; j != v59; j = j + 1)
          {
            if (*v99 != v60)
            {
              objc_enumerationMutation(displayName);
            }

            v62 = *(*(&v98 + 1) + 8 * j);
            uUID2 = [v87 UUID];
            [(MCNewPayloadHandler *)v55 _releaseDependencyBetweenPersistentID:v62 andUUID:uUID2];
          }

          v59 = [displayName countByEnumeratingWithState:&v98 objects:v107 count:16];
        }

        while (v59);
        LOBYTE(error) = 0;
LABEL_73:
        v19 = v83;
        v17 = v84;
        goto LABEL_74;
      }

      payload = v87;
      type = v81;
      v19 = v83;
      v17 = v84;
      self = selfCopy;
      error = errorCopy2;
    }

    uUID3 = [payload UUID];
    organization = [payload organization];
    [v21 setPayloadInfoCommon:uUID3 payloadOrganization:organization];

    relayUUID2 = [payload relayUUID];
    if (relayUUID2)
    {
      v42 = relayUUID2;
      relayUUID3 = [payload relayUUID];
      v44 = [v21 setPerAppUUID:relayUUID3 andSafariDomains:0];

      if ((v44 & 1) == 0)
      {
        v69 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Could not configure relay UUID", buf, 2u);
        }

        if (!error)
        {
          goto LABEL_76;
        }

        v70 = MCRelayErrorDomain;
        payload2 = [(MCNewPayloadHandler *)self payload];
        displayName = [payload2 displayName];
        v71 = MCErrorArray();
        *error = [NSError MCErrorWithDomain:v70 code:61002 descriptionArray:v71 errorType:MCErrorTypeFatal, displayName, 0];

        LOBYTE(error) = 0;
LABEL_75:

        v21 = v85;
LABEL_76:

LABEL_77:
        optionsCopy = v86;
LABEL_78:

        goto LABEL_79;
      }
    }

    if (([v21 setRestrictDomains:{objc_msgSend(payload, "restrictDomains")}] & 1) == 0)
    {
      v64 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Could not set relay domain restrictions", buf, 2u);
      }

      v65 = MCRelayErrorDomain;
      payload2 = [(MCNewPayloadHandler *)self payload];
      displayName = [payload2 displayName];
      v67 = MCErrorArray();
      v68 = [NSError MCErrorWithDomain:v65 code:61002 descriptionArray:v67 errorType:MCErrorTypeFatal, displayName, 0];
      LOBYTE(error) = v68 != 0;

      goto LABEL_75;
    }

    v45 = objc_alloc_init(NSMutableDictionary);
    uUID4 = [(MCProfile *)self->_profile UUID];

    if (uUID4)
    {
      uUID5 = [(MCProfile *)self->_profile UUID];
      [v45 setObject:uUID5 forKeyedSubscript:kMCPayloadUUIDKey];
    }

    v90 = v45;
    identifier = [(MCProfile *)self->_profile identifier];

    if (identifier)
    {
      identifier2 = [(MCProfile *)self->_profile identifier];
      [v45 setObject:identifier2 forKeyedSubscript:kMCPayloadIdentifierKey];
    }

    errorCopy3 = error;
    if (v86)
    {
      [v45 addEntriesFromDictionary:?];
    }

    [v21 setProfileInfo:v45];
    [v17 updateDefaultAfterAddingConfiguration];
    getConfigurationIdentifier = [v21 getConfigurationIdentifier];
    [payload setPersistentResourceID:getConfigurationIdentifier];

    v96 = 0;
    LOBYTE(error) = [v17 saveIngestedConfiguration:&v96];
    displayName = v96;
    if (error)
    {
      [v17 unlockConfigurations];
LABEL_74:
      payload2 = v90;
      goto LABEL_75;
    }

    v82 = type;
    v83 = v19;
    if (errorCopy3)
    {
      *errorCopy3 = [objc_opt_class() internalErrorWithUnderlyingError:displayName];
    }

    v84 = v17;
    [v17 unlockConfigurations];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v72 = v88;
    v73 = [v72 countByEnumeratingWithState:&v92 objects:v106 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *v93;
      do
      {
        for (k = 0; k != v74; k = k + 1)
        {
          if (*v93 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = *(*(&v92 + 1) + 8 * k);
          uUID6 = [payload UUID];
          [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v77 andUUID:uUID6];
        }

        v74 = [v72 countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v74);
    }

    type = v82;
    goto LABEL_73;
  }

  if (error)
  {
    v15 = MCRelayErrorDomain;
    v16 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v15 code:61003 descriptionArray:v16 errorType:MCErrorTypeFatal, 0];

    LOBYTE(error) = 0;
  }

LABEL_79:

  return error;
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
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Relay remove failed: empty configuration id", buf, 2u);
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
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Relay: Failed to get the identity for UUID %{public}@: %{public}@", buf, 0x16u);
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
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Relay identity, storing with accessibility %@", buf, 0xCu);
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