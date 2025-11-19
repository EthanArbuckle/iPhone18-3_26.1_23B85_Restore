@interface CRFeaturesAvailabilityAgent
- (BOOL)disablesCarPlayFeatures:(unint64_t)a3 forVehicleIdentifier:(id)a4;
- (BOOL)setCarPlayFeatures:(unint64_t)a3 disabled:(BOOL)a4 forVehicleIdentifier:(id)a5;
- (CRFeaturesAvailabilityAgent)initWithPreferencesManager:(id)a3 vehicleStore:(id)a4;
- (CRThemeAssetDisabling)assetDisabler;
- (id)_BOOLValueInCarPlayDomainForKey:(__CFString *)a3;
- (unint64_t)_deviceFeatures;
- (unint64_t)_disabledCarPlayFeaturesForVehicle:(id)a3;
- (unint64_t)_supportedCarPlayFeaturesForVehicle:(id)a3;
- (unint64_t)deviceSupportedCarPlayFeatures;
- (unint64_t)supportedCarPlayFeaturesForCertificateSerial:(id)a3;
- (unint64_t)supportedCarPlayFeaturesForVehicleIdentifier:(id)a3;
@end

@implementation CRFeaturesAvailabilityAgent

- (CRFeaturesAvailabilityAgent)initWithPreferencesManager:(id)a3 vehicleStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRFeaturesAvailabilityAgent;
  v9 = [(CRFeaturesAvailabilityAgent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferencesManager, a3);
    objc_storeStrong(&v10->_vehicleStore, a4);
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

  v14 = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
  v15 = [v14 isCarPlayThemeSupportEnabled];

  if ([v15 BOOLValue])
  {
    v16 = [(CRFeaturesAvailabilityAgent *)self assetDisabler];
    v17 = v16;
    if (v16 && [v16 ferriteDisabled])
    {
      v18 = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
      v19 = [v18 forceCarPlayThemeSupportEnablement];

      v20 = [v19 BOOLValue];
      if ((v20 & 1) == 0)
      {
        v21 = CarGeneralLogging();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "features disabled because of disabled asset plist", &v29, 2u);
        }
      }

      v22 = v20 ^ 1;
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

- (id)_BOOLValueInCarPlayDomainForKey:(__CFString *)a3
{
  v3 = CFPreferencesCopyValue(a3, CRPreferencesNotMigratedDomain, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
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

- (unint64_t)_disabledCarPlayFeaturesForVehicle:(id)a3
{
  v4 = a3;
  v5 = [v4 disabledFeaturesPreference];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CRFeaturesAvailabilityAgent *)self assetDisabler];
  if (v8)
  {
    v9 = [v4 clusterAssetIdentifier];
    v10 = [v4 clusterAssetiOSContentVersion];
    v11 = [v4 clusterAssetVersion];
    v12 = v11;
    if (v9 && v10 && v11 && [v8 shouldDisableAssetWithIdentifier:v9 iOSContentVersion:v10 accessoryContentVersion:v11])
    {
      v7 |= CRCarPlayFeaturesAllFerriteFeatures();
    }
  }

  return v7;
}

- (unint64_t)_supportedCarPlayFeaturesForVehicle:(id)a3
{
  v4 = a3;
  v5 = [(CRFeaturesAvailabilityAgent *)self deviceSupportedCarPlayFeatures];
  if (!v4)
  {
    v8 = CRCarPlayFeaturesAllFerriteFeatures() & v5;
    goto LABEL_14;
  }

  v6 = [(CRFeaturesAvailabilityAgent *)self _disabledCarPlayFeaturesForVehicle:v4]& v5;
  if (v6)
  {
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v20 = 134349056;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "supportedCarPlayFeatures: features disabled by preference: %{public}lu", &v20, 0xCu);
    }

    v5 ^= v6;
  }

  v8 = CRCarPlayFeaturesAllFerriteFeatures() & v5;
  v9 = [v4 supportsThemeAssets];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = [v4 supportsThemeAssets];
  v12 = [v11 BOOLValue];

  if (!v8 || !v12)
  {
    if (v12)
    {
LABEL_24:
      v5 &= ~v8;
      goto LABEL_25;
    }

LABEL_14:
    v14 = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
    v15 = [v14 isCarPlayRouteSharingEnabled];

    v16 = CarGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      if (v15)
      {
        v17 = [v15 BOOLValue];
        v18 = @"NO";
        if (v17)
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

    if (![v15 BOOLValue])
    {
      v5 &= ~0x10uLL;
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
  return v5;
}

- (unint64_t)deviceSupportedCarPlayFeatures
{
  v3 = [(CRFeaturesAvailabilityAgent *)self preferencesManager];
  v4 = [v3 isCarPlayAllowed];

  if (!v4)
  {
    return 0;
  }

  return [(CRFeaturesAvailabilityAgent *)self _deviceFeatures];
}

- (BOOL)disablesCarPlayFeatures:(unint64_t)a3 forVehicleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v8 = [v7 vehicleForIdentifier:v6];

  if (v8)
  {
    v9 = [(CRFeaturesAvailabilityAgent *)self _disabledCarPlayFeaturesForVehicle:v8]& a3;
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
      v15 = a3;
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
      sub_100081F24(v6);
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)setCarPlayFeatures:(unint64_t)a3 disabled:(BOOL)a4 forVehicleIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v10 = [v9 vehicleForIdentifier:v8];

  if (v10)
  {
    v11 = [v10 disabledFeaturesPreference];
    v12 = v11;
    if (v11)
    {
      v11 = [v11 unsignedIntegerValue];
    }

    if (v5)
    {
      v13 = v11 | a3;
    }

    else
    {
      v13 = v11 & ~a3;
    }

    v14 = [NSNumber numberWithUnsignedInteger:v13];
    [v10 setDisabledFeaturesPreference:v14];

    v15 = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
    v16 = [v15 saveVehicle:v10];

    v17 = CarGeneralLogging();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 UUIDString];
      v20 = 134349314;
      v21 = v13;
      v22 = 2112;
      v23 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "set disabled CarPlay features to %{public}lu for vehicleID: %@", &v20, 0x16u);
    }
  }

  else
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100081F24(v8);
    }
  }

  return v10 != 0;
}

- (unint64_t)supportedCarPlayFeaturesForCertificateSerial:(id)a3
{
  v4 = a3;
  v5 = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v6 = [v5 vehicleForCertificateSerial:v4];

  v7 = [(CRFeaturesAvailabilityAgent *)self _supportedCarPlayFeaturesForVehicle:v6];
  return v7;
}

- (unint64_t)supportedCarPlayFeaturesForVehicleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CRFeaturesAvailabilityAgent *)self vehicleStore];
  v6 = [v5 vehicleForIdentifier:v4];

  v7 = [(CRFeaturesAvailabilityAgent *)self _supportedCarPlayFeaturesForVehicle:v6];
  return v7;
}

- (CRThemeAssetDisabling)assetDisabler
{
  WeakRetained = objc_loadWeakRetained(&self->_assetDisabler);

  return WeakRetained;
}

@end