@interface MSDProvisioningProfileUtils
+ (BOOL)installProvisioningProfile:(id)profile;
+ (BOOL)isProvisioningProfileInstalled:(id)installed;
+ (BOOL)uninstallProvisioningProfileByFileName:(id)name;
+ (BOOL)uninstallProvisioningProfileByUUID:(id)d;
+ (id)getUUIDFromProvisioningProfileRef:(void *)ref;
+ (id)getUUIDsOfInstalledProvisioningProfiles;
+ (void)loadProvisioningProfileFromFile:(id)file;
@end

@implementation MSDProvisioningProfileUtils

+ (BOOL)uninstallProvisioningProfileByUUID:(id)d
{
  dCopy = d;
  v4 = MISRemoveProvisioningProfile();
  if (v4)
  {
    v5 = MISCopyErrorStringForErrorCode();
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = dCopy;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR - Failed to uninstall provisioning profile with UUID:  %{public}@ - Error:  %{public}@", &v8, 0x16u);
    }
  }

  return v4 == 0;
}

+ (id)getUUIDsOfInstalledProvisioningProfiles
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1000126B4;
  v13 = sub_1000126C4;
  v14 = 0;
  v2 = +[NSMutableArray array];
  v3 = v10[5];
  v10[5] = v2;

  if (MISEnumerateInstalledProvisioningProfiles())
  {
    v4 = v10[5];
    v10[5] = 0;

    v5 = MISCopyErrorStringForErrorCode();
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ERROR - Failed to collect UUIDs of installed provisioning profiles - Error:  %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v7;
}

+ (void)loadProvisioningProfileFromFile:(id)file
{
  fileCopy = file;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:fileCopy];

  if ((v5 & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6C1C(fileCopy, v8);
    }

    goto LABEL_8;
  }

  v6 = MISProfileCreateWithFile();
  if (!v6)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6C94(fileCopy, v8);
    }

LABEL_8:

    v6 = 0;
  }

  return v6;
}

+ (BOOL)installProvisioningProfile:(id)profile
{
  profileCopy = profile;
  v4 = [MSDProvisioningProfileUtils loadProvisioningProfileFromFile:profileCopy];
  if (v4)
  {
    v5 = v4;
    v6 = MISInstallProvisioningProfile();
    v7 = v6 == 0;
    if (v6)
    {
      v8 = MISCopyErrorStringForErrorCode();
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543618;
        v12 = profileCopy;
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ERROR - Failed to install provisioning profile:  %{public}@) with error %{public}@", &v11, 0x16u);
      }
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)uninstallProvisioningProfileByFileName:(id)name
{
  nameCopy = name;
  v4 = [MSDProvisioningProfileUtils loadProvisioningProfileFromFile:nameCopy];
  if (v4)
  {
    v5 = v4;
    v6 = MISProvisioningProfileGetUUID();
    if (v6)
    {
      v7 = [MSDProvisioningProfileUtils uninstallProvisioningProfileByUUID:v6];
    }

    else
    {
      v9 = sub_100063A54();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543362;
        v11 = nameCopy;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "ERROR - Failed to extract UUID from provisioning profile:  %{public}@", &v10, 0xCu);
      }

      v7 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isProvisioningProfileInstalled:(id)installed
{
  installedCopy = installed;
  v4 = +[MSDProvisioningProfileUtils getUUIDsOfInstalledProvisioningProfiles];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:installedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getUUIDFromProvisioningProfileRef:(void *)ref
{
  Value = MISProfileGetValue();
  if (Value)
  {
    Value = [NSString stringWithString:Value];
  }

  return Value;
}

@end