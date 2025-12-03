@interface MSDConfigurationProfileManager
+ (id)sharedInstance;
- (BOOL)installConfigurationProfile:(id)profile;
- (BOOL)installConfigurationProfileWithData:(id)data;
- (BOOL)installDefaultConfigurationProfile;
- (BOOL)installDemoModeConfigurationProfile;
- (BOOL)installRestrictionsConfigurationProfile:(id)profile;
- (BOOL)isConfigurationProfileInstalled:(id)installed;
- (BOOL)uninstallConfigurationProfile:(id)profile;
- (BOOL)uninstallConfigurationProfileIfNeeded:(id)needed;
- (BOOL)uninstallRestrictionsConfigurationProfile;
- (MSDConfigurationProfileManager)init;
- (void)uninstallAllDemoBundleConfigurationProfiles;
@end

@implementation MSDConfigurationProfileManager

+ (id)sharedInstance
{
  if (qword_1001A55C0 != -1)
  {
    sub_1000C58FC();
  }

  v3 = qword_1001A55B8;

  return v3;
}

- (MSDConfigurationProfileManager)init
{
  v8.receiver = self;
  v8.super_class = MSDConfigurationProfileManager;
  v2 = [(MSDConfigurationProfileManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [(MSDConfigurationProfileManager *)v2 setConfigurationProfilesSupported:v3];

    configurationProfilesSupported = [(MSDConfigurationProfileManager *)v2 configurationProfilesSupported];
    [configurationProfilesSupported addObject:@"com.apple.mobilestoredemo.demoProfile.standardPreferences"];

    configurationProfilesSupported2 = [(MSDConfigurationProfileManager *)v2 configurationProfilesSupported];
    [configurationProfilesSupported2 addObject:@"com.apple.mobilestoredemo.demoMode"];

    configurationProfilesSupported3 = [(MSDConfigurationProfileManager *)v2 configurationProfilesSupported];
    [configurationProfilesSupported3 addObject:@"com.apple.mobilestoredemo.demoProfile.supervisedRestrictions"];
  }

  return v2;
}

- (BOOL)installDefaultConfigurationProfile
{
  initWithDefaultProfile = [[MSDConfigurationProfile alloc] initWithDefaultProfile];
  LOBYTE(self) = [(MSDConfigurationProfileManager *)self installConfigurationProfile:initWithDefaultProfile];

  return self;
}

- (BOOL)installDemoModeConfigurationProfile
{
  initWithDemoModeProfile = [[MSDConfigurationProfile alloc] initWithDemoModeProfile];
  LOBYTE(self) = [(MSDConfigurationProfileManager *)self installConfigurationProfile:initWithDemoModeProfile];

  return self;
}

- (BOOL)installConfigurationProfile:(id)profile
{
  profileCopy = profile;
  profileIdentifier = [profileCopy profileIdentifier];
  if (([profileIdentifier isEqualToString:@"com.apple.mobilestoredemo.demoProfile.standardPreferences"] & 1) != 0 || (objc_msgSend(profileIdentifier, "isEqualToString:", @"com.apple.mobilestoredemo.demoMode") & 1) != 0 || objc_msgSend(profileIdentifier, "isEqualToString:", @"com.apple.mobilestoredemo.defaultProfile"))
  {
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = profileIdentifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Installing configuration profile: %{public}@", &v13, 0xCu);
    }

    if ([(MSDConfigurationProfileManager *)self uninstallConfigurationProfileIfNeeded:profileIdentifier])
    {
      getProfileData = [profileCopy getProfileData];
      if (getProfileData)
      {
        if ([(MSDConfigurationProfileManager *)self installConfigurationProfileWithData:getProfileData])
        {
          v8 = 1;
          goto LABEL_10;
        }

        v12 = sub_100063A54();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5950();
        }
      }

      else
      {
        v12 = sub_100063A54();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1000C5990();
        }
      }
    }

    else
    {
      getProfileData = sub_100063A54();
      if (os_log_type_enabled(getProfileData, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5910();
      }
    }

LABEL_17:
    v8 = 0;
    goto LABEL_10;
  }

  v10 = [profileIdentifier isEqualToString:@"com.apple.mobilestoredemo.demoProfile.supervisedRestrictions"];
  getProfileData = sub_100063A54();
  v11 = os_log_type_enabled(getProfileData, OS_LOG_TYPE_DEFAULT);
  if (!v10)
  {
    if (v11)
    {
      v13 = 138543362;
      v14 = profileIdentifier;
      _os_log_impl(&_mh_execute_header, getProfileData, OS_LOG_TYPE_DEFAULT, "Unknown profile type: %{public}@", &v13, 0xCu);
    }

    goto LABEL_17;
  }

  if (v11)
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, getProfileData, OS_LOG_TYPE_DEFAULT, "Installing restrictions configuration profile.", &v13, 2u);
  }

  getProfileData = [profileCopy getSupervisedRestrictions];
  v8 = [(MSDConfigurationProfileManager *)self installRestrictionsConfigurationProfile:getProfileData];
LABEL_10:

  return v8;
}

- (void)uninstallAllDemoBundleConfigurationProfiles
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling all existing configuration profiles.", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  configurationProfilesSupported = [(MSDConfigurationProfileManager *)self configurationProfilesSupported];
  v5 = [configurationProfilesSupported countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v14;
    *&v6 = 138543362;
    v12 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(configurationProfilesSupported);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v10 isEqualToString:{@"com.apple.mobilestoredemo.demoProfile.standardPreferences", v12}])
        {
          if ([v10 isEqualToString:@"com.apple.mobilestoredemo.demoProfile.supervisedRestrictions"])
          {
            if ([(MSDConfigurationProfileManager *)self uninstallRestrictionsConfigurationProfile])
            {
              continue;
            }

LABEL_13:
            v11 = sub_100063A54();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = v12;
              v18 = v10;
              _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to remove profile: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v11 = sub_100063A54();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v12;
              v18 = v10;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unknown profile identifier found: %{public}@, Marking as removed.", buf, 0xCu);
            }
          }

          continue;
        }

        if (![(MSDConfigurationProfileManager *)self uninstallConfigurationProfileIfNeeded:v10])
        {
          goto LABEL_13;
        }
      }

      v7 = [configurationProfilesSupported countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (BOOL)uninstallConfigurationProfileIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([(MSDConfigurationProfileManager *)self isConfigurationProfileInstalled:neededCopy])
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Uninstalling existing configuration profile.", v8, 2u);
    }

    v6 = [(MSDConfigurationProfileManager *)self uninstallConfigurationProfile:neededCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)installConfigurationProfileWithData:(id)data
{
  dataCopy = data;
  v4 = +[MCProfileConnection sharedConnection];
  v11 = 0;
  v5 = [v4 installProfileData:dataCopy outError:&v11];

  v6 = v11;
  v7 = sub_100063A54();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Successfully installed configuration profile.", v10, 2u);
    }
  }

  else
  {
    sub_1000C59D0(v7, v6);
  }

  return v5 != 0;
}

- (BOOL)uninstallConfigurationProfile:(id)profile
{
  profileCopy = profile;
  v5 = +[MCProfileConnection sharedConnection];
  [v5 removeProfileWithIdentifier:profileCopy];

  v6 = [(MSDConfigurationProfileManager *)self isConfigurationProfileInstalled:profileCopy];
  if (v6)
  {
    sub_1000C5A6C();
  }

  return v6 ^ 1;
}

- (BOOL)isConfigurationProfileInstalled:(id)installed
{
  installedCopy = installed;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = dispatch_semaphore_create(0);
  v5 = +[MCProfileConnection sharedConnection];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009078;
  v8[3] = &unk_100169D58;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [v5 isProfileInstalledWithIdentifier:installedCopy completion:v8];

  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v5) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)installRestrictionsConfigurationProfile:(id)profile
{
  v3 = 1;
  v10 = 1;
  profileCopy = profile;
  v5 = +[MCProfileConnection sharedConnection];
  v9 = 0;
  [v5 applyRestrictionDictionary:profileCopy clientType:@"com.apple.mobilestoredemod" clientUUID:@"com.apple.mobilestoredemod" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:&v10 outEffectiveSettingsChanged:0 outError:&v9];

  v6 = v9;
  if ((v10 & 1) == 0)
  {
    v7 = sub_100063A54();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5B4C();
    }

    v3 = v10;
  }

  return v3 & 1;
}

- (BOOL)uninstallRestrictionsConfigurationProfile
{
  v2 = 1;
  v8 = 1;
  v3 = +[MCProfileConnection sharedConnection];
  v7 = 0;
  [v3 applyRestrictionDictionary:0 clientType:@"com.apple.mobilestoredemod" clientUUID:@"com.apple.mobilestoredemod" localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:&v8 outEffectiveSettingsChanged:0 outError:&v7];
  v4 = v7;
  if ((v8 & 1) == 0)
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000C5BC0();
    }

    v2 = v8;
  }

  return v2 & 1;
}

@end