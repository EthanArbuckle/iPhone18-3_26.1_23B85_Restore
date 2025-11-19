@interface UARPAssetManagerServiceManager
- (BOOL)queryIsBusy;
- (UARPAssetManagerServiceManager)initWithDelegate:(id)a3;
- (id)checkCacheForPersonality:(id)a3;
- (void)checkAssetAvailabilityForDomain:(id)a3;
- (void)checkForUpdate;
- (void)clearAssetCacheForDomain:(id)a3;
- (void)initServiceNameList;
- (void)primeCache:(id)a3;
- (void)settingsChangedForSerialNumber:(id)a3;
- (void)subscribeForPersonality:(id)a3;
- (void)updateReachabilityForPersonality:(id)a3 reachable:(BOOL)a4;
- (void)updateSettingsForPersonality:(id)a3;
@end

@implementation UARPAssetManagerServiceManager

- (UARPAssetManagerServiceManager)initWithDelegate:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = UARPAssetManagerServiceManager;
  v10 = [(UARPAssetManagerServiceManager *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    v4 = os_log_create("com.apple.uarpassetmanager.uarp", "uarpAssetManager");
    log = v10->_log;
    v10->_log = v4;

    objc_storeStrong(&v10->_delegate, location[0]);
    [(UARPAssetManagerServiceManager *)v10 initServiceNameList];
  }

  v7 = v10;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)initServiceNameList
{
  v39 = self;
  v38[1] = a2;
  v38[0] = +[NSMutableArray array];
  v37 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/UARPAssetManager.framework/XPCServices/" isDirectory:1];
  v21 = +[NSFileManager defaultManager];
  v36 = [(NSFileManager *)v21 enumeratorAtURL:v37 includingPropertiesForKeys:0 options:1 errorHandler:?];

  location = [v36 nextObject];
  while (location)
  {
    context = objc_autoreleasePoolPush();
    v33 = [NSBundle bundleWithURL:location];
    if (v33)
    {
      v16 = [v33 infoDictionary];
      v15 = [v16 objectForKeyedSubscript:@"UARP Asset Manager"];
      v17 = [v15 BOOLValue];

      if (!v17)
      {
        v34 = 4;
        goto LABEL_24;
      }

      v14 = [v33 infoDictionary];
      v30 = [v14 objectForKeyedSubscript:@"AssetType"];

      if (!v30)
      {
        v29 = v39->_log;
        v28 = 16;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v12 = v29;
          v13 = v28;
          __os_log_helper_16_0_0(v27);
          _os_log_error_impl(&_mh_execute_header, v12, v13, "No asset type found for Asset Manager Service", v27, 2u);
        }

        objc_storeStrong(&v29, 0);
      }

      v26 = [v33 bundleIdentifier];
      if (v26)
      {
        v25 = v39->_log;
        v24 = 1;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v10 = v25;
          v11 = v24;
          __os_log_helper_16_2_1_8_64(v41, v26);
          _os_log_impl(&_mh_execute_header, v10, v11, "Located UARP asset manager bundle %@", v41, 0xCu);
        }

        objc_storeStrong(&v25, 0);
        if ([v30 isEqualToString:@"mobileasset"] == 1)
        {
          v8 = [UARPAssetManagerServiceInstanceMobileAsset alloc];
          v9 = [v33 bundleIdentifier];
          delegate = v39->_delegate;
          v23 = [UARPAssetManagerServiceInstanceMobileAsset initWithServiceName:v8 delegate:"initWithServiceName:delegate:"];

          [v38[0] addObject:v23];
          objc_storeStrong(&v23, 0);
          goto LABEL_22;
        }

        oslog = v39->_log;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v7 = oslog;
          __os_log_helper_16_2_1_8_64(v40, v30);
          _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid asset manager type %@", v40, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v34 = 4;
      }

      else
      {
LABEL_22:
        v34 = 0;
      }

      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v30, 0);
      goto LABEL_24;
    }

    v32 = v39->_log;
    v31 = 16;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      log = v32;
      type = v31;
      __os_log_helper_16_2_1_8_66(v42, location);
      _os_log_error_impl(&_mh_execute_header, log, type, "Unable to access XPC bundle at %{public}@", v42, 0xCu);
    }

    objc_storeStrong(&v32, 0);
    v34 = 4;
LABEL_24:
    objc_storeStrong(&v33, 0);
    objc_autoreleasePoolPop(context);
    v3 = [v36 nextObject];
    v4 = location;
    location = v3;
  }

  v34 = 2;
  objc_storeStrong(&location, 0);
  v5 = [[NSArray alloc] initWithArray:v38[0]];
  assetManagerServiceList = v39->_assetManagerServiceList;
  v39->_assetManagerServiceList = v5;

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(v38, 0);
}

- (void)subscribeForPersonality:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v13->_assetManagerServiceList;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 subscribeForPersonality:{location[0], v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (id)checkCacheForPersonality:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v16->_assetManagerServiceList;
  v10 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v7);
      v12 = [v14 checkCacheForPersonality:location[0]];
      if (v12)
      {
        v17 = v12;
        v11 = 1;
      }

      else
      {
        v11 = 0;
      }

      objc_storeStrong(&v12, 0);
      if (v11)
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v8)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

  if (!v11)
  {
    v17 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v17;

  return v3;
}

- (void)checkAssetAvailabilityForDomain:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v13->_assetManagerServiceList;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 checkAssetAvailabilityForDomain:{location[0], v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)clearAssetCacheForDomain:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v13->_assetManagerServiceList;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 clearAssetCacheForDomain:{location[0], v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)primeCache:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v13->_assetManagerServiceList;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 primeCache:{location[0], v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)checkForUpdate
{
  v11 = self;
  v10 = a2;
  memset(__b, 0, sizeof(__b));
  obj = v11->_assetManagerServiceList;
  v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v12 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v4);
      [v9 checkForUpdate];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v12 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }
}

- (void)updateReachabilityForPersonality:(id)a3 reachable:(BOOL)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  memset(__b, 0, sizeof(__b));
  obj = v16->_assetManagerServiceList;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v11)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v7);
      [v13 updateReachabilityForPersonality:location[0] reachable:{v14, v8}];
      ++v7;
      v8 = v4;
      if (v5 + 1 >= v4)
      {
        v7 = 0;
        v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)updateSettingsForPersonality:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v13->_assetManagerServiceList;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 updateSettingsForPersonality:{location[0], v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)settingsChangedForSerialNumber:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = v13->_assetManagerServiceList;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      [v11 settingsChangedForSerialNumber:{location[0], v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)queryIsBusy
{
  v14 = self;
  v13 = a2;
  v12 = 0;
  memset(__b, 0, sizeof(__b));
  obj = v14->_assetManagerServiceList;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(__b[1] + 8 * v6);
      v2 = [v11 queryIsBusy];
      v12 = (v12 | v2) != 0;
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  return v12;
}

@end