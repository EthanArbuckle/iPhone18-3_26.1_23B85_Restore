@interface AUDeveloperSettingsDatabase
+ (id)sharedDatabase;
- (AUDeveloperSettingsDatabase)init;
- (BOOL)isSeedParticipationEnabled:(id)a3;
- (NSDictionary)accessoriesDictionary;
- (id)accessoryList;
- (id)copyAccessoryForSignature:(id)a3 modelNumber:(id)a4 fusingType:(id)a5 partnerSerialNumbers:(id)a6;
- (id)copyAccessoryWithSerialNumber:(id)a3;
- (unint64_t)urlLocationTypeForAccessory:(id)a3;
- (void)accessoryNameForIdentifier:(id)a3 name:(id *)a4 serialNumber:(id *)a5 fusingType:(unint64_t *)a6;
- (void)addAccessoryWithSerialNumber:(id)a3 info:(id)a4;
- (void)removeAccessory:(id)a3;
- (void)removeAccessoryWithSerialNumber:(id)a3;
- (void)setAccessoriesDictionary:(id)a3;
- (void)updateAccessory:(id)a3;
- (void)updateAccessory:(id)a3 locationType:(unint64_t)a4;
- (void)updateAccessoryWithSerialNumber:(id)a3 info:(id)a4;
@end

@implementation AUDeveloperSettingsDatabase

+ (id)sharedDatabase
{
  v5 = &sharedDatabase_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_0);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedDatabase_sharedDatabase;

  return v2;
}

void __45__AUDeveloperSettingsDatabase_sharedDatabase__block_invoke(id a1)
{
  v1 = objc_alloc_init(AUDeveloperSettingsDatabase);
  v2 = sharedDatabase_sharedDatabase;
  sharedDatabase_sharedDatabase = v1;
}

- (AUDeveloperSettingsDatabase)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = AUDeveloperSettingsDatabase;
  v8 = [(AUDeveloperSettingsDatabase *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = os_log_create([@"com.apple.AUDeveloperSettings" UTF8String], "default");
    log = v8->_log;
    v8->_log = v2;
  }

  v5 = v8;
  objc_storeStrong(&v8, 0);
  return v5;
}

- (id)accessoryList
{
  v9 = self;
  v8[1] = a2;
  v8[0] = objc_opt_new();
  v7 = [(AUDeveloperSettingsDatabase *)v9 accessoriesDictionary];
  v3 = v7;
  v5 = v9;
  v6 = v8[0];
  [(NSDictionary *)v3 enumerateKeysAndObjectsUsingBlock:?];
  v4 = [NSArray arrayWithArray:v8[0]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);

  return v4;
}

void __44__AUDeveloperSettingsDatabase_accessoryList__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[2] = a4;
  v13[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [v14 mutableCopy];
    v5 = [location[0] copy];
    [v10 setObject:? forKeyedSubscript:?];

    v4 = [UARPSettingsAccessory alloc];
    v9 = [(UARPSettingsAccessory *)v4 initWithDictionary:v10];
    [*(a1 + 40) addObject:v9];
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    v11 = 0;
  }

  else
  {
    v13[0] = *(*(a1 + 32) + 8);
    v12 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v13[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v16, "[AUDeveloperSettingsDatabase accessoryList]_block_invoke", location[0], v14);
      _os_log_error_impl(&_mh_execute_header, v13[0], v12, "%s: unknown key/value pair %@/%@", v16, 0x20u);
    }

    objc_storeStrong(v13, 0);
    v11 = 1;
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAccessory:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v6;
  v4 = [location[0] serialNumber];
  [(AUDeveloperSettingsDatabase *)v3 removeAccessoryWithSerialNumber:?];

  objc_storeStrong(location, 0);
}

- (void)updateAccessory:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [location[0] encodeAsChangedDictionary];
  if (v5)
  {
    v3 = v7;
    v4 = [location[0] serialNumber];
    [AUDeveloperSettingsDatabase updateAccessoryWithSerialNumber:v3 info:"updateAccessoryWithSerialNumber:info:"];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)copyAccessoryWithSerialNumber:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  v21 = [(AUDeveloperSettingsDatabase *)v24 accessoryList];
  memset(__b, 0, sizeof(__b));
  obj = v21;
  v18 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v18)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v18;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v15);
      v11 = [v20 serialNumber];
      v12 = [v11 isEqualToString:location[0]];

      if (v12 == 1)
      {
        v3 = [v20 copy];
        v4 = v22;
        v22 = v3;

        [v22 setSerialNumber:location[0]];
        goto LABEL_11;
      }

      v9 = [v20 partnerSerialNumbers];
      v10 = [v9 containsObject:location[0]];

      if (v10 == 1)
      {
        break;
      }

      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v16)
        {
          goto LABEL_11;
        }
      }
    }

    v5 = [v20 copy];
    v6 = v22;
    v22 = v5;
  }

LABEL_11:

  v8 = v22;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v8;
}

- (id)copyAccessoryForSignature:(id)a3 modelNumber:(id)a4 fusingType:(id)a5 partnerSerialNumbers:(id)a6
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = 0;
  objc_storeStrong(&v11, a6);
  v10 = getAccessoryDatabaseKeyForAccessory(location[0], v13, v12, v11);
  if (v10)
  {
    v16 = [(AUDeveloperSettingsDatabase *)v15 copyAccessoryWithSerialNumber:v10];
  }

  else
  {
    v16 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (void)setAccessoriesDictionary:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = v5->_log;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_32_8_64(v6, "[AUDeveloperSettingsDatabase setAccessoriesDictionary:]", location[0]);
    _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "%s: setting %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [NSUserDefaults AUDeveloperSettingsSetObject:location[0] withKey:@"accessories"];
  objc_storeStrong(location, 0);
}

- (NSDictionary)accessoriesDictionary
{
  v8 = self;
  v7[1] = a2;
  v7[0] = [NSUserDefaults AUDeveloperSettingsObjectWithKey:@"accessories"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    location = v8->_log;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_64(v9, "[AUDeveloperSettingsDatabase accessoriesDictionary]", v7[0]);
      _os_log_error_impl(&_mh_execute_header, location, OS_LOG_TYPE_ERROR, "%s: received unknown object = %@", v9, 0x16u);
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(v7, 0);
  }

  if (!v7[0])
  {
    v2 = objc_alloc_init(NSDictionary);
    v3 = v7[0];
    v7[0] = v2;
  }

  v5 = v7[0];
  objc_storeStrong(v7, 0);

  return v5;
}

- (BOOL)isSeedParticipationEnabled:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(AUDeveloperSettingsDatabase *)v5 urlLocationTypeForAccessory:location[0]]== 3 || [(AUDeveloperSettingsDatabase *)v5 urlLocationTypeForAccessory:location[0]]== 8;
  objc_storeStrong(location, 0);
  return v6;
}

- (unint64_t)urlLocationTypeForAccessory:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(AUDeveloperSettingsDatabase *)v9 accessoriesDictionary];
  v6 = [(NSDictionary *)v7 objectForKeyedSubscript:location[0]];
  v5 = [v6 objectForKeyedSubscript:@"assetLocation"];
  v4 = AUDeveloperSettingsURLStringToType(v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return v4;
}

- (void)updateAccessory:(id)a3 locationType:(unint64_t)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  if ([(AUDeveloperSettingsDatabase *)v18 isValidLocationType:a4])
  {
    v14 = [(AUDeveloperSettingsDatabase *)v18 accessoriesDictionary];
    v9 = [v14 objectForKeyedSubscript:location[0]];
    v13 = [v9 mutableCopy];

    v10 = [NSString stringWithUTF8String:AUDeveloperSettingsURLTypeToString(v16)];
    [v13 setObject:? forKeyedSubscript:?];

    v12 = v18->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v7 = AUDeveloperSettingsURLTypeToString(v16);
      v8 = [v13 objectForKeyedSubscript:@"name"];
      __os_log_helper_16_2_3_8_32_8_32_8_64(v19, "[AUDeveloperSettingsDatabase updateAccessory:locationType:]", v7, v8);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: Updating location = %s for accessoryName = %@", v19, 0x20u);
    }

    objc_storeStrong(&v12, 0);
    v5 = v18;
    v4 = location[0];
    v6 = [NSDictionary dictionaryWithDictionary:v13];
    [(AUDeveloperSettingsDatabase *)v5 addAccessoryWithSerialNumber:v4 info:?];

    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)addAccessoryWithSerialNumber:(id)a3 info:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if ([location[0] length])
  {
    v4 = [(AUDeveloperSettingsDatabase *)v12 accessoriesDictionary];
    v6 = [(NSDictionary *)v4 mutableCopy];

    [v6 setObject:v10 forKeyedSubscript:location[0]];
    [(AUDeveloperSettingsDatabase *)v12 setAccessoriesDictionary:v6];
    objc_storeStrong(&v6, 0);
    v7 = 0;
  }

  else
  {
    v9 = v12->_log;
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_64(v13, "[AUDeveloperSettingsDatabase addAccessoryWithSerialNumber:info:]", v10);
      _os_log_impl(&_mh_execute_header, v9, v8, "%s: Not adding empty serial number with info = %@", v13, 0x16u);
    }

    objc_storeStrong(&v9, 0);
    v7 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)removeAccessoryWithSerialNumber:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AUDeveloperSettingsDatabase *)v7 accessoriesDictionary];
  v5 = [(NSDictionary *)v3 mutableCopy];

  [v5 removeObjectForKey:location[0]];
  oslog = v7->_log;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v8, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Removing accessory from database %@", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(AUDeveloperSettingsDatabase *)v7 setAccessoriesDictionary:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)updateAccessoryWithSerialNumber:(id)a3 info:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  if ([location[0] length] && objc_msgSend(v9, "count"))
  {
    v5 = v11->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_64_8_64(v12, location[0], v9);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Updating database with %@ / %@", v12, 0x16u);
    }

    objc_storeStrong(&v5, 0);
    [NSUserDefaults AUDeveloperSettingsUpdateAccessory:v9 withKey:location[0]];
    v6 = 0;
  }

  else
  {
    oslog = v11->_log;
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_3_8_32_8_64_8_64(v13, "[AUDeveloperSettingsDatabase updateAccessoryWithSerialNumber:info:]", location[0], v9);
      _os_log_impl(&_mh_execute_header, oslog, type, "%s: Invalid key value / pair = %@ / %@", v13, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v6 = 1;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)accessoryNameForIdentifier:(id)a3 name:(id *)a4 serialNumber:(id *)a5 fusingType:(unint64_t *)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end