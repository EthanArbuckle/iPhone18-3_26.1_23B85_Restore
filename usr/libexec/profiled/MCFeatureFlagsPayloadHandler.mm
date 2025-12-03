@interface MCFeatureFlagsPayloadHandler
+ (BOOL)_reapplyConfigurationIncludingPayloads:(id)payloads excludingPayloads:(id)excludingPayloads error:(id *)error;
+ (BOOL)_reapplyPayloads:(id)payloads error:(id *)error;
+ (id)_fullyInstalledPayloads;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)remove;
- (void)setAside;
- (void)unsetAside;
@end

@implementation MCFeatureFlagsPayloadHandler

+ (id)_fullyInstalledPayloads
{
  v2 = +[MCManifest sharedManifest];
  v3 = [v2 allInstalledPayloadsOfClass:objc_opt_class()];

  return v3;
}

+ (BOOL)_reapplyPayloads:(id)payloads error:(id *)error
{
  payloadsCopy = payloads;
  v6 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Begin applying changes to feature flag settings.", buf, 2u);
  }

  v7 = +[FFConfiguration configurationForProfileManagement];
  v8 = v7;
  if (v7)
  {
    errorCopy = error;
    [v7 prepareToAddProfilePayloads];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = payloadsCopy;
    v9 = payloadsCopy;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v38;
      while (2)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v37 + 1) + 8 * v14);
          featureFlagsConfiguration = [v16 featureFlagsConfiguration];
          v18 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
          {
            v19 = v18;
            uUID = [v16 UUID];
            *buf = 138543618;
            v42 = uUID;
            v43 = 2112;
            v44 = featureFlagsConfiguration;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Adding feature flag settings from payload %{public}@: %@.", buf, 0x16u);
          }

          v36 = v15;
          v21 = [v8 addProfilePayload:featureFlagsConfiguration error:&v36];
          v12 = v36;

          if ((v21 & 1) == 0)
          {
            v22 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              v23 = v22;
              uUID2 = [v16 UUID];
              *buf = 138543618;
              v42 = uUID2;
              v43 = 2114;
              v44 = v12;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to apply feature flag configuration payload %{public}@ with error: %{public}@", buf, 0x16u);
            }

            v25 = 0;
            goto LABEL_25;
          }

          v14 = v14 + 1;
          v15 = v12;
        }

        while (v11 != v14);
        v11 = [v9 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

    v27 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Committing changes to feature flag settings.", buf, 2u);
    }

    v35 = v12;
    v25 = [v8 commitProfilePayloadsAndReturnError:&v35];
    v28 = v35;

    v12 = v28;
LABEL_25:
    error = errorCopy;
    payloadsCopy = v34;
  }

  else
  {
    v26 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_FAULT, "Unable to communicate with feature flag manager", buf, 2u);
    }

    v12 = [NSError MCErrorWithDomain:MCFeatureFlagsErrorDomain code:58002 descriptionArray:0 underlyingError:0 errorType:MCErrorTypeFatal];
    v25 = 0;
  }

  v29 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "End applying changes to feature flag settings.", buf, 2u);
  }

  if (error)
  {
    v30 = v25;
  }

  else
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = v12;
    *error = v12;
  }

  return v25;
}

+ (BOOL)_reapplyConfigurationIncludingPayloads:(id)payloads excludingPayloads:(id)excludingPayloads error:(id *)error
{
  excludingPayloadsCopy = excludingPayloads;
  payloadsCopy = payloads;
  v10 = +[NSMutableArray array];
  _fullyInstalledPayloads = [self _fullyInstalledPayloads];
  [v10 addObjectsFromArray:_fullyInstalledPayloads];

  [v10 addObjectsFromArray:payloadsCopy];
  if (excludingPayloadsCopy)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100095A0C;
    v18[3] = &unk_10011CF40;
    v19 = excludingPayloadsCopy;
    v12 = [NSPredicate predicateWithBlock:v18];
    [v10 filterUsingPredicate:v12];
  }

  v13 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v10 count];
    *buf = 134217984;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Applying %lu feature flag payloads", buf, 0xCu);
  }

  v16 = [self _reapplyPayloads:v10 error:error];

  return v16;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v8 = [(MCNewPayloadHandler *)self payload:installer];
  v9 = [MCProfileHandler payloadsOfClass:objc_opt_class() installedBeforePayload:v8];
  v10 = [v9 mutableCopy];

  [v10 addObject:v8];
  v20 = 0;
  v11 = [objc_opt_class() _reapplyConfigurationIncludingPayloads:v10 excludingPayloads:0 error:&v20];
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v13 = MCInstallationErrorDomain;
    payload = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload friendlyName];
    v16 = MCErrorArray();
    v17 = [NSError MCErrorWithDomain:v13 code:4001 descriptionArray:v16 underlyingError:v12 errorType:MCErrorTypeFatal, friendlyName, 0];

    if (error)
    {
      v18 = v17;
      *error = v17;
    }
  }

  return v11;
}

- (void)remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {
    v6 = [MCProfileHandler payloadsOfClass:objc_opt_class() removedBeforePayload:payload];
    v7 = [v6 mutableCopy];

    [v7 addObject:payload];
    v17 = 0;
    v8 = [objc_opt_class() _reapplyConfigurationIncludingPayloads:0 excludingPayloads:v7 error:&v17];
    v9 = v17;
    v10 = _MCLogObjects[0];
    if (v8)
    {
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        uUID = [payload UUID];
        *buf = 138543362;
        v19 = uUID;
        v13 = "Removed Feature Flags with payload ID %{public}@";
        v14 = v11;
        v15 = OS_LOG_TYPE_DEFAULT;
        v16 = 12;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, v16);
      }
    }

    else if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      uUID = [payload UUID];
      *buf = 138543618;
      v19 = uUID;
      v20 = 2114;
      v21 = v9;
      v13 = "Failed to remove Feature Flags payload with payload ID %{public}@. Ignoring. Error: %{public}@";
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 22;
      goto LABEL_7;
    }
  }
}

- (void)setAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  v3 = [MCProfileHandler payloadsOfClass:objc_opt_class() setAsideBeforePayload:payload];
  v4 = [v3 mutableCopy];

  [v4 addObject:payload];
  v9 = 0;
  LOBYTE(v3) = [objc_opt_class() _reapplyConfigurationIncludingPayloads:0 excludingPayloads:v4 error:&v9];
  v5 = v9;
  if ((v3 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      uUID = [payload UUID];
      *buf = 138543618;
      v11 = uUID;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set aside Feature Flags payload with payload ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)unsetAside
{
  payload = [(MCNewPayloadHandler *)self payload];
  v4 = [MCProfileHandler payloadsOfClass:objc_opt_class() unsetAsideBeforePayload:payload];
  v5 = [v4 mutableCopy];

  [v5 addObject:payload];
  payload2 = [(MCNewPayloadHandler *)self payload];
  profile = [payload2 profile];
  v8 = [profile payloadsOfKindOfClass:objc_opt_class()];
  v9 = [v8 mutableCopy];

  [v9 removeObjectsInArray:v5];
  v14 = 0;
  LOBYTE(payload2) = [objc_opt_class() _reapplyConfigurationIncludingPayloads:0 excludingPayloads:v9 error:&v14];
  v10 = v14;
  if ((payload2 & 1) == 0)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      uUID = [payload UUID];
      *buf = 138543618;
      v16 = uUID;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to restore Feature Flags payload with payload ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

@end