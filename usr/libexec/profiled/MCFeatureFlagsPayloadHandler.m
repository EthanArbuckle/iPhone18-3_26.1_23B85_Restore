@interface MCFeatureFlagsPayloadHandler
+ (BOOL)_reapplyConfigurationIncludingPayloads:(id)a3 excludingPayloads:(id)a4 error:(id *)a5;
+ (BOOL)_reapplyPayloads:(id)a3 error:(id *)a4;
+ (id)_fullyInstalledPayloads;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
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

+ (BOOL)_reapplyPayloads:(id)a3 error:(id *)a4
{
  v5 = a3;
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
    v33 = a4;
    [v7 prepareToAddProfilePayloads];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v5;
    v9 = v5;
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
          v17 = [v16 featureFlagsConfiguration];
          v18 = _MCLogObjects[0];
          if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
          {
            v19 = v18;
            v20 = [v16 UUID];
            *buf = 138543618;
            v42 = v20;
            v43 = 2112;
            v44 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Adding feature flag settings from payload %{public}@: %@.", buf, 0x16u);
          }

          v36 = v15;
          v21 = [v8 addProfilePayload:v17 error:&v36];
          v12 = v36;

          if ((v21 & 1) == 0)
          {
            v22 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
            {
              v23 = v22;
              v24 = [v16 UUID];
              *buf = 138543618;
              v42 = v24;
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
    a4 = v33;
    v5 = v34;
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

  if (a4)
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
    *a4 = v12;
  }

  return v25;
}

+ (BOOL)_reapplyConfigurationIncludingPayloads:(id)a3 excludingPayloads:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[NSMutableArray array];
  v11 = [a1 _fullyInstalledPayloads];
  [v10 addObjectsFromArray:v11];

  [v10 addObjectsFromArray:v9];
  if (v8)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100095A0C;
    v18[3] = &unk_10011CF40;
    v19 = v8;
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

  v16 = [a1 _reapplyPayloads:v10 error:a5];

  return v16;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v8 = [(MCNewPayloadHandler *)self payload:a3];
  v9 = [MCProfileHandler payloadsOfClass:objc_opt_class() installedBeforePayload:v8];
  v10 = [v9 mutableCopy];

  [v10 addObject:v8];
  v20 = 0;
  v11 = [objc_opt_class() _reapplyConfigurationIncludingPayloads:v10 excludingPayloads:0 error:&v20];
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v13 = MCInstallationErrorDomain;
    v14 = [(MCNewPayloadHandler *)self payload];
    v15 = [v14 friendlyName];
    v16 = MCErrorArray();
    v17 = [NSError MCErrorWithDomain:v13 code:4001 descriptionArray:v16 underlyingError:v12 errorType:MCErrorTypeFatal, v15, 0];

    if (a6)
    {
      v18 = v17;
      *a6 = v17;
    }
  }

  return v11;
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [(MCNewPayloadHandler *)self profileHandler];
  v5 = [v4 isSetAside];

  if ((v5 & 1) == 0)
  {
    v6 = [MCProfileHandler payloadsOfClass:objc_opt_class() removedBeforePayload:v3];
    v7 = [v6 mutableCopy];

    [v7 addObject:v3];
    v17 = 0;
    v8 = [objc_opt_class() _reapplyConfigurationIncludingPayloads:0 excludingPayloads:v7 error:&v17];
    v9 = v17;
    v10 = _MCLogObjects[0];
    if (v8)
    {
      if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v3 UUID];
        *buf = 138543362;
        v19 = v12;
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
      v12 = [v3 UUID];
      *buf = 138543618;
      v19 = v12;
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
  v2 = [(MCNewPayloadHandler *)self payload];
  v3 = [MCProfileHandler payloadsOfClass:objc_opt_class() setAsideBeforePayload:v2];
  v4 = [v3 mutableCopy];

  [v4 addObject:v2];
  v9 = 0;
  LOBYTE(v3) = [objc_opt_class() _reapplyConfigurationIncludingPayloads:0 excludingPayloads:v4 error:&v9];
  v5 = v9;
  if ((v3 & 1) == 0)
  {
    v6 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = [v2 UUID];
      *buf = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to set aside Feature Flags payload with payload ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)unsetAside
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [MCProfileHandler payloadsOfClass:objc_opt_class() unsetAsideBeforePayload:v3];
  v5 = [v4 mutableCopy];

  [v5 addObject:v3];
  v6 = [(MCNewPayloadHandler *)self payload];
  v7 = [v6 profile];
  v8 = [v7 payloadsOfKindOfClass:objc_opt_class()];
  v9 = [v8 mutableCopy];

  [v9 removeObjectsInArray:v5];
  v14 = 0;
  LOBYTE(v6) = [objc_opt_class() _reapplyConfigurationIncludingPayloads:0 excludingPayloads:v9 error:&v14];
  v10 = v14;
  if ((v6 & 1) == 0)
  {
    v11 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v3 UUID];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to restore Feature Flags payload with payload ID %{public}@. Ignoring. Error: %{public}@", buf, 0x16u);
    }
  }
}

@end