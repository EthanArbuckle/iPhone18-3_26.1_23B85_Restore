@interface MCAirPlayPayloadHandler
+ (void)recomputeAirPlaySettings;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)_addDependency;
- (void)_removeDependency;
- (void)remove;
@end

@implementation MCAirPlayPayloadHandler

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v7 = [(MCNewPayloadHandler *)self payload:a3];
  v33 = self;
  [(MCAirPlayPayloadHandler *)self _addDependency];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = v7;
  v8 = [v7 destinationsWithPasswords];
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    v31 = kMCAppleKeychainGroup;
    v32 = kMCAirPlayPasswordServiceKey;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [v13 deviceName];
        if (v14)
        {
          v15 = v14;
          v16 = [v13 password];

          if (v16)
          {
            v17 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              v19 = [v13 deviceName];
              *buf = 138543362;
              v40 = v19;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting AirPlay password for device name %{public}@", buf, 0xCu);
            }

            v20 = [v13 password];
            v21 = [v13 deviceName];
            v22 = [(MCNewPayloadHandler *)v33 profileHandler];
            v23 = [v22 profile];
            v24 = [v23 isInstalledForSystem];
            v34 = 0;
            LOBYTE(v28) = v24;
            [MCKeychain setString:v20 forService:v32 account:v21 label:0 description:0 group:v31 useSystemKeychain:v28 outError:&v34];
            v25 = v34;

            if (v25)
            {

              [(MCAirPlayPayloadHandler *)v33 _removeDependency];
              v26 = 0;
              if (a6)
              {
                *a6 = [v25 MCCopyAsPrimaryError];
              }

              goto LABEL_16;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
  v26 = 1;
LABEL_16:

  return v26;
}

- (void)_addDependency
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [v2 allowListDestinations];
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v7 = kMCDMPayloadUUIDToDeviceNameDependencyKey;
    v8 = kMCDMAirPlayAllowlistDeviceNameToPayloadUUIDDependencyKey;
    v32 = kMCDMPayloadUUIDToAirPlayAllowlistMACDependencyKey;
    v31 = kMCDMAirPlayAllowlistMACToPayloadUUIDDependencyKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [v10 deviceName];

        v12 = +[MCDependencyManager sharedManager];
        if (v11)
        {
          v13 = [v10 deviceName];
          v14 = [v2 UUID];
          v15 = v12;
          v16 = v13;
          v17 = v14;
          v18 = v7;
          v19 = v8;
        }

        else
        {
          v13 = [v10 deviceID];
          v14 = [v2 UUID];
          v15 = v12;
          v16 = v13;
          v17 = v14;
          v19 = v31;
          v18 = v32;
        }

        [v15 addDependent:v16 ofParent:v17 inDomain:v18 reciprocalDomain:v19];
      }

      v5 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = [v2 destinationsWithPasswords];
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    v24 = kMCDMPayloadUUIDToAirPlayPasswordDeviceNameDependencyKey;
    v25 = kMCDMAirPlayPasswordDeviceNameToPayloadUUIDDependencyKey;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v33 + 1) + 8 * j);
        v28 = +[MCDependencyManager sharedManager];
        v29 = [v27 deviceName];
        v30 = [v2 UUID];
        [v28 addDependent:v29 ofParent:v30 inDomain:v24 reciprocalDomain:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)_removeDependency
{
  v2 = [(MCNewPayloadHandler *)self payload];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v3 = [v2 allowListDestinations];
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v38;
    v7 = kMCDMPayloadUUIDToDeviceNameDependencyKey;
    v8 = kMCDMAirPlayAllowlistDeviceNameToPayloadUUIDDependencyKey;
    v32 = kMCDMPayloadUUIDToAirPlayAllowlistMACDependencyKey;
    v31 = kMCDMAirPlayAllowlistMACToPayloadUUIDDependencyKey;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v38 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        v11 = [v10 deviceName];

        v12 = +[MCDependencyManager sharedManager];
        if (v11)
        {
          v13 = [v10 deviceName];
          v14 = [v2 UUID];
          v15 = v12;
          v16 = v13;
          v17 = v14;
          v18 = v7;
          v19 = v8;
        }

        else
        {
          v13 = [v10 deviceID];
          v14 = [v2 UUID];
          v15 = v12;
          v16 = v13;
          v17 = v14;
          v19 = v31;
          v18 = v32;
        }

        [v15 removeDependent:v16 fromParent:v17 inDomain:v18 reciprocalDomain:v19];
      }

      v5 = [v3 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = [v2 destinationsWithPasswords];
  v21 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v34;
    v24 = kMCDMPayloadUUIDToAirPlayPasswordDeviceNameDependencyKey;
    v25 = kMCDMAirPlayPasswordDeviceNameToPayloadUUIDDependencyKey;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v34 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v33 + 1) + 8 * j);
        v28 = +[MCDependencyManager sharedManager];
        v29 = [v27 deviceName];
        v30 = [v2 UUID];
        [v28 removeDependent:v29 fromParent:v30 inDomain:v24 reciprocalDomain:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {

    [(MCAirPlayPayloadHandler *)self _removeDependency];
  }
}

+ (void)recomputeAirPlaySettings
{
  v2 = _MCLogObjects[0];
  if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Recomputing AirPlay settings.", buf, 2u);
  }

  v3 = +[MCDependencyManager sharedManager];
  v4 = kMCDMPayloadUUIDToAirPlayAllowlistMACDependencyKey;
  v5 = [v3 parentsInDomain:kMCDMPayloadUUIDToAirPlayAllowlistMACDependencyKey];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v43;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v3 dependentsOfParent:*(*(&v42 + 1) + 8 * i) inDomain:v4];
        if ([v11 count])
        {
          if (v8)
          {
            v12 = [NSSet setWithArray:v11];
            [v8 intersectSet:v12];
          }

          else
          {
            v8 = [NSMutableSet setWithArray:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if ([v8 count])
  {
    v13 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      v15 = [v8 count];
      *buf = 134217984;
      v48 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Setting AirPlay allowlist to %lu devices.", buf, 0xCu);
    }
  }

  else
  {

    v8 = 0;
  }

  v37 = v5;
  v16 = kMCDMPayloadUUIDToDeviceNameDependencyKey;
  v17 = [v3 parentsInDomain:kMCDMPayloadUUIDToDeviceNameDependencyKey];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v39;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v39 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = [v3 dependentsOfParent:*(*(&v38 + 1) + 8 * j) inDomain:v16];
        if ([v23 count])
        {
          if (v20)
          {
            v24 = [NSSet setWithArray:v23];
            [v20 intersectSet:v24];
          }

          else
          {
            v20 = [NSMutableSet setWithArray:v23];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  if ([v20 count])
  {
    v25 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_INFO))
    {
      v26 = v25;
      v27 = [v8 count];
      *buf = 134217984;
      v48 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Setting AirPlay allowlist to %lu devices.", buf, 0xCu);
    }
  }

  else
  {

    v20 = 0;
  }

  v28 = CFPreferencesCopyAppValue(@"deviceFilter", @"com.apple.airplay");
  if (v28 | v8 && ([v8 allObjects], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v28, "isEqualToArray:", v29), v29, (v30 & 1) == 0))
  {
    v32 = [v8 allObjects];
    CFPreferencesSetAppValue(@"deviceFilter", v32, @"com.apple.airplay");

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v33 = CFPreferencesCopyAppValue(@"deviceNameFilter", @"com.apple.airplay");
  if (v33 | v20 && ([v20 allObjects], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToArray:", v34), v34, (v35 & 1) == 0))
  {
    v36 = [v20 allObjects];
    CFPreferencesSetAppValue(@"deviceNameFilter", v36, @"com.apple.airplay");
  }

  else if (!v31)
  {
    goto LABEL_47;
  }

  CFPreferencesAppSynchronize(@"com.apple.airplay");
  MCSendAirPlayPreferencesChangedNotification();
LABEL_47:
}

@end