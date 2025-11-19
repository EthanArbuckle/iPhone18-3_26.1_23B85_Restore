@interface CRVehicleStore
+ (BOOL)_addKeychainPairingForVehicle:(id)a3;
+ (BOOL)_addPreferencesPairingForVehicle:(id)a3;
+ (BOOL)_removeKeychainPairingForVehicle:(id)a3;
+ (BOOL)_removePreferencesPairingForVehicle:(id)a3;
+ (BOOL)_removePreferencesPairingForVehicleIdentifier:(id)a3;
+ (BOOL)setPayload:(id)a3 forVehicleWithIdentifier:(id)a4;
+ (id)_allKeychainAttributesForVehicle:(id)a3;
+ (id)_allPreferencesPairings;
+ (id)_allUnpairedVehicleStorage;
+ (id)_creationKeychainAttributesForVehicle:(id)a3;
+ (id)_identifyingKeychainAttributesForVehicle:(id)a3;
+ (id)_itemClassKeychainAttributes;
+ (id)_keychainAttributesMatchingQuery:(id)a3;
+ (id)_keychainItemAttributesForAllVehicles;
+ (id)_preferencesAttributesForVehicle:(id)a3;
+ (id)_updateKeychainAttributesForVehicle:(id)a3;
+ (id)payloadForVehicleWithIdentifier:(id)a3;
+ (void)_addKeychainAttributesForVehicle:(id)a3 toDictionary:(id)a4;
+ (void)_applyPreferencesAttributes:(id)a3 toVehicle:(id)a4;
+ (void)_cleanupPreferencesForIncompleteVehicleIdentifier:(id)a3 name:(id)a4;
+ (void)postPairingsDidChangeNotification;
- (BOOL)removeVehicle:(id)a3;
- (CRVehicleStore)init;
- (id)_matchingKeychainItemForIdentifier:(id)a3 inKeychainItems:(id)a4;
- (id)allStoredVehicles;
- (id)saveVehicle:(id)a3 withMergePolicy:(id)a4;
- (id)vehicleForBluetoothAddress:(id)a3;
- (id)vehicleForCertificateSerial:(id)a3;
- (id)vehicleForIdentifier:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)handleAvailabilityDidChange:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation CRVehicleStore

- (id)allStoredVehicles
{
  if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    v3 = [(CRVehicleStore *)self cachedVehicles];
    if (v3)
    {
      v4 = CarGeneralLogging();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        sub_100081A10(v3, v4);
      }

      v5 = [[NSSet alloc] initWithSet:v3 copyItems:1];
    }

    else
    {
      v6 = +[NSMutableSet set];
      v7 = [objc_opt_class() _keychainItemAttributesForAllVehicles];
      v8 = [v7 mutableCopy];

      v9 = [objc_opt_class() _allPreferencesPairings];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10000A624;
      v13[3] = &unk_1000DD4F8;
      v13[4] = self;
      v14 = v8;
      v10 = v6;
      v15 = v10;
      v11 = v8;
      [v9 enumerateKeysAndObjectsUsingBlock:v13];
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

+ (id)_identifyingKeychainAttributesForVehicle:(id)a3
{
  v4 = [a3 identifier];
  v5 = [v4 UUIDString];

  if (v5)
  {
    v6 = [a1 _itemClassKeychainAttributes];
    [v6 setObject:v5 forKey:kSecAttrAccount];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)_addKeychainAttributesForVehicle:(id)a3 toDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 vehicleName];

  if (v7)
  {
    v8 = [v5 vehicleName];
    [v6 setObject:v8 forKey:kSecAttrLabel];
  }

  v9 = [v5 certificateSerialNumber];

  if (v9)
  {
    v10 = [v5 certificateSerialNumber];
    [v6 setObject:v10 forKey:kSecValueData];
  }

  v13 = bswap32([v5 pairingStatus]);
  v11 = [NSMutableData dataWithBytes:&v13 length:4];
  v12 = bswap32([v5 enhancedIntegrationStatus]);
  [v11 appendBytes:&v12 length:4];
  [v6 setObject:v11 forKey:kSecAttrGeneric];
}

+ (id)_allKeychainAttributesForVehicle:(id)a3
{
  v4 = a3;
  v5 = [a1 _identifyingKeychainAttributesForVehicle:v4];
  [a1 _addKeychainAttributesForVehicle:v4 toDictionary:v5];

  return v5;
}

+ (id)_creationKeychainAttributesForVehicle:(id)a3
{
  v3 = [a1 _allKeychainAttributesForVehicle:a3];
  [v3 setObject:kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly forKey:kSecAttrAccessible];

  return v3;
}

+ (id)_updateKeychainAttributesForVehicle:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  [a1 _addKeychainAttributesForVehicle:v4 toDictionary:v5];

  return v5;
}

+ (id)_keychainAttributesMatchingQuery:(id)a3
{
  result = 0;
  v3 = [a3 mutableCopy];
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
  v2 = [a1 _itemClassKeychainAttributes];
  [v2 setObject:kSecMatchLimitAll forKey:kSecMatchLimit];
  [v2 setObject:kCFBooleanTrue forKey:kSecReturnAttributes];
  [v2 setObject:kCFBooleanTrue forKey:kSecReturnData];
  if (v2)
  {
    v3 = SecItemCopyMatching(v2, &result);
    v4 = result;
    v5 = CarGeneralLogging();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (v3 || !v4)
    {
      if (v6)
      {
        *buf = 138412546;
        v10 = v2;
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

+ (BOOL)_addKeychainPairingForVehicle:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _identifyingKeychainAttributesForVehicle:v3];
  if (v4)
  {
    v5 = [objc_opt_class() _keychainAttributesMatchingQuery:v4];

    v6 = objc_opt_class();
    if (v5)
    {
      v7 = [v6 _updateKeychainAttributesForVehicle:v3];
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
      v12 = [v6 _creationKeychainAttributesForVehicle:v3];
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

+ (BOOL)_removeKeychainPairingForVehicle:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _identifyingKeychainAttributesForVehicle:v3];

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

+ (id)payloadForVehicleWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _allUnpairedVehicleStorage];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

+ (BOOL)setPayload:(id)a3 forVehicleWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _allUnpairedVehicleStorage];
  v9 = [NSMutableDictionary dictionaryWithDictionary:v8];

  v10 = CarGeneralLogging();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v11)
    {
      v15 = 138412546;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting payload %@ for identifier %@", &v15, 0x16u);
    }

    [v9 setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    if (v11)
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Removing payload for identifier %@", &v15, 0xCu);
    }

    [v9 removeObjectForKey:v7];
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

+ (id)_preferencesAttributesForVehicle:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 vehicleName];

  if (v5)
  {
    v6 = [v3 vehicleName];
    [v4 setObject:v6 forKey:@"name"];
  }

  v7 = [v3 bluetoothAddress];

  if (v7)
  {
    v8 = [v3 bluetoothAddress];
    [v4 setObject:v8 forKey:@"bluetoothAddress"];
  }

  v9 = [v3 carplayWiFiUUID];

  if (v9)
  {
    v10 = [v3 carplayWiFiUUID];
    [v4 setObject:v10 forKey:@"carplayWiFiUUID"];
  }

  v11 = [v3 accessoryProtocols];

  if (v11)
  {
    v12 = [v3 accessoryProtocols];
    v13 = [v12 allObjects];
    [v4 setObject:v13 forKey:@"carPlayProtocols"];
  }

  if ([v3 supportsEnhancedIntegration])
  {
    [v4 setObject:&__kCFBooleanTrue forKey:@"supportsEnhancedIntegration"];
  }

  v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 supportsMixableAudio]);
  [v4 setObject:v14 forKey:@"supportsMixableAudio"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isSiriBargeInDisabled]);
  [v4 setObject:v15 forKey:@"isSiriBargeInDisabled"];

  v16 = [v3 supportsStartSessionRequest];

  if (v16)
  {
    v17 = [v3 supportsStartSessionRequest];
    [v4 setObject:v17 forKey:@"supportsStartSessionRequest"];
  }

  v18 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 supportsUSBCarPlay]);
  [v4 setObject:v18 forKey:@"supportsUSBCarPlay"];

  v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 supportsWirelessCarPlay]);
  [v4 setObject:v19 forKey:@"supportsWirelessCarPlay"];

  if ([v3 albumArtUserPreference])
  {
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 albumArtUserPreference]);
    [v4 setObject:v20 forKey:@"albumArtUserPreference"];
  }

  v21 = [v3 wallpaperIdentifier];

  if (v21)
  {
    v22 = [v3 wallpaperIdentifier];
    [v4 setObject:v22 forKey:@"wallpaperIdentifierUserPreference"];
  }

  v23 = [v3 previousWallpaperIdentifier];

  if (v23)
  {
    v24 = [v3 previousWallpaperIdentifier];
    [v4 setObject:v24 forKey:@"previousWallpaperIdentifierUserPreference"];
  }

  v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 displayScaleMode]);
  [v4 setObject:v25 forKey:@"displayScalingModeUserPreference"];

  if ([v3 appearanceModePreference] == -1)
  {
    v26 = +[CARPrototypePref interfaceStyle];
    v27 = [v26 value];

    if (v27)
    {
      [v3 setAppearanceModePreference:{objc_msgSend(v27, "unsignedIntegerValue")}];
      v28 = +[CARPrototypePref interfaceStyle];
      [v28 setValue:0];

      v29 = +[CARPrototypePref latestInterfaceStyle];
      [v29 setValue:v27];
    }

    else
    {
      v30 = +[CARPrototypePref latestInterfaceStyle];
      v29 = [v30 value];

      if (v29)
      {
        [v3 setAppearanceModePreference:{objc_msgSend(v29, "unsignedIntegerValue")}];
      }
    }
  }

  v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 appearanceModePreference]);
  [v4 setObject:v31 forKey:@"appearanceModeUserPreference"];

  if ([v3 mapsAppearancePreference] != -1)
  {
    v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 mapsAppearancePreference]);
    [v4 setObject:v32 forKey:@"mapsAppearanceUserPreference"];
  }

  if ([v3 colorFilterPreference])
  {
    v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 colorFilterPreference]);
    [v4 setObject:v33 forKey:@"colorFilterUserPreference"];
  }

  v34 = [v3 colorFilterIntensityPreference];

  if (v34)
  {
    v35 = [v3 colorFilterIntensityPreference];
    [v4 setObject:v35 forKey:@"colorFilterIntensityUserPreference"];
  }

  if ([v3 boldTextPreference])
  {
    v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 boldTextPreference]);
    [v4 setObject:v36 forKey:@"boldTextUserPreference"];
  }

  v37 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 soundRecognitionPreference]);
  [v4 setObject:v37 forKey:@"soundRecognitionUserPreference"];

  v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 voiceControlPreference]);
  [v4 setObject:v38 forKey:@"voiceControlUserPreference"];

  if ([v3 textSizePreference])
  {
    v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 textSizePreference]);
    [v4 setObject:v39 forKey:@"textSizeUserPreference"];
  }

  v40 = [v3 disabledFeaturesPreference];

  if (v40)
  {
    v41 = [v3 disabledFeaturesPreference];
    [v4 setObject:v41 forKey:@"disabledFeaturesPreference"];
  }

  v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 supportsBluetoothLE]);
  [v4 setObject:v42 forKey:@"supportsBluetoothLE"];

  v43 = [v3 supportsThemeAssets];

  if (v43)
  {
    v44 = [v3 supportsThemeAssets];
    [v4 setObject:v44 forKey:@"supportsThemeAssets"];
  }

  v45 = [v3 clusterAssetIdentifier];

  if (v45)
  {
    v46 = [v3 clusterAssetIdentifier];
    [v4 setObject:v46 forKey:@"clusterAssetIdentifier"];
  }

  v47 = [v3 clusterAssetiOSContentVersion];

  if (v47)
  {
    v48 = [v3 clusterAssetiOSContentVersion];
    [v4 setObject:v48 forKey:@"clusterAssetiOSContentVersion"];
  }

  v49 = [v3 clusterAssetVersion];

  if (v49)
  {
    v50 = [v3 clusterAssetVersion];
    [v4 setObject:v50 forKey:@"clusterAssetVersion"];
  }

  v51 = [v3 SDKVersion];

  if (v51)
  {
    v52 = [v3 SDKVersion];
    [v4 setObject:v52 forKey:@"SDKVersion"];
  }

  v53 = [v3 clusterAssetURL];

  if (v53)
  {
    v54 = [v3 clusterAssetURL];
    v55 = [v54 path];
    [v4 setObject:v55 forKey:@"clusterAssetPath"];
  }

  v56 = [v3 stagedClusterAssetiOSContentVersion];

  if (v56)
  {
    v57 = [v3 stagedClusterAssetiOSContentVersion];
    [v4 setObject:v57 forKey:@"stagedClusterAssetiOSContentVersion"];
  }

  v58 = [v3 stagedClusterAssetVersion];

  if (v58)
  {
    v59 = [v3 stagedClusterAssetVersion];
    [v4 setObject:v59 forKey:@"stagedClusterAssetVersion"];
  }

  v60 = [v3 stagedClusterAssetURL];

  if (v60)
  {
    v61 = [v3 stagedClusterAssetURL];
    v62 = [v61 path];
    [v4 setObject:v62 forKey:@"stagedClusterAssetPath"];
  }

  v63 = [v3 displayThemeData];

  v111 = v4;
  if (v63)
  {
    v64 = objc_alloc_init(NSMutableDictionary);
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v65 = [v3 displayThemeData];
    v66 = [v65 countByEnumeratingWithState:&v118 objects:v125 count:16];
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
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v118 + 1) + 8 * v69);
          v71 = [v3 displayThemeData];
          v72 = [v71 objectForKey:v70];
          v73 = [v72 asDictionary];

          if (v73)
          {
            [v64 setObject:v73 forKey:v70];
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
        v67 = [v65 countByEnumeratingWithState:&v118 objects:v125 count:16];
      }

      while (v67);
    }

    v4 = v111;
    [v111 setObject:v64 forKey:@"displayThemeData"];
  }

  v75 = [v3 hasGaugeClusterScreen];

  if (v75)
  {
    v76 = [v3 hasGaugeClusterScreen];
    [v4 setObject:v76 forKey:@"hasGaugeClusterScreen"];
  }

  v77 = [v3 finishedWelcome];

  if (v77)
  {
    v78 = [v3 finishedWelcome];
    [v4 setObject:v78 forKey:@"finishedWelcome"];
  }

  v79 = [v3 oemPunchThroughsAsApp];

  if (v79)
  {
    v80 = objc_alloc_init(NSMutableDictionary);
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v81 = [v3 oemPunchThroughsAsApp];
    v82 = [v81 countByEnumeratingWithState:&v114 objects:v122 count:16];
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
            objc_enumerationMutation(v81);
          }

          v86 = *(*(&v114 + 1) + 8 * v85);
          v87 = [v3 oemPunchThroughsAsApp];
          v88 = [v87 objectForKey:v86];
          v89 = [v88 punchThroughs];

          if (v89)
          {
            [v80 setObject:v89 forKey:v86];
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
        v83 = [v81 countByEnumeratingWithState:&v114 objects:v122 count:16];
      }

      while (v83);
    }

    v4 = v111;
    [v111 setObject:v80 forKey:@"OEMPunchThroughsAsApp"];
  }

  if (CRIsInternalInstall())
  {
    v91 = [v3 lastConnectedDate];

    if (v91)
    {
      v92 = [v3 lastConnectedDate];
      [v4 setObject:v92 forKey:@"lastConnectedDate"];
    }

    v93 = [v3 vehicleModelName];

    if (v93)
    {
      v94 = [v3 vehicleModelName];
      [v4 setObject:v94 forKey:@"vehicleModelName"];
    }
  }

  v95 = [v3 internalNotes];

  if (v95)
  {
    v96 = [v3 internalNotes];
    [v4 setObject:v96 forKey:@"internalNotes"];
  }

  v97 = [v3 homeScreenStyleDataForDisplayWithID:0];

  if (v97)
  {
    v98 = [v3 homeScreenStyleDataForDisplayWithID:0];
    v99 = [v98 asDictionary];
    [v4 setObject:v99 forKey:@"homeScreenStyleData"];
  }

  v100 = [v3 viewAreas];

  if (v100)
  {
    v101 = objc_alloc_init(NSMutableArray);
    v102 = [v3 viewAreas];
    v112[0] = _NSConcreteStackBlock;
    v112[1] = 3221225472;
    v112[2] = sub_100007E94;
    v112[3] = &unk_1000DD4A8;
    v103 = v101;
    v113 = v103;
    [v102 enumerateObjectsUsingBlock:v112];

    [v4 setObject:v103 forKey:@"viewAreas"];
  }

  v104 = [v3 subtitleSettings];

  if (v104)
  {
    v105 = [v3 subtitleSettings];
    v106 = [v105 dictionaryRepresentation];

    [v4 setObject:v106 forKey:@"subtitleSettings"];
  }

  v107 = [v3 videoDiagnosticsEnabled];

  if (v107)
  {
    v108 = [v3 videoDiagnosticsEnabled];
    [v4 setObject:v108 forKey:@"videoDiagnostics"];
  }

  v109 = v4;

  return v4;
}

+ (void)_applyPreferencesAttributes:(id)a3 toVehicle:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  v7 = [v5 objectForKey:@"name"];
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
    [v6 setVehicleName:v8];
  }

  v167 = v8;
  objc_opt_class();
  v9 = [v5 objectForKey:@"bluetoothAddress"];
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
    [v6 setBluetoothAddress:v10];
  }

  v166 = v10;
  objc_opt_class();
  v11 = [v5 objectForKey:@"carplayWiFiUUID"];
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
    [v6 setCarplayWiFiUUID:v12];
  }

  v165 = v12;
  v13 = objc_opt_class();
  v14 = [v5 objectForKey:@"carPlayProtocols"];
  v15 = sub_1000097A0(v13, v14);

  if (v15)
  {
    v16 = [NSSet setWithArray:v15];
    [v6 setAccessoryProtocols:v16];
  }

  objc_opt_class();
  v17 = [v5 objectForKey:@"supportsEnhancedIntegration"];
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
    [v6 setSupportsEnhancedIntegration:{objc_msgSend(v18, "BOOLValue")}];
  }

  v163 = v18;
  objc_opt_class();
  v19 = [v5 objectForKey:@"supportsMixableAudio"];
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
    [v6 setSupportsMixableAudio:{objc_msgSend(v20, "BOOLValue")}];
  }

  v162 = v20;
  objc_opt_class();
  v21 = [v5 objectForKey:@"isSiriBargeInDisabled"];
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
    [v6 setSiriBargeInDisabled:{objc_msgSend(v22, "BOOLValue")}];
  }

  v161 = v22;
  objc_opt_class();
  v23 = [v5 objectForKey:@"supportsUSBCarPlay"];
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
    [v6 setSupportsUSBCarPlay:{objc_msgSend(v24, "BOOLValue")}];
  }

  v160 = v24;
  objc_opt_class();
  v25 = [v5 objectForKey:@"supportsWirelessCarPlay"];
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
    [v6 setSupportsWirelessCarPlay:{objc_msgSend(v26, "BOOLValue")}];
  }

  v159 = v26;
  objc_opt_class();
  v27 = [v5 objectForKey:@"supportsStartSessionRequest"];
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
    [v6 setSupportsStartSessionRequest:v28];
  }

  v158 = v28;
  objc_opt_class();
  v29 = [v5 objectForKey:@"albumArtUserPreference"];
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
    [v6 setAlbumArtUserPreference:{objc_msgSend(v30, "integerValue")}];
  }

  v157 = v30;
  objc_opt_class();
  v31 = [v5 objectForKey:@"wallpaperIdentifierUserPreference"];
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
    [v6 setWallpaperIdentifier:v32];
  }

  v156 = v32;
  objc_opt_class();
  v33 = [v5 objectForKey:@"previousWallpaperIdentifierUserPreference"];
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
    [v6 setPreviousWallpaperIdentifier:v34];
  }

  v155 = v34;
  objc_opt_class();
  v35 = [v5 objectForKey:@"displayScalingModeUserPreference"];
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
    [v6 setDisplayScaleMode:{objc_msgSend(v36, "integerValue")}];
  }

  v154 = v36;
  objc_opt_class();
  v37 = [v5 objectForKey:@"appearanceModeUserPreference"];
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
    [v6 setAppearanceModePreference:{objc_msgSend(v38, "integerValue")}];
  }

  v153 = v38;
  objc_opt_class();
  v39 = [v5 objectForKey:@"mapsAppearanceUserPreference"];
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
    [v6 setMapsAppearancePreference:{objc_msgSend(v40, "integerValue")}];
  }

  v152 = v40;
  objc_opt_class();
  v41 = [v5 objectForKey:@"colorFilterUserPreference"];
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
    [v6 setColorFilterPreference:{objc_msgSend(v42, "integerValue")}];
  }

  v151 = v42;
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = [v5 objectForKey:@"colorFilterIntensityUserPreference"];
  v46 = sub_1000098A8(v43, v44, v45);

  if (v46)
  {
    [v6 setColorFilterIntensityPreference:v46];
  }

  v150 = v46;
  objc_opt_class();
  v47 = [v5 objectForKey:@"boldTextUserPreference"];
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
    [v6 setBoldTextPreference:{objc_msgSend(v48, "integerValue")}];
  }

  v49 = [v5 objectForKey:@"soundRecognitionUserPreference"];
  v50 = v49;
  if (v49)
  {
    [v6 setSoundRecognitionPreference:{objc_msgSend(v49, "integerValue")}];
  }

  v148 = v50;
  v149 = v48;
  v51 = [v5 objectForKey:@"voiceControlUserPreference"];
  v52 = v51;
  if (v51)
  {
    [v6 setVoiceControlPreference:{objc_msgSend(v51, "integerValue")}];
  }

  v147 = v52;
  objc_opt_class();
  v53 = [v5 objectForKey:@"textSizeUserPreference"];
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
    [v6 setTextSizePreference:{objc_msgSend(v54, "integerValue")}];
  }

  v146 = v54;
  objc_opt_class();
  v55 = [v5 objectForKey:@"supportsBluetoothLE"];
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
    [v6 setSupportsBluetoothLE:{objc_msgSend(v56, "BOOLValue")}];
  }

  v145 = v56;
  objc_opt_class();
  v57 = [v5 objectForKey:@"supportsThemeAssets"];
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
    [v6 setSupportsThemeAssets:v58];
  }

  v144 = v58;
  objc_opt_class();
  v59 = [v5 objectForKey:@"disabledFeaturesPreference"];
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
    [v6 setDisabledFeaturesPreference:v60];
  }

  v143 = v60;
  objc_opt_class();
  v61 = [v5 objectForKey:@"clusterAssetIdentifier"];
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
    [v6 setClusterAssetIdentifier:v62];
  }

  v142 = v62;
  objc_opt_class();
  v63 = [v5 objectForKey:@"clusterAssetiOSContentVersion"];
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
    [v6 setClusterAssetiOSContentVersion:v64];
  }

  v141 = v64;
  objc_opt_class();
  v65 = [v5 objectForKey:@"clusterAssetVersion"];
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
    [v6 setClusterAssetVersion:v66];
  }

  v140 = v66;
  objc_opt_class();
  v67 = [v5 objectForKey:@"SDKVersion"];
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
    [v6 setSDKVersion:v68];
  }

  v139 = v68;
  objc_opt_class();
  v69 = [v5 objectForKey:@"clusterAssetPath"];
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
    [v6 setClusterAssetURL:v71];
  }

  objc_opt_class();
  v72 = [v5 objectForKey:@"stagedClusterAssetiOSContentVersion"];
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
    [v6 setStagedClusterAssetiOSContentVersion:v73];
  }

  v137 = v73;
  objc_opt_class();
  v74 = [v5 objectForKey:@"stagedClusterAssetVersion"];
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
    [v6 setStagedClusterAssetVersion:v75];
  }

  v136 = v75;
  objc_opt_class();
  v76 = [v5 objectForKey:@"stagedClusterAssetPath"];
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
    [v6 setStagedClusterAssetURL:v79];
  }

  v135 = v78;
  v80 = objc_opt_class();
  v81 = objc_opt_class();
  v82 = [v5 objectForKey:@"displayThemeData"];
  v83 = sub_1000098A8(v80, v81, v82);

  v169 = v6;
  v170 = v5;
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

    v6 = v169;
    [v169 setDisplayThemeData:v84];

    v5 = v170;
    v83 = v168;
  }

  objc_opt_class();
  v94 = [v5 objectForKey:@"hasGaugeClusterScreen"];
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
    [v6 setHasGaugeClusterScreen:v95];
  }

  v134 = v95;
  objc_opt_class();
  v96 = [v5 objectForKey:@"finishedWelcome"];
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
    [v6 setFinishedWelcome:v97];
  }

  v133 = v97;
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = [v5 objectForKey:@"OEMPunchThroughsAsApp"];
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

    v6 = v169;
    [v169 setOemPunchThroughsAsApp:v102];

    v5 = v170;
    v83 = v168;
  }

  if (CRIsInternalInstall())
  {
    objc_opt_class();
    v112 = [v5 objectForKey:@"lastConnectedDate"];
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
      [v6 setLastConnectedDate:v113];
    }

    objc_opt_class();
    v114 = [v5 objectForKey:@"vehicleModelName"];
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
      [v6 setVehicleModelName:v115];
    }
  }

  objc_opt_class();
  v116 = [v5 objectForKey:@"internalNotes"];
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
    [v6 setInternalNotes:v118];
  }

  v119 = v117[51];
  objc_opt_class();
  v120 = [v5 objectForKey:@"homeScreenStyleData"];
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

    [v6 setHomeScreenStyle:v122 forDisplayWithID:0];
  }

  objc_opt_class();
  v124 = [v5 objectForKey:@"viewAreas"];
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
    [v6 setViewAreas:v126];
  }

  v127 = v117[51];
  objc_opt_class();
  v128 = [v5 objectForKey:@"subtitleSettings"];
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
    [v6 setSubtitleSettings:v130];
  }

  objc_opt_class();
  v131 = [v5 objectForKey:@"videoDiagnostics"];
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
    [v6 setVideoDiagnosticsEnabled:v132];
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

+ (BOOL)_addPreferencesPairingForVehicle:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];

  if (v6)
  {
    v7 = [objc_opt_class() _preferencesAttributesForVehicle:v4];
    if (v7)
    {
      v8 = [a1 _allPreferencesPairings];
      v9 = [v8 mutableCopy];

      [v9 setObject:v7 forKey:v6];
      CFPreferencesSetAppValue(@"pairings", v9, CRPreferencesNotMigratedDomain);
      v10 = CFPreferencesAppSynchronize(CRPreferencesNotMigratedDomain);
      v11 = v10 != 0;
      if (!v10)
      {
        v12 = CarGeneralLogging();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_100081754(v6, v4);
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

+ (BOOL)_removePreferencesPairingForVehicle:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];

  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if (([a1 _removePreferencesPairingForVehicleIdentifier:v6] & 1) == 0)
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000817E8(v6, v4);
    }

    goto LABEL_7;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

+ (BOOL)_removePreferencesPairingForVehicleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _allPreferencesPairings];
  v6 = [v5 mutableCopy];

  [v6 removeObjectForKey:v4];
  CFPreferencesSetAppValue(@"pairings", v6, CRPreferencesNotMigratedDomain);
  LOBYTE(v5) = CFPreferencesAppSynchronize(CRPreferencesNotMigratedDomain) != 0;

  return v5;
}

+ (void)_cleanupPreferencesForIncompleteVehicleIdentifier:(id)a3 name:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10008187C();
  }

  v8 = [objc_opt_class() _removePreferencesPairingForVehicleIdentifier:v5];
  v9 = CarGeneralLogging();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = v5;
      v13 = 2112;
      v14 = v6;
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRVehicleStore *)self observers];
  [v5 registerObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRVehicleStore *)self observers];
  [v5 unregisterObserver:v4];
}

- (id)saveVehicle:(id)a3 withMergePolicy:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    v20 = 0;
    goto LABEL_31;
  }

  v8 = [v6 certificateSerialNumber];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = [(CRVehicleStore *)self allStoredVehicles];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v27 = self;
    v28 = v7;
    v12 = 0;
    v13 = *v30;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        if (([v15 isEqual:{v6, v27}] & 1) == 0)
        {
          if (!v8)
          {
            continue;
          }

          v16 = [v15 certificateSerialNumber];
          v17 = [v8 isEqualToData:v16];

          if (!v17)
          {
            continue;
          }
        }

        v18 = v15;

        v12 = v18;
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);

    if (!v12)
    {
      self = v27;
      v7 = v28;
      goto LABEL_27;
    }

    v9 = [v12 viewAreas];
    self = v27;
    v7 = v28;
    if (v28)
    {
      v19 = v28[2](v28, v6, v12);
    }

    else
    {
      [v12 mergeAttributesFromVehicle:v6];
      v19 = v12;
    }

    v21 = v19;

    if (v9)
    {
      v22 = [v21 viewAreas];
      if (v22)
      {
LABEL_25:

        goto LABEL_26;
      }

      if (CRIsInternalInstall())
      {
        v22 = CarGeneralLogging();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
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
    v21 = v6;
  }

LABEL_26:

  v6 = v21;
LABEL_27:
  [(CRVehicleStore *)self _invalidateCachedVehicles];
  v23 = [objc_opt_class() _addPreferencesPairingForVehicle:v6];
  v24 = [objc_opt_class() _addKeychainPairingForVehicle:v6];
  v25 = [(CRVehicleStore *)self observers];
  [v25 vehicleStore:self didSaveVehicle:v6];

  [objc_opt_class() postPairingsDidChangeNotification];
  v20 = 0;
  if (v23 && v24)
  {
    v20 = v6;
  }

LABEL_31:

  return v20;
}

- (BOOL)removeVehicle:(id)a3
{
  v4 = a3;
  if (!v4)
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
  v5 = [objc_opt_class() _removePreferencesPairingForVehicle:v4];
  v6 = [objc_opt_class() _removeKeychainPairingForVehicle:v4];
  v7 = objc_opt_class();
  v8 = [v4 bluetoothAddress];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"CarPlay";
  }

  [v7 removePayloadForVehicleWithIdentifier:v10];

  v11 = [(CRVehicleStore *)self observers];
  [v11 vehicleStore:self didRemoveVehicle:v4];

  [objc_opt_class() postPairingsDidChangeNotification];
  v12 = v5 & v6;
LABEL_11:

  return v12;
}

- (id)_matchingKeychainItemForIdentifier:(id)a3 inKeychainItems:(id)a4
{
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 objectForKey:{kSecAttrAccount, v16}];
        v13 = v12;
        if (v12 && ([v12 isEqualToString:v5] & 1) != 0)
        {
          v14 = v11;

          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)handleAvailabilityDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000AA68;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)vehicleForIdentifier:(id)a3
{
  v4 = a3;
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
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

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

- (id)vehicleForBluetoothAddress:(id)a3
{
  v4 = a3;
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
        v10 = [v9 bluetoothAddress];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 bluetoothAddress];
          v13 = [v12 isEqualToString:v4];

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

- (id)vehicleForCertificateSerial:(id)a3
{
  v4 = a3;
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
        v10 = [v9 certificateSerialNumber];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 certificateSerialNumber];
          v13 = [v12 isEqualToData:v4];

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