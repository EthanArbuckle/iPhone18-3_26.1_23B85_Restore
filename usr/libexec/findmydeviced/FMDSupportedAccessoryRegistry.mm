@interface FMDSupportedAccessoryRegistry
+ (id)defaultStorageLocation;
- (BOOL)isAccessorySupported:(id)supported;
- (FMDAssetRegistry)assetRegistry;
- (FMDSupportedAccessoryRegistry)initWithDelegate:(id)delegate;
- (FMDSupportedAccessoryRegistryDelegate)delegate;
- (double)locateDesiredAccuracyForAccessory:(id)accessory;
- (double)locateTimeoutForAccessory:(id)accessory;
- (double)locationThrottleTimeIntervalForAccessory:(id)accessory speed:(double)speed;
- (id)advertisementStatusKeyForProfile:(int64_t)profile;
- (id)assetForProfile:(int64_t)profile;
- (id)assetsForAccessory:(id)accessory;
- (id)channelNamesForProfile:(int64_t)profile;
- (id)defaultSupportedAccessoriesIfEnabled:(BOOL)enabled;
- (id)locatorForAccessory:(id)accessory;
- (id)longTermLocationExpiryTimeIntervalForAccessory:(id)accessory;
- (id)maximumHistoricalLocationsForAccessory:(id)accessory;
- (id)playbackChannelNamesForAccessory:(id)accessory commandChannels:(id)channels;
- (id)shortTermLocationExpiryTimeIntervalForAccessory:(id)accessory;
- (id)supportedAccessoriesVersion;
- (id)supportedAccessoryForAccessory:(id)accessory;
- (id)supportedAccessoryForIdentifier:(id)identifier;
- (int64_t)profileForAccessoryIdentifier:(id)identifier;
- (unint64_t)defaultTimeoutAudioSafetyStatusForAccessory:(id)accessory;
- (unint64_t)defaultTimeoutAudioSafetyStatusForProfile:(int64_t)profile;
- (void)clearSupportedAccessoryRegistry;
- (void)downloadAssetsIfNeededForAccessory:(id)accessory;
- (void)readSupportedAccessoriesFromDisk;
- (void)resetSupportedAccessoriesVersion;
- (void)updateSupportedAccessories:(id)accessories completion:(id)completion;
@end

@implementation FMDSupportedAccessoryRegistry

- (id)supportedAccessoriesVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000ABA4;
  v11 = sub_100002B9C;
  v12 = 0;
  serialQueue = [(FMDSupportedAccessoryRegistry *)self serialQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000AFE8;
  v6[3] = &unk_1002CD260;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)defaultStorageLocation
{
  v2 = objc_alloc_init(FMInternalFileContainer);
  v3 = [v2 url];
  v4 = [v3 fm_preferencesPathURLForDomain:@"com.apple.icloud.findmydeviced.supportedaccessories"];

  return v4;
}

- (FMDSupportedAccessoryRegistry)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = FMDSupportedAccessoryRegistry;
  v5 = [(FMDSupportedAccessoryRegistry *)&v24 init];
  if (v5)
  {
    v6 = dispatch_queue_create("FMDSupportedAccessoryRegistry.serialQueue", 0);
    [(FMDSupportedAccessoryRegistry *)v5 setSerialQueue:v6];

    [(FMDSupportedAccessoryRegistry *)v5 setSupportedAccessories:&__NSDictionary0__struct];
    [(FMDSupportedAccessoryRegistry *)v5 setDelegate:delegateCopy];
    v7 = [FMDataArchiver alloc];
    defaultStorageLocation = [objc_opt_class() defaultStorageLocation];
    v9 = [v7 initWithFileURL:defaultStorageLocation];
    [(FMDSupportedAccessoryRegistry *)v5 setDataArchiver:v9];

    dataArchiver = [(FMDSupportedAccessoryRegistry *)v5 dataArchiver];
    [dataArchiver setDataProtectionClass:4];

    dataArchiver2 = [(FMDSupportedAccessoryRegistry *)v5 dataArchiver];
    [dataArchiver2 setBackedUp:0];

    dataArchiver3 = [(FMDSupportedAccessoryRegistry *)v5 dataArchiver];
    [dataArchiver3 setCreateDirectories:1];

    [(FMDSupportedAccessoryRegistry *)v5 setDefaultAccessoriesEnabled:1];
    [(FMDSupportedAccessoryRegistry *)v5 readSupportedAccessoriesFromDisk];
    v13 = [(FMDSupportedAccessoryRegistry *)v5 defaultSupportedAccessoriesIfEnabled:[(FMDSupportedAccessoryRegistry *)v5 defaultAccessoriesEnabled]];
    objc_initWeak(&location, v5);
    serialQueue = [(FMDSupportedAccessoryRegistry *)v5 serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001ECA04;
    block[3] = &unk_1002CE3B8;
    objc_copyWeak(&v22, &location);
    v15 = v13;
    v20 = v15;
    v21 = delegateCopy;
    dispatch_async(serialQueue, block);

    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDSupportedAccessoryRegistry initialized", v18, 2u);
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (id)defaultSupportedAccessoriesIfEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = objc_alloc_init(NSMutableDictionary);
  v30 = @"FMDSupportedAccessoryRegistryLocalVersionKey";
  v31 = @"2";
  v6 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  [v5 setDictionary:v6];

  if (enabledCopy)
  {
    v25 = [[FMDSupportedAccessory alloc] initWithVendorID:76 productID:8194 profile:1];
    v7 = [[FMDSupportedAccessory alloc] initWithVendorID:76 productID:8207 profile:1];
    accessoryIdentifier = [(FMDSupportedAccessory *)v25 accessoryIdentifier];
    v28[0] = accessoryIdentifier;
    v29[0] = v25;
    accessoryIdentifier2 = [(FMDSupportedAccessory *)v7 accessoryIdentifier];
    v28[1] = accessoryIdentifier2;
    v28[2] = @"FMDSupportedAccessoryRegistryLocalVersionKey";
    v29[1] = v7;
    v29[2] = @"7";
    v10 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:3];
    [v5 addEntriesFromDictionary:v10];

    v11 = [[FMDSupportedAccessory alloc] initWithVendorID:76 productID:8206 profile:1];
    accessoryIdentifier3 = [(FMDSupportedAccessory *)v11 accessoryIdentifier];
    [v5 setObject:v11 forKey:accessoryIdentifier3];

    [v5 setObject:@"8" forKey:@"FMDSupportedAccessoryRegistryLocalVersionKey"];
    v13 = [(FMDSupportedAccessoryRegistry *)self assetForProfile:2];
    v14 = [FMDSupportedAccessory alloc];
    v27 = v13;
    v15 = [NSArray arrayWithObjects:&v27 count:1];
    v16 = [(FMDSupportedAccessory *)v14 initWithVendorID:76 productID:8202 profile:2 assets:v15];

    accessoryIdentifier4 = [(FMDSupportedAccessory *)v16 accessoryIdentifier];
    [v5 setObject:v16 forKey:accessoryIdentifier4];

    [v5 setObject:@"9" forKey:@"FMDSupportedAccessoryRegistryLocalVersionKey"];
    v18 = [(FMDSupportedAccessoryRegistry *)self assetForProfile:2];
    v19 = [FMDSupportedAccessory alloc];
    v26 = v18;
    v20 = [NSArray arrayWithObjects:&v26 count:1];
    v21 = [(FMDSupportedAccessory *)v19 initWithVendorID:76 productID:8223 profile:2 assets:v20];

    accessoryIdentifier5 = [(FMDSupportedAccessory *)v21 accessoryIdentifier];
    [v5 setObject:v21 forKey:accessoryIdentifier5];

    [v5 setObject:@"9" forKey:@"FMDSupportedAccessoryRegistryLocalVersionKey"];
  }

  v23 = [v5 copy];

  return v23;
}

- (void)updateSupportedAccessories:(id)accessories completion:(id)completion
{
  accessoriesCopy = accessories;
  completionCopy = completion;
  objc_initWeak(&location, self);
  serialQueue = [(FMDSupportedAccessoryRegistry *)self serialQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001ED0E8;
  v11[3] = &unk_1002D0B08;
  objc_copyWeak(&v14, &location);
  v12 = accessoriesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = accessoriesCopy;
  dispatch_async(serialQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)resetSupportedAccessoriesVersion
{
  objc_initWeak(&location, self);
  serialQueue = [(FMDSupportedAccessoryRegistry *)self serialQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001ED598;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(serialQueue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)isAccessorySupported:(id)supported
{
  supportedCopy = supported;
  if ([supportedCopy category] != 2)
  {
    if ([supportedCopy category] != 3)
    {
      v9 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:supportedCopy];
      v8 = v9 != 0;

      goto LABEL_8;
    }

    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      name = [supportedCopy name];
      baUUID = [supportedCopy baUUID];
      v11 = 138412546;
      v12 = name;
      v13 = 2112;
      v14 = baUUID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "isAccessorySupported - Accessory (name: %@, baUUID: %@) of category extension is supported", &v11, 0x16u);
    }
  }

  v8 = 1;
LABEL_8:

  return v8;
}

- (int64_t)profileForAccessoryIdentifier:(id)identifier
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForIdentifier:identifier];
  profile = [v3 profile];

  return profile;
}

- (id)maximumHistoricalLocationsForAccessory:(id)accessory
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  maximumHistoricalLocations = [v3 maximumHistoricalLocations];

  return maximumHistoricalLocations;
}

- (id)shortTermLocationExpiryTimeIntervalForAccessory:(id)accessory
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  shortTermlocationExpiryTimeInterval = [v3 shortTermlocationExpiryTimeInterval];

  return shortTermlocationExpiryTimeInterval;
}

- (id)longTermLocationExpiryTimeIntervalForAccessory:(id)accessory
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  longTermlocationExpiryTimeInterval = [v3 longTermlocationExpiryTimeInterval];

  return longTermlocationExpiryTimeInterval;
}

- (double)locateTimeoutForAccessory:(id)accessory
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  locateTimeout = [v3 locateTimeout];
  [locateTimeout doubleValue];
  v6 = v5;

  return v6;
}

- (double)locateDesiredAccuracyForAccessory:(id)accessory
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  desiredAccuracy = [v3 desiredAccuracy];
  [desiredAccuracy doubleValue];
  v6 = v5;

  return v6;
}

- (id)advertisementStatusKeyForProfile:(int64_t)profile
{
  if ((profile - 1) >= 2)
  {
    return &stru_1002DCE08;
  }

  else
  {
    return @"hsStatus";
  }
}

- (unint64_t)defaultTimeoutAudioSafetyStatusForAccessory:(id)accessory
{
  v4 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  v5 = v4;
  if (v4)
  {
    v6 = -[FMDSupportedAccessoryRegistry defaultTimeoutAudioSafetyStatusForProfile:](self, "defaultTimeoutAudioSafetyStatusForProfile:", [v4 profile]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)playbackChannelNamesForAccessory:(id)accessory commandChannels:(id)channels
{
  accessoryCopy = accessory;
  channelsCopy = channels;
  if ([accessoryCopy category] == 3)
  {
    self = channelsCopy;
    goto LABEL_10;
  }

  v8 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessoryCopy];
  v9 = v8;
  if (!v8)
  {
    v11 = [(FMDSupportedAccessoryRegistry *)self channelNamesForProfile:0];
    goto LABEL_8;
  }

  profile = [v8 profile];
  if (profile == 2)
  {
    if (!channelsCopy || ![channelsCopy count])
    {
      self = &__NSArray0__struct;
      goto LABEL_9;
    }

    v13 = @"monaural";
    v11 = [NSArray arrayWithObjects:&v13 count:1];
    goto LABEL_8;
  }

  if (profile <= 1)
  {
    v11 = channelsCopy;
LABEL_8:
    self = v11;
  }

LABEL_9:

LABEL_10:

  return self;
}

- (id)channelNamesForProfile:(int64_t)profile
{
  if (profile == 2)
  {
    v7 = @"monaural";
    v3 = &v7;
    v4 = 1;
    goto LABEL_5;
  }

  if (profile == 1)
  {
    v8 = @"left";
    v9 = @"right";
    v3 = &v8;
    v4 = 2;
LABEL_5:
    v5 = [NSArray arrayWithObjects:v3 count:v4, v7, v8, v9];
    goto LABEL_7;
  }

  v5 = &__NSArray0__struct;
LABEL_7:

  return v5;
}

- (id)locatorForAccessory:(id)accessory
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  if (v3)
  {
    v4 = [FMDLocator alloc];
    v5 = +[FMDLocationManagerFactory sharedInstance];
    newLocationManager = [v5 newLocationManager];
    v7 = [(FMDLocator *)v4 initWithLocationManager:newLocationManager];

    desiredAccuracy = [v3 desiredAccuracy];
    [desiredAccuracy doubleValue];
    [(FMDLocator *)v7 setDesiredAccuracy:?];

    locateTimeout = [v3 locateTimeout];
    [locateTimeout doubleValue];
    [(FMDLocator *)v7 setDuration:?];

    v10 = objc_alloc_init(FMDConservativeLocatorPublisher);
    startThreshold = [v3 startThreshold];
    [(FMDConservativeLocatorPublisher *)v10 setStartThreshold:startThreshold];

    endThreshold = [v3 endThreshold];
    [(FMDConservativeLocatorPublisher *)v10 setEndThreshold:endThreshold];

    decayFactor = [v3 decayFactor];
    [(FMDConservativeLocatorPublisher *)v10 setDecayFactor:decayFactor];

    cachedLocValidityDuration = [v3 cachedLocValidityDuration];
    [(FMDConservativeLocatorPublisher *)v10 setCachedLocationValidityTimeInterval:cachedLocValidityDuration];

    [(FMDLocator *)v7 setLocatorPublisher:v10];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)locationThrottleTimeIntervalForAccessory:(id)accessory speed:(double)speed
{
  v5 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  locationThrottleRatio = [v5 locationThrottleRatio];
  [locationThrottleRatio doubleValue];
  v8 = v7;

  result = 0.0;
  if (v8 > 0.0)
  {
    return 60.0 / (fmax(speed, 1.0) * v8);
  }

  return result;
}

- (id)assetsForAccessory:(id)accessory
{
  v3 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForAccessory:accessory];
  assets = [v3 assets];

  return assets;
}

- (void)clearSupportedAccessoryRegistry
{
  serialQueue = [(FMDSupportedAccessoryRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EDEB0;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (id)assetForProfile:(int64_t)profile
{
  if (profile == 2)
  {
    v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FindMyDevice.framework"];
    v4 = [v3 pathForResource:@"accessory_locateSound_lg-B515" ofType:@"wav"];
    if (v4)
    {
      v5 = [[NSURL alloc] initFileURLWithPath:v4 isDirectory:0];
      v6 = [[FMDStandardAsset alloc] initWithFileURL:v5 lastModified:&stru_1002DCE08 etag:&stru_1002DCE08 type:1 url:v5];
    }

    else
    {
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDSupportedAccessoryRegistry did not find accessory_locateSound_lg.", v9, 2u);
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)downloadAssetsIfNeededForAccessory:(id)accessory
{
  v4 = [(FMDSupportedAccessoryRegistry *)self assetsForAccessory:accessory];
  +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001EE19C;
  v8 = v7[3] = &unk_1002D0718;
  v5 = v8;
  [v4 enumerateObjectsUsingBlock:v7];
  assetRegistry = [(FMDSupportedAccessoryRegistry *)self assetRegistry];
  [assetRegistry downloadAssets:v5];
}

- (id)supportedAccessoryForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([accessoryCopy category] == 1)
  {
    if ([accessoryCopy conformsToProtocol:&OBJC_PROTOCOL___FMDDynamicAccessoryAdressable])
    {
      v5 = accessoryCopy;
      v6 = [[FMDAccessoryIdentifier alloc] initWithVendorID:objc_msgSend(v5 productID:{"vendorID"), objc_msgSend(v5, "productID")}];
      v7 = sub_100002880();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        name = [v5 name];
        v16 = 138412802;
        v17 = name;
        v18 = 1024;
        vendorID = [v5 vendorID];
        v20 = 1024;
        productID = [v5 productID];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "supportedAccessoryForAccessory - accessory (name: %@) addressableAccessory (vendorID: %d, productID: %d)", &v16, 0x18u);
      }

      goto LABEL_11;
    }

LABEL_10:
    v6 = 0;
LABEL_11:
    supportedAccessory2 = [(FMDSupportedAccessoryRegistry *)self supportedAccessoryForIdentifier:v6];
    goto LABEL_12;
  }

  if ([accessoryCopy category] != 3)
  {
    goto LABEL_10;
  }

  v6 = accessoryCopy;
  v9 = +[FMDExtConfigurationRegistry sharedInstance];
  accessoryType = [v6 accessoryType];
  v11 = [v9 configForAccessoryType:accessoryType];

  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    supportedAccessory = [v11 supportedAccessory];
    v16 = 67109120;
    LODWORD(v17) = [supportedAccessory productID];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "supportedAccessoryForAccessory - Accessory (productID: %d) of category extension is supported", &v16, 8u);
  }

  supportedAccessory2 = [v11 supportedAccessory];

LABEL_12:

  return supportedAccessory2;
}

- (id)supportedAccessoryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10000ABA4;
  v24 = sub_100002B9C;
  v25 = 0;
  if (identifierCopy && (v5 = [[FMDAccessoryIdentifier alloc] initWithString:@"0_0"], v6 = objc_msgSend(identifierCopy, "isEqual:", v5), v5, (v6 & 1) == 0))
  {
    serialQueue = [(FMDSupportedAccessoryRegistry *)self serialQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001EE7CC;
    block[3] = &unk_1002D01E0;
    v9 = identifierCopy;
    selfCopy = self;
    v19 = &v20;
    v17 = v9;
    dispatch_sync(serialQueue, block);

    if (v21[5])
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        vendorID = [v21[5] vendorID];
        productID = [v21[5] productID];
        *buf = 67109634;
        *v27 = vendorID;
        *&v27[4] = 1024;
        *&v27[6] = productID;
        *v28 = 2112;
        *&v28[2] = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDSupportedAccessoryRegistry accessory (vendorID: %d, productID: %d) is supported %@", buf, 0x18u);
      }
    }

    else
    {
      v10 = sub_100002880();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        supportedAccessories = [(FMDSupportedAccessoryRegistry *)self supportedAccessories];
        *buf = 138412546;
        *v27 = v9;
        *&v27[8] = 2112;
        *v28 = supportedAccessories;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDSupportedAccessoryRegistry accessory %@ is NOT in the listed of supportedAccessories %@", buf, 0x16u);
      }
    }

    v7 = v17;
  }

  else
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDSupportedAccessoryRegistry - Cannot verify support if vendorID/productID are 0. Default to unsupported.", buf, 2u);
    }
  }

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (FMDAssetRegistry)assetRegistry
{
  assetRegistry = self->_assetRegistry;
  if (!assetRegistry)
  {
    v4 = [FMDAssetRegistry alloc];
    v5 = +[FMDAssetRegistry defaultStorageLocation];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [(FMDAssetRegistry *)v4 initWithStorageLocation:v5 identifier:v7];
    v9 = self->_assetRegistry;
    self->_assetRegistry = v8;

    assetRegistry = self->_assetRegistry;
  }

  return assetRegistry;
}

- (void)readSupportedAccessoriesFromDisk
{
  objc_initWeak(&location, self);
  serialQueue = [(FMDSupportedAccessoryRegistry *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001EE9B4;
  block[3] = &unk_1002CD288;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (unint64_t)defaultTimeoutAudioSafetyStatusForProfile:(int64_t)profile
{
  v3 = 5;
  if (profile != 2)
  {
    v3 = 0;
  }

  if (profile == 1)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

- (FMDSupportedAccessoryRegistryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end