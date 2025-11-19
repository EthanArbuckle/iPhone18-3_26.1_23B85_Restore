@interface MSDProvisioningProfileUtils
+ (BOOL)installProvisioningProfile:(id)a3;
+ (BOOL)isProvisioningProfileInstalled:(id)a3;
+ (BOOL)uninstallProvisioningProfileByFileName:(id)a3;
+ (BOOL)uninstallProvisioningProfileByUUID:(id)a3;
+ (id)getUUIDFromProvisioningProfileRef:(void *)a3;
+ (id)getUUIDsOfInstalledProvisioningProfiles;
+ (void)loadProvisioningProfileFromFile:(id)a3;
@end

@implementation MSDProvisioningProfileUtils

+ (BOOL)uninstallProvisioningProfileByUUID:(id)a3
{
  v3 = a3;
  v4 = MISRemoveProvisioningProfile();
  if (v4)
  {
    v5 = MISCopyErrorStringForErrorCode();
    v6 = sub_100063A54();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v3;
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

+ (void)loadProvisioningProfileFromFile:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if ((v5 & 1) == 0)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6C1C(v3, v8);
    }

    goto LABEL_8;
  }

  v6 = MISProfileCreateWithFile();
  if (!v6)
  {
    v8 = sub_100063A54();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C6C94(v3, v8);
    }

LABEL_8:

    v6 = 0;
  }

  return v6;
}

+ (BOOL)installProvisioningProfile:(id)a3
{
  v3 = a3;
  v4 = [MSDProvisioningProfileUtils loadProvisioningProfileFromFile:v3];
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
        v12 = v3;
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

+ (BOOL)uninstallProvisioningProfileByFileName:(id)a3
{
  v3 = a3;
  v4 = [MSDProvisioningProfileUtils loadProvisioningProfileFromFile:v3];
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
        v11 = v3;
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

+ (BOOL)isProvisioningProfileInstalled:(id)a3
{
  v3 = a3;
  v4 = +[MSDProvisioningProfileUtils getUUIDsOfInstalledProvisioningProfiles];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)getUUIDFromProvisioningProfileRef:(void *)a3
{
  Value = MISProfileGetValue();
  if (Value)
  {
    Value = [NSString stringWithString:Value];
  }

  return Value;
}

@end