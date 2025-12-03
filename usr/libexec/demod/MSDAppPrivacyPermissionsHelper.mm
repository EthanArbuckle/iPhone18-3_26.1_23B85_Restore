@interface MSDAppPrivacyPermissionsHelper
+ (id)sharedInstance;
- (BOOL)grantNetworkPermission:(BOOL)permission toBundleID:(id)d;
- (BOOL)grantTCCPermission:(BOOL)permission forResource:(id)resource toBundleID:(id)d;
- (BOOL)isCoreLocationOwnedResource:(id)resource;
- (BOOL)isNetworkOwnedResource:(id)resource;
- (BOOL)isTccOwnedResource:(id)resource;
- (BOOL)saveNetworkPrivacyConfiguration:(id)configuration;
- (MSDAppPrivacyPermissionsHelper)init;
- (id)getCLPermissionForBundleID:(id)d;
- (id)getNetworkAccessPermissionForBundleID:(id)d;
- (id)getNetworkPrivacyConfiguration;
- (id)getPrivacyPermissionsForAppBundleID:(id)d;
- (id)getTCCPermissionsForBundleID:(id)d;
- (void)grantCLPermission:(id)permission toBundleID:(id)d;
- (void)grantPrivacyPermissions:(id)permissions forAppBundleID:(id)d;
- (void)grantPrivacyPermissionsForAllApps;
- (void)revokeCLPermissionForBundleID:(id)d;
- (void)revokeNetworkPermissionForBundleID:(id)d;
- (void)revokePrivacyPermissions:(id)permissions forAppBundleID:(id)d;
- (void)revokePrivacyPermissionsForAllApps;
- (void)savePrivacyPermissionsForAllApps:(id)apps;
@end

@implementation MSDAppPrivacyPermissionsHelper

+ (id)sharedInstance
{
  if (qword_1001A55F0 != -1)
  {
    sub_1000C9F64();
  }

  v3 = qword_1001A55E8;

  return v3;
}

- (MSDAppPrivacyPermissionsHelper)init
{
  v8.receiver = self;
  v8.super_class = MSDAppPrivacyPermissionsHelper;
  v2 = [(MSDAppPrivacyPermissionsHelper *)&v8 init];
  v3 = v2;
  if (v2)
  {
    getTccOwnedResources = [(MSDAppPrivacyPermissionsHelper *)v2 getTccOwnedResources];
    [(MSDAppPrivacyPermissionsHelper *)v3 setTccOwnedResources:getTccOwnedResources];

    getCoreLocationOwnedResources = [(MSDAppPrivacyPermissionsHelper *)v3 getCoreLocationOwnedResources];
    [(MSDAppPrivacyPermissionsHelper *)v3 setCoreLocationOwnedResources:getCoreLocationOwnedResources];

    getNetworkOwnedResources = [(MSDAppPrivacyPermissionsHelper *)v3 getNetworkOwnedResources];
    [(MSDAppPrivacyPermissionsHelper *)v3 setNetworkOwnedResources:getNetworkOwnedResources];
  }

  return v3;
}

- (void)grantPrivacyPermissions:(id)permissions forAppBundleID:(id)d
{
  permissionsCopy = permissions;
  dCopy = d;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [permissionsCopy countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(permissionsCopy);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        v13 = sub_100063A54();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v28 = "[MSDAppPrivacyPermissionsHelper grantPrivacyPermissions:forAppBundleID:]";
          v29 = 2114;
          v30 = v12;
          v31 = 2114;
          v32 = dCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s - Granting privacy permission for resource: %{public}@ to app: %{public}@", buf, 0x20u);
        }

        if ([(MSDAppPrivacyPermissionsHelper *)self isTccOwnedResource:v12])
        {
          v14 = [permissionsCopy objectForKey:v12];
          bOOLValue = [v14 BOOLValue];

          if ([(MSDAppPrivacyPermissionsHelper *)self grantTCCPermission:bOOLValue forResource:v12 toBundleID:dCopy])
          {
            goto LABEL_21;
          }

          v16 = sub_100063A54();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *buf = 136315906;
          v28 = "[MSDAppPrivacyPermissionsHelper grantPrivacyPermissions:forAppBundleID:]";
          v29 = 2114;
          v30 = v12;
          v31 = 2114;
          v32 = dCopy;
          v33 = 1024;
          v34 = bOOLValue;
          v17 = v16;
          v18 = "%s - Failed to grant TCC resource:  %{public}@ to bundle:  %{public}@ isGranted:  %{BOOL}d";
LABEL_12:
          v19 = 38;
LABEL_24:
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v18, buf, v19);
          goto LABEL_20;
        }

        if ([(MSDAppPrivacyPermissionsHelper *)self isCoreLocationOwnedResource:v12])
        {
          v16 = [permissionsCopy objectForKey:v12];
          [(MSDAppPrivacyPermissionsHelper *)self grantCLPermission:v16 toBundleID:dCopy];
        }

        else if ([(MSDAppPrivacyPermissionsHelper *)self isNetworkOwnedResource:v12])
        {
          v20 = [permissionsCopy objectForKey:v12];
          bOOLValue2 = [v20 BOOLValue];

          if ([(MSDAppPrivacyPermissionsHelper *)self grantNetworkPermission:bOOLValue2 toBundleID:dCopy])
          {
            goto LABEL_21;
          }

          v16 = sub_100063A54();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v28 = "[MSDAppPrivacyPermissionsHelper grantPrivacyPermissions:forAppBundleID:]";
            v29 = 2114;
            v30 = v12;
            v31 = 2114;
            v32 = dCopy;
            v33 = 1024;
            v34 = bOOLValue2;
            v17 = v16;
            v18 = "%s - Failed to grant network permission:  %{public}@ to bundle:  %{public}@ allow:  %{BOOL}d";
            goto LABEL_12;
          }
        }

        else
        {
          v16 = sub_100063A54();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v28 = "[MSDAppPrivacyPermissionsHelper grantPrivacyPermissions:forAppBundleID:]";
            v29 = 2114;
            v30 = v12;
            v31 = 2114;
            v32 = dCopy;
            v17 = v16;
            v18 = "%s - Unknown resource recorded in manifest:  %{public}@ for bundle:  %{public}@";
            v19 = 32;
            goto LABEL_24;
          }
        }

LABEL_20:

LABEL_21:
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v22 = [permissionsCopy countByEnumeratingWithState:&v23 objects:v35 count:16];
      v9 = v22;
    }

    while (v22);
  }
}

- (void)revokePrivacyPermissions:(id)permissions forAppBundleID:(id)d
{
  permissionsCopy = permissions;
  dCopy = d;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [permissionsCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(permissionsCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = sub_100063A54();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v20 = v12;
          v21 = 2114;
          v22 = dCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Revoking privacy permission for resource: %{public}@ to app: %{public}@", buf, 0x16u);
        }

        if ([(MSDAppPrivacyPermissionsHelper *)self isTccOwnedResource:v12])
        {
          [(MSDAppPrivacyPermissionsHelper *)self revokeTCCPermissionForResource:v12 toBundleID:dCopy];
        }

        else if ([(MSDAppPrivacyPermissionsHelper *)self isCoreLocationOwnedResource:v12])
        {
          [(MSDAppPrivacyPermissionsHelper *)self revokeCLPermissionForBundleID:dCopy];
        }

        else if ([(MSDAppPrivacyPermissionsHelper *)self isNetworkOwnedResource:v12])
        {
          [(MSDAppPrivacyPermissionsHelper *)self revokeNetworkPermissionForBundleID:dCopy];
        }

        else
        {
          v14 = sub_100063A54();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v20 = "[MSDAppPrivacyPermissionsHelper revokePrivacyPermissions:forAppBundleID:]";
            v21 = 2114;
            v22 = v12;
            v23 = 2114;
            v24 = dCopy;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s - Unknown resource recorded in manifest:  %{public}@ for bundle:  %{public}@", buf, 0x20u);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [permissionsCopy countByEnumeratingWithState:&v15 objects:v25 count:16];
    }

    while (v9);
  }
}

- (id)getPrivacyPermissionsForAppBundleID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(MSDAppPrivacyPermissionsHelper *)self getTCCPermissionsForBundleID:dCopy];
  if (v6)
  {
    [v5 addEntriesFromDictionary:v6];
  }

  v7 = [(MSDAppPrivacyPermissionsHelper *)self getCLPermissionForBundleID:dCopy];
  if (v7)
  {
    [v5 addEntriesFromDictionary:v7];
  }

  v8 = [(MSDAppPrivacyPermissionsHelper *)self getNetworkAccessPermissionForBundleID:dCopy];
  if (v8)
  {
    [v5 addEntriesFromDictionary:v8];
  }

  return v5;
}

- (BOOL)grantTCCPermission:(BOOL)permission forResource:(id)resource toBundleID:(id)d
{
  permissionCopy = permission;
  resourceCopy = resource;
  dCopy = d;
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "[MSDAppPrivacyPermissionsHelper grantTCCPermission:forResource:toBundleID:]";
    v14 = 1024;
    v15 = permissionCopy;
    v16 = 2114;
    v17 = resourceCopy;
    v18 = 2114;
    v19 = dCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s - isGranted:  %{BOOL}d - resources:  %{public}@ - bundleID:  %{public}@", &v12, 0x26u);
  }

  v10 = TCCAccessSetForBundleId();
  if (!v10)
  {
    sub_1000C9F78();
  }

  return v10 != 0;
}

- (void)grantCLPermission:(id)permission toBundleID:(id)d
{
  permissionCopy = permission;
  dCopy = d;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[MSDAppPrivacyPermissionsHelper grantCLPermission:toBundleID:]";
    v10 = 1024;
    bOOLValue = [permissionCopy BOOLValue];
    v12 = 2114;
    v13 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - status:  %{BOOL}d - bundleID:  %{public}@", &v8, 0x1Cu);
  }

  +[CLLocationManager setAuthorizationStatusByType:forBundleIdentifier:](CLLocationManager, "setAuthorizationStatusByType:forBundleIdentifier:", [permissionCopy integerValue], dCopy);
}

- (BOOL)grantNetworkPermission:(BOOL)permission toBundleID:(id)d
{
  permissionCopy = permission;
  dCopy = d;
  v7 = sub_100063A54();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[MSDAppPrivacyPermissionsHelper grantNetworkPermission:toBundleID:]";
    v31 = 1024;
    v32 = permissionCopy;
    v33 = 2114;
    v34 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s - allow:  %{BOOL}d - bundleID:  %{public}@", buf, 0x1Cu);
  }

  getNetworkPrivacyConfiguration = [(MSDAppPrivacyPermissionsHelper *)self getNetworkPrivacyConfiguration];
  v9 = getNetworkPrivacyConfiguration;
  if (!getNetworkPrivacyConfiguration)
  {
    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA0A8();
    }

    pathController = 0;
LABEL_14:

LABEL_15:
    v20 = 0;
    goto LABEL_17;
  }

  v22 = permissionCopy;
  selfCopy = self;
  pathController = [getNetworkPrivacyConfiguration pathController];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  pathRules = [pathController pathRules];
  v12 = [pathRules countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v12)
  {
LABEL_12:

    v19 = sub_100063A54();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA028();
    }

    goto LABEL_14;
  }

  v13 = v12;
  v14 = *v25;
LABEL_6:
  v15 = 0;
  while (1)
  {
    if (*v25 != v14)
    {
      objc_enumerationMutation(pathRules);
    }

    v16 = *(*(&v24 + 1) + 8 * v15);
    matchSigningIdentifier = [v16 matchSigningIdentifier];
    v18 = [matchSigningIdentifier isEqualToString:dCopy];

    if (v18)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [pathRules countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  [v16 setDenyMulticast:!v22];
  v20 = 1;
  [v16 setMulticastPreferenceSet:1];

  if (![(MSDAppPrivacyPermissionsHelper *)selfCopy saveNetworkPrivacyConfiguration:v9])
  {
    goto LABEL_15;
  }

LABEL_17:

  return v20;
}

- (id)getTCCPermissionsForBundleID:(id)d
{
  dCopy = d;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = TCCAccessCopyInformationForBundleId();
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TCC info list: %{public}@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 objectForKey:kTCCInfoService];
        v14 = [v12 objectForKey:kTCCInfoGranted];
        [v4 setObject:v14 forKey:v13];
        v15 = sub_100063A54();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          bOOLValue = [v14 BOOLValue];
          *buf = 136315650;
          v24 = "[MSDAppPrivacyPermissionsHelper getTCCPermissionsForBundleID:]";
          v25 = 2114;
          v26 = v13;
          v27 = 1024;
          v28 = bOOLValue;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s - resource:  %{public}@ - isGranted:  %{BOOL}d", buf, 0x1Cu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v9);
  }

  v17 = [NSDictionary dictionaryWithDictionary:v4];

  return v17;
}

- (id)getCLPermissionForBundleID:(id)d
{
  v3 = [CLLocationManager authorizationStatusForBundleIdentifier:d];
  v4 = [NSDictionary alloc];
  v5 = [NSNumber numberWithInteger:v3];
  v6 = [v4 initWithObjectsAndKeys:{v5, @"kCLServiceLocationService", 0}];

  return v6;
}

- (id)getNetworkAccessPermissionForBundleID:(id)d
{
  dCopy = d;
  getNetworkPrivacyConfiguration = [(MSDAppPrivacyPermissionsHelper *)self getNetworkPrivacyConfiguration];
  v6 = getNetworkPrivacyConfiguration;
  if (getNetworkPrivacyConfiguration)
  {
    pathController = [getNetworkPrivacyConfiguration pathController];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    pathRules = [pathController pathRules];
    v9 = [pathRules countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(pathRules);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          matchSigningIdentifier = [v13 matchSigningIdentifier];
          v15 = [matchSigningIdentifier isEqualToString:dCopy];

          if (v15)
          {
            v17 = sub_100063A54();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              denyMulticast = [v13 denyMulticast];
              *buf = 67109378;
              v28 = denyMulticast ^ 1;
              v29 = 2114;
              v30 = dCopy;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found network access permission: %d for bundleID: %{public}@", buf, 0x12u);
            }

            v19 = [NSDictionary alloc];
            v20 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 denyMulticast] ^ 1);
            v16 = [v19 initWithObjectsAndKeys:{v20, @"kNetworkServiceNetworkAccess", 0}];

            goto LABEL_14;
          }
        }

        v10 = [pathRules countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    pathRules = sub_100063A54();
    if (os_log_type_enabled(pathRules, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA0A8();
    }

    pathController = 0;
  }

  v16 = 0;
LABEL_14:

  v21 = v16;
  return v16;
}

- (void)revokeCLPermissionForBundleID:(id)d
{
  dCopy = d;
  if ([CLLocationManager authorizationStatusForBundleIdentifier:?])
  {
    v4 = [NSNumber numberWithInteger:0];
    [(MSDAppPrivacyPermissionsHelper *)self grantCLPermission:v4 toBundleID:dCopy];
  }
}

- (void)revokeNetworkPermissionForBundleID:(id)d
{
  dCopy = d;
  getNetworkPrivacyConfiguration = [(MSDAppPrivacyPermissionsHelper *)self getNetworkPrivacyConfiguration];
  v6 = getNetworkPrivacyConfiguration;
  if (getNetworkPrivacyConfiguration)
  {
    [getNetworkPrivacyConfiguration pathController];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v22 = 0u;
    pathRules = [v17 pathRules];
    v8 = [pathRules countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(pathRules);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          matchSigningIdentifier = [v12 matchSigningIdentifier];
          v14 = [matchSigningIdentifier isEqualToString:dCopy];

          if (v14)
          {
            [v12 setDenyMulticast:1];
            [v12 setMulticastPreferenceSet:0];

            [(MSDAppPrivacyPermissionsHelper *)self saveNetworkPrivacyConfiguration:v6];
            goto LABEL_14;
          }
        }

        v9 = [pathRules countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = sub_100063A54();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Unable to find the appropriate privacy rule.", buf, 2u);
    }

LABEL_14:
    v16 = v17;
  }

  else
  {
    v16 = sub_100063A54();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000CA0A8();
    }
  }
}

- (id)getNetworkPrivacyConfiguration
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10001CCB8;
  v19 = sub_10001CCC8;
  v20 = dispatch_semaphore_create(0);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10001CCB8;
  v13 = sub_10001CCC8;
  v14 = 0;
  v2 = +[NEConfigurationManager sharedManagerForAllUsers];
  v3 = dispatch_get_global_queue(33, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001CCD0;
  v8[3] = &unk_10016A150;
  v8[4] = &v9;
  v8[5] = &v15;
  [v2 loadConfigurationsWithCompletionQueue:v3 handler:v8];

  v4 = v16[5];
  v5 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v4, v5);
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);

  return v6;
}

- (BOOL)saveNetworkPrivacyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10001CCB8;
  v14 = sub_10001CCC8;
  v15 = dispatch_semaphore_create(0);
  v4 = +[NEConfigurationManager sharedManagerForAllUsers];
  v5 = dispatch_get_global_queue(33, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001D0AC;
  v9[3] = &unk_100169E40;
  v9[4] = &v16;
  v9[5] = &v10;
  [v4 saveConfiguration:configurationCopy withCompletionQueue:v5 handler:v9];

  v6 = v11[5];
  v7 = dispatch_time(0, 30000000000);
  dispatch_semaphore_wait(v6, v7);
  LOBYTE(v6) = *(v17 + 24);

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

- (BOOL)isTccOwnedResource:(id)resource
{
  resourceCopy = resource;
  tccOwnedResources = [(MSDAppPrivacyPermissionsHelper *)self tccOwnedResources];
  v6 = [tccOwnedResources containsObject:resourceCopy];

  return v6;
}

- (BOOL)isCoreLocationOwnedResource:(id)resource
{
  resourceCopy = resource;
  coreLocationOwnedResources = [(MSDAppPrivacyPermissionsHelper *)self coreLocationOwnedResources];
  v6 = [coreLocationOwnedResources containsObject:resourceCopy];

  return v6;
}

- (BOOL)isNetworkOwnedResource:(id)resource
{
  resourceCopy = resource;
  networkOwnedResources = [(MSDAppPrivacyPermissionsHelper *)self networkOwnedResources];
  v6 = [networkOwnedResources containsObject:resourceCopy];

  return v6;
}

- (void)grantPrivacyPermissionsForAllApps
{
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = [v3 objectForKey:@"AppPrivacyPermissions"];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v12}];
        [(MSDAppPrivacyPermissionsHelper *)self grantPrivacyPermissions:v11 forAppBundleID:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)revokePrivacyPermissionsForAllApps
{
  v3 = +[MSDPreferencesFile sharedInstance];
  v4 = [v3 objectForKey:@"AppPrivacyPermissions"];

  v5 = +[MSDPreferencesFile sharedInstance];
  [v5 removeObjectForKey:@"AppPrivacyPermissions"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v17;
    *&v8 = 136315650;
    v15 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 objectForKeyedSubscript:{v12, v15, v16}];
        v14 = sub_100063A54();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v15;
          v21 = "[MSDAppPrivacyPermissionsHelper(manager) revokePrivacyPermissionsForAllApps]";
          v22 = 2114;
          v23 = v12;
          v24 = 2114;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s - Revoking appId:  %{public}@ permissions:  %{public}@", buf, 0x20u);
        }

        [(MSDAppPrivacyPermissionsHelper *)self revokePrivacyPermissions:v13 forAppBundleID:v12];
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)savePrivacyPermissionsForAllApps:(id)apps
{
  appsCopy = apps;
  v4 = +[NSMutableDictionary dictionary];
  getSystemAppDataList = [appsCopy getSystemAppDataList];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [getSystemAppDataList countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(getSystemAppDataList);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [appsCopy getSystemAppPrivacyPermissions:v10];
        if (v11)
        {
          [v4 setObject:v11 forKey:v10];
        }
      }

      v7 = [getSystemAppDataList countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v7);
  }

  getAppList = [appsCopy getAppList];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [getAppList countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(getAppList);
        }

        v17 = *(*(&v21 + 1) + 8 * j);
        v18 = [appsCopy getAppPrivacyPermissions:v17];
        if (v18)
        {
          [v4 setObject:v18 forKey:v17];
        }
      }

      v14 = [getAppList countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v14);
  }

  if ([v4 count])
  {
    v19 = +[MSDPreferencesFile sharedInstance];
    [v19 setObject:v4 forKey:@"AppPrivacyPermissions"];
  }

  v20 = sub_100063A54();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "AppPrivacyPermissions:  %{public}@", buf, 0xCu);
  }
}

@end