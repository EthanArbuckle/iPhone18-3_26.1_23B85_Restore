@interface MCRelayPayloadHandler
+ (id)internalErrorWithUnderlyingError:(id)a3;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (MCRelayPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4;
- (id)_copyCertificateWithPayloadUUID:(id)a3 intoKeychainAccessGroup:(id)a4;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCRelayPayloadHandler

- (MCRelayPayloadHandler)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MCRelayPayloadHandler;
  v7 = [(MCNewPayloadHandler *)&v11 initWithPayload:a3 profileHandler:v6];
  if (v7)
  {
    v8 = [v6 profile];
    profile = v7->_profile;
    v7->_profile = v8;
  }

  return v7;
}

+ (id)internalErrorWithUnderlyingError:(id)a3
{
  v3 = MCRelayErrorDomain;
  v4 = a3;
  v5 = MCErrorArray();
  v6 = [NSError MCErrorWithDomain:v3 code:61000 descriptionArray:v5 underlyingError:v4 errorType:MCErrorTypeFatal, 0];

  return v6;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v9 = a4;
  v10 = [(MCNewPayloadHandler *)self payload];
  v11 = [v10 type];
  v88 = objc_alloc_init(NSMutableArray);
  v12 = [v10 relayUUID];
  if (v12)
  {

    goto LABEL_6;
  }

  v13 = +[MDMConfiguration sharedConfiguration];
  v14 = [v13 isUserEnrollment];

  if (!v14)
  {
LABEL_6:
    v17 = MCNEProfileIngestionHandlerClassForPayload();
    if (!v17)
    {
      sub_1000C26CC(a2, self);
    }

    if (([v17 lockConfigurations] & 1) == 0)
    {
      if (a6)
      {
        v53 = [objc_opt_class() internalError];
        v54 = a6;
        LOBYTE(a6) = 0;
        *v54 = v53;
      }

      goto LABEL_78;
    }

    v86 = v9;
    [v17 loadConfigurationsForceReloadFromDisk];
    v18 = [v10 configurationDictionary];
    v19 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:v18];

    if (!v19)
    {
      sub_1000C2748(a2, self);
    }

    [v17 createConfigurationFromPayload:v19 payloadType:v11];
    v20 = [v17 ingestedConfiguration];
    v21 = v20;
    if (!v20)
    {
      if (a6)
      {
        *a6 = [objc_opt_class() internalError];
      }

      [v17 unlockConfigurations];
      LOBYTE(a6) = 0;
      goto LABEL_77;
    }

    v22 = [v20 getPendingCertificateInfo:v19];
    v85 = v21;
    v91 = v22;
    if (v22)
    {
      v23 = v22;
      v80 = a6;
      v81 = v11;
      v24 = self;
      v83 = v19;
      v84 = v17;
      v87 = v10;
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
              v34 = [(MCRelayPayloadHandler *)v24 _copyCertificateWithPayloadUUID:v32 intoKeychainAccessGroup:v33];
              if (!v34)
              {
                goto LABEL_24;
              }

              v35 = v34;
              v36 = [v87 UUID];
              [(MCNewPayloadHandler *)v24 _retainDependencyBetweenPersistentID:v35 andUUID:v36];

              v26 = v91;
              [v88 addObject:v35];
LABEL_23:
              [v90 setObject:v35 forKey:v30];

              goto LABEL_24;
            }

            if (v32)
            {
              v37 = [(MCNewPayloadHandler *)v24 profileHandler];
              v35 = [v37 persistentIDForCertificateUUID:v32];

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
        v10 = v87;
        v11 = v81;
        v19 = v83;
        v17 = v84;
        v55 = v24;
        if (v80)
        {
          v56 = MCRelayErrorDomain;
          v57 = MCErrorArray();
          *v80 = [NSError MCErrorWithDomain:v56 code:61001 descriptionArray:v57 errorType:MCErrorTypeFatal, 0];
        }

        [v84 unlockConfigurations];
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v52 = v88;
        v58 = [v52 countByEnumeratingWithState:&v98 objects:v107 count:16];
        if (!v58)
        {
          LOBYTE(a6) = 0;
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
              objc_enumerationMutation(v52);
            }

            v62 = *(*(&v98 + 1) + 8 * j);
            v63 = [v87 UUID];
            [(MCNewPayloadHandler *)v55 _releaseDependencyBetweenPersistentID:v62 andUUID:v63];
          }

          v59 = [v52 countByEnumeratingWithState:&v98 objects:v107 count:16];
        }

        while (v59);
        LOBYTE(a6) = 0;
LABEL_73:
        v19 = v83;
        v17 = v84;
        goto LABEL_74;
      }

      v10 = v87;
      v11 = v81;
      v19 = v83;
      v17 = v84;
      self = v24;
      a6 = v80;
    }

    v39 = [v10 UUID];
    v40 = [v10 organization];
    [v21 setPayloadInfoCommon:v39 payloadOrganization:v40];

    v41 = [v10 relayUUID];
    if (v41)
    {
      v42 = v41;
      v43 = [v10 relayUUID];
      v44 = [v21 setPerAppUUID:v43 andSafariDomains:0];

      if ((v44 & 1) == 0)
      {
        v69 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Could not configure relay UUID", buf, 2u);
        }

        if (!a6)
        {
          goto LABEL_76;
        }

        v70 = MCRelayErrorDomain;
        v66 = [(MCNewPayloadHandler *)self payload];
        v52 = [v66 displayName];
        v71 = MCErrorArray();
        *a6 = [NSError MCErrorWithDomain:v70 code:61002 descriptionArray:v71 errorType:MCErrorTypeFatal, v52, 0];

        LOBYTE(a6) = 0;
LABEL_75:

        v21 = v85;
LABEL_76:

LABEL_77:
        v9 = v86;
LABEL_78:

        goto LABEL_79;
      }
    }

    if (([v21 setRestrictDomains:{objc_msgSend(v10, "restrictDomains")}] & 1) == 0)
    {
      v64 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Could not set relay domain restrictions", buf, 2u);
      }

      v65 = MCRelayErrorDomain;
      v66 = [(MCNewPayloadHandler *)self payload];
      v52 = [v66 displayName];
      v67 = MCErrorArray();
      v68 = [NSError MCErrorWithDomain:v65 code:61002 descriptionArray:v67 errorType:MCErrorTypeFatal, v52, 0];
      LOBYTE(a6) = v68 != 0;

      goto LABEL_75;
    }

    v45 = objc_alloc_init(NSMutableDictionary);
    v46 = [(MCProfile *)self->_profile UUID];

    if (v46)
    {
      v47 = [(MCProfile *)self->_profile UUID];
      [v45 setObject:v47 forKeyedSubscript:kMCPayloadUUIDKey];
    }

    v90 = v45;
    v48 = [(MCProfile *)self->_profile identifier];

    if (v48)
    {
      v49 = [(MCProfile *)self->_profile identifier];
      [v45 setObject:v49 forKeyedSubscript:kMCPayloadIdentifierKey];
    }

    v50 = a6;
    if (v86)
    {
      [v45 addEntriesFromDictionary:?];
    }

    [v21 setProfileInfo:v45];
    [v17 updateDefaultAfterAddingConfiguration];
    v51 = [v21 getConfigurationIdentifier];
    [v10 setPersistentResourceID:v51];

    v96 = 0;
    LOBYTE(a6) = [v17 saveIngestedConfiguration:&v96];
    v52 = v96;
    if (a6)
    {
      [v17 unlockConfigurations];
LABEL_74:
      v66 = v90;
      goto LABEL_75;
    }

    v82 = v11;
    v83 = v19;
    if (v50)
    {
      *v50 = [objc_opt_class() internalErrorWithUnderlyingError:v52];
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
          v78 = [v10 UUID];
          [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v77 andUUID:v78];
        }

        v74 = [v72 countByEnumeratingWithState:&v92 objects:v106 count:16];
      }

      while (v74);
    }

    v11 = v82;
    goto LABEL_73;
  }

  if (a6)
  {
    v15 = MCRelayErrorDomain;
    v16 = MCErrorArray();
    *a6 = [NSError MCErrorWithDomain:v15 code:61003 descriptionArray:v16 errorType:MCErrorTypeFatal, 0];

    LOBYTE(a6) = 0;
  }

LABEL_79:

  return a6;
}

- (void)setAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    v6 = [(MCNewPayloadHandler *)self payload];
    v7 = [v6 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:v7 unsetAside:0];

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
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 type];
  v5 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v5 lockConfigurations])
  {
    [v5 loadConfigurationsForceReloadFromDisk];
    v6 = [(MCNewPayloadHandler *)self payload];
    v7 = [v6 persistentResourceID];
    v8 = [v5 setAsideConfigurationName:v7 unsetAside:0];

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
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 persistentResourceID];

  v5 = [(MCNewPayloadHandler *)self payload];
  v6 = [v5 type];
  v7 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v7 lockConfigurations])
  {
    [v7 loadConfigurationsForceReloadFromDisk];
    if (v4)
    {
      [v7 removeConfigurationWithIdentifier:v4];
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

- (id)_copyCertificateWithPayloadUUID:(id)a3 intoKeychainAccessGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCNewPayloadHandler *)self profileHandler];
  v9 = [v8 payloadHandlerWithUUID:v6];

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
      v25 = v6;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Relay: Failed to get the identity for UUID %{public}@: %{public}@", buf, 0x16u);
    }

    if (v10)
    {
LABEL_7:
      v13 = [v9 accessibility];
      v14 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Relay identity, storing with accessibility %@", buf, 0xCu);
      }

      v15 = [@"NE:" stringByAppendingString:v6];
      v16 = [(MCNewPayloadHandler *)self profileHandler];
      v17 = [v16 profile];
      v7 = v22;
      v18 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:accessibility:", v10, v15, v22, [v17 isInstalledForSystem], v13);

      if (v18)
      {
        v19 = [(MCNewPayloadHandler *)self payload];
        v20 = [v19 UUID];
        [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v18 andUUID:v20];

        v7 = v22;
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