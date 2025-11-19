@interface MCVPNPayloadHandlerBase
+ (id)managedServiceIDs;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (BOOL)isInstalled;
- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4;
- (MCVPNPayloadHandlerBase)initWithPayload:(id)a3 profileHandler:(id)a4;
- (id)PPTPDeprecatedError;
- (id)_copyCertificateWithPayloadUUID:(id)a3 intoKeychainAccessGroup:(id)a4 personaID:(id)a5;
- (id)cannotInstallErrorWithUnderlyingError:(id)a3;
- (id)userInputFields;
- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCVPNPayloadHandlerBase

- (MCVPNPayloadHandlerBase)initWithPayload:(id)a3 profileHandler:(id)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = MCVPNPayloadHandlerBase;
  v7 = [(MCNewPayloadHandler *)&v17 initWithPayload:v6 profileHandler:a4];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v6 vpnType];
  v9 = [v8 isEqualToString:kMCVPNPayloadBaseVPNTypeAlwaysOn];

  if (v9)
  {
    v10 = MCNEProfileIngestionHandlerClassForPayload();
    neProfileIngestionHandler = v7->_neProfileIngestionHandler;
    v7->_neProfileIngestionHandler = v10;
  }

  else
  {
    neProfileIngestionHandler = [(MCNewPayloadHandler *)v7 payload];
    v12 = [neProfileIngestionHandler type];
    v13 = MCNEProfileIngestionHandlerClassForPayload();
    v14 = v7->_neProfileIngestionHandler;
    v7->_neProfileIngestionHandler = v13;
  }

  if (!v7->_neProfileIngestionHandler)
  {
    v15 = 0;
  }

  else
  {
LABEL_6:
    v15 = v7;
  }

  return v15;
}

- (id)userInputFields
{
  v3 = +[NSMutableArray array];
  v4 = [(MCNewPayloadHandler *)self payload];
  v5 = [v4 nePayloadBase];
  v6 = [v5 getPreprocessedPayloadContents];
  v7 = [v6 objectForKeyedSubscript:@"AuthName"];
  if (!v7)
  {
    v8 = [v6 objectForKeyedSubscript:@"AuthNameRequired"];

    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = MCLocalizedString();
    v9 = [v4 displayName];
    v10 = MCLocalizedFormat();
    v11 = [MCNewPayloadHandler promptDictionaryForKey:@"kVPNUserInputUserName" title:v7 description:v10 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:&_mh_execute_header flags:?];
    [v3 addObject:v11];
  }

LABEL_5:
  v12 = [v6 objectForKeyedSubscript:@"AuthPassword"];
  if (!v12)
  {
    v13 = [v6 objectForKeyedSubscript:@"AuthPasswordRequired"];

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [v6 objectForKeyedSubscript:@"AuthName"];

    if (v14)
    {
      [v6 objectForKeyedSubscript:@"AuthName"];
    }

    else
    {
      [v4 displayName];
    }
    v15 = ;
    v12 = MCLocalizedFormat();

    v16 = MCLocalizedString();
    v17 = [MCNewPayloadHandler promptDictionaryForKey:@"kVPNUserInputPassword" title:v16 description:v12 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0x100000003 flags:?];
    [v3 addObject:v17];
  }

LABEL_12:
  v18 = [v6 objectForKeyedSubscript:@"HTTPProxyUsername"];
  if (!v18)
  {
    v19 = [v6 objectForKeyedSubscript:@"HTTPProxyUsernameRequired"];

    if (!v19)
    {
      goto LABEL_16;
    }

    v18 = MCLocalizedString();
    v20 = [v4 displayName];
    v21 = MCLocalizedFormat();
    v22 = [MCNewPayloadHandler promptDictionaryForKey:@"kVPNUserInputProxyUserName" title:v18 description:v21 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:&_mh_execute_header flags:?];
    [v3 addObject:v22];
  }

LABEL_16:
  v23 = [v6 objectForKeyedSubscript:@"HTTPProxyPassword"];
  if (!v23)
  {
    v24 = [v6 objectForKeyedSubscript:@"HTTPProxyPassword"];

    if (!v24)
    {
      goto LABEL_23;
    }

    v25 = [v6 objectForKeyedSubscript:@"HTTPProxyPassword"];

    if (v25)
    {
      [v6 objectForKeyedSubscript:@"AuthName"];
    }

    else
    {
      [v4 displayName];
    }
    v26 = ;
    v23 = MCLocalizedFormat();

    v27 = MCLocalizedString();
    v28 = [MCNewPayloadHandler promptDictionaryForKey:@"kVPNUserInputProxyPassword" title:v27 description:v23 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0x100000003 flags:?];
    [v3 addObject:v28];
  }

LABEL_23:
  v29 = [v6 objectForKeyedSubscript:@"SharedSecret"];
  if (!v29)
  {
    v30 = [v6 objectForKeyedSubscript:@"SharedSecretRequired"];

    if (!v30)
    {
      goto LABEL_27;
    }

    v29 = MCLocalizedString();
    v31 = [v4 displayName];
    v32 = MCLocalizedFormat();
    v33 = [MCNewPayloadHandler promptDictionaryForKey:@"kVPNUserInputSharedSecret" title:v29 description:v32 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0x100000003 flags:?];
    [v3 addObject:v33];
  }

LABEL_27:
  v34 = [v6 objectForKeyedSubscript:@"PromptForVPNPIN"];
  if (!v34)
  {
    v35 = [v6 objectForKeyedSubscript:@"PromptForVPNPINRequired"];

    if (!v35)
    {
      goto LABEL_31;
    }

    v34 = MCLocalizedString();
    v36 = [v4 displayName];
    v37 = MCLocalizedFormat();
    v38 = [MCNewPayloadHandler promptDictionaryForKey:@"kVPNUserInputPIN" title:v34 description:v37 retypeDescription:0 finePrint:0 defaultValue:0 placeholderValue:0 minimumLength:0 fieldType:0x100000003 flags:?];
    [v3 addObject:v38];
  }

LABEL_31:

  return v3;
}

- (BOOL)preflightUserInputResponses:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [(MCNewPayloadHandler *)self payload];
  v7 = objc_alloc_init(NSMutableDictionary);
  v25 = v6;
  v24 = [v6 nePayloadBase];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    v12 = kMCIDUUIDKey;
    v13 = kMCIDResponseKey;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = [v15 objectForKey:{v12, v24}];
        v17 = [v15 objectForKey:v13];
        if ([v16 isEqualToString:@"kVPNUserInputUserName"])
        {
          v18 = v7;
          v19 = v17;
          v20 = @"AuthName";
LABEL_18:
          [v18 setValue:v19 forKey:v20];
          goto LABEL_19;
        }

        if ([v16 isEqualToString:@"kVPNUserInputPassword"])
        {
          v18 = v7;
          v19 = v17;
          v20 = @"AuthPassword";
          goto LABEL_18;
        }

        if ([v16 isEqualToString:@"kVPNUserInputProxyUserName"])
        {
          v18 = v7;
          v19 = v17;
          v20 = @"HTTPProxyUsername";
          goto LABEL_18;
        }

        if ([v16 isEqualToString:@"kVPNUserInputProxyPassword"])
        {
          v18 = v7;
          v19 = v17;
          v20 = @"HTTPProxyPassword";
          goto LABEL_18;
        }

        if ([v16 isEqualToString:@"kVPNUserInputSharedSecret"])
        {
          v18 = v7;
          v19 = v17;
          v20 = @"SharedSecret";
          goto LABEL_18;
        }

        if ([v16 isEqualToString:@"kVPNUserInputPIN"])
        {
          v18 = v7;
          v19 = v17;
          v20 = @"PromptForVPNPIN";
          goto LABEL_18;
        }

        log = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
        {
          loga = log;
          v21 = objc_opt_class();
          *buf = 138543618;
          v34 = v21;
          v35 = 2114;
          v36 = v16;
          v26 = v21;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%{public}@ didn't ask for user input for key %{public}@", buf, 0x16u);
        }

LABEL_19:

        v14 = v14 + 1;
      }

      while (v10 != v14);
      v22 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v10 = v22;
    }

    while (v22);
  }

  [v24 setPostprocessedPayloadContents:v7];
  return 1;
}

- (id)PPTPDeprecatedError
{
  v2 = MCVPNErrorDomain;
  v3 = MCErrorArray();
  v4 = [NSError MCErrorWithDomain:v2 code:15000 descriptionArray:v3 errorType:MCErrorTypeFatal, 0];

  return v4;
}

- (id)cannotInstallErrorWithUnderlyingError:(id)a3
{
  v4 = MCVPNErrorDomain;
  v5 = a3;
  v6 = [(MCNewPayloadHandler *)self payload];
  v7 = [v6 displayName];
  v8 = MCErrorArray();
  v9 = [NSError MCErrorWithDomain:v4 code:15000 descriptionArray:v8 underlyingError:v5 errorType:MCErrorTypeFatal, v7, 0];

  return v9;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v79 = a3;
  v83 = a4;
  v80 = a5;
  v9 = [(MCNewPayloadHandler *)self payload];
  v81 = [v9 nePayloadBase];
  v84 = objc_alloc_init(NSMutableArray);
  v10 = [v83 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledInteractively];
  LOBYTE(a4) = [v10 BOOLValue];

  if ((a4 & 1) == 0)
  {
    v11 = [v9 vpnType];
    v12 = [v11 isEqualToString:kMCVPNPayloadBaseVPNTypePPTP];

    if (v12)
    {
      v13 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PPTP is deprecated starting from iOS 10 and valid configurations can not be created.", &buf, 2u);
      }

      v14 = [(MCVPNPayloadHandlerBase *)self PPTPDeprecatedError];
      v82 = 0;
      goto LABEL_49;
    }
  }

  if (([(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler lockConfigurations]& 1) == 0)
  {
    v23 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", &buf, 2u);
    }

    goto LABEL_16;
  }

  [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler loadConfigurationsForceReloadFromDisk];
  v15 = [v9 vpnType];
  v16 = [v15 isEqualToString:kMCVPNPayloadBaseVPNTypeAlwaysOn];

  neProfileIngestionHandler = self->_neProfileIngestionHandler;
  if (v16)
  {
    if (([(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler createConfigurationFromPayload:v81 payloadType:@"com.apple.vpn.managed.alwayson"]& 1) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v24 = [(MCNewPayloadHandler *)self payload];
  v25 = [v24 type];
  v26 = [(NEProfileIngestionDelegate *)neProfileIngestionHandler createConfigurationFromPayload:v81 payloadType:v25];

  if ((v26 & 1) == 0)
  {
LABEL_18:
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      v29 = [(MCNewPayloadHandler *)self payload];
      v30 = [v29 UUID];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v30;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "NetworkExtension did not create configuration from payload UUID %{public}@", &buf, 0xCu);
    }

LABEL_16:
    v14 = [(MCVPNPayloadHandlerBase *)self cannotInstallError];
    v82 = 0;
    goto LABEL_49;
  }

LABEL_9:
  v82 = [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler ingestedConfiguration];
  if (!v82)
  {
    v31 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [(MCNewPayloadHandler *)self payload];
      v34 = [v33 UUID];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "NetworkExtension decided to skip installation of payload UUID %{public}@", &buf, 0xCu);
    }

    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler unlockConfigurations];
    v14 = 0;
    v82 = 0;
    goto LABEL_60;
  }

  v18 = [v9 nePayloadBase];
  v88 = [v82 getPendingCertificateInfo:v18];

  if (v88)
  {
    v19 = [v83 objectForKeyedSubscript:kMCInstallProfileOptionIsInstalledByMDM];
    v20 = [v19 BOOLValue];

    if (v20)
    {
      v21 = kMDMPersonaKey;
      v22 = [v83 objectForKeyedSubscript:kMDMPersonaKey];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v89 = [v83 objectForKeyedSubscript:v21];
      }

      else
      {
        v89 = 0;
      }
    }

    else
    {
      v89 = 0;
    }

    v86 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v88, "count")}];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    obj = [v88 allKeys];
    v35 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
    if (v35)
    {
      v87 = *v101;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v101 != v87)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v100 + 1) + 8 * i);
          *&buf = 0;
          *(&buf + 1) = &buf;
          v106 = 0x3032000000;
          v107 = sub_100097980;
          v108 = sub_100097990;
          v109 = 0;
          v38 = [v88 objectForKeyedSubscript:v37];
          v39 = [v38 objectForKeyedSubscript:@"PayloadUUID"];
          v40 = [v38 objectForKeyedSubscript:@"AccessGroup"];
          if (v40)
          {
            if ([v89 length])
            {
              v95[0] = _NSConcreteStackBlock;
              v95[1] = 3221225472;
              v95[2] = sub_100097998;
              v95[3] = &unk_10011CF68;
              p_buf = &buf;
              v95[4] = self;
              v96 = v39;
              v97 = v40;
              v98 = v89;
              v41 = [DMCPersonaHelper performBlockUnderPersona:v98 block:v95];
            }

            else
            {
              v45 = [(MCVPNPayloadHandlerBase *)self _copyCertificateWithPayloadUUID:v39 intoKeychainAccessGroup:v40 personaID:0];
              v46 = *(*(&buf + 1) + 40);
              *(*(&buf + 1) + 40) = v45;
            }

            v47 = *(*(&buf + 1) + 40);
            if (v47)
            {
              v48 = [v9 UUID];
              [(MCNewPayloadHandler *)self _retainDependencyBetweenPersistentID:v47 andUUID:v48 forSystem:1 user:0 personaID:v89];

              [v84 addObject:*(*(&buf + 1) + 40)];
            }
          }

          else
          {
            v42 = [(MCNewPayloadHandler *)self profileHandler];
            v43 = [v42 persistentIDForCertificateUUID:v39];
            v44 = *(*(&buf + 1) + 40);
            *(*(&buf + 1) + 40) = v43;
          }

          v49 = *(*(&buf + 1) + 40);
          if (v49)
          {
            [v86 setObject:v49 forKey:v37];
          }

          _Block_object_dispose(&buf, 8);
        }

        v35 = [obj countByEnumeratingWithState:&v100 objects:v110 count:16];
      }

      while (v35);
    }

    v50 = [v88 count];
    if (v50 != [v86 count] || !objc_msgSend(v82, "setCertificates:", v86))
    {
      v51 = [(MCNewPayloadHandler *)self payload];
      v52 = [v51 displayName];
      v53 = MCErrorArray();
      v14 = [NSError MCErrorWithDomain:MCVPNErrorDomain code:15003 descriptionArray:v53 errorType:MCErrorTypeFatal, v52, 0];

      goto LABEL_49;
    }
  }

  v14 = [(MCVPNPayloadHandlerBase *)self installService:v82];
  if (!v14)
  {
    [v82 setPayloadInfoIdentity:v81];
    v63 = [v9 UUID];
    v64 = [v9 organization];
    [v82 setPayloadInfoCommon:v63 payloadOrganization:v64];

    v65 = [(MCNewPayloadHandler *)self profileHandler];
    v66 = [v65 profile];

    if (v66)
    {
      v67 = objc_alloc_init(NSMutableDictionary);
      v68 = [v66 UUID];
      v69 = v68 == 0;

      if (!v69)
      {
        v70 = [v66 UUID];
        [v67 setObject:v70 forKeyedSubscript:kMCPayloadUUIDKey];
      }

      v71 = [v66 identifier];
      v72 = v71 == 0;

      if (!v72)
      {
        v73 = [v66 identifier];
        [v67 setObject:v73 forKeyedSubscript:kMCPayloadIdentifierKey];
      }

      if (v83)
      {
        [v67 addEntriesFromDictionary:v83];
      }

      [v82 setProfileInfo:v67];
    }

    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler updateDefaultAfterAddingConfiguration];
    v74 = [v82 getConfigurationIdentifier];
    [v9 setPersistentResourceID:v74];

    v75 = self->_neProfileIngestionHandler;
    v94 = 0;
    v76 = [(NEProfileIngestionDelegate *)v75 saveIngestedConfiguration:&v94];
    v14 = v94;
    if ((v76 & 1) == 0)
    {
      v77 = [(MCVPNPayloadHandlerBase *)self cannotInstallErrorWithUnderlyingError:v14];

      v14 = v77;
    }

LABEL_49:
    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler unlockConfigurations];
    if (v14)
    {
      goto LABEL_50;
    }

LABEL_60:
    v61 = 1;
    goto LABEL_61;
  }

  [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler unlockConfigurations];
LABEL_50:
  if (a6)
  {
    v54 = v14;
    *a6 = v14;
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v55 = v84;
  v56 = [v55 countByEnumeratingWithState:&v90 objects:v104 count:16];
  if (v56)
  {
    v57 = *v91;
    do
    {
      for (j = 0; j != v56; j = j + 1)
      {
        if (*v91 != v57)
        {
          objc_enumerationMutation(v55);
        }

        v59 = *(*(&v90 + 1) + 8 * j);
        v60 = [v9 UUID];
        [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v59 andUUID:v60];
      }

      v56 = [v55 countByEnumeratingWithState:&v90 objects:v104 count:16];
    }

    while (v56);
  }

  v61 = 0;
LABEL_61:

  return v61;
}

- (BOOL)isInstalled
{
  [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler loadConfigurationsForceReloadFromDisk];
  v3 = [(MCNewPayloadHandler *)self payload];
  neProfileIngestionHandler = self->_neProfileIngestionHandler;
  v5 = [v3 UUID];
  LOBYTE(neProfileIngestionHandler) = [(NEProfileIngestionDelegate *)neProfileIngestionHandler isInstalled:v5];

  return neProfileIngestionHandler;
}

- (void)remove
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = [(MCNewPayloadHandler *)self payload];
    v6 = [v5 UUID];
    v7 = [(MCNewPayloadHandler *)self payload];
    v8 = [v7 persistentResourceID];
    v9 = [(MCNewPayloadHandler *)self payload];
    *buf = 138543874;
    v31 = v6;
    v32 = 2114;
    v33 = v8;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Attempting to remove VPN payload (%{public}@, %{public}@): %{public}@", buf, 0x20u);
  }

  v10 = [(MCNewPayloadHandler *)self payload];
  if (([(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler lockConfigurations]& 1) != 0)
  {
    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler loadConfigurationsForceReloadFromDisk];
    v11 = [v10 persistentResourceID];

    if (v11)
    {
      neProfileIngestionHandler = self->_neProfileIngestionHandler;
      v13 = [v10 persistentResourceID];
      v14 = [(NEProfileIngestionDelegate *)neProfileIngestionHandler getCertificatesForConfigurationWithIdentifier:v13];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v25 + 1) + 8 * v19);
            v21 = [v10 UUID];
            [(MCNewPayloadHandler *)self _releaseDependencyBetweenPersistentID:v20 andUUID:v21];

            v19 = v19 + 1;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v17);
      }

      v22 = self->_neProfileIngestionHandler;
      v23 = [v10 persistentResourceID];
      [(NEProfileIngestionDelegate *)v22 removeConfigurationWithIdentifier:v23];
    }

    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler updateDefaultAfterDeletingConfiguration];
    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler unlockConfigurations];
  }

  else
  {
    v24 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock. Skipping removal.", buf, 2u);
    }
  }
}

- (void)setAside
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = [(MCNewPayloadHandler *)self payload];
    v6 = [v5 UUID];
    v7 = [(MCNewPayloadHandler *)self payload];
    v8 = [v7 persistentResourceID];
    v9 = [(MCNewPayloadHandler *)self payload];
    v15 = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Setting aside VPN payload (%{public}@, %{public}@): %{public}@", &v15, 0x20u);
  }

  v10 = [(MCNewPayloadHandler *)self payload];
  if (([(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler lockConfigurations]& 1) != 0)
  {
    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler loadConfigurationsForceReloadFromDisk];
    neProfileIngestionHandler = self->_neProfileIngestionHandler;
    v12 = [v10 persistentResourceID];
    v13 = [(NEProfileIngestionDelegate *)neProfileIngestionHandler setAsideConfigurationName:v12 unsetAside:0];

    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler unlockConfigurations];
  }

  else
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", &v15, 2u);
    }
  }
}

- (void)unsetAside
{
  v3 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = [(MCNewPayloadHandler *)self payload];
    v6 = [v5 UUID];
    v7 = [(MCNewPayloadHandler *)self payload];
    v8 = [v7 persistentResourceID];
    v9 = [(MCNewPayloadHandler *)self payload];
    v15 = 138543874;
    v16 = v6;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Unsetting aside VPN payload (%{public}@, %{public}@): %{public}@", &v15, 0x20u);
  }

  v10 = [(MCNewPayloadHandler *)self payload];
  if (([(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler lockConfigurations]& 1) != 0)
  {
    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler loadConfigurationsForceReloadFromDisk];
    neProfileIngestionHandler = self->_neProfileIngestionHandler;
    v12 = [v10 persistentResourceID];
    v13 = [(NEProfileIngestionDelegate *)neProfileIngestionHandler setAsideConfigurationName:v12 unsetAside:1];

    [(NEProfileIngestionDelegate *)self->_neProfileIngestionHandler unlockConfigurations];
  }

  else
  {
    v14 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", &v15, 2u);
    }
  }
}

- (void)didInstallOldGlobalRestrictions:(id)a3 newGlobalRestrictions:(id)a4
{
  v5 = [(MCNewPayloadHandler *)self payload:a3];
  v6 = [v5 vpnType];
  v7 = [v6 isEqualToString:kMCVPNPayloadBaseVPNTypeAlwaysOn];

  if (v7)
  {
    v8 = [(MCVPNPayloadHandlerBase *)self neProfileIngestionHandler];
    [v8 enableAlwaysOnVpn];
  }
}

+ (id)managedServiceIDs
{
  v2 = MCNEProfileIngestionHandlerClassForPayload();
  v3 = v2;
  if (v2)
  {
    [v2 loadConfigurationsForceReloadFromDisk];
    v4 = [v3 copyManagedConfigurationIDs];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  return v4;
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
    v27 = 0;
    v13 = [v12 copyIdentityImmediatelyWithInteractionClient:0 outError:&v27];
    v14 = v27;
    if (!v14 && v13)
    {
      goto LABEL_7;
    }

    v15 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "VPN: Failed to get the identity for UUID %{public}@: %{public}@", buf, 0x16u);
    }

    if (v13)
    {
LABEL_7:
      v25 = v14;
      v26 = v10;
      v16 = v9;
      v17 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v29 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Storing VPN identity, storing with accessibility %@", buf, 0xCu);
      }

      v18 = [@"NE:" stringByAppendingString:v8];
      v19 = [(MCNewPayloadHandler *)self profileHandler];
      v20 = [v19 profile];
      v9 = v16;
      v21 = +[MCKeychain saveItem:withLabel:group:useSystemKeychain:enforcePersonalPersona:accessibility:](MCKeychain, "saveItem:withLabel:group:useSystemKeychain:enforcePersonalPersona:accessibility:", v13, v18, v16, [v20 isInstalledForSystem], 0, kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly);

      v10 = v26;
      if (v21)
      {
        v22 = [(MCNewPayloadHandler *)self payload];
        v23 = [v22 UUID];
        [(MCNewPayloadHandler *)self _touchDependencyBetweenPersistentID:v21 andUUID:v23 personaID:v26];
      }

      CFRelease(v13);
      v14 = v25;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end