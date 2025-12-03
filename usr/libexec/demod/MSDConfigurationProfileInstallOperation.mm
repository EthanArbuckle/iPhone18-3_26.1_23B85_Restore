@interface MSDConfigurationProfileInstallOperation
- (BOOL)_installConfigurationProfile;
- (id)methodSelectors;
@end

@implementation MSDConfigurationProfileInstallOperation

- (id)methodSelectors
{
  v2 = [NSValue valueWithPointer:"_installConfigurationProfile"];
  v3 = [NSArray arrayWithObjects:v2, 0];

  return v3;
}

- (BOOL)_installConfigurationProfile
{
  context = [(MSDOperation *)self context];
  v3 = +[NSFileManager defaultManager];
  stagingRootPath = [context stagingRootPath];
  fileHash = [context fileHash];
  v6 = [stagingRootPath stringByAppendingPathComponent:fileHash];
  profileIdentifier = [context profileIdentifier];
  v8 = [[MSDConfigurationProfile alloc] initWithFile:v6 andIdentifier:profileIdentifier];
  v9 = sub_100063A54();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [context identifier];
    *buf = 138543362;
    v21 = identifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Installing standalone configuration profile: %{public}@", buf, 0xCu);
  }

  v11 = +[MSDContentCacheManager sharedInstance];
  v12 = [v11 copyFileIfPresentInCache:fileHash toLocation:v6 verifyHash:{objc_msgSend(context, "verifyFileHash")}];

  if (v12)
  {
    v13 = +[MSDConfigurationProfileManager sharedInstance];
    v14 = [v13 installConfigurationProfile:v8];
  }

  else
  {
    v13 = sub_100063A54();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000C57EC(fileHash, v13);
    }

    v14 = 0;
  }

  if ([v3 fileExistsAtPath:v6])
  {
    v19 = 0;
    v15 = [v3 removeItemAtPath:v6 error:&v19];
    v16 = v19;
    if ((v15 & 1) == 0)
    {
      v17 = sub_100063A54();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1000C5864(v16, v17);
      }
    }
  }

  return v14;
}

@end