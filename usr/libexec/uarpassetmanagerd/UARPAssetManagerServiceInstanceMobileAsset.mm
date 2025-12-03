@interface UARPAssetManagerServiceInstanceMobileAsset
- (BOOL)isSubscriptionSupported:(id)supported;
- (UARPAssetManagerServiceInstanceMobileAsset)initWithServiceName:(id)name delegate:(id)delegate;
- (id)checkCacheForPersonality:(id)personality;
- (id)encodedClasses;
- (void)assetAvailabilityUpdateForPersonality:(id)personality assetVersion:(id)version creationDate:(id)date status:(int64_t)status;
- (void)assetAvailabilityUpdateForSubscription:(id)subscription cacheRecord:(id)record asyncUpdate:(BOOL)update;
- (void)settingsChangedForSerialNumber:(id)number;
- (void)subscribeForPersonality:(id)personality;
- (void)updateReachabilityForPersonality:(id)personality reachable:(BOOL)reachable;
- (void)updateSettingsForPersonality:(id)personality;
@end

@implementation UARPAssetManagerServiceInstanceMobileAsset

- (UARPAssetManagerServiceInstanceMobileAsset)initWithServiceName:(id)name delegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v11 = 0;
  objc_storeStrong(&v11, delegate);
  v4 = selfCopy;
  selfCopy = 0;
  v10.receiver = v4;
  v10.super_class = UARPAssetManagerServiceInstanceMobileAsset;
  selfCopy = [(UARPAssetManagerServiceInstance *)&v10 initWithServiceName:location[0] delegate:v11];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = os_log_create("com.apple.uarpassetmanager.uarp", "uarpAssetManager");
    log = selfCopy->_log;
    selfCopy->_log = v5;
  }

  v8 = selfCopy;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (BOOL)isSubscriptionSupported:(id)supported
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, supported);
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 1;
  objc_storeStrong(location, 0);
  return v5;
}

- (void)subscribeForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = location[0];
    serialNumber = [v30 serialNumber];
    identifier = [v30 identifier];
    hwFusing = [v30 hwFusing];
    partnerSerialNumbers = [v30 partnerSerialNumbers];
    v12 = isOTAUpdateDisabledForAccessory(serialNumber, identifier, hwFusing, partnerSerialNumbers);

    v29 = v12;
    if ((v12 & 1) == 1)
    {
      v28 = selfCopy->_log;
      v27 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v39, v30);
        _os_log_error_impl(&_mh_execute_header, v28, v27, "OTA Update disabled for %{public}@", v39, 0xCu);
      }

      objc_storeStrong(&v28, 0);
      delegate = [(UARPAssetManagerServiceInstance *)selfCopy delegate];
      [(UARPAssetManagerServiceDelegate *)delegate assetAvailabilityUpdateForPersonality:v30 assetVersion:0 creationDate:0 status:4];

      v31 = 1;
    }

    else
    {
      hwFusing2 = [v30 hwFusing];
      v6 = [hwFusing2 length];

      if (v6)
      {
        v24 = createSubscriptionForPersonality(location[0], 1, 1);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = selfCopy->_log;
          v20 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_66(v36, v24);
            _os_log_impl(&_mh_execute_header, v21, v20, "Registering for primary subscription %{public}@", v36, 0xCu);
          }

          objc_storeStrong(&v21, 0);
          v19.receiver = selfCopy;
          v19.super_class = UARPAssetManagerServiceInstanceMobileAsset;
          [(UARPAssetManagerServiceInstance *)&v19 registerForSubscription:v24];
          v18 = createSubscriptionForPersonality(location[0], 0, 1);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = selfCopy->_log;
            v14 = OS_LOG_TYPE_INFO;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_1_8_66(v34, v18);
              _os_log_impl(&_mh_execute_header, v15, v14, "Registering for secondary subscription %{public}@", v34, 0xCu);
            }

            objc_storeStrong(&v15, 0);
            v13.receiver = selfCopy;
            v13.super_class = UARPAssetManagerServiceInstanceMobileAsset;
            [(UARPAssetManagerServiceInstance *)&v13 registerForSubscription:v18];
            v31 = 0;
          }

          else
          {
            oslog = selfCopy->_log;
            v16 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_1_8_66(v35, location[0]);
              _os_log_error_impl(&_mh_execute_header, oslog, v16, "Could not create valid legacy subscription for %{public}@", v35, 0xCu);
            }

            objc_storeStrong(&oslog, 0);
            delegate2 = [(UARPAssetManagerServiceInstance *)selfCopy delegate];
            [(UARPAssetManagerServiceDelegate *)delegate2 assetAvailabilityUpdateForPersonality:v30 assetVersion:0 creationDate:0 status:3];

            v31 = 1;
          }

          objc_storeStrong(&v18, 0);
        }

        else
        {
          v23 = selfCopy->_log;
          v22 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_1_8_66(v37, location[0]);
            _os_log_error_impl(&_mh_execute_header, v23, v22, "Could not create valid pallas subscription for %{public}@", v37, 0xCu);
          }

          objc_storeStrong(&v23, 0);
          delegate3 = [(UARPAssetManagerServiceInstance *)selfCopy delegate];
          [(UARPAssetManagerServiceDelegate *)delegate3 assetAvailabilityUpdateForPersonality:v30 assetVersion:0 creationDate:0 status:3];

          v31 = 1;
        }

        objc_storeStrong(&v24, 0);
      }

      else
      {
        v26 = selfCopy->_log;
        v25 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_66(v38, v30);
          _os_log_error_impl(&_mh_execute_header, v26, v25, "Invalid provided hw fusing for %{public}@", v38, 0xCu);
        }

        objc_storeStrong(&v26, 0);
        v31 = 1;
      }
    }

    objc_storeStrong(&v30, 0);
  }

  else
  {
    v31 = 1;
  }

  objc_storeStrong(location, 0);
}

- (id)checkCacheForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = location[0];
    serialNumber = [v44 serialNumber];
    identifier = [v44 identifier];
    hwFusing = [v44 hwFusing];
    partnerSerialNumbers = [v44 partnerSerialNumbers];
    v24 = isOTAUpdateDisabledForAccessory(serialNumber, identifier, hwFusing, partnerSerialNumbers);

    v43 = v24;
    if ((v24 & 1) == 1)
    {
      v42 = selfCopy->_log;
      v41 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_66(v53, "[UARPAssetManagerServiceInstanceMobileAsset checkCacheForPersonality:]", v44);
        _os_log_error_impl(&_mh_execute_header, v42, v41, "%s OTA Update disabled for %{public}@", v53, 0x16u);
      }

      objc_storeStrong(&v42, 0);
      v48 = 0;
      v45 = 1;
    }

    else
    {
      hwFusing2 = [v44 hwFusing];
      v19 = [hwFusing2 length];

      if (v19)
      {
        serialNumber2 = [v44 serialNumber];
        identifier2 = [v44 identifier];
        hwFusing3 = [v44 hwFusing];
        partnerSerialNumbers2 = [v44 partnerSerialNumbers];
        v17 = isPallasEnabledForAccessory(serialNumber2, identifier2, hwFusing3, partnerSerialNumbers2);

        v38 = v17;
        if ((v17 & 1) != 1)
        {
          goto LABEL_21;
        }

        v37 = createSubscriptionForPersonality(location[0], 1, 1);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v34 = [(UARPAssetManagerServiceInstance *)selfCopy checkCacheForSubscription:v37];
          if (v34)
          {
            v48 = v34;
            v45 = 1;
          }

          else
          {
            v45 = 0;
          }

          objc_storeStrong(&v34, 0);
        }

        else
        {
          oslog = selfCopy->_log;
          v35 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_66(v51, "[UARPAssetManagerServiceInstanceMobileAsset checkCacheForPersonality:]", location[0]);
            _os_log_error_impl(&_mh_execute_header, oslog, v35, "%s Could not create valid pallas subscription for %{public}@", v51, 0x16u);
          }

          objc_storeStrong(&oslog, 0);
          v48 = 0;
          v45 = 1;
        }

        objc_storeStrong(&v37, 0);
        if (!v45)
        {
LABEL_21:
          v33 = createSubscriptionForPersonality(location[0], 0, 1);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v30 = [(UARPAssetManagerServiceInstance *)selfCopy checkCacheForSubscription:v33];
            if (v30)
            {
              v48 = v30;
              v45 = 1;
            }

            else
            {
              v29 = v33;
              assetURL = [v29 assetURL];
              absoluteString = [assetURL absoluteString];
              v12 = assetLocationTypeFromBasePath(absoluteString);

              v28 = v12;
              if (v12 == 8 || v28 == 3)
              {
                v27 = objc_alloc_init(UARPSettingsAccessory);
                v7 = [NSString stringWithUTF8String:AUDeveloperSettingsURLTypeToString(2)];
                [v27 setAssetLocation:?];

                v8 = currentOSTrainName();
                v26 = generateMobileAssetBaseAddress(v27, v8);

                v9 = [NSURL URLWithString:v26];
                [v29 setAssetURL:?];

                v25 = selfCopy->_log;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  __os_log_helper_16_2_2_8_32_8_66(v49, "[UARPAssetManagerServiceInstanceMobileAsset checkCacheForPersonality:]", v29);
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s check cache for next asset location %{public}@", v49, 0x16u);
                }

                objc_storeStrong(&v25, 0);
                v3 = [(UARPAssetManagerServiceInstance *)selfCopy checkCacheForSubscription:v33];
                v4 = v30;
                v30 = v3;

                v48 = v30;
                v45 = 1;
                objc_storeStrong(&v26, 0);
                objc_storeStrong(&v27, 0);
              }

              else
              {
                v48 = 0;
                v45 = 1;
              }

              objc_storeStrong(&v29, 0);
            }

            objc_storeStrong(&v30, 0);
          }

          else
          {
            v32 = selfCopy->_log;
            v31 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_2_2_8_32_8_66(v50, "[UARPAssetManagerServiceInstanceMobileAsset checkCacheForPersonality:]", location[0]);
              _os_log_error_impl(&_mh_execute_header, v32, v31, "%s Could not create valid legacy subscription for %{public}@", v50, 0x16u);
            }

            objc_storeStrong(&v32, 0);
            v48 = 0;
            v45 = 1;
          }

          objc_storeStrong(&v33, 0);
        }
      }

      else
      {
        v40 = selfCopy->_log;
        v39 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_66(v52, v44);
          _os_log_error_impl(&_mh_execute_header, v40, v39, "Invalid provided hw fusing for %{public}@", v52, 0xCu);
        }

        objc_storeStrong(&v40, 0);
        v48 = 0;
        v45 = 1;
      }
    }

    objc_storeStrong(&v44, 0);
  }

  else
  {
    v48 = 0;
    v45 = 1;
  }

  objc_storeStrong(location, 0);
  v5 = v48;

  return v5;
}

- (void)assetAvailabilityUpdateForSubscription:(id)subscription cacheRecord:(id)record asyncUpdate:(BOOL)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subscription);
  v43 = 0;
  objc_storeStrong(&v43, record);
  updateCopy = update;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    deploymentRules = [v43 deploymentRules];
    v22 = isDeploymentAllowed(deploymentRules);

    v40 = v22;
    if (v22)
    {
      v37.receiver = selfCopy;
      v37.super_class = UARPAssetManagerServiceInstanceMobileAsset;
      [(UARPAssetManagerServiceInstance *)&v37 assetAvailabilityUpdateForSubscription:location[0] cacheRecord:v43 asyncUpdate:updateCopy];
      if (v43)
      {
        goto LABEL_15;
      }

      v36 = location[0];
      assetURL = [v36 assetURL];
      absoluteString = [assetURL absoluteString];
      v19 = assetLocationTypeFromBasePath(absoluteString);

      v35 = v19;
      if (v19 == 8 || v35 == 3)
      {
        v34 = objc_alloc_init(UARPSettingsAccessory);
        v14 = [NSString stringWithUTF8String:AUDeveloperSettingsURLTypeToString(2)];
        [v34 setAssetLocation:?];

        v15 = currentOSTrainName();
        v33 = generateMobileAssetBaseAddress(v34, v15);

        v16 = [NSURL URLWithString:v33];
        [v36 setAssetURL:?];

        v32 = selfCopy->_log;
        v31 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_32_8_66(v47, "[UARPAssetManagerServiceInstanceMobileAsset assetAvailabilityUpdateForSubscription:cacheRecord:asyncUpdate:]", v36);
          _os_log_impl(&_mh_execute_header, v32, v31, "%s falling back to next asset location %{public}@", v47, 0x16u);
        }

        objc_storeStrong(&v32, 0);
        [(UARPAssetManagerServiceInstance *)selfCopy registerForSubscription:v36];
        v41 = 1;
        objc_storeStrong(&v33, 0);
        objc_storeStrong(&v34, 0);
      }

      else
      {
        v41 = updateCopy;
      }

      objc_storeStrong(&v36, 0);
      if (!v41)
      {
LABEL_15:
        v30 = 3;
        v29 = 0;
        assetURL2 = [v43 assetURL];

        if (assetURL2)
        {
          v30 = 2;
          v12 = +[NSFileManager defaultManager];
          assetURL3 = [v43 assetURL];
          path = [assetURL3 path];
          v28 = [NSFileManager attributesOfItemAtPath:v12 error:"attributesOfItemAtPath:error:"];

          v5 = [(NSDictionary *)v28 objectForKey:NSFileCreationDate];
          v6 = v29;
          v29 = v5;

          objc_storeStrong(&v28, 0);
        }

        v27 = location[0];
        v26 = createPersonalityForSubscription(location[0], &stru_1000382C8, 0);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          appleModelNumber = [v27 appleModelNumber];
          [v26 setMobileAssetAppleModelNumber:?];

          v8 = selfCopy;
          assetVersion = [v43 assetVersion];
          [UARPAssetManagerServiceInstanceMobileAsset assetAvailabilityUpdateForPersonality:v8 assetVersion:"assetAvailabilityUpdateForPersonality:assetVersion:creationDate:status:" creationDate:v26 status:?];

          v41 = 0;
        }

        else
        {
          oslog = selfCopy->_log;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_66(v46, "[UARPAssetManagerServiceInstanceMobileAsset assetAvailabilityUpdateForSubscription:cacheRecord:asyncUpdate:]", location[0]);
            _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%s Could not create personality for %{public}@", v46, 0x16u);
          }

          objc_storeStrong(&oslog, 0);
          v41 = 1;
        }

        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v29, 0);
      }
    }

    else
    {
      v39 = selfCopy->_log;
      v38 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        deploymentRules2 = [v43 deploymentRules];
        __os_log_helper_16_2_2_8_32_8_64(v48, "[UARPAssetManagerServiceInstanceMobileAsset assetAvailabilityUpdateForSubscription:cacheRecord:asyncUpdate:]", deploymentRules2);
        _os_log_error_impl(&_mh_execute_header, v39, v38, "%s Not sending notification, deployment not allowed at this time for %@", v48, 0x16u);
      }

      objc_storeStrong(&v39, 0);
      v41 = 1;
    }
  }

  else
  {
    v41 = 1;
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(location, 0);
}

- (void)updateReachabilityForPersonality:(id)personality reachable:(BOOL)reachable
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  reachableCopy = reachable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = location[0];
    hwFusing = [v13 hwFusing];
    v10 = [hwFusing length];

    if (v10)
    {
      serialNumber = [v13 serialNumber];

      if (serialNumber)
      {
        serialNumber2 = [v13 serialNumber];
        identifier = [v13 identifier];
        hwFusing2 = [v13 hwFusing];
        partnerSerialNumbers = [v13 partnerSerialNumbers];
        updateReachabilityForAccessory(serialNumber2, identifier, hwFusing2, partnerSerialNumbers, reachableCopy);
      }

      v14 = 0;
    }

    else
    {
      v12 = selfCopy->_log;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v18, v13);
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid provided hw fusing for %{public}@", v18, 0xCu);
      }

      objc_storeStrong(&v12, 0);
      v14 = 1;
    }

    objc_storeStrong(&v13, 0);
  }

  else
  {
    v14 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)updateSettingsForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = createSubscriptionForPersonality(location[0], 0, 1);
    if (!v4)
    {
      oslog = selfCopy->_log;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_66(v8, "[UARPAssetManagerServiceInstanceMobileAsset updateSettingsForPersonality:]", location[0]);
        _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%s error updating Settings Database with personality %{public}@", v8, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v4, 0);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)settingsChangedForSerialNumber:(id)number
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v29 = +[AUDeveloperSettingsDatabase sharedDatabase];
  v53 = [v29 copyAccessoryWithSerialNumber:location[0]];

  if (v53)
  {
    v49 = +[NSMutableArray array];
    v48 = +[NSMutableArray array];
    copySubscriptions = [(UARPAssetManagerServiceInstance *)selfCopy copySubscriptions];
    memset(__b, 0, sizeof(__b));
    obj = copySubscriptions;
    v28 = [obj countByEnumeratingWithState:__b objects:v60 count:16];
    if (v28)
    {
      v24 = *__b[2];
      v25 = 0;
      v26 = v28;
      while (1)
      {
        v23 = v25;
        if (*__b[2] != v24)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(__b[1] + 8 * v25);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v44 = v46;
          v43 = selfCopy->_log;
          v42 = OS_LOG_TYPE_INFO;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
          {
            v19 = v43;
            v18 = v44;
            modelNumber = [v53 modelNumber];
            mobileAssetModelNumber = [v53 mobileAssetModelNumber];
            hwFusing = [v53 hwFusing];
            __os_log_helper_16_2_4_8_66_8_66_8_66_8_66(v59, v18, modelNumber, mobileAssetModelNumber, hwFusing);
            _os_log_impl(&_mh_execute_header, v19, v42, "Checking subscription: %{public}@ against settings accessory model: %{public}@ / %{public}@ fusing: %{public}@", v59, 0x2Au);
          }

          objc_storeStrong(&v43, 0);
          appleModelNumber = [v44 appleModelNumber];
          mobileAssetModelNumber2 = [v53 mobileAssetModelNumber];
          v40 = 0;
          v38 = 0;
          v17 = 0;
          if (![appleModelNumber isEqualToString:?])
          {
            appleModelNumber2 = [v44 appleModelNumber];
            v40 = 1;
            modelNumber2 = [v53 modelNumber];
            v38 = 1;
            v17 = [appleModelNumber2 isEqualToString:?] == 0;
          }

          if (v38)
          {
          }

          if (v40)
          {
          }

          if (v17)
          {
            v50 = 3;
          }

          else
          {
            hwFusing2 = [v44 hwFusing];
            hwFusing3 = [v53 hwFusing];
            v14 = [hwFusing2 caseInsensitiveCompare:?];

            if (v14)
            {
              [v48 addObject:v44];
            }

            else
            {
              [v49 addObject:v44];
            }

            v50 = 0;
          }

          objc_storeStrong(&v44, 0);
        }

        ++v25;
        if (v23 + 1 >= v26)
        {
          v25 = 0;
          v26 = [obj countByEnumeratingWithState:__b objects:v60 count:16];
          if (!v26)
          {
            break;
          }
        }
      }
    }

    if ([v49 count])
    {
      v33 = objc_opt_new();
      memset(v31, 0, sizeof(v31));
      v10 = v49;
      v11 = [v10 countByEnumeratingWithState:v31 objects:v56 count:16];
      if (v11)
      {
        v7 = *v31[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*v31[2] != v7)
          {
            objc_enumerationMutation(v10);
          }

          v32 = *(v31[1] + 8 * v8);
          v4 = v32;
          v3 = location[0];
          modelNumber3 = [v53 modelNumber];
          v30 = createPersonalityForSubscription(v4, v3, modelNumber3);

          if (![v33 containsObject:v30])
          {
            [(UARPAssetManagerServiceInstanceMobileAsset *)selfCopy subscribeForPersonality:v30];
            [v33 addObject:v30];
          }

          objc_storeStrong(&v30, 0);
          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [v10 countByEnumeratingWithState:v31 objects:v56 count:16];
            if (!v9)
            {
              break;
            }
          }
        }
      }

      objc_storeStrong(&v33, 0);
      v50 = 0;
    }

    else
    {
      if ([v48 count])
      {
        v35 = selfCopy->_log;
        v34 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_66(v57, "[UARPAssetManagerServiceInstanceMobileAsset settingsChangedForSerialNumber:]", v53);
          _os_log_error_impl(&_mh_execute_header, v35, v34, "%s WARNING: only found matches for other fusings. Cache may have been seeded incorrectly for %{public}@", v57, 0x16u);
        }

        objc_storeStrong(&v35, 0);
      }

      else
      {
        v37 = selfCopy->_log;
        v36 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_66(v58, "[UARPAssetManagerServiceInstanceMobileAsset settingsChangedForSerialNumber:]", v53);
          _os_log_error_impl(&_mh_execute_header, v37, v36, "%s no existing subscriptions found that matches accessory %{public}@", v58, 0x16u);
        }

        objc_storeStrong(&v37, 0);
      }

      v50 = 1;
    }

    objc_storeStrong(&copySubscriptions, 0);
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v49, 0);
  }

  else
  {
    oslog = selfCopy->_log;
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v61, "[UARPAssetManagerServiceInstanceMobileAsset settingsChangedForSerialNumber:]", location[0]);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "%s error retrieving accessory for serial number %@", v61, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    v50 = 1;
  }

  objc_storeStrong(&v53, 0);
  objc_storeStrong(location, 0);
}

- (void)assetAvailabilityUpdateForPersonality:(id)personality assetVersion:(id)version creationDate:(id)date status:(int64_t)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  v11 = 0;
  objc_storeStrong(&v11, version);
  v10 = 0;
  objc_storeStrong(&v10, date);
  delegate = [(UARPAssetManagerServiceInstance *)selfCopy delegate];
  [(UARPAssetManagerServiceDelegate *)delegate assetAvailabilityUpdateForPersonality:location[0] assetVersion:v11 creationDate:v10 status:status];

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (id)encodedClasses
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = objc_alloc_init(NSMutableArray);
  [v4[0] addObject:objc_opt_class()];
  [v4[0] addObject:objc_opt_class()];
  [v4[0] addObject:objc_opt_class()];
  [v4[0] addObject:objc_opt_class()];
  [v4[0] addObject:objc_opt_class()];
  [v4[0] addObject:objc_opt_class()];
  v3 = [NSSet setWithArray:v4[0]];
  objc_storeStrong(v4, 0);

  return v3;
}

@end