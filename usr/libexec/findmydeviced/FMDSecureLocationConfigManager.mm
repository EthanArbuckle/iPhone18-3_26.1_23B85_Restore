@interface FMDSecureLocationConfigManager
+ (id)defaultStorageLocation;
- (FMDSecureLocationConfigManager)init;
- (FMDSecureLocationsConfigManagerDelegate)delegate;
- (id)_dictionaryFromConfigData:(id)data;
- (id)_parseConfigFile:(id)file;
- (id)_readConfigFromDictionary:(id)dictionary;
- (id)_removeContext:(id)context;
- (id)configForPolicy:(id)policy;
- (id)expirationTimeFor:(id)for;
- (void)_addContext:(id)context withExpiration:(id)expiration;
- (void)_archiveConfigFile:(id)file;
- (void)_policyRequested:(id)requested;
- (void)_readExistingConfigFile;
- (void)policyExpired:(id)expired;
- (void)removeMonitorWithContext:(id)context;
- (void)requestMonitorWithContext:(id)context;
- (void)updateConfigData:(id)data;
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
    defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
    v11 = [v9 initWithFileURL:defaultStorageLocation];
    [(FMDSecureLocationConfigManager *)v2 setDataArchiver:v11];

    dataArchiver = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDSecureLocationConfigManager *)v2 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

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
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BB770;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(policyManagerQueue, block);
}

- (void)_archiveConfigFile:(id)file
{
  fileCopy = file;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BBA08;
  v7[3] = &unk_1002CD478;
  v7[4] = self;
  v8 = fileCopy;
  v6 = fileCopy;
  dispatch_async(policyManagerQueue, v7);
}

- (void)updateConfigData:(id)data
{
  dataCopy = data;
  v5 = sub_1000029E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = @"SecureLocationConfig";
    v12 = 1024;
    v13 = dataCopy != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ Received updated config from server. Not nil %d", buf, 0x12u);
  }

  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001BBC90;
  v8[3] = &unk_1002CD478;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(policyManagerQueue, v8);
}

- (id)_dictionaryFromConfigData:(id)data
{
  v8 = 0;
  v3 = [NSJSONSerialization JSONObjectWithData:data options:4 error:&v8];
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

- (id)_parseConfigFile:(id)file
{
  v4 = [(FMDSecureLocationConfigManager *)self _dictionaryFromConfigData:file];
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

- (id)_readConfigFromDictionary:(id)dictionary
{
  v4 = [dictionary objectForKey:@"publishPolicies"];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v4 count]);
  publishPolicies = self->_publishPolicies;
  self->_publishPolicies = v5;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [v4 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v25 objects:v35 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        v14 = [[FMDSecureLocationConfig alloc] initWithName:v12 values:v13];
        [(NSMutableDictionary *)self->_publishPolicies setObject:v14 forKey:v12];
      }

      v9 = [allKeys countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v9);
  }

  v15 = sub_1000029E0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    publishPolicies = [(FMDSecureLocationConfigManager *)self publishPolicies];
    v17 = [publishPolicies count];
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
      policyName = [v19 policyName];
      *buf = 138412546;
      v30 = @"SecureLocationConfig";
      v31 = 2112;
      v32 = policyName;
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

- (id)configForPolicy:(id)policy
{
  policyCopy = policy;
  publishPolicies = [(FMDSecureLocationConfigManager *)self publishPolicies];
  v6 = [publishPolicies objectForKeyedSubscript:policyCopy];

  v7 = sub_1000029E0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v16 = 138412546;
      v17 = @"SecureLocationConfig";
      v18 = 2112;
      v19 = policyCopy;
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
    v19 = policyCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ No config found with name %@ from server configs. Creating with default values if name matches", &v16, 0x16u);
  }

  v11 = kFMDSecureLocationModeLive;
  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeLive])
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
  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeProactiveShallow])
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
  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeOwnerProactive])
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

  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeProactive])
  {
    v9 = objc_alloc_init(FMDSecureLocationConfig);
LABEL_5:
    v10 = v9;
    goto LABEL_22;
  }

  v11 = kFMDSecureLocationModeBackgroundProactive;
  if (![policyCopy caseInsensitiveCompare:kFMDSecureLocationModeBackgroundProactive])
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
    v19 = policyCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ Invalid policy name specified %@", &v16, 0x16u);
  }

  v10 = 0;
LABEL_22:

  return v10;
}

- (void)requestMonitorWithContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BC8D8;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v9, &location);
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(policyManagerQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_addContext:(id)context withExpiration:(id)expiration
{
  contextCopy = context;
  expirationCopy = expiration;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(policyManagerQueue);

  activePolicies = [(FMDSecureLocationConfigManager *)self activePolicies];
  mode = [contextCopy mode];
  v11 = [activePolicies objectForKey:mode];

  if (!v11)
  {
    v11 = +[NSMutableDictionary dictionary];
    activePolicies2 = [(FMDSecureLocationConfigManager *)self activePolicies];
    mode2 = [contextCopy mode];
    [activePolicies2 setObject:v11 forKey:mode2];
  }

  findMyId = [contextCopy findMyId];
  [v11 setObject:expirationCopy forKey:findMyId];

  v15 = sub_1000029E0();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    mode3 = [contextCopy mode];
    findMyId2 = [contextCopy findMyId];
    v18 = 138413058;
    v19 = @"SecureLocationConfig";
    v20 = 2112;
    v21 = mode3;
    v22 = 2112;
    v23 = expirationCopy;
    v24 = 2112;
    v25 = findMyId2;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Added policy %@ expiration to %@ for %@", &v18, 0x2Au);
  }
}

- (void)_policyRequested:(id)requested
{
  requestedCopy = requested;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(policyManagerQueue);

  delegate = [(FMDSecureLocationConfigManager *)self delegate];
  v7 = [(FMDSecureLocationConfigManager *)self configForPolicy:requestedCopy];
  v8 = sub_1000029E0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    activeConfig = [(FMDSecureLocationConfigManager *)self activeConfig];
    v23 = 138412802;
    v24 = @"SecureLocationConfig";
    v25 = 2112;
    v26 = requestedCopy;
    v27 = 2112;
    v28 = activeConfig;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ policyRequested %@. Current activeConfig %@", &v23, 0x20u);
  }

  activeConfig2 = [(FMDSecureLocationConfigManager *)self activeConfig];
  if (activeConfig2 && (v11 = activeConfig2, v12 = [v7 priority], -[FMDSecureLocationConfigManager activeConfig](self, "activeConfig"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "priority"), v13, v11, v12 <= v14))
  {
    policyName = [v7 policyName];
    activeConfig3 = [(FMDSecureLocationConfigManager *)self activeConfig];
    policyName2 = [activeConfig3 policyName];
    v22 = [policyName isEqualToString:policyName2];

    if (v22 && delegate)
    {
      activeConfig4 = [(FMDSecureLocationConfigManager *)self activeConfig];
      [delegate activeConfigExtended:activeConfig4];
      goto LABEL_12;
    }
  }

  else
  {
    v15 = sub_1000029E0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      activeConfig5 = [(FMDSecureLocationConfigManager *)self activeConfig];
      policyName3 = [activeConfig5 policyName];
      v23 = 138412802;
      v24 = @"SecureLocationConfig";
      v25 = 2112;
      v26 = policyName3;
      v27 = 2112;
      v28 = requestedCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@ Switching active policy from %@ to %@", &v23, 0x20u);
    }

    [(FMDSecureLocationConfigManager *)self setActiveConfig:v7];
    if (delegate)
    {
      activeConfig4 = [(FMDSecureLocationConfigManager *)self activeConfig];
      [delegate activeConfigChanged:activeConfig4];
LABEL_12:
    }
  }
}

- (void)removeMonitorWithContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BCF84;
  v7[3] = &unk_1002CE3B8;
  objc_copyWeak(&v10, &location);
  v8 = contextCopy;
  selfCopy = self;
  v6 = contextCopy;
  dispatch_async(policyManagerQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (id)_removeContext:(id)context
{
  contextCopy = context;
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  dispatch_assert_queue_V2(policyManagerQueue);

  mode = [contextCopy mode];
  if (!mode || (v7 = mode, [contextCopy findMyId], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v11 = sub_1000029E0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10022DCE4();
    }

    goto LABEL_10;
  }

  activePolicies = [(FMDSecureLocationConfigManager *)self activePolicies];
  mode2 = [contextCopy mode];
  v11 = [activePolicies objectForKey:mode2];

  if (!v11)
  {
    v17 = sub_1000029E0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      mode3 = [contextCopy mode];
      v21 = 138412546;
      v22 = @"SecureLocationConfig";
      v23 = 2114;
      v24 = mode3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%@ No active contexts for mode %{public}@", &v21, 0x16u);
    }

    lastObject = 0;
    goto LABEL_14;
  }

  findMyId = [contextCopy findMyId];
  [v11 removeObjectForKey:findMyId];

  v13 = sub_1000029E0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    findMyId2 = [contextCopy findMyId];
    mode4 = [contextCopy mode];
    v21 = 138412802;
    v22 = @"SecureLocationConfig";
    v23 = 2114;
    v24 = findMyId2;
    v25 = 2114;
    v26 = mode4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@ Removed active sub for %{public}@ in mode %{public}@", &v21, 0x20u);
  }

  if (![v11 count])
  {
LABEL_10:
    lastObject = 0;
    goto LABEL_15;
  }

  allValues = [v11 allValues];
  v17 = [allValues sortedArrayUsingComparator:&stru_1002D0CF8];

  lastObject = [v17 lastObject];
LABEL_14:

LABEL_15:

  return lastObject;
}

- (id)expirationTimeFor:(id)for
{
  forCopy = for;
  policyExpirationTimes = [(FMDSecureLocationConfigManager *)self policyExpirationTimes];
  v6 = [policyExpirationTimes objectForKey:forCopy];

  return v6;
}

- (void)policyExpired:(id)expired
{
  expiredCopy = expired;
  objc_initWeak(&location, self);
  policyManagerQueue = [(FMDSecureLocationConfigManager *)self policyManagerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BD70C;
  v7[3] = &unk_1002CE3B8;
  objc_copyWeak(&v10, &location);
  v8 = expiredCopy;
  selfCopy = self;
  v6 = expiredCopy;
  dispatch_async(policyManagerQueue, v7);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (FMDSecureLocationsConfigManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end