@interface MCNetworkUsageRulesPayloadHandler
+ (BOOL)_rebuildWiFiAssistConfigurationIncludingPayloads:(id)payloads excludingPayloads:(id)excludingPayloads error:(id *)error;
+ (BOOL)_writeWiFiAssistConfiguration:(id)configuration withError:(id *)error;
+ (id)_WiFiAssistConfigurationForPayloads:(id)payloads includingPayloads:(id)includingPayloads excludingPayloads:(id)excludingPayloads error:(id *)error;
+ (id)internalErrorWithCode:(int)code underlyingError:(id)error;
- (BOOL)_installApplicationRulesFromPayload:(id)payload outError:(id *)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNetworkUsageRulesPayloadHandler

+ (id)internalErrorWithCode:(int)code underlyingError:(id)error
{
  v4 = MCNetworkUsageRulesErrorDomain;
  codeCopy = code;
  errorCopy = error;
  v7 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v4 code:codeCopy descriptionArray:v7 underlyingError:errorCopy errorType:MCErrorTypeFatal, 0];

  return v8;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v8 = [(MCNewPayloadHandler *)self payload:installer];
  applicationRules = [v8 applicationRules];

  if (!applicationRules || (v29 = 0, v10 = [(MCNetworkUsageRulesPayloadHandler *)self _installApplicationRulesFromPayload:v8 outError:&v29], applicationRules = v29, v10))
  {
    sIMRules = [v8 SIMRules];

    if (sIMRules)
    {
      errorCopy = error;
      v12 = +[NSMutableArray array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = [MCProfileHandler payloadsOfClass:objc_opt_class() installedBeforePayload:v8];
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v25 + 1) + 8 * i);
            sIMRules2 = [v18 SIMRules];

            if (sIMRules2)
            {
              [v12 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v15);
      }

      [v12 addObject:v8];
      v24 = applicationRules;
      [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:v12 excludingPayloads:qword_100136A80 error:&v24];
      v20 = v24;

      applicationRules = v20;
      error = errorCopy;
    }
  }

  if (error && applicationRules)
  {
    v21 = applicationRules;
    *error = applicationRules;
  }

  return applicationRules == 0;
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  applicationRules = [payload applicationRules];

  if (applicationRules)
  {
    v4 = +[MCNetworkUsageRulesPayload typeStrings];
    firstObject = [v4 firstObject];
    v6 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v6 lockConfigurations])
    {
      [v6 loadConfigurationsForceReloadFromDisk];
      persistentResourceID = [payload persistentResourceID];
      v8 = [v6 setAsideConfigurationName:persistentResourceID unsetAside:0];

      [v6 unlockConfigurations];
    }

    else
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", buf, 2u);
      }
    }
  }

  sIMRules = [payload SIMRules];

  if (sIMRules)
  {
    v11 = qword_100136A80;
    if (!qword_100136A80)
    {
      v12 = +[NSMutableArray array];
      v13 = qword_100136A80;
      qword_100136A80 = v12;

      v11 = qword_100136A80;
    }

    [v11 addObject:payload];
    v19 = 0;
    v14 = [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:0 excludingPayloads:qword_100136A80 error:&v19];
    v15 = v19;
    if ((v14 & 1) == 0)
    {
      v16 = _MCLogObjects[0];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        displayName = [payload displayName];
        uUID = displayName;
        if (!displayName)
        {
          uUID = [payload UUID];
        }

        *buf = 138543618;
        v21 = uUID;
        v22 = 2114;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to rebuild Wi-Fi Assist configuration excluding payload %{public}@: %{public}@", buf, 0x16u);
        if (!displayName)
        {
        }
      }
    }
  }
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  applicationRules = [payload applicationRules];

  if (applicationRules)
  {
    v4 = +[MCNetworkUsageRulesPayload typeStrings];
    firstObject = [v4 firstObject];
    v6 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v6 lockConfigurations])
    {
      [v6 loadConfigurationsForceReloadFromDisk];
      persistentResourceID = [payload persistentResourceID];
      v8 = [v6 setAsideConfigurationName:persistentResourceID unsetAside:1];

      [v6 unlockConfigurations];
    }

    else
    {
      v9 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", buf, 2u);
      }
    }
  }

  sIMRules = [payload SIMRules];

  if (sIMRules)
  {
    [qword_100136A80 removeObject:payload];
    v16 = 0;
    v11 = [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:0 excludingPayloads:qword_100136A80 error:&v16];
    v12 = v16;
    if ((v11 & 1) == 0)
    {
      v13 = _MCLogObjects[0];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        displayName = [payload displayName];
        uUID = displayName;
        if (!displayName)
        {
          uUID = [payload UUID];
        }

        *buf = 138543618;
        v18 = uUID;
        v19 = 2114;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to rebuild Wi-Fi Assist configuration including payload %{public}@: %{public}@", buf, 0x16u);
        if (!displayName)
        {
        }
      }
    }
  }
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  applicationRules = [payload applicationRules];

  if (applicationRules)
  {
    v5 = +[MCNetworkUsageRulesPayload typeStrings];
    firstObject = [v5 firstObject];
    v7 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v7 lockConfigurations])
    {
      [v7 loadConfigurationsForceReloadFromDisk];
      persistentResourceID = [payload persistentResourceID];

      if (persistentResourceID)
      {
        persistentResourceID2 = [payload persistentResourceID];
        [v7 removeConfigurationWithIdentifier:persistentResourceID2];
      }

      else
      {
        v11 = _MCLogObjects[0];
        if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "NetworkUsageRules remove failed: empty configuration id", buf, 2u);
        }
      }

      [v7 updateDefaultAfterDeletingConfiguration];
      [v7 unlockConfigurations];
    }

    else
    {
      v10 = _MCLogObjects[0];
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock. Skipping removal.", buf, 2u);
      }
    }
  }

  sIMRules = [payload SIMRules];

  if (sIMRules)
  {
    profileHandler = [(MCNewPayloadHandler *)self profileHandler];
    isSetAside = [profileHandler isSetAside];

    if (isSetAside)
    {
      [qword_100136A80 removeObject:payload];
    }

    else
    {
      v15 = +[NSMutableArray array];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = [MCProfileHandler payloadsOfClass:objc_opt_class() removedBeforePayload:payload];
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v29 + 1) + 8 * i);
            sIMRules2 = [v21 SIMRules];

            if (sIMRules2)
            {
              [v15 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v18);
      }

      [v15 addObject:payload];
      v28 = 0;
      v23 = [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:0 excludingPayloads:v15 error:&v28];
      v24 = v28;
      if ((v23 & 1) == 0)
      {
        v25 = _MCLogObjects[0];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          displayName = [payload displayName];
          uUID = displayName;
          if (!displayName)
          {
            uUID = [payload UUID];
          }

          *buf = 138543618;
          v34 = uUID;
          v35 = 2114;
          v36 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to rebuild Wi-Fi Assist configuration excluding payload %{public}@: %{public}@", buf, 0x16u);
          if (!displayName)
          {
          }
        }
      }
    }
  }
}

- (BOOL)_installApplicationRulesFromPayload:(id)payload outError:(id *)error
{
  payloadCopy = payload;
  v7 = +[MCNetworkUsageRulesPayload typeStrings];
  firstObject = [v7 firstObject];
  v9 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v9 lockConfigurations])
  {
    displayName = [payloadCopy displayName];
    if (!displayName)
    {
      displayName = [payloadCopy UUID];
    }

    [v9 loadConfigurationsForceReloadFromDisk];
    v35[0] = @"ApplicationRules";
    applicationRules = [payloadCopy applicationRules];
    v35[1] = @"PayloadDisplayName";
    v36[0] = applicationRules;
    v36[1] = displayName;
    v12 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    v13 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:v12];

    v14 = +[MCNetworkUsageRulesPayload typeStrings];
    firstObject2 = [v14 firstObject];
    [v9 createConfigurationFromPayload:v13 payloadType:firstObject2];

    ingestedConfiguration = [v9 ingestedConfiguration];
    if (ingestedConfiguration)
    {
      uUID = [payloadCopy UUID];
      organization = [payloadCopy organization];
      [ingestedConfiguration setPayloadInfoCommon:uUID payloadOrganization:organization];

      profileHandler = [(MCNewPayloadHandler *)self profileHandler];
      profile = [profileHandler profile];

      v33[0] = kMCPayloadUUIDKey;
      uUID2 = [profile UUID];
      v34[0] = uUID2;
      v33[1] = kMCPayloadIdentifierKey;
      identifier = [profile identifier];
      v34[1] = identifier;
      v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

      [ingestedConfiguration setProfileInfo:v23];
      [v9 updateDefaultAfterAddingConfiguration];
      getConfigurationIdentifier = [ingestedConfiguration getConfigurationIdentifier];
      [payloadCopy setPersistentResourceID:getConfigurationIdentifier];

      v31 = 0;
      LOBYTE(identifier) = [v9 saveIngestedConfiguration:&v31];
      v25 = v31;
      if ((identifier & 1) == 0)
      {
        v26 = [MCNetworkUsageRulesPayloadHandler internalErrorWithCode:41002 underlyingError:v25];

        v25 = v26;
      }
    }

    else
    {
      v25 = [MCNetworkUsageRulesPayloadHandler internalErrorWithCode:41001];
    }

    [v9 unlockConfigurations];
    v28 = v25 == 0;
    if (error && v25)
    {
      v29 = v25;
      *error = v25;
    }
  }

  else
  {
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Could not get NetworkExtension store lock.", buf, 2u);
    }

    if (error)
    {
      [MCNetworkUsageRulesPayloadHandler internalErrorWithCode:41000];
      *error = v28 = 0;
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

+ (BOOL)_rebuildWiFiAssistConfigurationIncludingPayloads:(id)payloads excludingPayloads:(id)excludingPayloads error:(id *)error
{
  payloadsCopy = payloads;
  excludingPayloadsCopy = excludingPayloads;
  v9 = +[NSMutableArray array];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = +[MCManifest sharedManifest];
  v11 = [v10 allInstalledPayloadsOfClass:objc_opt_class()];

  v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        sIMRules = [v16 SIMRules];

        if (sIMRules)
        {
          [v9 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v26 = 0;
  v18 = [self _WiFiAssistConfigurationForPayloads:v9 includingPayloads:payloadsCopy excludingPayloads:excludingPayloadsCopy error:&v26];
  v19 = v26;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
  }

  else
  {
    v25 = 0;
    v21 = [self _writeWiFiAssistConfiguration:v18 withError:&v25];
    v20 = v25;
  }

  if (error && v20)
  {
    v22 = v20;
    *error = v20;
  }

  return v21;
}

+ (id)_WiFiAssistConfigurationForPayloads:(id)payloads includingPayloads:(id)includingPayloads excludingPayloads:(id)excludingPayloads error:(id *)error
{
  payloadsCopy = payloads;
  includingPayloadsCopy = includingPayloads;
  excludingPayloadsCopy = excludingPayloads;
  if ([includingPayloadsCopy count] || objc_msgSend(excludingPayloadsCopy, "count"))
  {
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1000256AC;
    v90[3] = &unk_10011C280;
    v91 = includingPayloadsCopy;
    v92 = excludingPayloadsCopy;
    v11 = [payloadsCopy indexesOfObjectsPassingTest:v90];
    [payloadsCopy removeObjectsAtIndexes:v11];
  }

  if ([includingPayloadsCopy count])
  {
    [payloadsCopy addObjectsFromArray:includingPayloadsCopy];
  }

  v67 = includingPayloadsCopy;
  v12 = +[NSMutableSet set];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v13 = payloadsCopy;
  v55 = excludingPayloadsCopy;
  v56 = v13;
  v69 = v12;
  v52 = [v13 countByEnumeratingWithState:&v86 objects:v103 count:16];
  if (!v52)
  {
    goto LABEL_39;
  }

  v14 = *v87;
  v60 = kMCNetworkUsageRulesPayloadSIMRulesICCIDsKey;
  v59 = MCNetworkUsageRulesErrorDomain;
  v58 = MCErrorTypeFatal;
  v51 = *v87;
LABEL_8:
  v15 = 0;
  v16 = v67;
  while (1)
  {
    if (*v87 != v14)
    {
      objc_enumerationMutation(v13);
    }

    v53 = v15;
    v17 = *(*(&v86 + 1) + 8 * v15);
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = [v17 SIMRules];
    v63 = [obj countByEnumeratingWithState:&v82 objects:v102 count:16];
    if (v63)
    {
      break;
    }

LABEL_37:

    v15 = v53 + 1;
    v13 = v56;
    v14 = v51;
    if ((v53 + 1) == v52)
    {
      v52 = [v56 countByEnumeratingWithState:&v86 objects:v103 count:16];
      if (!v52)
      {
LABEL_39:

        v32 = +[NSMutableArray array];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v62 = v13;
        v66 = [v62 countByEnumeratingWithState:&v74 objects:v96 count:16];
        if (v66)
        {
          v64 = *v75;
          v33 = kMCNetworkUsageRulesPayloadSIMRulesICCIDsKey;
          v34 = kMCNetworkUsageRulesPayloadSIMRulesWiFiAssistPolicyKey;
          do
          {
            v35 = 0;
            do
            {
              if (*v75 != v64)
              {
                objc_enumerationMutation(v62);
              }

              v68 = v35;
              v36 = *(*(&v74 + 1) + 8 * v35);
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              sIMRules = [v36 SIMRules];
              v38 = [sIMRules countByEnumeratingWithState:&v70 objects:v95 count:16];
              if (v38)
              {
                v39 = v38;
                v40 = *v71;
                do
                {
                  for (i = 0; i != v39; i = i + 1)
                  {
                    if (*v71 != v40)
                    {
                      objc_enumerationMutation(sIMRules);
                    }

                    v42 = *(*(&v70 + 1) + 8 * i);
                    v43 = +[NSMutableDictionary dictionary];
                    v44 = [v42 objectForKeyedSubscript:v33];
                    [v43 setObject:v44 forKeyedSubscript:@"ICCIDs"];

                    v45 = [v42 objectForKeyedSubscript:v34];
                    [v43 setObject:v45 forKeyedSubscript:@"Wi-Fi Assist Policy"];

                    [v32 addObject:v43];
                  }

                  v39 = [sIMRules countByEnumeratingWithState:&v70 objects:v95 count:16];
                }

                while (v39);
              }

              v35 = v68 + 1;
            }

            while ((v68 + 1) != v66);
            v66 = [v62 countByEnumeratingWithState:&v74 objects:v96 count:16];
          }

          while (v66);
        }

        v93[0] = @"Version";
        v93[1] = @"Profiles";
        v94[0] = &off_100127120;
        v94[1] = v32;
        v46 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:2];

        v31 = 0;
        v16 = v67;
        v47 = v55;
        v48 = v56;
        goto LABEL_58;
      }

      goto LABEL_8;
    }
  }

  v61 = *v83;
LABEL_13:
  v18 = 0;
  while (1)
  {
    if (*v83 != v61)
    {
      objc_enumerationMutation(obj);
    }

    v19 = [*(*(&v82 + 1) + 8 * v18) objectForKeyedSubscript:v60];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v78 objects:v101 count:16];
    if (v21)
    {
      break;
    }

LABEL_33:

LABEL_35:
    if (++v18 == v63)
    {
      v63 = [obj countByEnumeratingWithState:&v82 objects:v102 count:16];
      if (!v63)
      {
        goto LABEL_37;
      }

      goto LABEL_13;
    }
  }

  v22 = v21;
  v23 = *v79;
LABEL_18:
  v24 = 0;
  while (1)
  {
    if (*v79 != v23)
    {
      objc_enumerationMutation(v20);
    }

    v25 = *(*(&v78 + 1) + 8 * v24);
    uppercaseString = [v25 uppercaseString];
    if ([v12 containsObject:uppercaseString])
    {
      break;
    }

    [v12 addObject:uppercaseString];
LABEL_31:

    if (v22 == ++v24)
    {
      v22 = [v20 countByEnumeratingWithState:&v78 objects:v101 count:16];
      if (v22)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }
  }

  if (([v16 containsObject:v17] & 1) == 0)
  {
    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      displayName = [v17 displayName];
      v29 = displayName;
      if (!displayName)
      {
        uUID = [v17 UUID];
        v29 = uUID;
      }

      *buf = 138543618;
      v98 = v29;
      v99 = 2114;
      v100 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Found pre-existing conflicting ICCIDs while rebuilding configuration for Network Usage Rules payload %{public}@: %{public}@", buf, 0x16u);
      if (!displayName)
      {
      }

      v16 = v67;
    }

    v12 = v69;
    goto LABEL_31;
  }

  v30 = MCErrorArray();
  v16 = v67;
  v31 = [NSError MCErrorWithDomain:v59 code:41003 descriptionArray:v30 underlyingError:0 errorType:v58, v25, 0];

  v12 = v69;
  if (!v31)
  {
    goto LABEL_35;
  }

  v48 = v56;
  if (error)
  {
    v49 = v31;
    v46 = 0;
    *error = v31;
  }

  else
  {
    v46 = 0;
  }

  v47 = v55;
LABEL_58:

  return v46;
}

+ (BOOL)_writeWiFiAssistConfiguration:(id)configuration withError:(id *)error
{
  configurationCopy = configuration;
  v6 = MCSystemGroupContainerPathWithGroupIdentifier();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 stringByAppendingFormat:@"/%@", @"Library/Preferences"];
    v29 = 0;
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 fileExistsAtPath:v8 isDirectory:&v29];

    if (v10)
    {
      if (v29)
      {
        goto LABEL_8;
      }

      v11 = +[NSFileManager defaultManager];
      v28 = 0;
      v12 = [v11 removeItemAtPath:v8 error:&v28];
      v13 = v28;

      if (!v12)
      {
LABEL_7:
        if (v13)
        {
LABEL_11:

          goto LABEL_13;
        }

LABEL_8:
        v15 = [v8 stringByAppendingFormat:@"/%@", @"com.apple.WiFiAssist.configuration.plist"];
        v26 = 0;
        v16 = [NSPropertyListSerialization dataWithPropertyList:configurationCopy format:200 options:0 error:&v26];
        v17 = v26;
        v13 = v17;
        if (v16)
        {
          v25 = v17;
          [v16 writeToFile:v15 options:1 error:&v25];
          v18 = v25;

          v13 = v18;
        }

        goto LABEL_11;
      }
    }

    v14 = +[NSFileManager defaultManager];
    v27 = 0;
    [v14 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v27];
    v13 = v27;

    goto LABEL_7;
  }

  v13 = 0;
LABEL_13:
  if (v7)
  {
    v19 = v13 == 0;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  if (error && !v20)
  {
    v21 = MCNetworkUsageRulesErrorDomain;
    mCAppendGreenteaSuffix = [@"ERROR_NETWORK_USAGE_CANNOT_WRITE_WIFI_ASSIST_CONFIGURATION" MCAppendGreenteaSuffix];
    v23 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v21 code:41004 descriptionArray:v23 underlyingError:v13 errorType:MCErrorTypeFatal, 0];
  }

  return v20;
}

@end