@interface MSDConfigurationProfile
- (MSDConfigurationProfile)initWithDefaultProfile;
- (MSDConfigurationProfile)initWithDemoModeProfile;
- (MSDConfigurationProfile)initWithFile:(id)file andIdentifier:(id)identifier;
- (id)getProfileData;
- (id)getSupervisedRestrictions;
@end

@implementation MSDConfigurationProfile

- (MSDConfigurationProfile)initWithFile:(id)file andIdentifier:(id)identifier
{
  fileCopy = file;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = MSDConfigurationProfile;
  v8 = [(MSDConfigurationProfile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(MSDConfigurationProfile *)v8 setProfilePath:fileCopy];
    if ([(__CFString *)identifierCopy isEqualToString:@"com.apple.mobilestoredemo.demoBundleProfile"])
    {

      identifierCopy = @"com.apple.mobilestoredemo.demoProfile.standardPreferences";
    }

    [(MSDConfigurationProfile *)v9 setProfileIdentifier:identifierCopy];
  }

  return v9;
}

- (MSDConfigurationProfile)initWithDefaultProfile
{
  v5.receiver = self;
  v5.super_class = MSDConfigurationProfile;
  v2 = [(MSDConfigurationProfile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDConfigurationProfile *)v2 setProfilePath:0];
    [(MSDConfigurationProfile *)v3 setProfileIdentifier:@"com.apple.mobilestoredemo.defaultProfile"];
  }

  return v3;
}

- (MSDConfigurationProfile)initWithDemoModeProfile
{
  v5.receiver = self;
  v5.super_class = MSDConfigurationProfile;
  v2 = [(MSDConfigurationProfile *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDConfigurationProfile *)v2 setProfilePath:0];
    [(MSDConfigurationProfile *)v3 setProfileIdentifier:@"com.apple.mobilestoredemo.demoMode"];
  }

  return v3;
}

- (id)getProfileData
{
  profileIdentifier = [(MSDConfigurationProfile *)self profileIdentifier];
  v4 = [profileIdentifier isEqualToString:@"com.apple.mobilestoredemo.defaultProfile"];

  if (v4)
  {
    v5 = dword_1001A3A10;
    v6 = aXmlVersion10En;
LABEL_5:
    v9 = [NSData dataWithBytes:v6 length:v5];
    goto LABEL_6;
  }

  profileIdentifier2 = [(MSDConfigurationProfile *)self profileIdentifier];
  v8 = [profileIdentifier2 isEqualToString:@"com.apple.mobilestoredemo.demoMode"];

  if (v8)
  {
    v5 = dword_1001A4004;
    v6 = aXmlVersion10En_0;
    goto LABEL_5;
  }

  profileIdentifier3 = [(MSDConfigurationProfile *)self profileIdentifier];
  if ([profileIdentifier3 isEqualToString:@"com.apple.mobilestoredemo.demoProfile.standardPreferences"])
  {

LABEL_12:
    profilePath = [(MSDConfigurationProfile *)self profilePath];
    v9 = [NSData dataWithContentsOfFile:profilePath];

    goto LABEL_6;
  }

  profileIdentifier4 = [(MSDConfigurationProfile *)self profileIdentifier];
  v13 = [profileIdentifier4 isEqualToString:@"com.apple.mobilestoredemo.mdmProfile.dockLayout"];

  if (v13)
  {
    goto LABEL_12;
  }

  v15 = sub_100063A54();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    profileIdentifier5 = [(MSDConfigurationProfile *)self profileIdentifier];
    v17 = 138543362;
    v18 = profileIdentifier5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "getProfileData called for unknown profile type: %{public}@", &v17, 0xCu);
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (id)getSupervisedRestrictions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  profileIdentifier = [(MSDConfigurationProfile *)self profileIdentifier];
  v5 = [profileIdentifier isEqualToString:@"com.apple.mobilestoredemo.demoProfile.supervisedRestrictions"];

  if (v5)
  {
    profilePath = [(MSDConfigurationProfile *)self profilePath];
    v7 = [NSDictionary dictionaryWithContentsOfFile:profilePath];
    v8 = [v7 objectForKey:@"PayloadContent"];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v8;
    v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v22)
    {
      v21 = *v29;
      do
      {
        v9 = 0;
        do
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = v9;
          v10 = *(*(&v28 + 1) + 8 * v9);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v25;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v24 + 1) + 8 * i);
                if (([v16 containsString:@"Payload"] & 1) == 0)
                {
                  v17 = [v11 objectForKey:v16];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v18 = CFGetTypeID(v17);
                    if (v18 == CFBooleanGetTypeID())
                    {
                      [v3 MCSetBoolRestriction:v16 value:{objc_msgSend(v17, "BOOLValue")}];
                    }
                  }
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v13);
          }

          v9 = v23 + 1;
        }

        while ((v23 + 1) != v22);
        v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v22);
    }
  }

  return v3;
}

@end