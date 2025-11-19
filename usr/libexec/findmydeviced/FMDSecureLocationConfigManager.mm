@interface FMDSecureLocationConfigManager
+ (id)defaultStorageLocation;
- (FMDSecureLocationConfigManager)init;
- (FMDSecureLocationsConfigManagerDelegate)delegate;
- (id)_dictionaryFromConfigData:(id)a3;
- (id)_parseConfigFile:(id)a3;
- (id)_readConfigFromDictionary:(id)a3;
- (id)_removeContext:(id)a3;
- (id)configForPolicy:(id)a3;
- (id)expirationTimeFor:(id)a3;
- (void)_addContext:(id)a3 withExpiration:(id)a4;
- (void)_archiveConfigFile:(id)a3;
- (void)_policyRequested:(id)a3;
- (void)_readExistingConfigFile;
- (void)policyExpired:(id)a3;
- (void)removeMonitorWithContext:(id)a3;
- (void)requestMonitorWithContext:(id)a3;
- (void)updateConfigData:(id)a3;
@end

@implementation FMDSecureLocationConfigManager

- (FMDSecureLocationConfigManager)init
{
  v18.receiver = self;
  v18.super_class = FMDSecureLocationConfigManager;
  v2 = [(FMDSecureLocationConfigManager *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_create("FMDSecureLocationConfigManagerPolicyUpdate", 0);
    policyManagerQueue = v2->_policyManagerQueue;
    v2->_policyManagerQueue = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    policyExpirationTimes = v2->_policyExpirationTimes;
    v2->_policyExpirationTimes = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    activePolicies = v2->_activePolicies;
    v2->_activePolicies = v7;

    v9 = [FMDataArchiver alloc];
    v10 = [objc_opt_class() defaultStorageLocation];
    v11 = [v9 initWithFileURL:v10];
    [(FMDSecureLocationConfigManager *)v2 setDataArchiver:v11];

    v12 = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [v12 setDataProtectionClass:4];

    v13 = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [v13 setBackedUp:0];

    v14 = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [v14 setCreateDirectories:1];

    [(FMDSecureLocationConfigManager *)v2 _readExistingConfigFile];
    v15 = [(FMDSecureLocationConfigManager *)v2 configForPolicy:kFMDSecureLocationModeBackgroundProactive];
    activeConfig = v2->_activeConfig;
    v2->_activeConfig = v15;
  }

  return v2;
}

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.secureLocations.config"];

  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = @"SecureLocationConfig";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ archiverURL %@", &v7, 0x16u);
  }

  [v4 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:0];

  return v4;
}

- (void)_readExistingConfigFile
{
  v3 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BB770;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_archiveConfigFile:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BBA08;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)updateConfigData:(id)a3
{
  v4 = a3;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = @"SecureLocationConfig";
    v12 = 1024;
    v13 = v4 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Received updated config from server. Not nil %d", buf, 0x12u);
  }

  v6 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BBC90;
  v8[3] = &unk_1002CD478;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (id)_dictionaryFromConfigData:(id)a3
{
  v8 = 0;
  v3 = [NSJSONSerialization JSONObjectWithData:a3 options:4 error:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = sub_1000029E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10022DB68();
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_parseConfigFile:(id)a3
{
  v4 = [(FMDSecureLocationConfigManager *)self _dictionaryFromConfigData:a3];
  if (v4)
  {
    v5 = [(FMDSecureLocationConfigManager *)self _readConfigFromDictionary:v4];
  }

  else
  {
    v6 = sub_1000029E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10022DBE4();
    }

    v5 = 0;
  }

  return v5;
}

- (id)_readConfigFromDictionary:(id)a3
{
  v4 = [a3 objectForKey:@"publishPolicies"];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  publishPolicies = self->_publishPolicies;
  self->_publishPolicies = v5;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v4 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [[FMDSecureLocationConfig alloc] initWithName:v12 values:v13];
        [(NSMutableDictionary *)self->_publishPolicies setObject:v14 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }

  v15 = sub_1000029E0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(FMDSecureLocationConfigManager *)self publishPolicies];
    v17 = [v16 count];
    v18 = self->_publishPolicies;
    *buf = 138412802;
    v30 = @"SecureLocationConfig";
    v31 = 2048;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Read %lu policies from config. Policies %@", buf, 0x20u);
  }

  v19 = [(NSMutableDictionary *)self->_publishPolicies objectForKeyedSubscript:kFMDSecureLocationModeBackgroundProactive];
  v20 = sub_1000029E0();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v22 = [v19 policyName];
      *buf = 138412546;
      v30 = @"SecureLocationConfig";
      v31 = 2112;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ Setting defaultPolicy %@", buf, 0x16u);
    }

    v23 = v19;
  }

  else
  {
    if (v21)
    {
      *buf = 138412290;
      v30 = @"SecureLocationConfig";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ Failed to read policy from config data", buf, 0xCu);
    }
  }

  return v19;
}

- (id)configForPolicy:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationConfigManager *)self publishPolicies];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = sub_1000029E0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v16 = 138412546;
      v17 = @"SecureLocationConfig";
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Found config for policy %@", &v16, 0x16u);
    }

    v9 = v6;
    goto LABEL_5;
  }

  if (v8)
  {
    v16 = 138412546;
    v17 = @"SecureLocationConfig";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ No config found with name %@ from server configs. Creating with default values if name matches", &v16, 0x16u);
  }

  v11 = kFMDSecureLocationModeLive;
  if (![v4 caseInsensitiveCompare:kFMDSecureLocationModeLive])
  {
    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:@"1.0" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v13 setObject:@"0.97" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v13 setObject:@"3600" forKeyedSubscript:@"expirationInterval"];
    [v13 setObject:@"4" forKeyedSubscript:@"heartbeatPublish"];
    [v13 setObject:@"5" forKeyedSubscript:@"priority"];
    v14 = off_1002D0EE8;
LABEL_21:
    [v13 setObject:*v14 forKeyedSubscript:@"desiredAccuracy"];
    v10 = [[FMDSecureLocationConfig alloc] initWithName:v11 values:v13];

    goto LABEL_22;
  }

  v11 = kFMDSecureLocationModeProactiveShallow;
  if (![v4 caseInsensitiveCompare:kFMDSecureLocationModeProactiveShallow])
  {
    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:@"25" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v13 setObject:@"30" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v13 setObject:@"240" forKeyedSubscript:@"expirationInterval"];
    [v13 setObject:@"50" forKeyedSubscript:@"heartbeatPublish"];
    [v13 setObject:@"4" forKeyedSubscript:@"priority"];
    v14 = off_1002D0EF8;
    goto LABEL_21;
  }

  v11 = kFMDSecureLocationModeOwnerProactive;
  if (![v4 caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive])
  {
    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:@"0.0" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v13 setObject:@"3000" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v13 setObject:@"86400.0" forKeyedSubscript:@"expirationInterval"];
    [v13 setObject:@"3000" forKeyedSubscript:@"heartbeatPublish"];
    [v13 setObject:@"1" forKeyedSubscript:@"priority"];
    v14 = off_1002D0F00;
    goto LABEL_21;
  }

  if (![v4 caseInsensitiveCompare:kFMDSecureLocationModeProactive])
  {
    v9 = objc_alloc_init(FMDSecureLocationConfig);
LABEL_5:
    v10 = v9;
    goto LABEL_22;
  }

  v11 = kFMDSecureLocationModeBackgroundProactive;
  if (![v4 caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive])
  {
    v13 = +[NSMutableDictionary dictionary];
    [v13 setObject:@"10000" forKeyedSubscript:@"minDistanceBetweenPublish"];
    [v13 setObject:@"3600" forKeyedSubscript:@"minTimeBetweenPublish"];
    [v13 setObject:@"86400.0" forKeyedSubscript:@"expirationInterval"];
    [v13 setObject:@"900" forKeyedSubscript:@"minTimeBetweenVisitPublish"];
    [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldWakeDevice"];
    [v13 setObject:@"0" forKeyedSubscript:@"priority"];
    v14 = &off_1002D0F18;
    goto LABEL_21;
  }

  v12 = sub_1000029E0();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = @"SecureLocationConfig";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ Invalid policy name specified %@", &v16, 0x16u);
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (void)requestMonitorWithContext:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC8D8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_addContext:(id)a3 withExpiration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(FMDSecureLocationConfigManager *)self activePolicies];
  v10 = [v6 mode];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v11 = +[NSMutableDictionary dictionary];
    v12 = [(FMDSecureLocationConfigManager *)self activePolicies];
    v13 = [v6 mode];
    [v12 setObject:v11 forKey:v13];
  }

  v14 = [v6 findMyId];
  [v11 setObject:v7 forKey:v14];

  v15 = sub_1000029E0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 mode];
    v17 = [v6 findMyId];
    v18 = 138413058;
    v19 = @"SecureLocationConfig";
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Added policy %@ expiration to %@ for %@", &v18, 0x2Au);
  }
}

- (void)_policyRequested:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(FMDSecureLocationConfigManager *)self delegate];
  v7 = [(FMDSecureLocationConfigManager *)self configForPolicy:v4];
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(FMDSecureLocationConfigManager *)self activeConfig];
    v23 = 138412802;
    v24 = @"SecureLocationConfig";
    v25 = 2112;
    v26 = v4;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ policyRequested %@. Current activeConfig %@", &v23, 0x20u);
  }

  v10 = [(FMDSecureLocationConfigManager *)self activeConfig];
  if (v10 && (v11 = v10, v12 = [v7 priority], -[FMDSecureLocationConfigManager activeConfig](self, "activeConfig"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "priority"), v13, v11, v12 <= v14))
  {
    v19 = [v7 policyName];
    v20 = [(FMDSecureLocationConfigManager *)self activeConfig];
    v21 = [v20 policyName];
    v22 = [v19 isEqualToString:v21];

    if (v22 && v6)
    {
      v18 = [(FMDSecureLocationConfigManager *)self activeConfig];
      [v6 activeConfigExtended:v18];
      goto LABEL_12;
    }
  }

  else
  {
    v15 = sub_1000029E0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(FMDSecureLocationConfigManager *)self activeConfig];
      v17 = [v16 policyName];
      v23 = 138412802;
      v24 = @"SecureLocationConfig";
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Switching active policy from %@ to %@", &v23, 0x20u);
    }

    [(FMDSecureLocationConfigManager *)self setActiveConfig:v7];
    if (v6)
    {
      v18 = [(FMDSecureLocationConfigManager *)self activeConfig];
      [v6 activeConfigChanged:v18];
LABEL_12:
    }
  }
}

- (void)removeMonitorWithContext:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BCF84;
  v7[3] = &unk_1002CE3B8;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)_removeContext:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 mode];
  if (!v6 || (v7 = v6, [v4 findMyId], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v11 = sub_1000029E0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022DCE4();
    }

    goto LABEL_10;
  }

  v9 = [(FMDSecureLocationConfigManager *)self activePolicies];
  v10 = [v4 mode];
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {
    v17 = sub_1000029E0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v4 mode];
      v21 = 138412546;
      v22 = @"SecureLocationConfig";
      v23 = 2114;
      v24 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ No active contexts for mode %{public}@", &v21, 0x16u);
    }

    v18 = 0;
    goto LABEL_14;
  }

  v12 = [v4 findMyId];
  [v11 removeObjectForKey:v12];

  v13 = sub_1000029E0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 findMyId];
    v15 = [v4 mode];
    v21 = 138412802;
    v22 = @"SecureLocationConfig";
    v23 = 2114;
    v24 = v14;
    v25 = 2114;
    v26 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Removed active sub for %{public}@ in mode %{public}@", &v21, 0x20u);
  }

  if (![v11 count])
  {
LABEL_10:
    v18 = 0;
    goto LABEL_15;
  }

  v16 = [v11 allValues];
  v17 = [v16 sortedArrayUsingComparator:&stru_1002D0CF8];

  v18 = [v17 lastObject];
LABEL_14:

LABEL_15:

  return v18;
}

- (id)expirationTimeFor:(id)a3
{
  v4 = a3;
  v5 = [(FMDSecureLocationConfigManager *)self policyExpirationTimes];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)policyExpired:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BD70C;
  v7[3] = &unk_1002CE3B8;
  objc_copyWeak(&v10, &location);
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (FMDSecureLocationsConfigManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end