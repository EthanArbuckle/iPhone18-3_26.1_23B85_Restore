@interface UARPSettingsAccessory
- (BOOL)isEqual:(id)equal;
- (BOOL)isFusingEqual:(id)equal;
- (UARPSettingsAccessory)initWithCoder:(id)coder;
- (UARPSettingsAccessory)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)encodeAsChangedDictionary;
- (id)encodeAsDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)setActiveVersion:(id)version;
- (void)setAssetLocation:(id)location;
- (void)setAssetURLOverride:(id)override;
- (void)setCustomBuild:(id)build;
- (void)setCustomTrain:(id)train;
- (void)setDownloadedVersion:(id)version;
- (void)setDropboxVersion:(id)version;
- (void)setHwFusing:(id)fusing;
- (void)setHwRevision:(id)revision;
- (void)setMobileAssetModelNumber:(id)number;
- (void)setModelNumber:(id)number;
- (void)setName:(id)name;
- (void)setPallasAudienceOverride:(id)override;
- (void)setPartnerSerialNumbers:(id)numbers;
- (void)setSerialNumber:(id)number;
- (void)setSupplementalAssetLocation:(id)location;
- (void)setSupplementalCustomBuild:(id)build;
- (void)setSupplementalCustomTrain:(id)train;
@end

@implementation UARPSettingsAccessory

- (UARPSettingsAccessory)initWithDictionary:(id)dictionary
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dictionary);
  v3 = selfCopy;
  selfCopy = 0;
  v78.receiver = v3;
  v78.super_class = UARPSettingsAccessory;
  selfCopy = [(UARPSettingsAccessory *)&v78 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v52 = [location[0] objectForKeyedSubscript:@"name"];
    v4 = [v52 copy];
    name = selfCopy->_name;
    selfCopy->_name = v4;

    v53 = [location[0] objectForKeyedSubscript:@"serialNumber"];
    v6 = [v53 copy];
    serialNumber = selfCopy->_serialNumber;
    selfCopy->_serialNumber = v6;

    v54 = [location[0] objectForKeyedSubscript:@"modelNumber"];
    v8 = [v54 copy];
    modelNumber = selfCopy->_modelNumber;
    selfCopy->_modelNumber = v8;

    v55 = [location[0] objectForKeyedSubscript:@"mobileAssetModelNumber"];
    v10 = [v55 copy];
    mobileAssetModelNumber = selfCopy->_mobileAssetModelNumber;
    selfCopy->_mobileAssetModelNumber = v10;

    v56 = [location[0] objectForKeyedSubscript:@"fusing"];
    v12 = [v56 copy];
    hwFusing = selfCopy->_hwFusing;
    selfCopy->_hwFusing = v12;

    v57 = [location[0] objectForKeyedSubscript:@"activeVersion"];
    v14 = [v57 copy];
    activeVersion = selfCopy->_activeVersion;
    selfCopy->_activeVersion = v14;

    v58 = [location[0] objectForKeyedSubscript:@"hwRevision"];
    v16 = [v58 copy];
    hwRevision = selfCopy->_hwRevision;
    selfCopy->_hwRevision = v16;

    v59 = [location[0] objectForKeyedSubscript:@"partnerSerialNumbers"];
    v18 = [v59 copy];
    partnerSerialNumbers = selfCopy->_partnerSerialNumbers;
    selfCopy->_partnerSerialNumbers = v18;

    v60 = [location[0] objectForKeyedSubscript:@"assetLocation"];
    v20 = [v60 copy];
    assetLocation = selfCopy->_assetLocation;
    selfCopy->_assetLocation = v20;

    v61 = [location[0] objectForKeyedSubscript:@"basejumperTrain"];
    v22 = [v61 copy];
    customTrain = selfCopy->_customTrain;
    selfCopy->_customTrain = v22;

    v62 = [location[0] objectForKeyedSubscript:@"basejumperBuild"];
    v24 = [v62 copy];
    customBuild = selfCopy->_customBuild;
    selfCopy->_customBuild = v24;

    v63 = [location[0] objectForKeyedSubscript:@"supplementalAssetLocation"];
    v26 = [v63 copy];
    supplementalAssetLocation = selfCopy->_supplementalAssetLocation;
    selfCopy->_supplementalAssetLocation = v26;

    v64 = [location[0] objectForKeyedSubscript:@"supplementalBasejumperTrain"];
    v28 = [v64 copy];
    supplementalCustomTrain = selfCopy->_supplementalCustomTrain;
    selfCopy->_supplementalCustomTrain = v28;

    v65 = [location[0] objectForKeyedSubscript:@"supplementalBasejumperBuild"];
    v30 = [v65 copy];
    supplementalCustomBuild = selfCopy->_supplementalCustomBuild;
    selfCopy->_supplementalCustomBuild = v30;

    v66 = [location[0] objectForKeyedSubscript:@"isOTADisabled"];
    bOOLValue = [v66 BOOLValue];
    selfCopy->_otaDisabled = bOOLValue;

    v67 = [location[0] objectForKeyedSubscript:@"authListingEnabled"];
    bOOLValue2 = [v67 BOOLValue];
    selfCopy->_authListingEnabled = bOOLValue2;

    v68 = [location[0] objectForKeyedSubscript:@"personalizationRequired"];
    bOOLValue3 = [v68 BOOLValue];
    selfCopy->_personalizationRequired = bOOLValue3;

    v69 = [location[0] objectForKeyedSubscript:@"accessoryReachable"];
    bOOLValue4 = [v69 BOOLValue];
    selfCopy->_accessoryReachable = bOOLValue4;

    v70 = [location[0] objectForKeyedSubscript:@"SupportsDeveloperSettings"];
    bOOLValue5 = [v70 BOOLValue];
    selfCopy->_supportsDeveloperSettings = bOOLValue5;

    v71 = [location[0] objectForKeyedSubscript:@"downloadedVersion"];
    v37 = [v71 copy];
    downloadedVersion = selfCopy->_downloadedVersion;
    selfCopy->_downloadedVersion = v37;

    v72 = [location[0] objectForKeyedSubscript:@"dropboxVersion"];
    v39 = [v72 copy];
    dropboxVersion = selfCopy->_dropboxVersion;
    selfCopy->_dropboxVersion = v39;

    v73 = [location[0] objectForKeyedSubscript:@"assetURLOverride"];
    v41 = [v73 copy];
    assetURLOverride = selfCopy->_assetURLOverride;
    selfCopy->_assetURLOverride = v41;

    v74 = [location[0] objectForKeyedSubscript:@"pallasSupportEnabled"];
    bOOLValue6 = [v74 BOOLValue];
    selfCopy->_pallasSupportEnabled = bOOLValue6;

    v75 = [location[0] objectForKeyedSubscript:@"pallasInternalAsset"];
    bOOLValue7 = [v75 BOOLValue];
    selfCopy->_pallasInternalAssetVariant = bOOLValue7;

    v76 = [location[0] objectForKeyedSubscript:@"pallasAudience"];
    integerValue = [v76 integerValue];
    selfCopy->_pallasAudience = integerValue;

    v77 = [location[0] objectForKeyedSubscript:@"pallasAudienceOverride"];
    v46 = [v77 copy];
    pallasAudienceOverride = selfCopy->_pallasAudienceOverride;
    selfCopy->_pallasAudienceOverride = v46;

    encodeAsDictionary = [(UARPSettingsAccessory *)selfCopy encodeAsDictionary];
    originalSettings = selfCopy->_originalSettings;
    selfCopy->_originalSettings = encodeAsDictionary;
  }

  v51 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v51;
}

- (UARPSettingsAccessory)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v50.receiver = v3;
  v50.super_class = UARPSettingsAccessory;
  selfCopy = [(UARPSettingsAccessory *)&v50 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = selfCopy->_name;
    selfCopy->_name = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = selfCopy->_serialNumber;
    selfCopy->_serialNumber = v6;

    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = selfCopy->_modelNumber;
    selfCopy->_modelNumber = v8;

    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"mobileAssetModelNumber"];
    mobileAssetModelNumber = selfCopy->_mobileAssetModelNumber;
    selfCopy->_mobileAssetModelNumber = v10;

    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"fusing"];
    hwFusing = selfCopy->_hwFusing;
    selfCopy->_hwFusing = v12;

    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"activeVersion"];
    activeVersion = selfCopy->_activeVersion;
    selfCopy->_activeVersion = v14;

    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"hwRevision"];
    hwRevision = selfCopy->_hwRevision;
    selfCopy->_hwRevision = v16;

    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"partnerSerialNumbers"];
    partnerSerialNumbers = selfCopy->_partnerSerialNumbers;
    selfCopy->_partnerSerialNumbers = v18;

    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetLocation"];
    assetLocation = selfCopy->_assetLocation;
    selfCopy->_assetLocation = v20;

    v22 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"basejumperTrain"];
    customTrain = selfCopy->_customTrain;
    selfCopy->_customTrain = v22;

    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"basejumperBuild"];
    customBuild = selfCopy->_customBuild;
    selfCopy->_customBuild = v24;

    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"supplementalAssetLocation"];
    supplementalAssetLocation = selfCopy->_supplementalAssetLocation;
    selfCopy->_supplementalAssetLocation = v26;

    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperTrain"];
    supplementalCustomTrain = selfCopy->_supplementalCustomTrain;
    selfCopy->_supplementalCustomTrain = v28;

    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperBuild"];
    supplementalCustomBuild = selfCopy->_supplementalCustomBuild;
    selfCopy->_supplementalCustomBuild = v30;

    v32 = [location[0] decodeBoolForKey:@"isOTADisabled"];
    selfCopy->_otaDisabled = v32;
    v33 = [location[0] decodeBoolForKey:@"authListingEnabled"];
    selfCopy->_authListingEnabled = v33;
    v34 = [location[0] decodeBoolForKey:@"personalizationRequired"];
    selfCopy->_personalizationRequired = v34;
    v35 = [location[0] decodeBoolForKey:@"accessoryReachable"];
    selfCopy->_accessoryReachable = v35;
    v36 = [location[0] decodeBoolForKey:@"SupportsDeveloperSettings"];
    selfCopy->_supportsDeveloperSettings = v36;
    v37 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"downloadedVersion"];
    downloadedVersion = selfCopy->_downloadedVersion;
    selfCopy->_downloadedVersion = v37;

    v39 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"dropboxVersion"];
    dropboxVersion = selfCopy->_dropboxVersion;
    selfCopy->_dropboxVersion = v39;

    v41 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetURLOverride"];
    assetURLOverride = selfCopy->_assetURLOverride;
    selfCopy->_assetURLOverride = v41;

    v43 = [location[0] decodeIntegerForKey:@"pallasAudience"];
    selfCopy->_pallasAudience = v43;
    v44 = [location[0] decodeBoolForKey:@"pallasSupportEnabled"];
    selfCopy->_pallasSupportEnabled = v44;
    v45 = [location[0] decodeBoolForKey:@"pallasInternalAsset"];
    selfCopy->_pallasInternalAssetVariant = v45;
    v46 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"pallasAudienceOverride"];
    pallasAudienceOverride = selfCopy->_pallasAudienceOverride;
    selfCopy->_pallasAudienceOverride = v46;
  }

  v49 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v49;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_name forKey:@"name"];
  [location[0] encodeObject:selfCopy->_serialNumber forKey:@"serialNumber"];
  [location[0] encodeObject:selfCopy->_modelNumber forKey:@"modelNumber"];
  [location[0] encodeObject:selfCopy->_mobileAssetModelNumber forKey:@"mobileAssetModelNumber"];
  [location[0] encodeObject:selfCopy->_hwFusing forKey:@"fusing"];
  [location[0] encodeObject:selfCopy->_activeVersion forKey:@"activeVersion"];
  [location[0] encodeObject:selfCopy->_hwRevision forKey:@"hwRevision"];
  [location[0] encodeObject:selfCopy->_partnerSerialNumbers forKey:@"partnerSerialNumbers"];
  [location[0] encodeObject:selfCopy->_assetLocation forKey:@"assetLocation"];
  [location[0] encodeObject:selfCopy->_customTrain forKey:@"basejumperTrain"];
  [location[0] encodeObject:selfCopy->_customBuild forKey:@"basejumperBuild"];
  [location[0] encodeObject:selfCopy->_supplementalAssetLocation forKey:@"supplementalAssetLocation"];
  [location[0] encodeObject:selfCopy->_supplementalCustomTrain forKey:@"supplementalBasejumperTrain"];
  [location[0] encodeObject:selfCopy->_supplementalCustomBuild forKey:@"supplementalBasejumperBuild"];
  [location[0] encodeBool:selfCopy->_otaDisabled forKey:@"isOTADisabled"];
  [location[0] encodeBool:selfCopy->_authListingEnabled forKey:@"authListingEnabled"];
  [location[0] encodeBool:selfCopy->_personalizationRequired forKey:@"personalizationRequired"];
  [location[0] encodeBool:selfCopy->_accessoryReachable forKey:@"accessoryReachable"];
  [location[0] encodeBool:selfCopy->_supportsDeveloperSettings forKey:@"SupportsDeveloperSettings"];
  [location[0] encodeObject:selfCopy->_downloadedVersion forKey:@"downloadedVersion"];
  [location[0] encodeObject:selfCopy->_dropboxVersion forKey:@"dropboxVersion"];
  [location[0] encodeObject:selfCopy->_assetURLOverride forKey:@"assetURLOverride"];
  [location[0] encodeInteger:selfCopy->_pallasAudience forKey:@"pallasAudience"];
  [location[0] encodeBool:selfCopy->_pallasSupportEnabled forKey:@"pallasSupportEnabled"];
  [location[0] encodeBool:selfCopy->_pallasInternalAssetVariant forKey:@"pallasInternalAsset"];
  [location[0] encodeObject:selfCopy->_pallasAudienceOverride forKey:@"pallasAudienceOverride"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7[3] = self;
  v7[2] = a2;
  v7[1] = zone;
  v7[0] = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v3 = [UARPSettingsAccessory alloc];
  v6 = [(UARPSettingsAccessory *)v3 initWithDictionary:v7[0]];
  v5 = v6;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  return v5;
}

- (BOOL)isFusingEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy->_hwFusing)
  {
    v6 = [(NSString *)selfCopy->_hwFusing caseInsensitiveCompare:location[0]]== NSOrderedSame;
  }

  else
  {
    v6 = location[0] == 0;
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (selfCopy == location[0])
    {
      v9 = 1;
      v6 = 1;
    }

    else
    {
      encodeAsDictionary = [(UARPSettingsAccessory *)selfCopy encodeAsDictionary];
      encodeAsDictionary2 = [location[0] encodeAsDictionary];
      v9 = [encodeAsDictionary isEqualToDictionary:encodeAsDictionary2] == 1;
      v6 = 1;
      objc_storeStrong(&encodeAsDictionary2, 0);
      objc_storeStrong(&encodeAsDictionary, 0);
    }
  }

  else
  {
    v9 = 0;
    v6 = 1;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (id)encodeAsDictionary
{
  selfCopy = self;
  v31[1] = a2;
  v31[0] = objc_opt_new();
  if ([(NSString *)selfCopy->_name length])
  {
    v30 = [(NSString *)selfCopy->_name copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_serialNumber length])
  {
    v29 = [(NSString *)selfCopy->_serialNumber copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_modelNumber length])
  {
    v28 = [(NSString *)selfCopy->_modelNumber copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_mobileAssetModelNumber length])
  {
    v27 = [(NSString *)selfCopy->_mobileAssetModelNumber copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_hwFusing length])
  {
    v26 = [(NSString *)selfCopy->_hwFusing copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_activeVersion length])
  {
    v25 = [(NSString *)selfCopy->_activeVersion copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_hwRevision length])
  {
    v24 = [(NSString *)selfCopy->_hwRevision copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSArray *)selfCopy->_partnerSerialNumbers count])
  {
    v23 = [(NSArray *)selfCopy->_partnerSerialNumbers copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_assetLocation length])
  {
    v22 = [(NSString *)selfCopy->_assetLocation copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_customTrain length])
  {
    v21 = [(NSString *)selfCopy->_customTrain copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_customBuild length])
  {
    v20 = [(NSString *)selfCopy->_customBuild copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_supplementalAssetLocation length])
  {
    v19 = [(NSString *)selfCopy->_supplementalAssetLocation copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_supplementalCustomTrain length])
  {
    v18 = [(NSString *)selfCopy->_supplementalCustomTrain copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_supplementalCustomBuild length])
  {
    v17 = [(NSString *)selfCopy->_supplementalCustomBuild copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  v12 = [NSNumber numberWithBool:selfCopy->_otaDisabled];
  [v31[0] setObject:? forKeyedSubscript:?];

  v13 = [NSNumber numberWithBool:selfCopy->_authListingEnabled];
  [v31[0] setObject:? forKeyedSubscript:?];

  v14 = [NSNumber numberWithBool:selfCopy->_personalizationRequired];
  [v31[0] setObject:? forKeyedSubscript:?];

  v15 = [NSNumber numberWithBool:selfCopy->_accessoryReachable];
  [v31[0] setObject:? forKeyedSubscript:?];

  v16 = [NSNumber numberWithBool:selfCopy->_supportsDeveloperSettings];
  [v31[0] setObject:? forKeyedSubscript:?];

  if ([(NSString *)selfCopy->_downloadedVersion length])
  {
    v11 = [(NSString *)selfCopy->_downloadedVersion copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_dropboxVersion length])
  {
    v10 = [(NSString *)selfCopy->_dropboxVersion copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)selfCopy->_assetURLOverride length])
  {
    v9 = [(NSString *)selfCopy->_assetURLOverride copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  v6 = [NSNumber numberWithBool:selfCopy->_pallasSupportEnabled];
  [v31[0] setObject:? forKeyedSubscript:?];

  v7 = [NSNumber numberWithBool:selfCopy->_pallasInternalAssetVariant];
  [v31[0] setObject:? forKeyedSubscript:?];

  v8 = [NSNumber numberWithUnsignedInteger:selfCopy->_pallasAudience];
  [v31[0] setObject:? forKeyedSubscript:?];

  if ([(NSString *)selfCopy->_pallasAudienceOverride length])
  {
    v5 = [(NSString *)selfCopy->_pallasAudienceOverride copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  v4 = [NSDictionary dictionaryWithDictionary:v31[0], v31];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)encodeAsChangedDictionary
{
  selfCopy = self;
  v22[1] = a2;
  v22[0] = [(UARPSettingsAccessory *)self encodeAsDictionary];
  location = objc_opt_new();
  v5 = v22[0];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = __50__UARPSettingsAccessory_encodeAsChangedDictionary__block_invoke;
  v18 = &unk_100034450;
  v19 = selfCopy;
  v20 = location;
  [v5 enumerateKeysAndObjectsUsingBlock:&v14];
  originalSettings = selfCopy->_originalSettings;
  v7 = _NSConcreteStackBlock;
  v8 = -1073741824;
  v9 = 0;
  v10 = __50__UARPSettingsAccessory_encodeAsChangedDictionary__block_invoke_2;
  v11 = &unk_100034450;
  v12 = v22[0];
  v13 = location;
  [(NSDictionary *)originalSettings enumerateKeysAndObjectsUsingBlock:&v7];
  if ([location count])
  {
    v2 = location;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v22, 0);

  return v4;
}

void __50__UARPSettingsAccessory_encodeAsChangedDictionary__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[2] = a4;
  v7[1] = a1;
  v7[0] = [*(*(a1 + 32) + 8) objectForKeyedSubscript:location[0]];
  if (!v7[0])
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 1)
  {
    if (![v8 isEqualToString:v7[0]])
    {
      [*(a1 + 40) setObject:v8 forKeyedSubscript:location[0]];
    }

    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 1 || [v8 isEqualToArray:v7[0]])
    {
      goto LABEL_13;
    }

LABEL_12:
    [*(a1 + 40) setObject:v8 forKeyedSubscript:location[0]];
    goto LABEL_13;
  }

  if (![v8 isEqualToNumber:v7[0]])
  {
    [*(a1 + 40) setObject:v8 forKeyedSubscript:location[0]];
  }

LABEL_13:
  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

void __50__UARPSettingsAccessory_encodeAsChangedDictionary__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[2] = a4;
  v8[1] = a1;
  v8[0] = [a1[4] objectForKeyedSubscript:location[0]];
  if (!v8[0])
  {
    v4 = +[NSNull null];
    [a1[5] setObject:? forKeyedSubscript:?];
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v3 = [location[0] copy];
  name = selfCopy->_name;
  selfCopy->_name = v3;

  objc_storeStrong(location, 0);
}

- (void)setSerialNumber:(id)number
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v3 = [location[0] copy];
  serialNumber = selfCopy->_serialNumber;
  selfCopy->_serialNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setModelNumber:(id)number
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v3 = [location[0] copy];
  modelNumber = selfCopy->_modelNumber;
  selfCopy->_modelNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setMobileAssetModelNumber:(id)number
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v3 = [location[0] copy];
  mobileAssetModelNumber = selfCopy->_mobileAssetModelNumber;
  selfCopy->_mobileAssetModelNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setHwFusing:(id)fusing
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fusing);
  v3 = [location[0] copy];
  hwFusing = selfCopy->_hwFusing;
  selfCopy->_hwFusing = v3;

  objc_storeStrong(location, 0);
}

- (void)setHwRevision:(id)revision
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, revision);
  v3 = [location[0] copy];
  hwRevision = selfCopy->_hwRevision;
  selfCopy->_hwRevision = v3;

  objc_storeStrong(location, 0);
}

- (void)setActiveVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v3 = [location[0] copy];
  activeVersion = selfCopy->_activeVersion;
  selfCopy->_activeVersion = v3;

  objc_storeStrong(location, 0);
}

- (void)setPartnerSerialNumbers:(id)numbers
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, numbers);
  v3 = [location[0] copy];
  partnerSerialNumbers = selfCopy->_partnerSerialNumbers;
  selfCopy->_partnerSerialNumbers = v3;

  objc_storeStrong(location, 0);
}

- (void)setAssetLocation:(id)location
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, location);
  v3 = [location[0] copy];
  assetLocation = selfCopy->_assetLocation;
  selfCopy->_assetLocation = v3;

  objc_storeStrong(location, 0);
}

- (void)setCustomTrain:(id)train
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, train);
  v3 = [location[0] copy];
  customTrain = selfCopy->_customTrain;
  selfCopy->_customTrain = v3;

  objc_storeStrong(location, 0);
}

- (void)setCustomBuild:(id)build
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, build);
  v3 = [location[0] copy];
  customBuild = selfCopy->_customBuild;
  selfCopy->_customBuild = v3;

  objc_storeStrong(location, 0);
}

- (void)setSupplementalAssetLocation:(id)location
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, location);
  v3 = [location[0] copy];
  supplementalAssetLocation = selfCopy->_supplementalAssetLocation;
  selfCopy->_supplementalAssetLocation = v3;

  objc_storeStrong(location, 0);
}

- (void)setSupplementalCustomTrain:(id)train
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, train);
  v3 = [location[0] copy];
  supplementalCustomTrain = selfCopy->_supplementalCustomTrain;
  selfCopy->_supplementalCustomTrain = v3;

  objc_storeStrong(location, 0);
}

- (void)setSupplementalCustomBuild:(id)build
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, build);
  v3 = [location[0] copy];
  supplementalCustomBuild = selfCopy->_supplementalCustomBuild;
  selfCopy->_supplementalCustomBuild = v3;

  objc_storeStrong(location, 0);
}

- (void)setDownloadedVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v3 = [location[0] copy];
  downloadedVersion = selfCopy->_downloadedVersion;
  selfCopy->_downloadedVersion = v3;

  objc_storeStrong(location, 0);
}

- (void)setDropboxVersion:(id)version
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, version);
  v3 = [location[0] copy];
  dropboxVersion = selfCopy->_dropboxVersion;
  selfCopy->_dropboxVersion = v3;

  objc_storeStrong(location, 0);
}

- (void)setAssetURLOverride:(id)override
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, override);
  v3 = [location[0] copy];
  assetURLOverride = selfCopy->_assetURLOverride;
  selfCopy->_assetURLOverride = v3;

  objc_storeStrong(location, 0);
}

- (void)setPallasAudienceOverride:(id)override
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, override);
  v3 = [location[0] copy];
  pallasAudienceOverride = selfCopy->_pallasAudienceOverride;
  selfCopy->_pallasAudienceOverride = v3;

  objc_storeStrong(location, 0);
}

- (id)description
{
  encodeAsDictionary = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v4 = [NSString stringWithFormat:@"%@", encodeAsDictionary];

  return v4;
}

@end