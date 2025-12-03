@interface NRAlbertPairingReportData
+ (id)getStringProperty:(id)property fromDevice:(id)device store:(id)store;
+ (id)stringValue:(id)value;
+ (unsigned)_albertPairingModeForDevice:(id)device;
- (NRAlbertPairingReportData)initWithDevice:(id)device andSecurePropertyStore:(id)store;
- (NSDictionary)xmlDictionary;
- (void)_initDeviceInfoFromDevice:(id)device andSecurePropertyStore:(id)store;
- (void)_initLocalDeviceInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRAlbertPairingReportData

- (NRAlbertPairingReportData)initWithDevice:(id)device andSecurePropertyStore:(id)store
{
  deviceCopy = device;
  storeCopy = store;
  v8 = [(NRAlbertPairingReportData *)self init];
  v9 = v8;
  if (v8)
  {
    [(NRAlbertPairingReportData *)v8 _initLocalDeviceInfo];
    [(NRAlbertPairingReportData *)v9 _initDeviceInfoFromDevice:deviceCopy andSecurePropertyStore:storeCopy];
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  watchUDID = self->_watchUDID;
  coderCopy = coder;
  [coderCopy encodeObject:watchUDID forKey:@"UniqueDeviceID"];
  [coderCopy encodeObject:self->_watchSerial forKey:@"SerialNumber"];
  [coderCopy encodeObject:self->_watchVersion forKey:@"SystemVersion"];
  [coderCopy encodeObject:self->_watchIMEI forKey:@"InternationalMobileEquipmentIdentity"];
  [coderCopy encodeObject:self->_watchMEID forKey:@"MobileEquipmentIdentifier"];
  [coderCopy encodeObject:self->_watchIMEI2 forKey:@"InternationalMobileEquipmentIdentity2"];
  [coderCopy encodeObject:self->_watchPairedMode forKey:@"pairedMode"];
  [coderCopy encodeObject:self->_phoneUDID forKey:@"CompanionUniqueDeviceID"];
  [coderCopy encodeObject:self->_phoneSerial forKey:@"CompanionSerialNumber"];
  [coderCopy encodeObject:self->_phoneIMEI forKey:@"CompanionInternationalMobileEquipmentIdentity"];
  [coderCopy encodeObject:self->_phoneMEID forKey:@"CompanionMobileEquipmentIdentifier"];
  [coderCopy encodeObject:self->_phoneIMEI2 forKey:@"CompanionInternationalMobileEquipmentIdentity2"];
  [coderCopy encodeObject:self->_phoneVersion forKey:@"CompanionSystemVersion"];
}

- (NSDictionary)xmlDictionary
{
  v3 = objc_opt_new();
  v4 = v3;
  watchUDID = self->_watchUDID;
  if (watchUDID)
  {
    [v3 setObject:watchUDID forKeyedSubscript:@"UniqueDeviceID"];
  }

  else
  {
    v6 = nr_daemon_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF584();
      }
    }
  }

  watchSerial = self->_watchSerial;
  if (watchSerial)
  {
    [v4 setObject:watchSerial forKeyedSubscript:@"SerialNumber"];
  }

  else
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF5B8();
      }
    }
  }

  watchVersion = self->_watchVersion;
  if (watchVersion)
  {
    [v4 setObject:watchVersion forKeyedSubscript:@"SystemVersion"];
  }

  watchIMEI = self->_watchIMEI;
  if (watchIMEI)
  {
    [v4 setObject:watchIMEI forKeyedSubscript:@"InternationalMobileEquipmentIdentity"];
  }

  watchMEID = self->_watchMEID;
  if (watchMEID)
  {
    [v4 setObject:watchMEID forKeyedSubscript:@"MobileEquipmentIdentifier"];
  }

  watchIMEI2 = self->_watchIMEI2;
  if (watchIMEI2)
  {
    [v4 setObject:watchIMEI2 forKeyedSubscript:@"InternationalMobileEquipmentIdentity2"];
  }

  watchPairedMode = self->_watchPairedMode;
  if (watchPairedMode)
  {
    [v4 setObject:watchPairedMode forKeyedSubscript:@"pairedMode"];
  }

  phoneUDID = self->_phoneUDID;
  if (phoneUDID)
  {
    [v4 setObject:phoneUDID forKeyedSubscript:@"CompanionUniqueDeviceID"];
  }

  else
  {
    v19 = nr_daemon_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

    if (v20)
    {
      v21 = nr_daemon_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF5EC();
      }
    }
  }

  phoneSerial = self->_phoneSerial;
  if (phoneSerial)
  {
    [v4 setObject:phoneSerial forKeyedSubscript:@"CompanionSerialNumber"];
  }

  else
  {
    v23 = nr_daemon_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (v24)
    {
      v25 = nr_daemon_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF620();
      }
    }
  }

  phoneIMEI = self->_phoneIMEI;
  if (phoneIMEI)
  {
    [v4 setObject:phoneIMEI forKeyedSubscript:@"CompanionInternationalMobileEquipmentIdentity"];
  }

  phoneMEID = self->_phoneMEID;
  if (phoneMEID && [(NSString *)phoneMEID caseInsensitiveCompare:@"unknown"])
  {
    [v4 setObject:self->_phoneMEID forKeyedSubscript:@"CompanionMobileEquipmentIdentifier"];
  }

  else
  {
    v28 = nr_daemon_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

    if (v29)
    {
      v30 = nr_daemon_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000FF654(&self->_phoneMEID);
      }
    }
  }

  phoneIMEI2 = self->_phoneIMEI2;
  if (phoneIMEI2)
  {
    [v4 setObject:phoneIMEI2 forKeyedSubscript:@"CompanionInternationalMobileEquipmentIdentity2"];
  }

  phoneVersion = self->_phoneVersion;
  if (phoneVersion)
  {
    [v4 setObject:phoneVersion forKeyedSubscript:@"CompanionSystemVersion"];
  }

  return v4;
}

+ (id)stringValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
  }

  else
  {
    v4 = 0;
  }

  if ([v4 isEqual:@"Unknown"])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

+ (id)getStringProperty:(id)property fromDevice:(id)device store:(id)store
{
  storeCopy = store;
  v8 = [device objectForKeyedSubscript:property];
  value = [v8 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = value;
LABEL_5:
    v11 = v10;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [storeCopy securePropertyForID:value];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:
  if ([v11 isEqual:@"Unknown"])
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (void)_initDeviceInfoFromDevice:(id)device andSecurePropertyStore:(id)store
{
  deviceCopy = device;
  storeCopy = store;
  v8 = [objc_opt_class() getStringProperty:NRDevicePropertyUDID fromDevice:deviceCopy store:storeCopy];
  watchUDID = self->_watchUDID;
  self->_watchUDID = v8;

  v10 = [objc_opt_class() getStringProperty:NRDevicePropertySerialNumber fromDevice:deviceCopy store:storeCopy];
  watchSerial = self->_watchSerial;
  self->_watchSerial = v10;

  v12 = [objc_opt_class() getStringProperty:NRDevicePropertyIMEI fromDevice:deviceCopy store:storeCopy];
  watchIMEI = self->_watchIMEI;
  self->_watchIMEI = v12;

  v14 = [objc_opt_class() getStringProperty:NRDevicePropertyMEID fromDevice:deviceCopy store:storeCopy];
  watchMEID = self->_watchMEID;
  self->_watchMEID = v14;

  v16 = [objc_opt_class() getStringProperty:NRDevicePropertyIMEI2 fromDevice:deviceCopy store:storeCopy];
  watchIMEI2 = self->_watchIMEI2;
  self->_watchIMEI2 = v16;

  v18 = [objc_opt_class() getStringProperty:NRDevicePropertySystemVersion fromDevice:deviceCopy store:storeCopy];

  watchVersion = self->_watchVersion;
  self->_watchVersion = v18;

  v20 = +[NRFeatureFlags sharedInstance];
  LODWORD(v18) = [v20 albertReportPairingMode];

  if (v18)
  {
    v21 = [[NSNumber alloc] initWithUnsignedInt:{+[NRAlbertPairingReportData _albertPairingModeForDevice:](NRAlbertPairingReportData, "_albertPairingModeForDevice:", deviceCopy)}];
    watchPairedMode = self->_watchPairedMode;
    self->_watchPairedMode = v21;
  }

  v23 = nr_daemon_log();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (v24)
  {
    v25 = nr_daemon_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_watchUDID;
      v27 = self->_watchSerial;
      v28 = 138478083;
      v29 = v26;
      v30 = 2113;
      v31 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Albert report from device: UUID: %{private}@ serial: %{private}@", &v28, 0x16u);
    }
  }
}

- (void)_initLocalDeviceInfo
{
  v3 = objc_opt_new();
  properties = [v3 properties];
  v5 = objc_opt_class();
  v6 = [properties objectForKeyedSubscript:NRDevicePropertyUDID];
  v7 = [v5 stringValue:v6];
  phoneUDID = self->_phoneUDID;
  self->_phoneUDID = v7;

  v9 = objc_opt_class();
  v10 = [properties objectForKeyedSubscript:NRDevicePropertySerialNumber];
  v11 = [v9 stringValue:v10];
  phoneSerial = self->_phoneSerial;
  self->_phoneSerial = v11;

  v13 = objc_opt_class();
  v14 = [properties objectForKeyedSubscript:NRDevicePropertyIMEI];
  v15 = [v13 stringValue:v14];
  phoneIMEI = self->_phoneIMEI;
  self->_phoneIMEI = v15;

  v17 = objc_opt_class();
  v18 = [properties objectForKeyedSubscript:NRDevicePropertyMEID];
  v19 = [v17 stringValue:v18];
  phoneMEID = self->_phoneMEID;
  self->_phoneMEID = v19;

  v21 = objc_opt_class();
  v22 = [properties objectForKeyedSubscript:NRDevicePropertyIMEI2];
  v23 = [v21 stringValue:v22];
  phoneIMEI2 = self->_phoneIMEI2;
  self->_phoneIMEI2 = v23;

  v25 = _CFCopySystemVersionDictionary();
  v26 = [v25 objectForKeyedSubscript:_kCFSystemVersionProductVersionKey];
  phoneVersion = self->_phoneVersion;
  self->_phoneVersion = v26;

  v28 = nr_daemon_log();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

  if (v29)
  {
    v30 = nr_daemon_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = self->_phoneUDID;
      v32 = self->_phoneSerial;
      v33 = 138478083;
      v34 = v31;
      v35 = 2113;
      v36 = v32;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Albert report from phone: UUID: %{private}@ serial: %{private}@", &v33, 0x16u);
    }
  }
}

+ (unsigned)_albertPairingModeForDevice:(id)device
{
  v3 = [device objectForKeyedSubscript:NRDevicePropertyIsAltAccount];
  value = [v3 value];

  if (value && ([value BOOLValue] & 1) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

@end