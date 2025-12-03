@interface MCAirPlayPayloadHandler
+ (void)recomputeAirPlaySettings;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)_addDependency;
- (void)_removeDependency;
- (void)remove;
@end

@implementation MCAirPlayPayloadHandler

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v7 = [(MCNewPayloadHandler *)self payload:installer];
  selfCopy = self;
  [(MCAirPlayPayloadHandler *)self _addDependency];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = v7;
  destinationsWithPasswords = [v7 destinationsWithPasswords];
  v9 = [destinationsWithPasswords countByEnumeratingWithState:&v35 objects:v41 count:16];
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
          objc_enumerationMutation(destinationsWithPasswords);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        deviceName = [v13 deviceName];
        if (deviceName)
        {
          v15 = deviceName;
          password = [v13 password];

          if (password)
          {
            v17 = _MCLogObjects[0];
            if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_DEFAULT))
            {
              v18 = v17;
              deviceName2 = [v13 deviceName];
              *buf = 138543362;
              v40 = deviceName2;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting AirPlay password for device name %{public}@", buf, 0xCu);
            }

            password2 = [v13 password];
            deviceName3 = [v13 deviceName];
            profileHandler = [(MCNewPayloadHandler *)selfCopy profileHandler];
            profile = [profileHandler profile];
            isInstalledForSystem = [profile isInstalledForSystem];
            v34 = 0;
            LOBYTE(v28) = isInstalledForSystem;
            [MCKeychain setString:password2 forService:v32 account:deviceName3 label:0 description:0 group:v31 useSystemKeychain:v28 outError:&v34];
            v25 = v34;

            if (v25)
            {

              [(MCAirPlayPayloadHandler *)selfCopy _removeDependency];
              v26 = 0;
              if (error)
              {
                *error = [v25 MCCopyAsPrimaryError];
              }

              goto LABEL_16;
            }
          }
        }
      }

      v10 = [destinationsWithPasswords countByEnumeratingWithState:&v35 objects:v41 count:16];
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
  payload = [(MCNewPayloadHandler *)self payload];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  allowListDestinations = [payload allowListDestinations];
  v4 = [allowListDestinations countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(allowListDestinations);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        deviceName = [v10 deviceName];

        v12 = +[MCDependencyManager sharedManager];
        if (deviceName)
        {
          deviceName2 = [v10 deviceName];
          uUID = [payload UUID];
          v15 = v12;
          v16 = deviceName2;
          v17 = uUID;
          v18 = v7;
          v19 = v8;
        }

        else
        {
          deviceName2 = [v10 deviceID];
          uUID = [payload UUID];
          v15 = v12;
          v16 = deviceName2;
          v17 = uUID;
          v19 = v31;
          v18 = v32;
        }

        [v15 addDependent:v16 ofParent:v17 inDomain:v18 reciprocalDomain:v19];
      }

      v5 = [allowListDestinations countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  destinationsWithPasswords = [payload destinationsWithPasswords];
  v21 = [destinationsWithPasswords countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(destinationsWithPasswords);
        }

        v27 = *(*(&v33 + 1) + 8 * j);
        v28 = +[MCDependencyManager sharedManager];
        deviceName3 = [v27 deviceName];
        uUID2 = [payload UUID];
        [v28 addDependent:deviceName3 ofParent:uUID2 inDomain:v24 reciprocalDomain:v25];
      }

      v22 = [destinationsWithPasswords countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)_removeDependency
{
  payload = [(MCNewPayloadHandler *)self payload];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  allowListDestinations = [payload allowListDestinations];
  v4 = [allowListDestinations countByEnumeratingWithState:&v37 objects:v42 count:16];
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
          objc_enumerationMutation(allowListDestinations);
        }

        v10 = *(*(&v37 + 1) + 8 * i);
        deviceName = [v10 deviceName];

        v12 = +[MCDependencyManager sharedManager];
        if (deviceName)
        {
          deviceName2 = [v10 deviceName];
          uUID = [payload UUID];
          v15 = v12;
          v16 = deviceName2;
          v17 = uUID;
          v18 = v7;
          v19 = v8;
        }

        else
        {
          deviceName2 = [v10 deviceID];
          uUID = [payload UUID];
          v15 = v12;
          v16 = deviceName2;
          v17 = uUID;
          v19 = v31;
          v18 = v32;
        }

        [v15 removeDependent:v16 fromParent:v17 inDomain:v18 reciprocalDomain:v19];
      }

      v5 = [allowListDestinations countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v5);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  destinationsWithPasswords = [payload destinationsWithPasswords];
  v21 = [destinationsWithPasswords countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(destinationsWithPasswords);
        }

        v27 = *(*(&v33 + 1) + 8 * j);
        v28 = +[MCDependencyManager sharedManager];
        deviceName3 = [v27 deviceName];
        uUID2 = [payload UUID];
        [v28 removeDependent:deviceName3 fromParent:uUID2 inDomain:v24 reciprocalDomain:v25];
      }

      v22 = [destinationsWithPasswords countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v22);
  }
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
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
    allObjects = [v8 allObjects];
    CFPreferencesSetAppValue(@"deviceFilter", allObjects, @"com.apple.airplay");

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v33 = CFPreferencesCopyAppValue(@"deviceNameFilter", @"com.apple.airplay");
  if (v33 | v20 && ([v20 allObjects], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v33, "isEqualToArray:", v34), v34, (v35 & 1) == 0))
  {
    allObjects2 = [v20 allObjects];
    CFPreferencesSetAppValue(@"deviceNameFilter", allObjects2, @"com.apple.airplay");
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