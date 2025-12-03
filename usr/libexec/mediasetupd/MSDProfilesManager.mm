@interface MSDProfilesManager
+ (id)fetchInstalledMediaSetupProfilesManagedDefaults;
- (MSDProfilesManager)init;
- (MSDProfilesManagerDelegate)delegate;
- (void)dealloc;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info;
- (void)syncStatusOfInstalledProfiles;
@end

@implementation MSDProfilesManager

- (MSDProfilesManager)init
{
  v5.receiver = self;
  v5.super_class = MSDProfilesManager;
  v2 = [(MSDProfilesManager *)&v5 init];
  if (v2)
  {
    v3 = +[MCProfileConnection sharedConnection];
    [v3 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[MCProfileConnection sharedConnection];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MSDProfilesManager;
  [(MSDProfilesManager *)&v4 dealloc];
}

- (void)syncStatusOfInstalledProfiles
{
  v3 = sub_100030FE4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Fetching Installed Profiles", &v20, 2u);
  }

  fetchInstalledMediaSetupProfilesManagedDefaults = [objc_opt_class() fetchInstalledMediaSetupProfilesManagedDefaults];
  v5 = [fetchInstalledMediaSetupProfilesManagedDefaults count];
  v6 = +[MSDDefaultsManager sharedManager];
  developerProfilesCount = [v6 developerProfilesCount];

  v8 = +[MSDDefaultsManager sharedManager];
  [v8 setDeveloperProfilesCount:v5];

  if (v5)
  {
    v9 = +[MSDDefaultsManager sharedManager];
    profilesEverInstalled = [v9 profilesEverInstalled];

    v11 = sub_100030FE4();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (!profilesEverInstalled || v5 >= developerProfilesCount)
    {
      if (v12)
      {
        v19 = [fetchInstalledMediaSetupProfilesManagedDefaults count];
        v20 = 134217984;
        v21 = v19;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Found %lu matching profiles installed on device", &v20, 0xCu);
      }

      delegate = [(MSDProfilesManager *)self delegate];
      v18 = [fetchInstalledMediaSetupProfilesManagedDefaults copy];
      [delegate profilesManager:self didAddProfiles:v18];
      goto LABEL_18;
    }

    if (v12)
    {
      LOWORD(v20) = 0;
      v13 = "A profile was removed from the device";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &v20, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v14 = sub_100030FE4();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No Profiles matching com.apple.mediasetup.developer domain", &v20, 2u);
  }

  v15 = +[MSDDefaultsManager sharedManager];
  profilesEverInstalled2 = [v15 profilesEverInstalled];

  if (profilesEverInstalled2)
  {
    v11 = sub_100030FE4();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      v13 = "Profile was installed on device, and we received a state change";
      goto LABEL_13;
    }

LABEL_14:

    delegate = [(MSDProfilesManager *)self delegate];
    v18 = [fetchInstalledMediaSetupProfilesManagedDefaults copy];
    [delegate profilesManager:self didUpdateProfiles:v18];
LABEL_18:
  }
}

+ (id)fetchInstalledMediaSetupProfilesManagedDefaults
{
  v2 = objc_opt_new();
  v3 = +[MCProfileConnection sharedConnection];
  v4 = [v3 installedProfilesWithFilterFlags:3];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v26)
  {
    v25 = *v39;
    v5 = kMediaSetupTestingProfileDefaultsIdentifier;
    do
    {
      v6 = 0;
      do
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v6;
        v7 = *(*(&v38 + 1) + 8 * v6);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        payloads = [v7 payloads];
        v8 = [payloads countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v8)
        {
          v9 = v8;
          v29 = *v35;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v35 != v29)
              {
                objc_enumerationMutation(payloads);
              }

              v11 = *(*(&v34 + 1) + 8 * i);
              objc_opt_class();
              v12 = v11;
              if (objc_opt_isKindOfClass())
              {
                v13 = v12;
              }

              else
              {
                v13 = 0;
              }

              v14 = v13;

              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              domains = [v14 domains];
              v16 = [domains countByEnumeratingWithState:&v30 objects:v42 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v31;
                do
                {
                  for (j = 0; j != v17; j = j + 1)
                  {
                    if (*v31 != v18)
                    {
                      objc_enumerationMutation(domains);
                    }

                    v20 = *(*(&v30 + 1) + 8 * j);
                    if ([v20 containsString:v5])
                    {
                      v21 = [v14 defaultsForDomain:v20];
                      [v2 na_safeAddObject:v21];
                    }
                  }

                  v17 = [domains countByEnumeratingWithState:&v30 objects:v42 count:16];
                }

                while (v17);
              }
            }

            v9 = [payloads countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v9);
        }

        v6 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v26);
  }

  v22 = [v2 copy];

  return v22;
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)notification userInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v8 = sub_100030FE4();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = notificationCopy;
    v11 = 2112;
    v12 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Profile List changed notification received for profileconnection..%@ with userinfo..%@", &v9, 0x16u);
  }

  [(MSDProfilesManager *)self syncStatusOfInstalledProfiles];
}

- (MSDProfilesManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end