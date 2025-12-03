@interface CRFeaturesAvailabilityAgent
- (BOOL)disablesCarPlayFeatures:(unint64_t)features forVehicleIdentifier:(id)identifier;
- (BOOL)setCarPlayFeatures:(unint64_t)features disabled:(BOOL)disabled forVehicleIdentifier:(id)identifier;
- (CRFeaturesAvailabilityAgent)initWithPreferencesManager:(id)manager vehicleStore:(id)store;
- (CRThemeAssetDisabling)assetDisabler;
- (id)_BOOLValueInCarPlayDomainForKey:(__CFString *)key;
- (unint64_t)_deviceFeatures;
- (unint64_t)_disabledCarPlayFeaturesForVehicle:(id)vehicle;
- (unint64_t)_supportedCarPlayFeaturesForVehicle:(id)vehicle;
- (unint64_t)deviceSupportedCarPlayFeatures;
- (unint64_t)supportedCarPlayFeaturesForCertificateSerial:(id)serial;
- (unint64_t)supportedCarPlayFeaturesForVehicleIdentifier:(id)identifier;
@end

@implementation CRFeaturesAvailabilityAgent

- (CRFeaturesAvailabilityAgent)initWithPreferencesManager:(id)manager vehicleStore:(id)store
{
  managerCopy = manager;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = CRFeaturesAvailabilityAgent;
  v9 = [(CRFeaturesAvailabilityAgent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferencesManager, manager);
    objc_storeStrong(&v10->_vehicleStore, store);
  }

  return v10;
}

- (unint64_t)_deviceFeatures
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFEqual(v3, @"t7000");
    v6 = CFEqual(v4, @"s8000") || CFEqual(v4, @"s8001") || CFEqual(v4, @"s8003") != 0;
    v7 = CFEqual(v4, @"t8010") || CFEqual(v4, @"t8011") || CFEqual(v4, @"t8012") != 0;
    v8 = v5 != 0 || v6 || v7;
    v9 = MGGetBoolAnswer();
    if ((v9 & 1) == 0)
    {
      v10 = CarGeneralLogging();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v29) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "device doesn't support HEVC", &v29, 2u);
      }
    }

    CFRelease(v4);
    v11 = 7;
    if (v8)
    {
      v11 = 4;
    }

    v12 = 3;
    if (v8)
    {
      v12 = 0;
    }

    if (v9)
    {
      v13 = v11;
    }

    else
    {
      v13 = v12;
    }
  }

  else
  {
    v9 = 0;
    v13 = 0;
    v8 = 1;
  }

  preferencesManager = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
  isCarPlayThemeSupportEnabled = [preferencesManager isCarPlayThemeSupportEnabled];

  if ([isCarPlayThemeSupportEnabled BOOLValue])
  {
    assetDisabler = [(CRFeaturesAvailabilityAgent *)self assetDisabler];
    v17 = assetDisabler;
    if (assetDisabler && [assetDisabler ferriteDisabled])
    {
      preferencesManager2 = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
      forceCarPlayThemeSupportEnablement = [preferencesManager2 forceCarPlayThemeSupportEnablement];

      bOOLValue = [forceCarPlayThemeSupportEnablement BOOLValue];
      if ((bOOLValue & 1) == 0)
      {
        v21 = CarGeneralLogging();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "features disabled because of disabled asset plist", &v29, 2u);
        }
      }

      v22 = bOOLValue ^ 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v17 = CarGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v29) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "features disabled because global preference is disabled", &v29, 2u);
    }

    v22 = 1;
  }

  v23 = v13 | 0x338;
  if (!v9)
  {
    v23 = v13 | 0x310;
  }

  if ((v8 | v22))
  {
    v24 = v13 | 0x310;
  }

  else
  {
    v24 = v23;
  }

  if (_os_feature_enabled_impl())
  {
    v25 = 192;
  }

  else
  {
    v25 = 128;
  }

  v26 = CarGeneralLogging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = CRCarPlayFeaturesName();
    v29 = 138412290;
    v30 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Device supported features: %@", &v29, 0xCu);
  }

  return v24 | v25;
}

- (id)_BOOLValueInCarPlayDomainForKey:(__CFString *)key
{
  v3 = CFPreferencesCopyValue(key, CRPreferencesNotMigratedDomain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      v6 = [NSNumber numberWithUnsignedChar:CFBooleanGetValue(v4)];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)_disabledCarPlayFeaturesForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  disabledFeaturesPreference = [vehicleCopy disabledFeaturesPreference];
  v6 = disabledFeaturesPreference;
  if (disabledFeaturesPreference)
  {
    unsignedIntegerValue = [disabledFeaturesPreference unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  assetDisabler = [(CRFeaturesAvailabilityAgent *)self assetDisabler];
  if (assetDisabler)
  {
    clusterAssetIdentifier = [vehicleCopy clusterAssetIdentifier];
    clusterAssetiOSContentVersion = [vehicleCopy clusterAssetiOSContentVersion];
    clusterAssetVersion = [vehicleCopy clusterAssetVersion];
    v12 = clusterAssetVersion;
    if (clusterAssetIdentifier && clusterAssetiOSContentVersion && clusterAssetVersion && [assetDisabler shouldDisableAssetWithIdentifier:clusterAssetIdentifier iOSContentVersion:clusterAssetiOSContentVersion accessoryContentVersion:clusterAssetVersion])
    {
      unsignedIntegerValue |= CRCarPlayFeaturesAllFerriteFeatures();
    }
  }

  return unsignedIntegerValue;
}

- (unint64_t)_supportedCarPlayFeaturesForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  deviceSupportedCarPlayFeatures = [(CRFeaturesAvailabilityAgent *)self deviceSupportedCarPlayFeatures];
  if (!vehicleCopy)
  {
    v8 = CRCarPlayFeaturesAllFerriteFeatures() & deviceSupportedCarPlayFeatures;
    goto LABEL_14;
  }

  v6 = [(CRFeaturesAvailabilityAgent *)self _disabledCarPlayFeaturesForVehicle:vehicleCopy]& deviceSupportedCarPlayFeatures;
  if (v6)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v20 = 134349056;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "supportedCarPlayFeatures: features disabled by preference: %{public}lu", &v20, 0xCu);
    }

    deviceSupportedCarPlayFeatures ^= v6;
  }

  v8 = CRCarPlayFeaturesAllFerriteFeatures() & deviceSupportedCarPlayFeatures;
  supportsThemeAssets = [vehicleCopy supportsThemeAssets];
  if (!supportsThemeAssets)
  {
    goto LABEL_14;
  }

  v10 = supportsThemeAssets;
  supportsThemeAssets2 = [vehicleCopy supportsThemeAssets];
  bOOLValue = [supportsThemeAssets2 BOOLValue];

  if (!v8 || !bOOLValue)
  {
    if (bOOLValue)
    {
LABEL_24:
      deviceSupportedCarPlayFeatures &= ~v8;
      goto LABEL_25;
    }

LABEL_14:
    preferencesManager = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
    isCarPlayRouteSharingEnabled = [preferencesManager isCarPlayRouteSharingEnabled];

    v16 = CarGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (isCarPlayRouteSharingEnabled)
      {
        bOOLValue2 = [isCarPlayRouteSharingEnabled BOOLValue];
        v18 = @"NO";
        if (bOOLValue2)
        {
          v18 = @"YES";
        }
      }

      else
      {
        v18 = @"unset";
      }

      v20 = 134349314;
      v21 = v8;
      v22 = 2114;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "supportedCarPlayFeatures: vehicle doesn't support features requiring asset: %{public}lu routeSharingEnabled=%{public}@", &v20, 0x16u);
    }

    if (![isCarPlayRouteSharingEnabled BOOLValue])
    {
      deviceSupportedCarPlayFeatures &= ~0x10uLL;
    }

    goto LABEL_24;
  }

  v13 = CarGeneralLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v20 = 134349056;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "supportedCarPlayFeatures: device and vehicle support features requiring asset: %{public}lu", &v20, 0xCu);
  }

LABEL_25:
  return deviceSupportedCarPlayFeatures;
}

- (unint64_t)deviceSupportedCarPlayFeatures
{
  preferencesManager = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
  isCarPlayAllowed = [preferencesManager isCarPlayAllowed];

  if (!isCarPlayAllowed)
  {
    return 0;
  }

  return [(CRFeaturesAvailabilityAgent *)self _deviceFeatures];
}

- (BOOL)disablesCarPlayFeatures:(unint64_t)features forVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  vehicleStore = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v8 = [vehicleStore vehicleForIdentifier:identifierCopy];

  if (v8)
  {
    v9 = [(CRFeaturesAvailabilityAgent *)self _disabledCarPlayFeaturesForVehicle:v8]& features;
    v10 = v9 != 0;
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (v9)
      {
        v12 = @"YES";
      }

      v14 = 134349314;
      featuresCopy = features;
      v16 = 2114;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "disables CarPlay features %{public}lu: %{public}@", &v14, 0x16u);
    }
  }

  else
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100081F24(identifierCopy);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)setCarPlayFeatures:(unint64_t)features disabled:(BOOL)disabled forVehicleIdentifier:(id)identifier
{
  disabledCopy = disabled;
  identifierCopy = identifier;
  vehicleStore = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v10 = [vehicleStore vehicleForIdentifier:identifierCopy];

  if (v10)
  {
    disabledFeaturesPreference = [v10 disabledFeaturesPreference];
    v12 = disabledFeaturesPreference;
    if (disabledFeaturesPreference)
    {
      disabledFeaturesPreference = [disabledFeaturesPreference unsignedIntegerValue];
    }

    if (disabledCopy)
    {
      v13 = disabledFeaturesPreference | features;
    }

    else
    {
      v13 = disabledFeaturesPreference & ~features;
    }

    v14 = [NSNumber numberWithUnsignedInteger:v13];
    [v10 setDisabledFeaturesPreference:v14];

    vehicleStore2 = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
    v16 = [vehicleStore2 saveVehicle:v10];

    v17 = CarGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      uUIDString = [identifierCopy UUIDString];
      v20 = 134349314;
      v21 = v13;
      v22 = 2112;
      v23 = uUIDString;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "set disabled CarPlay features to %{public}lu for vehicleID: %@", &v20, 0x16u);
    }
  }

  else
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100081F24(identifierCopy);
    }
  }

  return v10 != 0;
}

- (unint64_t)supportedCarPlayFeaturesForCertificateSerial:(id)serial
{
  serialCopy = serial;
  vehicleStore = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v6 = [vehicleStore vehicleForCertificateSerial:serialCopy];

  v7 = [(CRFeaturesAvailabilityAgent *)self _supportedCarPlayFeaturesForVehicle:v6];
  return v7;
}

- (unint64_t)supportedCarPlayFeaturesForVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  vehicleStore = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v6 = [vehicleStore vehicleForIdentifier:identifierCopy];

  v7 = [(CRFeaturesAvailabilityAgent *)self _supportedCarPlayFeaturesForVehicle:v6];
  return v7;
}

- (CRThemeAssetDisabling)assetDisabler
{
  WeakRetained = objc_loadWeakRetained(&self->_assetDisabler);

  return WeakRetained;
}

@end