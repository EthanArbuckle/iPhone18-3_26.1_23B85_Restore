@interface MCNetworkUsageRulesPayloadHandler
+ (BOOL)_rebuildWiFiAssistConfigurationIncludingPayloads:(id)a3 excludingPayloads:(id)a4 error:(id *)a5;
+ (BOOL)_writeWiFiAssistConfiguration:(id)a3 withError:(id *)a4;
+ (id)_WiFiAssistConfigurationForPayloads:(id)a3 includingPayloads:(id)a4 excludingPayloads:(id)a5 error:(id *)a6;
+ (id)internalErrorWithCode:(int)a3 underlyingError:(id)a4;
- (BOOL)_installApplicationRulesFromPayload:(id)a3 outError:(id *)a4;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCNetworkUsageRulesPayloadHandler

+ (id)internalErrorWithCode:(int)a3 underlyingError:(id)a4
{
  v4 = MCNetworkUsageRulesErrorDomain;
  v5 = a3;
  v6 = a4;
  v7 = MCErrorArray();
  v8 = [NSError MCErrorWithDomain:v4 code:v5 descriptionArray:v7 underlyingError:v6 errorType:MCErrorTypeFatal, 0];

  return v8;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = [(MCNewPayloadHandler *)self payload:a3];
  v9 = [v8 applicationRules];

  if (!v9 || (v29 = 0, v10 = [(MCNetworkUsageRulesPayloadHandler *)self _installApplicationRulesFromPayload:v8 outError:&v29], v9 = v29, v10))
  {
    v11 = [v8 SIMRules];

    if (v11)
    {
      v23 = a6;
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
            v19 = [v18 SIMRules];

            if (v19)
            {
              [v12 addObject:v18];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v15);
      }

      [v12 addObject:v8];
      v24 = v9;
      [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:v12 excludingPayloads:qword_100136A80 error:&v24];
      v20 = v24;

      v9 = v20;
      a6 = v23;
    }
  }

  if (a6 && v9)
  {
    v21 = v9;
    *a6 = v9;
  }

  return v9 == 0;
}

- (void)setAside
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 applicationRules];

  if (v3)
  {
    v4 = +[MCNetworkUsageRulesPayload typeStrings];
    v5 = [v4 firstObject];
    v6 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v6 lockConfigurations])
    {
      [v6 loadConfigurationsForceReloadFromDisk];
      v7 = [v2 persistentResourceID];
      v8 = [v6 setAsideConfigurationName:v7 unsetAside:0];

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

  v10 = [v2 SIMRules];

  if (v10)
  {
    v11 = qword_100136A80;
    if (!qword_100136A80)
    {
      v12 = +[NSMutableArray array];
      v13 = qword_100136A80;
      qword_100136A80 = v12;

      v11 = qword_100136A80;
    }

    [v11 addObject:v2];
    v19 = 0;
    v14 = [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:0 excludingPayloads:qword_100136A80 error:&v19];
    v15 = v19;
    if ((v14 & 1) == 0)
    {
      v16 = _MCLogObjects[0];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v2 displayName];
        v18 = v17;
        if (!v17)
        {
          v18 = [v2 UUID];
        }

        *buf = 138543618;
        v21 = v18;
        v22 = 2114;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to rebuild Wi-Fi Assist configuration excluding payload %{public}@: %{public}@", buf, 0x16u);
        if (!v17)
        {
        }
      }
    }
  }
}

- (void)unsetAside
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [v2 applicationRules];

  if (v3)
  {
    v4 = +[MCNetworkUsageRulesPayload typeStrings];
    v5 = [v4 firstObject];
    v6 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v6 lockConfigurations])
    {
      [v6 loadConfigurationsForceReloadFromDisk];
      v7 = [v2 persistentResourceID];
      v8 = [v6 setAsideConfigurationName:v7 unsetAside:1];

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

  v10 = [v2 SIMRules];

  if (v10)
  {
    [qword_100136A80 removeObject:v2];
    v16 = 0;
    v11 = [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:0 excludingPayloads:qword_100136A80 error:&v16];
    v12 = v16;
    if ((v11 & 1) == 0)
    {
      v13 = _MCLogObjects[0];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [v2 displayName];
        v15 = v14;
        if (!v14)
        {
          v15 = [v2 UUID];
        }

        *buf = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to rebuild Wi-Fi Assist configuration including payload %{public}@: %{public}@", buf, 0x16u);
        if (!v14)
        {
        }
      }
    }
  }
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 applicationRules];

  if (v4)
  {
    v5 = +[MCNetworkUsageRulesPayload typeStrings];
    v6 = [v5 firstObject];
    v7 = MCNEProfileIngestionHandlerClassForPayload();

    if ([v7 lockConfigurations])
    {
      [v7 loadConfigurationsForceReloadFromDisk];
      v8 = [v3 persistentResourceID];

      if (v8)
      {
        v9 = [v3 persistentResourceID];
        [v7 removeConfigurationWithIdentifier:v9];
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

  v12 = [v3 SIMRules];

  if (v12)
  {
    v13 = [(MCNewPayloadHandler *)self profileHandler];
    v14 = [v13 isSetAside];

    if (v14)
    {
      [qword_100136A80 removeObject:v3];
    }

    else
    {
      v15 = +[NSMutableArray array];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v16 = [MCProfileHandler payloadsOfClass:objc_opt_class() removedBeforePayload:v3];
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
            v22 = [v21 SIMRules];

            if (v22)
            {
              [v15 addObject:v21];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        }

        while (v18);
      }

      [v15 addObject:v3];
      v28 = 0;
      v23 = [objc_opt_class() _rebuildWiFiAssistConfigurationIncludingPayloads:0 excludingPayloads:v15 error:&v28];
      v24 = v28;
      if ((v23 & 1) == 0)
      {
        v25 = _MCLogObjects[0];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = [v3 displayName];
          v27 = v26;
          if (!v26)
          {
            v27 = [v3 UUID];
          }

          *buf = 138543618;
          v34 = v27;
          v35 = 2114;
          v36 = v24;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to rebuild Wi-Fi Assist configuration excluding payload %{public}@: %{public}@", buf, 0x16u);
          if (!v26)
          {
          }
        }
      }
    }
  }
}

- (BOOL)_installApplicationRulesFromPayload:(id)a3 outError:(id *)a4
{
  v6 = a3;
  v7 = +[MCNetworkUsageRulesPayload typeStrings];
  v8 = [v7 firstObject];
  v9 = MCNEProfileIngestionHandlerClassForPayload();

  if ([v9 lockConfigurations])
  {
    v10 = [v6 displayName];
    if (!v10)
    {
      v10 = [v6 UUID];
    }

    [v9 loadConfigurationsForceReloadFromDisk];
    v35[0] = @"ApplicationRules";
    v11 = [v6 applicationRules];
    v35[1] = @"PayloadDisplayName";
    v36[0] = v11;
    v36[1] = v10;
    v12 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
    v13 = [MCVPNPayloadBase NEVPNPayloadBaseDelegateWithConfigurationDict:v12];

    v14 = +[MCNetworkUsageRulesPayload typeStrings];
    v15 = [v14 firstObject];
    [v9 createConfigurationFromPayload:v13 payloadType:v15];

    v16 = [v9 ingestedConfiguration];
    if (v16)
    {
      v17 = [v6 UUID];
      v18 = [v6 organization];
      [v16 setPayloadInfoCommon:v17 payloadOrganization:v18];

      v19 = [(MCNewPayloadHandler *)self profileHandler];
      v20 = [v19 profile];

      v33[0] = kMCPayloadUUIDKey;
      v21 = [v20 UUID];
      v34[0] = v21;
      v33[1] = kMCPayloadIdentifierKey;
      v22 = [v20 identifier];
      v34[1] = v22;
      v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:2];

      [v16 setProfileInfo:v23];
      [v9 updateDefaultAfterAddingConfiguration];
      v24 = [v16 getConfigurationIdentifier];
      [v6 setPersistentResourceID:v24];

      v31 = 0;
      LOBYTE(v22) = [v9 saveIngestedConfiguration:&v31];
      v25 = v31;
      if ((v22 & 1) == 0)
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
    if (a4 && v25)
    {
      v29 = v25;
      *a4 = v25;
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

    if (a4)
    {
      [MCNetworkUsageRulesPayloadHandler internalErrorWithCode:41000];
      *a4 = v28 = 0;
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

+ (BOOL)_rebuildWiFiAssistConfigurationIncludingPayloads:(id)a3 excludingPayloads:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
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
        v17 = [v16 SIMRules];

        if (v17)
        {
          [v9 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v13);
  }

  v26 = 0;
  v18 = [a1 _WiFiAssistConfigurationForPayloads:v9 includingPayloads:v7 excludingPayloads:v8 error:&v26];
  v19 = v26;
  if (v19)
  {
    v20 = v19;
    v21 = 0;
  }

  else
  {
    v25 = 0;
    v21 = [a1 _writeWiFiAssistConfiguration:v18 withError:&v25];
    v20 = v25;
  }

  if (a5 && v20)
  {
    v22 = v20;
    *a5 = v20;
  }

  return v21;
}

+ (id)_WiFiAssistConfigurationForPayloads:(id)a3 includingPayloads:(id)a4 excludingPayloads:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1000256AC;
    v90[3] = &unk_10011C280;
    v91 = v9;
    v92 = v10;
    v11 = [v8 indexesOfObjectsPassingTest:v90];
    [v8 removeObjectsAtIndexes:v11];
  }

  if ([v9 count])
  {
    [v8 addObjectsFromArray:v9];
  }

  v67 = v9;
  v12 = +[NSMutableSet set];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v13 = v8;
  v55 = v10;
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
              v37 = [v36 SIMRules];
              v38 = [v37 countByEnumeratingWithState:&v70 objects:v95 count:16];
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
                      objc_enumerationMutation(v37);
                    }

                    v42 = *(*(&v70 + 1) + 8 * i);
                    v43 = +[NSMutableDictionary dictionary];
                    v44 = [v42 objectForKeyedSubscript:v33];
                    [v43 setObject:v44 forKeyedSubscript:@"ICCIDs"];

                    v45 = [v42 objectForKeyedSubscript:v34];
                    [v43 setObject:v45 forKeyedSubscript:@"Wi-Fi Assist Policy"];

                    [v32 addObject:v43];
                  }

                  v39 = [v37 countByEnumeratingWithState:&v70 objects:v95 count:16];
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
    v26 = [v25 uppercaseString];
    if ([v12 containsObject:v26])
    {
      break;
    }

    [v12 addObject:v26];
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
      v28 = [v17 displayName];
      v29 = v28;
      if (!v28)
      {
        v65 = [v17 UUID];
        v29 = v65;
      }

      *buf = 138543618;
      v98 = v29;
      v99 = 2114;
      v100 = v25;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Found pre-existing conflicting ICCIDs while rebuilding configuration for Network Usage Rules payload %{public}@: %{public}@", buf, 0x16u);
      if (!v28)
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
  if (a6)
  {
    v49 = v31;
    v46 = 0;
    *a6 = v31;
  }

  else
  {
    v46 = 0;
  }

  v47 = v55;
LABEL_58:

  return v46;
}

+ (BOOL)_writeWiFiAssistConfiguration:(id)a3 withError:(id *)a4
{
  v5 = a3;
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
        v16 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v26];
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
  if (a4 && !v20)
  {
    v21 = MCNetworkUsageRulesErrorDomain;
    v22 = [@"ERROR_NETWORK_USAGE_CANNOT_WRITE_WIFI_ASSIST_CONFIGURATION" MCAppendGreenteaSuffix];
    v23 = MCErrorArray();
    *a4 = [NSError MCErrorWithDomain:v21 code:41004 descriptionArray:v23 underlyingError:v13 errorType:MCErrorTypeFatal, 0];
  }

  return v20;
}

@end