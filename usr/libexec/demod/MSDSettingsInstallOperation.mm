@interface MSDSettingsInstallOperation
- (BOOL)_applySettingToDevice;
- (BOOL)_saveDisplaySettings;
- (BOOL)_updateLocale;
- (id)methodSelectors;
@end

@implementation MSDSettingsInstallOperation

- (id)methodSelectors
{
  if (+[MSDOperationContext downloadOnly])
  {
    v2 = +[NSArray array];
  }

  else
  {
    v3 = [NSValue valueWithPointer:"_applySettingToDevice"];
    v2 = [NSArray arrayWithObjects:v3, 0];
  }

  return v2;
}

- (BOOL)_applySettingToDevice
{
  v3 = sub_100063A54();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MSDOperation *)self context];
    v5 = [v4 identifier];
    v14 = 136315394;
    v15 = "[MSDSettingsInstallOperation _applySettingToDevice]";
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s - identifier %{public}@", &v14, 0x16u);
  }

  v6 = [(MSDOperation *)self context];
  v7 = [v6 identifier];
  v8 = [v7 isEqual:@"locale"];

  if (v8)
  {
    return [(MSDSettingsInstallOperation *)self _updateLocale];
  }

  v10 = [(MSDOperation *)self context];
  v11 = [v10 identifier];
  v12 = [v11 isEqualToString:@"display"];

  if (v12)
  {
    return [(MSDSettingsInstallOperation *)self _saveDisplaySettings];
  }

  v13 = sub_100063A54();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1000E8924(self, v13);
  }

  return 0;
}

- (BOOL)_updateLocale
{
  v3 = [(MSDOperation *)self context];
  v4 = [v3 dataDict];
  v5 = [v4 objectForKey:@"language"];

  v6 = [(MSDOperation *)self context];
  v7 = [v6 dataDict];
  v8 = [v7 objectForKey:@"region"];

  if (v5 && v8)
  {
    v20[0] = @"language";
    v20[1] = @"region";
    v21[0] = v5;
    v21[1] = v8;
    v9 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    v10 = sub_100063A54();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[MSDSettingsInstallOperation _updateLocale]";
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s language: %{public}@ region: %{public}@", &v14, 0x20u);
    }

    v11 = +[MSDPreferencesFile sharedInstance];
    v12 = [v11 setObject:v9 forKey:@"locale"];
  }

  else
  {
    v9 = sub_100063A54();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E89E8(v9);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_saveDisplaySettings
{
  v2 = [(MSDOperation *)self context];
  v3 = [v2 dataDict];
  v4 = [v3 objectForKey:@"HDR"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = sub_100063A54();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[MSDSettingsInstallOperation _saveDisplaySettings]";
      v11 = 1024;
      v12 = [v4 BOOLValue];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s - HDR setting:  %{BOOL}d", &v9, 0x12u);
    }

    v6 = +[MSDPreferencesFile sharedInstance];
    [v6 setObject:v4 forKey:@"HDR"];

    v7 = 1;
  }

  else
  {
    sub_1000E8B34();
    v7 = 0;
  }

  return v7;
}

@end