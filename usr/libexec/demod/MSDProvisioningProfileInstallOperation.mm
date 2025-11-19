@interface MSDProvisioningProfileInstallOperation
- (BOOL)_installProvisioningProfiles;
- (BOOL)_installProvisioningProfilesInBackup;
- (BOOL)_installStandaloneProvisioningProfile;
- (id)methodSelectors;
@end

@implementation MSDProvisioningProfileInstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_installProvisioningProfiles"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_installProvisioningProfiles
{
  v3 = [(MSDOperation *)self context];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {

    return [(MSDProvisioningProfileInstallOperation *)self _installProvisioningProfilesInBackup];
  }

  else
  {
    v5 = [(MSDOperation *)self context];
    objc_opt_class();
    v6 = objc_opt_isKindOfClass();

    if (v6)
    {

      return [(MSDProvisioningProfileInstallOperation *)self _installStandaloneProvisioningProfile];
    }

    else
    {
      v7 = sub_100063A54();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unrecognized operation context.", v9, 2u);
      }

      return 0;
    }
  }
}

- (BOOL)_installProvisioningProfilesInBackup
{
  v2 = [(MSDOperation *)self context];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 secondaryStagingRootPath];
  v5 = [v4 stringByAppendingPathComponent:@"/var/MobileDevice/ProvisioningProfiles"];
  v6 = sub_100063A54();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Provisioning profile directory: %{public}@", buf, 0xCu);
  }

  v34 = 0;
  v7 = [v3 contentsOfDirectoryAtPath:v5 error:&v34];
  v8 = v34;
  if (!v7)
  {
    obj = sub_100063A54();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      sub_1000E04AC(v8);
    }

    goto LABEL_26;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (!v9)
  {
LABEL_26:
    v21 = 1;
    goto LABEL_27;
  }

  v10 = v9;
  v23 = v8;
  v24 = v7;
  v25 = v4;
  v26 = v3;
  v27 = v2;
  v11 = *v31;
  v28 = 1;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      if (([v13 hasPrefix:@"."] & 1) == 0)
      {
        v14 = v5;
        v15 = [v5 stringByAppendingPathComponent:v13];
        v16 = sub_100063A54();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v36 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Installing provisioning profile: %{public}@", buf, 0xCu);
        }

        v17 = MISProfileCreateWithFile();
        if (v17)
        {
          v18 = v17;
          if (MISInstallProvisioningProfile())
          {
            v19 = MISCopyErrorStringForErrorCode();
            v20 = sub_100063A54();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v36 = v15;
              v37 = 2114;
              v38 = v19;
              _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to install %{public}@ with error %{public}@", buf, 0x16u);
            }

            v28 = 0;
          }

          else
          {
            v19 = sub_100063A54();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v36 = v15;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Install success for %{public}@", buf, 0xCu);
            }
          }

          CFRelease(v18);
        }

        v5 = v14;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  }

  while (v10);
  v3 = v26;
  v2 = v27;
  v7 = v24;
  v4 = v25;
  v8 = v23;
  v21 = v28;
LABEL_27:

  return v21 & 1;
}

- (BOOL)_installStandaloneProvisioningProfile
{
  v2 = [(MSDOperation *)self context];
  v3 = +[NSFileManager defaultManager];
  v4 = [v2 stagingRootPath];
  v5 = [v2 fileHash];
  v6 = [v4 stringByAppendingPathComponent:v5];
  v7 = [v2 identifier];
  v8 = sub_100063A54();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "INFO - Installing provisioning profile: %{public}@", buf, 0xCu);
  }

  v9 = +[MSDContentCacheManager sharedInstance];
  v10 = [v9 copyFileIfPresentInCache:v5 toLocation:v6 verifyHash:{objc_msgSend(v2, "verifyFileHash")}];

  if (v10)
  {
    v11 = [MSDProvisioningProfileUtils installProvisioningProfile:v6];
  }

  else
  {
    sub_1000E0534();
    v11 = 0;
  }

  if ([v3 fileExistsAtPath:v6])
  {
    v16 = 0;
    v12 = [v3 removeItemAtPath:v6 error:&v16];
    v13 = v16;
    if ((v12 & 1) == 0)
    {
      v14 = sub_100063A54();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E05CC(v13);
      }
    }
  }

  return v11;
}

@end