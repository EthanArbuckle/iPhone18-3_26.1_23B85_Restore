@interface CRVehicleStore
+ (BOOL)_addKeychainPairingForVehicle:(id)vehicle;
+ (BOOL)_addPreferencesPairingForVehicle:(id)vehicle;
+ (BOOL)_removeKeychainPairingForVehicle:(id)vehicle;
+ (BOOL)_removePreferencesPairingForVehicle:(id)vehicle;
+ (BOOL)_removePreferencesPairingForVehicleIdentifier:(id)identifier;
+ (BOOL)setPayload:(id)payload forVehicleWithIdentifier:(id)identifier;
+ (id)_allKeychainAttributesForVehicle:(id)vehicle;
+ (id)_allPreferencesPairings;
+ (id)_allUnpairedVehicleStorage;
+ (id)_creationKeychainAttributesForVehicle:(id)vehicle;
+ (id)_identifyingKeychainAttributesForVehicle:(id)vehicle;
+ (id)_itemClassKeychainAttributes;
+ (id)_keychainAttributesMatchingQuery:(id)query;
+ (id)_keychainItemAttributesForAllVehicles;
+ (id)_preferencesAttributesForVehicle:(id)vehicle;
+ (id)_updateKeychainAttributesForVehicle:(id)vehicle;
+ (id)payloadForVehicleWithIdentifier:(id)identifier;
+ (void)_addKeychainAttributesForVehicle:(id)vehicle toDictionary:(id)dictionary;
+ (void)_applyPreferencesAttributes:(id)attributes toVehicle:(id)vehicle;
+ (void)_cleanupPreferencesForIncompleteVehicleIdentifier:(id)identifier name:(id)name;
+ (void)postPairingsDidChangeNotification;
- (BOOL)removeVehicle:(id)vehicle;
- (CRVehicleStore)init;
- (id)_matchingKeychainItemForIdentifier:(id)identifier inKeychainItems:(id)items;
- (id)allStoredVehicles;
- (id)saveVehicle:(id)vehicle withMergePolicy:(id)policy;
- (id)vehicleForBluetoothAddress:(id)address;
- (id)vehicleForCertificateSerial:(id)serial;
- (id)vehicleForIdentifier:(id)identifier;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)handleAvailabilityDidChange:(id)change;
- (void)removeObserver:(id)observer;
@end

@implementation CRVehicleStore

- (id)allStoredVehicles
{
  if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    cachedVehicles = [(CRVehicleStore *)self cachedVehicles];
    if (cachedVehicles)
    {
      v4 = CarGeneralLogging();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_100081A10(cachedVehicles, v4);
      }

      v5 = [[NSSet alloc] initWithSet:cachedVehicles copyItems:1];
    }

    else
    {
      v6 = +[NSMutableSet set];
      _keychainItemAttributesForAllVehicles = [objc_opt_class() _keychainItemAttributesForAllVehicles];
      v8 = [_keychainItemAttributesForAllVehicles mutableCopy];

      _allPreferencesPairings = [objc_opt_class() _allPreferencesPairings];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000A624;
      v13[3] = &unk_1000DD4F8;
      v13[4] = self;
      v14 = v8;
      v10 = v6;
      v15 = v10;
      v11 = v8;
      [_allPreferencesPairings enumerateKeysAndObjectsUsingBlock:v13];
      if ([v10 count])
      {
        [(CRVehicleStore *)self setCachedVehicles:v10];
      }

      v5 = [[NSSet alloc] initWithSet:v10 copyItems:1];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_itemClassKeychainAttributes
{
  v2 = +[NSMutableDictionary dictionary];
  [v2 setObject:@"com.apple.carplay.pairings" forKey:kSecAttrAccessGroup];
  [v2 setObject:@"carplay-pairing" forKey:kSecAttrService];
  [v2 setObject:kSecClassGenericPassword forKey:kSecClass];

  return v2;
}

+ (id)_identifyingKeychainAttributesForVehicle:(id)vehicle
{
  identifier = [vehicle identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    _itemClassKeychainAttributes = [self _itemClassKeychainAttributes];
    [_itemClassKeychainAttributes setObject:uUIDString forKey:kSecAttrAccount];
  }

  else
  {
    _itemClassKeychainAttributes = 0;
  }

  return _itemClassKeychainAttributes;
}

+ (void)_addKeychainAttributesForVehicle:(id)vehicle toDictionary:(id)dictionary
{
  vehicleCopy = vehicle;
  dictionaryCopy = dictionary;
  vehicleName = [vehicleCopy vehicleName];

  if (vehicleName)
  {
    vehicleName2 = [vehicleCopy vehicleName];
    [dictionaryCopy setObject:vehicleName2 forKey:kSecAttrLabel];
  }

  certificateSerialNumber = [vehicleCopy certificateSerialNumber];

  if (certificateSerialNumber)
  {
    certificateSerialNumber2 = [vehicleCopy certificateSerialNumber];
    [dictionaryCopy setObject:certificateSerialNumber2 forKey:kSecValueData];
  }

  v13 = bswap32([vehicleCopy pairingStatus]);
  v11 = [NSMutableData dataWithBytes:&v13 length:4];
  v12 = bswap32([vehicleCopy enhancedIntegrationStatus]);
  [v11 appendBytes:&v12 length:4];
  [dictionaryCopy setObject:v11 forKey:kSecAttrGeneric];
}

+ (id)_allKeychainAttributesForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = [self _identifyingKeychainAttributesForVehicle:vehicleCopy];
  [self _addKeychainAttributesForVehicle:vehicleCopy toDictionary:v5];

  return v5;
}

+ (id)_creationKeychainAttributesForVehicle:(id)vehicle
{
  v3 = [self _allKeychainAttributesForVehicle:vehicle];
  [v3 setObject:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly forKey:kSecAttrAccessible];

  return v3;
}

+ (id)_updateKeychainAttributesForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = +[NSMutableDictionary dictionary];
  [self _addKeychainAttributesForVehicle:vehicleCopy toDictionary:v5];

  return v5;
}

+ (id)_keychainAttributesMatchingQuery:(id)query
{
  result = 0;
  v3 = [query mutableCopy];
  [v3 setObject:kCFBooleanTrue forKey:kSecReturnAttributes];
  [v3 setObject:kCFBooleanTrue forKey:kSecReturnData];
  if (v3)
  {
    v4 = SecItemCopyMatching(v3, &result);
    v5 = result;
    v6 = CarGeneralLogging();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v4 || !v5)
    {
      if (v7)
      {
        *buf = 138412546;
        v11 = v3;
        v12 = 1024;
        v13 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No vehicle found for keychain query: %@ error: %i", buf, 0x12u);
      }

      v5 = 0;
    }

    else if (v7)
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Found a queried keychain item: %@", buf, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_keychainItemAttributesForAllVehicles
{
  result = 0;
  _itemClassKeychainAttributes = [self _itemClassKeychainAttributes];
  [_itemClassKeychainAttributes setObject:kSecMatchLimitAll forKey:kSecMatchLimit];
  [_itemClassKeychainAttributes setObject:kCFBooleanTrue forKey:kSecReturnAttributes];
  [_itemClassKeychainAttributes setObject:kCFBooleanTrue forKey:kSecReturnData];
  if (_itemClassKeychainAttributes)
  {
    v3 = SecItemCopyMatching(_itemClassKeychainAttributes, &result);
    v4 = result;
    v5 = CarGeneralLogging();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v3 || !v4)
    {
      if (v6)
      {
        *buf = 138412546;
        v10 = _itemClassKeychainAttributes;
        v11 = 1024;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "No vehicles found for keychain query: %@ error: %i", buf, 0x12u);
      }

      v4 = 0;
    }

    else if (v6)
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found queried keychain items: %@", buf, 0xCu);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)_addKeychainPairingForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v4 = [objc_opt_class() _identifyingKeychainAttributesForVehicle:vehicleCopy];
  if (v4)
  {
    v5 = [objc_opt_class() _keychainAttributesMatchingQuery:v4];

    v6 = objc_opt_class();
    if (v5)
    {
      v7 = [v6 _updateKeychainAttributesForVehicle:vehicleCopy];
      v8 = SecItemUpdate(v4, v7);
      v9 = CarGeneralLogging();
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1000815D8();
        }

LABEL_17:
        v11 = 0;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v7;
        v13 = "Updated a keychain item: %@";
        goto LABEL_13;
      }
    }

    else
    {
      v12 = [v6 _creationKeychainAttributesForVehicle:vehicleCopy];
      v7 = v12;
      if (!v12 || SecItemAdd(v12, 0))
      {
        v10 = CarGeneralLogging();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100081654();
        }

        goto LABEL_17;
      }

      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v7;
        v13 = "Created a keychain item: %@";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v13, &v15, 0xCu);
      }
    }

    v11 = 1;
LABEL_18:

    goto LABEL_19;
  }

  v11 = 0;
LABEL_19:

  return v11;
}

+ (BOOL)_removeKeychainPairingForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v4 = [objc_opt_class() _identifyingKeychainAttributesForVehicle:vehicleCopy];

  if (v4)
  {
    v5 = SecItemDelete(v4);
    if (!v5)
    {
      v6 = CarGeneralLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deleted keychain items matching: %@", &v9, 0xCu);
      }

      v7 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to delete keychain items matching: %@ error: %i", &v9, 0x12u);
  }

  v7 = 0;
LABEL_10:

  return v7;
}

+ (id)_allUnpairedVehicleStorage
{
  v2 = CFPreferencesCopyAppValue(@"unpairedVehicleStorage", CRPreferencesNotMigratedDomain);
  if (!v2)
  {
    v2 = +[NSDictionary dictionary];
  }

  return v2;
}

+ (id)payloadForVehicleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _allUnpairedVehicleStorage = [self _allUnpairedVehicleStorage];
  v6 = [_allUnpairedVehicleStorage objectForKeyedSubscript:identifierCopy];

  return v6;
}

+ (BOOL)setPayload:(id)payload forVehicleWithIdentifier:(id)identifier
{
  payloadCopy = payload;
  identifierCopy = identifier;
  _allUnpairedVehicleStorage = [self _allUnpairedVehicleStorage];
  v9 = [NSMutableDictionary dictionaryWithDictionary:_allUnpairedVehicleStorage];

  v10 = CarGeneralLogging();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (payloadCopy)
  {
    if (v11)
    {
      v15 = 138412546;
      v16 = payloadCopy;
      v17 = 2112;
      v18 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting payload %@ for identifier %@", &v15, 0x16u);
    }

    [v9 setObject:payloadCopy forKeyedSubscript:identifierCopy];
  }

  else
  {
    if (v11)
    {
      v15 = 138412290;
      v16 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing payload for identifier %@", &v15, 0xCu);
    }

    [v9 removeObjectForKey:identifierCopy];
  }

  CFPreferencesSetAppValue(@"unpairedVehicleStorage", v9, CRPreferencesNotMigratedDomain);
  v12 = CFPreferencesAppSynchronize(CRPreferencesNotMigratedDomain);
  if (!v12)
  {
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000816D0();
    }
  }

  return v12 != 0;
}

+ (id)_preferencesAttributesForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v4 = +[NSMutableDictionary dictionary];
  vehicleName = [vehicleCopy vehicleName];

  if (vehicleName)
  {
    vehicleName2 = [vehicleCopy vehicleName];
    [v4 setObject:vehicleName2 forKey:@"name"];
  }

  bluetoothAddress = [vehicleCopy bluetoothAddress];

  if (bluetoothAddress)
  {
    bluetoothAddress2 = [vehicleCopy bluetoothAddress];
    [v4 setObject:bluetoothAddress2 forKey:@"bluetoothAddress"];
  }

  carplayWiFiUUID = [vehicleCopy carplayWiFiUUID];

  if (carplayWiFiUUID)
  {
    carplayWiFiUUID2 = [vehicleCopy carplayWiFiUUID];
    [v4 setObject:carplayWiFiUUID2 forKey:@"carplayWiFiUUID"];
  }

  accessoryProtocols = [vehicleCopy accessoryProtocols];

  if (accessoryProtocols)
  {
    accessoryProtocols2 = [vehicleCopy accessoryProtocols];
    allObjects = [accessoryProtocols2 allObjects];
    [v4 setObject:allObjects forKey:@"carPlayProtocols"];
  }

  if ([vehicleCopy supportsEnhancedIntegration])
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"supportsEnhancedIntegration"];
  }

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicleCopy supportsMixableAudio]);
  [v4 setObject:v14 forKey:@"supportsMixableAudio"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicleCopy isSiriBargeInDisabled]);
  [v4 setObject:v15 forKey:@"isSiriBargeInDisabled"];

  supportsStartSessionRequest = [vehicleCopy supportsStartSessionRequest];

  if (supportsStartSessionRequest)
  {
    supportsStartSessionRequest2 = [vehicleCopy supportsStartSessionRequest];
    [v4 setObject:supportsStartSessionRequest2 forKey:@"supportsStartSessionRequest"];
  }

  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicleCopy supportsUSBCarPlay]);
  [v4 setObject:v18 forKey:@"supportsUSBCarPlay"];

  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicleCopy supportsWirelessCarPlay]);
  [v4 setObject:v19 forKey:@"supportsWirelessCarPlay"];

  if ([vehicleCopy albumArtUserPreference])
  {
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy albumArtUserPreference]);
    [v4 setObject:v20 forKey:@"albumArtUserPreference"];
  }

  wallpaperIdentifier = [vehicleCopy wallpaperIdentifier];

  if (wallpaperIdentifier)
  {
    wallpaperIdentifier2 = [vehicleCopy wallpaperIdentifier];
    [v4 setObject:wallpaperIdentifier2 forKey:@"wallpaperIdentifierUserPreference"];
  }

  previousWallpaperIdentifier = [vehicleCopy previousWallpaperIdentifier];

  if (previousWallpaperIdentifier)
  {
    previousWallpaperIdentifier2 = [vehicleCopy previousWallpaperIdentifier];
    [v4 setObject:previousWallpaperIdentifier2 forKey:@"previousWallpaperIdentifierUserPreference"];
  }

  v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy displayScaleMode]);
  [v4 setObject:v25 forKey:@"displayScalingModeUserPreference"];

  if ([vehicleCopy appearanceModePreference] == -1)
  {
    v26 = +[CARPrototypePref interfaceStyle];
    value = [v26 value];

    if (value)
    {
      [vehicleCopy setAppearanceModePreference:{objc_msgSend(value, "unsignedIntegerValue")}];
      v28 = +[CARPrototypePref interfaceStyle];
      [v28 setValue:0];

      value2 = +[CARPrototypePref latestInterfaceStyle];
      [value2 setValue:value];
    }

    else
    {
      v30 = +[CARPrototypePref latestInterfaceStyle];
      value2 = [v30 value];

      if (value2)
      {
        [vehicleCopy setAppearanceModePreference:{objc_msgSend(value2, "unsignedIntegerValue")}];
      }
    }
  }

  v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy appearanceModePreference]);
  [v4 setObject:v31 forKey:@"appearanceModeUserPreference"];

  if ([vehicleCopy mapsAppearancePreference] != -1)
  {
    v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy mapsAppearancePreference]);
    [v4 setObject:v32 forKey:@"mapsAppearanceUserPreference"];
  }

  if ([vehicleCopy colorFilterPreference])
  {
    v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy colorFilterPreference]);
    [v4 setObject:v33 forKey:@"colorFilterUserPreference"];
  }

  colorFilterIntensityPreference = [vehicleCopy colorFilterIntensityPreference];

  if (colorFilterIntensityPreference)
  {
    colorFilterIntensityPreference2 = [vehicleCopy colorFilterIntensityPreference];
    [v4 setObject:colorFilterIntensityPreference2 forKey:@"colorFilterIntensityUserPreference"];
  }

  if ([vehicleCopy boldTextPreference])
  {
    v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy boldTextPreference]);
    [v4 setObject:v36 forKey:@"boldTextUserPreference"];
  }

  v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [vehicleCopy soundRecognitionPreference]);
  [v4 setObject:v37 forKey:@"soundRecognitionUserPreference"];

  v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy voiceControlPreference]);
  [v4 setObject:v38 forKey:@"voiceControlUserPreference"];

  if ([vehicleCopy textSizePreference])
  {
    v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [vehicleCopy textSizePreference]);
    [v4 setObject:v39 forKey:@"textSizeUserPreference"];
  }

  disabledFeaturesPreference = [vehicleCopy disabledFeaturesPreference];

  if (disabledFeaturesPreference)
  {
    disabledFeaturesPreference2 = [vehicleCopy disabledFeaturesPreference];
    [v4 setObject:disabledFeaturesPreference2 forKey:@"disabledFeaturesPreference"];
  }

  v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicleCopy supportsBluetoothLE]);
  [v4 setObject:v42 forKey:@"supportsBluetoothLE"];

  supportsThemeAssets = [vehicleCopy supportsThemeAssets];

  if (supportsThemeAssets)
  {
    supportsThemeAssets2 = [vehicleCopy supportsThemeAssets];
    [v4 setObject:supportsThemeAssets2 forKey:@"supportsThemeAssets"];
  }

  clusterAssetIdentifier = [vehicleCopy clusterAssetIdentifier];

  if (clusterAssetIdentifier)
  {
    clusterAssetIdentifier2 = [vehicleCopy clusterAssetIdentifier];
    [v4 setObject:clusterAssetIdentifier2 forKey:@"clusterAssetIdentifier"];
  }

  clusterAssetiOSContentVersion = [vehicleCopy clusterAssetiOSContentVersion];

  if (clusterAssetiOSContentVersion)
  {
    clusterAssetiOSContentVersion2 = [vehicleCopy clusterAssetiOSContentVersion];
    [v4 setObject:clusterAssetiOSContentVersion2 forKey:@"clusterAssetiOSContentVersion"];
  }

  clusterAssetVersion = [vehicleCopy clusterAssetVersion];

  if (clusterAssetVersion)
  {
    clusterAssetVersion2 = [vehicleCopy clusterAssetVersion];
    [v4 setObject:clusterAssetVersion2 forKey:@"clusterAssetVersion"];
  }

  sDKVersion = [vehicleCopy SDKVersion];

  if (sDKVersion)
  {
    sDKVersion2 = [vehicleCopy SDKVersion];
    [v4 setObject:sDKVersion2 forKey:@"SDKVersion"];
  }

  clusterAssetURL = [vehicleCopy clusterAssetURL];

  if (clusterAssetURL)
  {
    clusterAssetURL2 = [vehicleCopy clusterAssetURL];
    path = [clusterAssetURL2 path];
    [v4 setObject:path forKey:@"clusterAssetPath"];
  }

  stagedClusterAssetiOSContentVersion = [vehicleCopy stagedClusterAssetiOSContentVersion];

  if (stagedClusterAssetiOSContentVersion)
  {
    stagedClusterAssetiOSContentVersion2 = [vehicleCopy stagedClusterAssetiOSContentVersion];
    [v4 setObject:stagedClusterAssetiOSContentVersion2 forKey:@"stagedClusterAssetiOSContentVersion"];
  }

  stagedClusterAssetVersion = [vehicleCopy stagedClusterAssetVersion];

  if (stagedClusterAssetVersion)
  {
    stagedClusterAssetVersion2 = [vehicleCopy stagedClusterAssetVersion];
    [v4 setObject:stagedClusterAssetVersion2 forKey:@"stagedClusterAssetVersion"];
  }

  stagedClusterAssetURL = [vehicleCopy stagedClusterAssetURL];

  if (stagedClusterAssetURL)
  {
    stagedClusterAssetURL2 = [vehicleCopy stagedClusterAssetURL];
    path2 = [stagedClusterAssetURL2 path];
    [v4 setObject:path2 forKey:@"stagedClusterAssetPath"];
  }

  displayThemeData = [vehicleCopy displayThemeData];

  v111 = v4;
  if (displayThemeData)
  {
    v64 = objc_alloc_init(NSMutableDictionary);
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    displayThemeData2 = [vehicleCopy displayThemeData];
    v66 = [displayThemeData2 countByEnumeratingWithState:&v118 objects:v125 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v119;
      do
      {
        v69 = 0;
        do
        {
          if (*v119 != v68)
          {
            objc_enumerationMutation(displayThemeData2);
          }

          v70 = *(*(&v118 + 1) + 8 * v69);
          displayThemeData3 = [vehicleCopy displayThemeData];
          v72 = [displayThemeData3 objectForKey:v70];
          asDictionary = [v72 asDictionary];

          if (asDictionary)
          {
            [v64 setObject:asDictionary forKey:v70];
          }

          else
          {
            v74 = CarGeneralLogging();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v124 = v70;
              _os_log_fault_impl(&_mh_execute_header, v74, OS_LOG_TYPE_FAULT, "Failed to serialize theme data for display: %@", buf, 0xCu);
            }
          }

          v69 = v69 + 1;
        }

        while (v67 != v69);
        v67 = [displayThemeData2 countByEnumeratingWithState:&v118 objects:v125 count:16];
      }

      while (v67);
    }

    v4 = v111;
    [v111 setObject:v64 forKey:@"displayThemeData"];
  }

  hasGaugeClusterScreen = [vehicleCopy hasGaugeClusterScreen];

  if (hasGaugeClusterScreen)
  {
    hasGaugeClusterScreen2 = [vehicleCopy hasGaugeClusterScreen];
    [v4 setObject:hasGaugeClusterScreen2 forKey:@"hasGaugeClusterScreen"];
  }

  finishedWelcome = [vehicleCopy finishedWelcome];

  if (finishedWelcome)
  {
    finishedWelcome2 = [vehicleCopy finishedWelcome];
    [v4 setObject:finishedWelcome2 forKey:@"finishedWelcome"];
  }

  oemPunchThroughsAsApp = [vehicleCopy oemPunchThroughsAsApp];

  if (oemPunchThroughsAsApp)
  {
    v80 = objc_alloc_init(NSMutableDictionary);
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    oemPunchThroughsAsApp2 = [vehicleCopy oemPunchThroughsAsApp];
    v82 = [oemPunchThroughsAsApp2 countByEnumeratingWithState:&v114 objects:v122 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v115;
      do
      {
        v85 = 0;
        do
        {
          if (*v115 != v84)
          {
            objc_enumerationMutation(oemPunchThroughsAsApp2);
          }

          v86 = *(*(&v114 + 1) + 8 * v85);
          oemPunchThroughsAsApp3 = [vehicleCopy oemPunchThroughsAsApp];
          v88 = [oemPunchThroughsAsApp3 objectForKey:v86];
          punchThroughs = [v88 punchThroughs];

          if (punchThroughs)
          {
            [v80 setObject:punchThroughs forKey:v86];
          }

          else
          {
            v90 = CarGeneralLogging();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v124 = v86;
              _os_log_fault_impl(&_mh_execute_header, v90, OS_LOG_TYPE_FAULT, "Failed to serialize PT IDs for app bundle ID: %@", buf, 0xCu);
            }
          }

          v85 = v85 + 1;
        }

        while (v83 != v85);
        v83 = [oemPunchThroughsAsApp2 countByEnumeratingWithState:&v114 objects:v122 count:16];
      }

      while (v83);
    }

    v4 = v111;
    [v111 setObject:v80 forKey:@"OEMPunchThroughsAsApp"];
  }

  if (CRIsInternalInstall())
  {
    lastConnectedDate = [vehicleCopy lastConnectedDate];

    if (lastConnectedDate)
    {
      lastConnectedDate2 = [vehicleCopy lastConnectedDate];
      [v4 setObject:lastConnectedDate2 forKey:@"lastConnectedDate"];
    }

    vehicleModelName = [vehicleCopy vehicleModelName];

    if (vehicleModelName)
    {
      vehicleModelName2 = [vehicleCopy vehicleModelName];
      [v4 setObject:vehicleModelName2 forKey:@"vehicleModelName"];
    }
  }

  internalNotes = [vehicleCopy internalNotes];

  if (internalNotes)
  {
    internalNotes2 = [vehicleCopy internalNotes];
    [v4 setObject:internalNotes2 forKey:@"internalNotes"];
  }

  v97 = [vehicleCopy homeScreenStyleDataForDisplayWithID:0];

  if (v97)
  {
    v98 = [vehicleCopy homeScreenStyleDataForDisplayWithID:0];
    asDictionary2 = [v98 asDictionary];
    [v4 setObject:asDictionary2 forKey:@"homeScreenStyleData"];
  }

  viewAreas = [vehicleCopy viewAreas];

  if (viewAreas)
  {
    v101 = objc_alloc_init(NSMutableArray);
    viewAreas2 = [vehicleCopy viewAreas];
    v112[0] = _NSConcreteStackBlock;
    v112[1] = 3221225472;
    v112[2] = sub_100007E94;
    v112[3] = &unk_1000DD4A8;
    v103 = v101;
    v113 = v103;
    [viewAreas2 enumerateObjectsUsingBlock:v112];

    [v4 setObject:v103 forKey:@"viewAreas"];
  }

  subtitleSettings = [vehicleCopy subtitleSettings];

  if (subtitleSettings)
  {
    subtitleSettings2 = [vehicleCopy subtitleSettings];
    dictionaryRepresentation = [subtitleSettings2 dictionaryRepresentation];

    [v4 setObject:dictionaryRepresentation forKey:@"subtitleSettings"];
  }

  videoDiagnosticsEnabled = [vehicleCopy videoDiagnosticsEnabled];

  if (videoDiagnosticsEnabled)
  {
    videoDiagnosticsEnabled2 = [vehicleCopy videoDiagnosticsEnabled];
    [v4 setObject:videoDiagnosticsEnabled2 forKey:@"videoDiagnostics"];
  }

  v109 = v4;

  return v4;
}

+ (void)_applyPreferencesAttributes:(id)attributes toVehicle:(id)vehicle
{
  attributesCopy = attributes;
  vehicleCopy = vehicle;
  objc_opt_class();
  v7 = [attributesCopy objectForKey:@"name"];
  if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    [vehicleCopy setVehicleName:v8];
  }

  v167 = v8;
  objc_opt_class();
  v9 = [attributesCopy objectForKey:@"bluetoothAddress"];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    [vehicleCopy setBluetoothAddress:v10];
  }

  v166 = v10;
  objc_opt_class();
  v11 = [attributesCopy objectForKey:@"carplayWiFiUUID"];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    [vehicleCopy setCarplayWiFiUUID:v12];
  }

  v165 = v12;
  v13 = objc_opt_class();
  v14 = [attributesCopy objectForKey:@"carPlayProtocols"];
  v15 = sub_1000097A0(v13, v14);

  if (v15)
  {
    v16 = [NSSet setWithArray:v15];
    [vehicleCopy setAccessoryProtocols:v16];
  }

  objc_opt_class();
  v17 = [attributesCopy objectForKey:@"supportsEnhancedIntegration"];
  if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    [vehicleCopy setSupportsEnhancedIntegration:{objc_msgSend(v18, "BOOLValue")}];
  }

  v163 = v18;
  objc_opt_class();
  v19 = [attributesCopy objectForKey:@"supportsMixableAudio"];
  if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20)
  {
    [vehicleCopy setSupportsMixableAudio:{objc_msgSend(v20, "BOOLValue")}];
  }

  v162 = v20;
  objc_opt_class();
  v21 = [attributesCopy objectForKey:@"isSiriBargeInDisabled"];
  if (v21 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    [vehicleCopy setSiriBargeInDisabled:{objc_msgSend(v22, "BOOLValue")}];
  }

  v161 = v22;
  objc_opt_class();
  v23 = [attributesCopy objectForKey:@"supportsUSBCarPlay"];
  if (v23 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    [vehicleCopy setSupportsUSBCarPlay:{objc_msgSend(v24, "BOOLValue")}];
  }

  v160 = v24;
  objc_opt_class();
  v25 = [attributesCopy objectForKey:@"supportsWirelessCarPlay"];
  if (v25 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v26)
  {
    [vehicleCopy setSupportsWirelessCarPlay:{objc_msgSend(v26, "BOOLValue")}];
  }

  v159 = v26;
  objc_opt_class();
  v27 = [attributesCopy objectForKey:@"supportsStartSessionRequest"];
  if (v27 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [vehicleCopy setSupportsStartSessionRequest:v28];
  }

  v158 = v28;
  objc_opt_class();
  v29 = [attributesCopy objectForKey:@"albumArtUserPreference"];
  if (v29 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
    [vehicleCopy setAlbumArtUserPreference:{objc_msgSend(v30, "integerValue")}];
  }

  v157 = v30;
  objc_opt_class();
  v31 = [attributesCopy objectForKey:@"wallpaperIdentifierUserPreference"];
  if (v31 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v32)
  {
    [vehicleCopy setWallpaperIdentifier:v32];
  }

  v156 = v32;
  objc_opt_class();
  v33 = [attributesCopy objectForKey:@"previousWallpaperIdentifierUserPreference"];
  if (v33 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (v34)
  {
    [vehicleCopy setPreviousWallpaperIdentifier:v34];
  }

  v155 = v34;
  objc_opt_class();
  v35 = [attributesCopy objectForKey:@"displayScalingModeUserPreference"];
  if (v35 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  if (v36)
  {
    [vehicleCopy setDisplayScaleMode:{objc_msgSend(v36, "integerValue")}];
  }

  v154 = v36;
  objc_opt_class();
  v37 = [attributesCopy objectForKey:@"appearanceModeUserPreference"];
  if (v37 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v38)
  {
    [vehicleCopy setAppearanceModePreference:{objc_msgSend(v38, "integerValue")}];
  }

  v153 = v38;
  objc_opt_class();
  v39 = [attributesCopy objectForKey:@"mapsAppearanceUserPreference"];
  if (v39 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (v40)
  {
    [vehicleCopy setMapsAppearancePreference:{objc_msgSend(v40, "integerValue")}];
  }

  v152 = v40;
  objc_opt_class();
  v41 = [attributesCopy objectForKey:@"colorFilterUserPreference"];
  if (v41 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v164 = v15;

  if (v42)
  {
    [vehicleCopy setColorFilterPreference:{objc_msgSend(v42, "integerValue")}];
  }

  v151 = v42;
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = [attributesCopy objectForKey:@"colorFilterIntensityUserPreference"];
  v46 = sub_1000098A8(v43, v44, v45);

  if (v46)
  {
    [vehicleCopy setColorFilterIntensityPreference:v46];
  }

  v150 = v46;
  objc_opt_class();
  v47 = [attributesCopy objectForKey:@"boldTextUserPreference"];
  if (v47 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    [vehicleCopy setBoldTextPreference:{objc_msgSend(v48, "integerValue")}];
  }

  v49 = [attributesCopy objectForKey:@"soundRecognitionUserPreference"];
  v50 = v49;
  if (v49)
  {
    [vehicleCopy setSoundRecognitionPreference:{objc_msgSend(v49, "integerValue")}];
  }

  v148 = v50;
  v149 = v48;
  v51 = [attributesCopy objectForKey:@"voiceControlUserPreference"];
  v52 = v51;
  if (v51)
  {
    [vehicleCopy setVoiceControlPreference:{objc_msgSend(v51, "integerValue")}];
  }

  v147 = v52;
  objc_opt_class();
  v53 = [attributesCopy objectForKey:@"textSizeUserPreference"];
  if (v53 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  if (v54)
  {
    [vehicleCopy setTextSizePreference:{objc_msgSend(v54, "integerValue")}];
  }

  v146 = v54;
  objc_opt_class();
  v55 = [attributesCopy objectForKey:@"supportsBluetoothLE"];
  if (v55 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  if (v56)
  {
    [vehicleCopy setSupportsBluetoothLE:{objc_msgSend(v56, "BOOLValue")}];
  }

  v145 = v56;
  objc_opt_class();
  v57 = [attributesCopy objectForKey:@"supportsThemeAssets"];
  if (v57 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [vehicleCopy setSupportsThemeAssets:v58];
  }

  v144 = v58;
  objc_opt_class();
  v59 = [attributesCopy objectForKey:@"disabledFeaturesPreference"];
  if (v59 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  if (v60)
  {
    [vehicleCopy setDisabledFeaturesPreference:v60];
  }

  v143 = v60;
  objc_opt_class();
  v61 = [attributesCopy objectForKey:@"clusterAssetIdentifier"];
  if (v61 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  if (v62)
  {
    [vehicleCopy setClusterAssetIdentifier:v62];
  }

  v142 = v62;
  objc_opt_class();
  v63 = [attributesCopy objectForKey:@"clusterAssetiOSContentVersion"];
  if (v63 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  if (v64)
  {
    [vehicleCopy setClusterAssetiOSContentVersion:v64];
  }

  v141 = v64;
  objc_opt_class();
  v65 = [attributesCopy objectForKey:@"clusterAssetVersion"];
  if (v65 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  if (v66)
  {
    [vehicleCopy setClusterAssetVersion:v66];
  }

  v140 = v66;
  objc_opt_class();
  v67 = [attributesCopy objectForKey:@"SDKVersion"];
  if (v67 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  if (v68)
  {
    [vehicleCopy setSDKVersion:v68];
  }

  v139 = v68;
  objc_opt_class();
  v69 = [attributesCopy objectForKey:@"clusterAssetPath"];
  if (v69 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v70 = v69;
  }

  else
  {
    v70 = 0;
  }

  if (v70)
  {
    v71 = [NSURL fileURLWithPath:v70 isDirectory:0];
    [vehicleCopy setClusterAssetURL:v71];
  }

  objc_opt_class();
  v72 = [attributesCopy objectForKey:@"stagedClusterAssetiOSContentVersion"];
  if (v72 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  if (v73)
  {
    [vehicleCopy setStagedClusterAssetiOSContentVersion:v73];
  }

  v137 = v73;
  objc_opt_class();
  v74 = [attributesCopy objectForKey:@"stagedClusterAssetVersion"];
  if (v74 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  if (v75)
  {
    [vehicleCopy setStagedClusterAssetVersion:v75];
  }

  v136 = v75;
  objc_opt_class();
  v76 = [attributesCopy objectForKey:@"stagedClusterAssetPath"];
  if (v76 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v138 = v70;

  v78 = v77;
  if (v77)
  {
    v79 = [NSURL fileURLWithPath:v77 isDirectory:0];
    [vehicleCopy setStagedClusterAssetURL:v79];
  }

  v135 = v78;
  v80 = objc_opt_class();
  v81 = objc_opt_class();
  v82 = [attributesCopy objectForKey:@"displayThemeData"];
  v83 = sub_1000098A8(v80, v81, v82);

  v169 = vehicleCopy;
  v170 = attributesCopy;
  v168 = v83;
  if (v83)
  {
    v84 = objc_alloc_init(NSMutableDictionary);
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0u;
    v85 = v83;
    v86 = [v85 countByEnumeratingWithState:&v178 objects:v185 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v179;
      do
      {
        for (i = 0; i != v87; i = i + 1)
        {
          if (*v179 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v178 + 1) + 8 * i);
          v91 = [v85 objectForKey:v90];
          v92 = [[CRDisplayThemeData alloc] initWithDictionary:v91];
          if (v92)
          {
            [v84 setObject:v92 forKey:v90];
          }

          else
          {
            v93 = CarGeneralLogging();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v184 = v90;
              _os_log_fault_impl(&_mh_execute_header, v93, OS_LOG_TYPE_FAULT, "Failed to deserialize theme data for display: %@", buf, 0xCu);
            }
          }
        }

        v87 = [v85 countByEnumeratingWithState:&v178 objects:v185 count:16];
      }

      while (v87);
    }

    vehicleCopy = v169;
    [v169 setDisplayThemeData:v84];

    attributesCopy = v170;
    v83 = v168;
  }

  objc_opt_class();
  v94 = [attributesCopy objectForKey:@"hasGaugeClusterScreen"];
  if (v94 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v95 = v94;
  }

  else
  {
    v95 = 0;
  }

  if (v95)
  {
    [vehicleCopy setHasGaugeClusterScreen:v95];
  }

  v134 = v95;
  objc_opt_class();
  v96 = [attributesCopy objectForKey:@"finishedWelcome"];
  if (v96 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v97 = v96;
  }

  else
  {
    v97 = 0;
  }

  if (v97)
  {
    [vehicleCopy setFinishedWelcome:v97];
  }

  v133 = v97;
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = [attributesCopy objectForKey:@"OEMPunchThroughsAsApp"];
  v101 = sub_1000098A8(v98, v99, v100);

  v171 = v101;
  if (v101)
  {
    v102 = objc_alloc_init(NSMutableDictionary);
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v103 = v101;
    v104 = [v103 countByEnumeratingWithState:&v174 objects:v182 count:16];
    if (v104)
    {
      v105 = v104;
      v106 = *v175;
      do
      {
        for (j = 0; j != v105; j = j + 1)
        {
          if (*v175 != v106)
          {
            objc_enumerationMutation(v103);
          }

          v108 = *(*(&v174 + 1) + 8 * j);
          v109 = [v103 mutableArrayValueForKey:v108];
          v110 = [[CROEMPunchThroughsAppData alloc] initWithPunchThroughIDs:v109];
          if (v110)
          {
            [v102 setObject:v110 forKey:v108];
          }

          else
          {
            v111 = CarGeneralLogging();
            if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v184 = v108;
              _os_log_fault_impl(&_mh_execute_header, v111, OS_LOG_TYPE_FAULT, "Failed to deserialize OEM PunchThroughs for bundleIdentifier: %@", buf, 0xCu);
            }
          }
        }

        v105 = [v103 countByEnumeratingWithState:&v174 objects:v182 count:16];
      }

      while (v105);
    }

    vehicleCopy = v169;
    [v169 setOemPunchThroughsAsApp:v102];

    attributesCopy = v170;
    v83 = v168;
  }

  if (CRIsInternalInstall())
  {
    objc_opt_class();
    v112 = [attributesCopy objectForKey:@"lastConnectedDate"];
    if (v112 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v113 = v112;
    }

    else
    {
      v113 = 0;
    }

    if (v113)
    {
      [vehicleCopy setLastConnectedDate:v113];
    }

    objc_opt_class();
    v114 = [attributesCopy objectForKey:@"vehicleModelName"];
    if (v114 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v115 = v114;
    }

    else
    {
      v115 = 0;
    }

    if (v115)
    {
      [vehicleCopy setVehicleModelName:v115];
    }
  }

  objc_opt_class();
  v116 = [attributesCopy objectForKey:@"internalNotes"];
  if (v116)
  {
    v117 = MAAsset_ptr;
    if (objc_opt_isKindOfClass())
    {
      v118 = v116;
    }

    else
    {
      v118 = 0;
    }
  }

  else
  {
    v118 = 0;
    v117 = MAAsset_ptr;
  }

  if (v118)
  {
    [vehicleCopy setInternalNotes:v118];
  }

  v119 = v117[51];
  objc_opt_class();
  v120 = [attributesCopy objectForKey:@"homeScreenStyleData"];
  if (v120 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v121 = v120;
  }

  else
  {
    v121 = 0;
  }

  if (v121)
  {
    v122 = [[CRHomeScreenStyleData alloc] initWithDictionary:v121];
    if (!v122)
    {
      v123 = CarGeneralLogging();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_FAULT))
      {
        sub_100081710(v123);
      }
    }

    [vehicleCopy setHomeScreenStyle:v122 forDisplayWithID:0];
  }

  objc_opt_class();
  v124 = [attributesCopy objectForKey:@"viewAreas"];
  if (v124 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v125 = v124;
  }

  else
  {
    v125 = 0;
  }

  if (v125)
  {
    v172[0] = _NSConcreteStackBlock;
    v172[1] = 3221225472;
    v172[2] = sub_10000999C;
    v172[3] = &unk_1000DD4D0;
    v126 = objc_alloc_init(NSMutableArray);
    v173 = v126;
    [v125 enumerateObjectsUsingBlock:v172];
    [vehicleCopy setViewAreas:v126];
  }

  v127 = v117[51];
  objc_opt_class();
  v128 = [attributesCopy objectForKey:@"subtitleSettings"];
  if (v128 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v129 = v128;
  }

  else
  {
    v129 = 0;
  }

  if (v129)
  {
    v130 = [[CRSubtitleSettings alloc] initWithDictionaryRepresentation:v129];
    [vehicleCopy setSubtitleSettings:v130];
  }

  objc_opt_class();
  v131 = [attributesCopy objectForKey:@"videoDiagnostics"];
  if (v131 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v132 = v131;
  }

  else
  {
    v132 = 0;
  }

  if (v132)
  {
    [vehicleCopy setVideoDiagnosticsEnabled:v132];
  }
}

+ (id)_allPreferencesPairings
{
  v2 = CFPreferencesCopyAppValue(@"pairings", CRPreferencesNotMigratedDomain);
  if (!v2)
  {
    v2 = +[NSDictionary dictionary];
  }

  return v2;
}

+ (BOOL)_addPreferencesPairingForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  identifier = [vehicleCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v7 = [objc_opt_class() _preferencesAttributesForVehicle:vehicleCopy];
    if (v7)
    {
      _allPreferencesPairings = [self _allPreferencesPairings];
      v9 = [_allPreferencesPairings mutableCopy];

      [v9 setObject:v7 forKey:uUIDString];
      CFPreferencesSetAppValue(@"pairings", v9, CRPreferencesNotMigratedDomain);
      v10 = CFPreferencesAppSynchronize(CRPreferencesNotMigratedDomain);
      v11 = v10 != 0;
      if (!v10)
      {
        v12 = CarGeneralLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100081754(uUIDString, vehicleCopy);
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_removePreferencesPairingForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  identifier = [vehicleCopy identifier];
  uUIDString = [identifier UUIDString];

  if (!uUIDString)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (([self _removePreferencesPairingForVehicleIdentifier:uUIDString] & 1) == 0)
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000817E8(uUIDString, vehicleCopy);
    }

    goto LABEL_7;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

+ (BOOL)_removePreferencesPairingForVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _allPreferencesPairings = [self _allPreferencesPairings];
  v6 = [_allPreferencesPairings mutableCopy];

  [v6 removeObjectForKey:identifierCopy];
  CFPreferencesSetAppValue(@"pairings", v6, CRPreferencesNotMigratedDomain);
  LOBYTE(_allPreferencesPairings) = CFPreferencesAppSynchronize(CRPreferencesNotMigratedDomain) != 0;

  return _allPreferencesPairings;
}

+ (void)_cleanupPreferencesForIncompleteVehicleIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10008187C();
  }

  v8 = [objc_opt_class() _removePreferencesPairingForVehicleIdentifier:identifierCopy];
  v9 = CarGeneralLogging();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = identifierCopy;
      v13 = 2112;
      v14 = nameCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cleaned up preferences for missing keychain item %@ (%@)", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000818EC();
  }
}

+ (void)postPairingsDidChangeNotification
{
  v2 = CarGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "posting pairings changed", v4, 2u);
  }

  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 postNotificationName:CRPairedVehiclesDidChangeNotification object:0];
}

- (CRVehicleStore)init
{
  v8.receiver = self;
  v8.super_class = CRVehicleStore;
  v2 = [(CRVehicleStore *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(CRVehicleStore *)v2 _invalidateCachedVehicles];
    v4 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CRVehicleStoreObserving];
    observers = v3->_observers;
    v3->_observers = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v3 selector:"handleAvailabilityDidChange:" name:CRVehicleStoreAvailabilityDidChangeNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRVehicleStore;
  [(CRVehicleStore *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRVehicleStore *)self observers];
  [observers registerObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRVehicleStore *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (id)saveVehicle:(id)vehicle withMergePolicy:(id)policy
{
  vehicleCopy = vehicle;
  policyCopy = policy;
  if (!+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    v20 = 0;
    goto LABEL_31;
  }

  certificateSerialNumber = [vehicleCopy certificateSerialNumber];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  allStoredVehicles = [(CRVehicleStore *)self allStoredVehicles];
  v10 = [allStoredVehicles countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    selfCopy = self;
    v28 = policyCopy;
    v12 = 0;
    v13 = *v30;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(allStoredVehicles);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if (([v15 isEqual:{vehicleCopy, selfCopy}] & 1) == 0)
        {
          if (!certificateSerialNumber)
          {
            continue;
          }

          certificateSerialNumber2 = [v15 certificateSerialNumber];
          v17 = [certificateSerialNumber isEqualToData:certificateSerialNumber2];

          if (!v17)
          {
            continue;
          }
        }

        v18 = v15;

        v12 = v18;
      }

      v11 = [allStoredVehicles countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);

    if (!v12)
    {
      self = selfCopy;
      policyCopy = v28;
      goto LABEL_27;
    }

    allStoredVehicles = [v12 viewAreas];
    self = selfCopy;
    policyCopy = v28;
    if (v28)
    {
      v19 = v28[2](v28, vehicleCopy, v12);
    }

    else
    {
      [v12 mergeAttributesFromVehicle:vehicleCopy];
      v19 = v12;
    }

    v21 = v19;

    if (allStoredVehicles)
    {
      viewAreas = [v21 viewAreas];
      if (viewAreas)
      {
LABEL_25:

        goto LABEL_26;
      }

      if (CRIsInternalInstall())
      {
        viewAreas = CarGeneralLogging();
        if (os_log_type_enabled(viewAreas, OS_LOG_TYPE_FAULT))
        {
          sub_10008195C();
        }

        goto LABEL_25;
      }
    }
  }

  else
  {
    v12 = 0;
    v21 = vehicleCopy;
  }

LABEL_26:

  vehicleCopy = v21;
LABEL_27:
  [(CRVehicleStore *)self _invalidateCachedVehicles];
  v23 = [objc_opt_class() _addPreferencesPairingForVehicle:vehicleCopy];
  v24 = [objc_opt_class() _addKeychainPairingForVehicle:vehicleCopy];
  observers = [(CRVehicleStore *)self observers];
  [observers vehicleStore:self didSaveVehicle:vehicleCopy];

  [objc_opt_class() postPairingsDidChangeNotification];
  v20 = 0;
  if (v23 && v24)
  {
    v20 = vehicleCopy;
  }

LABEL_31:

  return v20;
}

- (BOOL)removeVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  if (!vehicleCopy)
  {
    v13 = CarGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000819D0();
    }

    goto LABEL_10;
  }

  if (!+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  [(CRVehicleStore *)self _invalidateCachedVehicles];
  v5 = [objc_opt_class() _removePreferencesPairingForVehicle:vehicleCopy];
  v6 = [objc_opt_class() _removeKeychainPairingForVehicle:vehicleCopy];
  v7 = objc_opt_class();
  bluetoothAddress = [vehicleCopy bluetoothAddress];
  v9 = bluetoothAddress;
  if (bluetoothAddress)
  {
    v10 = bluetoothAddress;
  }

  else
  {
    v10 = @"CarPlay";
  }

  [v7 removePayloadForVehicleWithIdentifier:v10];

  observers = [(CRVehicleStore *)self observers];
  [observers vehicleStore:self didRemoveVehicle:vehicleCopy];

  [objc_opt_class() postPairingsDidChangeNotification];
  v12 = v5 & v6;
LABEL_11:

  return v12;
}

- (id)_matchingKeychainItemForIdentifier:(id)identifier inKeychainItems:(id)items
{
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  itemsCopy = items;
  v7 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectForKey:{kSecAttrAccount, v16}];
        v13 = v12;
        if (v12 && ([v12 isEqualToString:identifierCopy] & 1) != 0)
        {
          v14 = v11;

          goto LABEL_12;
        }
      }

      v8 = [itemsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (void)handleAvailabilityDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AA68;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)vehicleForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(CRVehicleStore *)self allStoredVehicles];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)vehicleForBluetoothAddress:(id)address
{
  addressCopy = address;
  [(CRVehicleStore *)self allStoredVehicles];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        bluetoothAddress = [v9 bluetoothAddress];
        if (bluetoothAddress)
        {
          v11 = bluetoothAddress;
          bluetoothAddress2 = [v9 bluetoothAddress];
          v13 = [bluetoothAddress2 isEqualToString:addressCopy];

          if (v13)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)vehicleForCertificateSerial:(id)serial
{
  serialCopy = serial;
  [(CRVehicleStore *)self allStoredVehicles];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        certificateSerialNumber = [v9 certificateSerialNumber];
        if (certificateSerialNumber)
        {
          v11 = certificateSerialNumber;
          certificateSerialNumber2 = [v9 certificateSerialNumber];
          v13 = [certificateSerialNumber2 isEqualToData:serialCopy];

          if (v13)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

@end