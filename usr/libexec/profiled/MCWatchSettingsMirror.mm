@interface MCWatchSettingsMirror
+ (id)sharedMirror;
- (MCWatchSettingsMirror)init;
- (id)effectiveIntersectionValuesForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store;
- (id)effectiveUnionValuesForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store;
- (id)effectiveValueForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store;
- (int)effectiveBoolValueForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store;
@end

@implementation MCWatchSettingsMirror

+ (id)sharedMirror
{
  if (qword_100136BB0 != -1)
  {
    sub_1000C2C88();
  }

  v3 = qword_100136BA8;

  return v3;
}

- (MCWatchSettingsMirror)init
{
  v7.receiver = self;
  v7.super_class = MCWatchSettingsMirror;
  v2 = [(MCWatchSettingsMirror *)&v7 init];
  v9[0] = MCRestrictedBoolKey;
  v8[0] = MCFeatureAppInstallationAllowed;
  v8[1] = MCFeatureAutomaticAppDownloadsAllowed;
  v3 = [NSArray arrayWithObjects:v8 count:2];
  v10[0] = v3;
  v10[1] = &__NSArray0__struct;
  v9[1] = MCRestrictedValueKey;
  v9[2] = MCIntersectionKey;
  v9[3] = MCUnionKey;
  v10[2] = &__NSArray0__struct;
  v10[3] = &__NSArray0__struct;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  syncableSettings = v2->_syncableSettings;
  v2->_syncableSettings = v4;

  return v2;
}

- (int)effectiveBoolValueForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  syncableSettings = [(MCWatchSettingsMirror *)self syncableSettings];
  v12 = MCRestrictedBoolKey;
  v13 = [syncableSettings objectForKeyedSubscript:MCRestrictedBoolKey];

  if ([v13 containsObject:settingCopy])
  {
    v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.ManagedConfiguration.WatchEffectiveSettingsMirror" pairingID:dCopy pairingDataStore:storeCopy];
    synchronize = [v14 synchronize];
    if (synchronize)
    {
      v16 = _MCLogObjects[2];
      v17 = 0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
        localizedDescription = [synchronize localizedDescription];
        v25 = 138543362;
        v26 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unable to synchronize accessor. Error: %{public}@", &v25, 0xCu);

        v17 = 0;
      }
    }

    else
    {
      v20 = [v14 objectForKey:v12];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 objectForKeyedSubscript:settingCopy];
        v23 = [v22 objectForKeyedSubscript:MCRestrictedBoolValueKey];

        if (v23)
        {
          if ([v23 BOOLValue])
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)effectiveValueForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  syncableSettings = [(MCWatchSettingsMirror *)self syncableSettings];
  v12 = MCRestrictedValueKey;
  v13 = [syncableSettings objectForKeyedSubscript:MCRestrictedValueKey];

  if ([v13 containsObject:settingCopy])
  {
    v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.ManagedConfiguration.WatchEffectiveSettingsMirror" pairingID:dCopy pairingDataStore:storeCopy];
    synchronize = [v14 synchronize];
    if (synchronize)
    {
      v16 = _MCLogObjects[2];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        localizedDescription = [synchronize localizedDescription];
        v25 = 138543362;
        v26 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to synchronize accessor. Error: %{public}@", &v25, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      v20 = [v14 objectForKey:v12];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 objectForKeyedSubscript:settingCopy];
        v23 = [v22 objectForKeyedSubscript:MCRestrictedValueValueKey];
      }

      else
      {
        v23 = 0;
      }

      v19 = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)effectiveIntersectionValuesForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  syncableSettings = [(MCWatchSettingsMirror *)self syncableSettings];
  v12 = MCIntersectionKey;
  v13 = [syncableSettings objectForKeyedSubscript:MCIntersectionKey];

  if ([v13 containsObject:settingCopy])
  {
    v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.ManagedConfiguration.WatchEffectiveSettingsMirror" pairingID:dCopy pairingDataStore:storeCopy];
    synchronize = [v14 synchronize];
    if (synchronize)
    {
      v16 = _MCLogObjects[2];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        localizedDescription = [synchronize localizedDescription];
        v25 = 138543362;
        v26 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to synchronize accessor. Error: %{public}@", &v25, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      v20 = [v14 objectForKey:v12];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 objectForKeyedSubscript:settingCopy];
        v23 = [v22 objectForKeyedSubscript:MCIntersectionValuesKey];
      }

      else
      {
        v23 = 0;
      }

      v19 = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)effectiveUnionValuesForSetting:(id)setting pairingID:(id)d pairingDataStore:(id)store
{
  settingCopy = setting;
  dCopy = d;
  storeCopy = store;
  syncableSettings = [(MCWatchSettingsMirror *)self syncableSettings];
  v12 = MCUnionKey;
  v13 = [syncableSettings objectForKeyedSubscript:MCUnionKey];

  if ([v13 containsObject:settingCopy])
  {
    v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.ManagedConfiguration.WatchEffectiveSettingsMirror" pairingID:dCopy pairingDataStore:storeCopy];
    synchronize = [v14 synchronize];
    if (synchronize)
    {
      v16 = _MCLogObjects[2];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        localizedDescription = [synchronize localizedDescription];
        v25 = 138543362;
        v26 = localizedDescription;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to synchronize accessor. Error: %{public}@", &v25, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      v20 = [v14 objectForKey:v12];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 objectForKeyedSubscript:settingCopy];
        v23 = [v22 objectForKeyedSubscript:MCUnionValuesKey];
      }

      else
      {
        v23 = 0;
      }

      v19 = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end