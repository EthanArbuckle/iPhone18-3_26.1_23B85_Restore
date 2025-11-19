@interface UARPSettingsAccessory
- (BOOL)isEqual:(id)a3;
- (BOOL)isFusingEqual:(id)a3;
- (UARPSettingsAccessory)initWithCoder:(id)a3;
- (UARPSettingsAccessory)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsChangedDictionary;
- (id)encodeAsDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveVersion:(id)a3;
- (void)setAssetLocation:(id)a3;
- (void)setAssetURLOverride:(id)a3;
- (void)setCustomBuild:(id)a3;
- (void)setCustomTrain:(id)a3;
- (void)setDownloadedVersion:(id)a3;
- (void)setDropboxVersion:(id)a3;
- (void)setHwFusing:(id)a3;
- (void)setHwRevision:(id)a3;
- (void)setMobileAssetModelNumber:(id)a3;
- (void)setModelNumber:(id)a3;
- (void)setName:(id)a3;
- (void)setPallasAudienceOverride:(id)a3;
- (void)setPartnerSerialNumbers:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)setSupplementalAssetLocation:(id)a3;
- (void)setSupplementalCustomBuild:(id)a3;
- (void)setSupplementalCustomTrain:(id)a3;
@end

@implementation UARPSettingsAccessory

- (UARPSettingsAccessory)initWithDictionary:(id)a3
{
  v80 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v80;
  v80 = 0;
  v78.receiver = v3;
  v78.super_class = UARPSettingsAccessory;
  v80 = [(UARPSettingsAccessory *)&v78 init];
  objc_storeStrong(&v80, v80);
  if (v80)
  {
    v52 = [location[0] objectForKeyedSubscript:@"name"];
    v4 = [v52 copy];
    name = v80->_name;
    v80->_name = v4;

    v53 = [location[0] objectForKeyedSubscript:@"serialNumber"];
    v6 = [v53 copy];
    serialNumber = v80->_serialNumber;
    v80->_serialNumber = v6;

    v54 = [location[0] objectForKeyedSubscript:@"modelNumber"];
    v8 = [v54 copy];
    modelNumber = v80->_modelNumber;
    v80->_modelNumber = v8;

    v55 = [location[0] objectForKeyedSubscript:@"mobileAssetModelNumber"];
    v10 = [v55 copy];
    mobileAssetModelNumber = v80->_mobileAssetModelNumber;
    v80->_mobileAssetModelNumber = v10;

    v56 = [location[0] objectForKeyedSubscript:@"fusing"];
    v12 = [v56 copy];
    hwFusing = v80->_hwFusing;
    v80->_hwFusing = v12;

    v57 = [location[0] objectForKeyedSubscript:@"activeVersion"];
    v14 = [v57 copy];
    activeVersion = v80->_activeVersion;
    v80->_activeVersion = v14;

    v58 = [location[0] objectForKeyedSubscript:@"hwRevision"];
    v16 = [v58 copy];
    hwRevision = v80->_hwRevision;
    v80->_hwRevision = v16;

    v59 = [location[0] objectForKeyedSubscript:@"partnerSerialNumbers"];
    v18 = [v59 copy];
    partnerSerialNumbers = v80->_partnerSerialNumbers;
    v80->_partnerSerialNumbers = v18;

    v60 = [location[0] objectForKeyedSubscript:@"assetLocation"];
    v20 = [v60 copy];
    assetLocation = v80->_assetLocation;
    v80->_assetLocation = v20;

    v61 = [location[0] objectForKeyedSubscript:@"basejumperTrain"];
    v22 = [v61 copy];
    customTrain = v80->_customTrain;
    v80->_customTrain = v22;

    v62 = [location[0] objectForKeyedSubscript:@"basejumperBuild"];
    v24 = [v62 copy];
    customBuild = v80->_customBuild;
    v80->_customBuild = v24;

    v63 = [location[0] objectForKeyedSubscript:@"supplementalAssetLocation"];
    v26 = [v63 copy];
    supplementalAssetLocation = v80->_supplementalAssetLocation;
    v80->_supplementalAssetLocation = v26;

    v64 = [location[0] objectForKeyedSubscript:@"supplementalBasejumperTrain"];
    v28 = [v64 copy];
    supplementalCustomTrain = v80->_supplementalCustomTrain;
    v80->_supplementalCustomTrain = v28;

    v65 = [location[0] objectForKeyedSubscript:@"supplementalBasejumperBuild"];
    v30 = [v65 copy];
    supplementalCustomBuild = v80->_supplementalCustomBuild;
    v80->_supplementalCustomBuild = v30;

    v66 = [location[0] objectForKeyedSubscript:@"isOTADisabled"];
    v32 = [v66 BOOLValue];
    v80->_otaDisabled = v32;

    v67 = [location[0] objectForKeyedSubscript:@"authListingEnabled"];
    v33 = [v67 BOOLValue];
    v80->_authListingEnabled = v33;

    v68 = [location[0] objectForKeyedSubscript:@"personalizationRequired"];
    v34 = [v68 BOOLValue];
    v80->_personalizationRequired = v34;

    v69 = [location[0] objectForKeyedSubscript:@"accessoryReachable"];
    v35 = [v69 BOOLValue];
    v80->_accessoryReachable = v35;

    v70 = [location[0] objectForKeyedSubscript:@"SupportsDeveloperSettings"];
    v36 = [v70 BOOLValue];
    v80->_supportsDeveloperSettings = v36;

    v71 = [location[0] objectForKeyedSubscript:@"downloadedVersion"];
    v37 = [v71 copy];
    downloadedVersion = v80->_downloadedVersion;
    v80->_downloadedVersion = v37;

    v72 = [location[0] objectForKeyedSubscript:@"dropboxVersion"];
    v39 = [v72 copy];
    dropboxVersion = v80->_dropboxVersion;
    v80->_dropboxVersion = v39;

    v73 = [location[0] objectForKeyedSubscript:@"assetURLOverride"];
    v41 = [v73 copy];
    assetURLOverride = v80->_assetURLOverride;
    v80->_assetURLOverride = v41;

    v74 = [location[0] objectForKeyedSubscript:@"pallasSupportEnabled"];
    v43 = [v74 BOOLValue];
    v80->_pallasSupportEnabled = v43;

    v75 = [location[0] objectForKeyedSubscript:@"pallasInternalAsset"];
    v44 = [v75 BOOLValue];
    v80->_pallasInternalAssetVariant = v44;

    v76 = [location[0] objectForKeyedSubscript:@"pallasAudience"];
    v45 = [v76 integerValue];
    v80->_pallasAudience = v45;

    v77 = [location[0] objectForKeyedSubscript:@"pallasAudienceOverride"];
    v46 = [v77 copy];
    pallasAudienceOverride = v80->_pallasAudienceOverride;
    v80->_pallasAudienceOverride = v46;

    v48 = [(UARPSettingsAccessory *)v80 encodeAsDictionary];
    originalSettings = v80->_originalSettings;
    v80->_originalSettings = v48;
  }

  v51 = v80;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v80, 0);
  return v51;
}

- (UARPSettingsAccessory)initWithCoder:(id)a3
{
  v52 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v52;
  v52 = 0;
  v50.receiver = v3;
  v50.super_class = UARPSettingsAccessory;
  v52 = [(UARPSettingsAccessory *)&v50 init];
  objc_storeStrong(&v52, v52);
  if (v52)
  {
    v4 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v52->_name;
    v52->_name = v4;

    v6 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v52->_serialNumber;
    v52->_serialNumber = v6;

    v8 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"modelNumber"];
    modelNumber = v52->_modelNumber;
    v52->_modelNumber = v8;

    v10 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"mobileAssetModelNumber"];
    mobileAssetModelNumber = v52->_mobileAssetModelNumber;
    v52->_mobileAssetModelNumber = v10;

    v12 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"fusing"];
    hwFusing = v52->_hwFusing;
    v52->_hwFusing = v12;

    v14 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"activeVersion"];
    activeVersion = v52->_activeVersion;
    v52->_activeVersion = v14;

    v16 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"hwRevision"];
    hwRevision = v52->_hwRevision;
    v52->_hwRevision = v16;

    v18 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"partnerSerialNumbers"];
    partnerSerialNumbers = v52->_partnerSerialNumbers;
    v52->_partnerSerialNumbers = v18;

    v20 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetLocation"];
    assetLocation = v52->_assetLocation;
    v52->_assetLocation = v20;

    v22 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"basejumperTrain"];
    customTrain = v52->_customTrain;
    v52->_customTrain = v22;

    v24 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"basejumperBuild"];
    customBuild = v52->_customBuild;
    v52->_customBuild = v24;

    v26 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"supplementalAssetLocation"];
    supplementalAssetLocation = v52->_supplementalAssetLocation;
    v52->_supplementalAssetLocation = v26;

    v28 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperTrain"];
    supplementalCustomTrain = v52->_supplementalCustomTrain;
    v52->_supplementalCustomTrain = v28;

    v30 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"supplementalBasejumperBuild"];
    supplementalCustomBuild = v52->_supplementalCustomBuild;
    v52->_supplementalCustomBuild = v30;

    v32 = [location[0] decodeBoolForKey:@"isOTADisabled"];
    v52->_otaDisabled = v32;
    v33 = [location[0] decodeBoolForKey:@"authListingEnabled"];
    v52->_authListingEnabled = v33;
    v34 = [location[0] decodeBoolForKey:@"personalizationRequired"];
    v52->_personalizationRequired = v34;
    v35 = [location[0] decodeBoolForKey:@"accessoryReachable"];
    v52->_accessoryReachable = v35;
    v36 = [location[0] decodeBoolForKey:@"SupportsDeveloperSettings"];
    v52->_supportsDeveloperSettings = v36;
    v37 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"downloadedVersion"];
    downloadedVersion = v52->_downloadedVersion;
    v52->_downloadedVersion = v37;

    v39 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"dropboxVersion"];
    dropboxVersion = v52->_dropboxVersion;
    v52->_dropboxVersion = v39;

    v41 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"assetURLOverride"];
    assetURLOverride = v52->_assetURLOverride;
    v52->_assetURLOverride = v41;

    v43 = [location[0] decodeIntegerForKey:@"pallasAudience"];
    v52->_pallasAudience = v43;
    v44 = [location[0] decodeBoolForKey:@"pallasSupportEnabled"];
    v52->_pallasSupportEnabled = v44;
    v45 = [location[0] decodeBoolForKey:@"pallasInternalAsset"];
    v52->_pallasInternalAssetVariant = v45;
    v46 = [location[0] decodeObjectOfClass:objc_opt_class() forKey:@"pallasAudienceOverride"];
    pallasAudienceOverride = v52->_pallasAudienceOverride;
    v52->_pallasAudienceOverride = v46;
  }

  v49 = v52;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v52, 0);
  return v49;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] encodeObject:v4->_name forKey:@"name"];
  [location[0] encodeObject:v4->_serialNumber forKey:@"serialNumber"];
  [location[0] encodeObject:v4->_modelNumber forKey:@"modelNumber"];
  [location[0] encodeObject:v4->_mobileAssetModelNumber forKey:@"mobileAssetModelNumber"];
  [location[0] encodeObject:v4->_hwFusing forKey:@"fusing"];
  [location[0] encodeObject:v4->_activeVersion forKey:@"activeVersion"];
  [location[0] encodeObject:v4->_hwRevision forKey:@"hwRevision"];
  [location[0] encodeObject:v4->_partnerSerialNumbers forKey:@"partnerSerialNumbers"];
  [location[0] encodeObject:v4->_assetLocation forKey:@"assetLocation"];
  [location[0] encodeObject:v4->_customTrain forKey:@"basejumperTrain"];
  [location[0] encodeObject:v4->_customBuild forKey:@"basejumperBuild"];
  [location[0] encodeObject:v4->_supplementalAssetLocation forKey:@"supplementalAssetLocation"];
  [location[0] encodeObject:v4->_supplementalCustomTrain forKey:@"supplementalBasejumperTrain"];
  [location[0] encodeObject:v4->_supplementalCustomBuild forKey:@"supplementalBasejumperBuild"];
  [location[0] encodeBool:v4->_otaDisabled forKey:@"isOTADisabled"];
  [location[0] encodeBool:v4->_authListingEnabled forKey:@"authListingEnabled"];
  [location[0] encodeBool:v4->_personalizationRequired forKey:@"personalizationRequired"];
  [location[0] encodeBool:v4->_accessoryReachable forKey:@"accessoryReachable"];
  [location[0] encodeBool:v4->_supportsDeveloperSettings forKey:@"SupportsDeveloperSettings"];
  [location[0] encodeObject:v4->_downloadedVersion forKey:@"downloadedVersion"];
  [location[0] encodeObject:v4->_dropboxVersion forKey:@"dropboxVersion"];
  [location[0] encodeObject:v4->_assetURLOverride forKey:@"assetURLOverride"];
  [location[0] encodeInteger:v4->_pallasAudience forKey:@"pallasAudience"];
  [location[0] encodeBool:v4->_pallasSupportEnabled forKey:@"pallasSupportEnabled"];
  [location[0] encodeBool:v4->_pallasInternalAssetVariant forKey:@"pallasInternalAsset"];
  [location[0] encodeObject:v4->_pallasAudienceOverride forKey:@"pallasAudienceOverride"];
  objc_storeStrong(location, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7[3] = self;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v3 = [UARPSettingsAccessory alloc];
  v6 = [(UARPSettingsAccessory *)v3 initWithDictionary:v7[0]];
  v5 = v6;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
  return v5;
}

- (BOOL)isFusingEqual:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5->_hwFusing)
  {
    v6 = [(NSString *)v5->_hwFusing caseInsensitiveCompare:location[0]]== NSOrderedSame;
  }

  else
  {
    v6 = location[0] == 0;
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8 == location[0])
    {
      v9 = 1;
      v6 = 1;
    }

    else
    {
      v5 = [(UARPSettingsAccessory *)v8 encodeAsDictionary];
      v4 = [location[0] encodeAsDictionary];
      v9 = [v5 isEqualToDictionary:v4] == 1;
      v6 = 1;
      objc_storeStrong(&v4, 0);
      objc_storeStrong(&v5, 0);
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
  v32 = self;
  v31[1] = a2;
  v31[0] = objc_opt_new();
  if ([(NSString *)v32->_name length])
  {
    v30 = [(NSString *)v32->_name copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_serialNumber length])
  {
    v29 = [(NSString *)v32->_serialNumber copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_modelNumber length])
  {
    v28 = [(NSString *)v32->_modelNumber copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_mobileAssetModelNumber length])
  {
    v27 = [(NSString *)v32->_mobileAssetModelNumber copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_hwFusing length])
  {
    v26 = [(NSString *)v32->_hwFusing copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_activeVersion length])
  {
    v25 = [(NSString *)v32->_activeVersion copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_hwRevision length])
  {
    v24 = [(NSString *)v32->_hwRevision copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSArray *)v32->_partnerSerialNumbers count])
  {
    v23 = [(NSArray *)v32->_partnerSerialNumbers copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_assetLocation length])
  {
    v22 = [(NSString *)v32->_assetLocation copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_customTrain length])
  {
    v21 = [(NSString *)v32->_customTrain copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_customBuild length])
  {
    v20 = [(NSString *)v32->_customBuild copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_supplementalAssetLocation length])
  {
    v19 = [(NSString *)v32->_supplementalAssetLocation copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_supplementalCustomTrain length])
  {
    v18 = [(NSString *)v32->_supplementalCustomTrain copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_supplementalCustomBuild length])
  {
    v17 = [(NSString *)v32->_supplementalCustomBuild copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  v12 = [NSNumber numberWithBool:v32->_otaDisabled];
  [v31[0] setObject:? forKeyedSubscript:?];

  v13 = [NSNumber numberWithBool:v32->_authListingEnabled];
  [v31[0] setObject:? forKeyedSubscript:?];

  v14 = [NSNumber numberWithBool:v32->_personalizationRequired];
  [v31[0] setObject:? forKeyedSubscript:?];

  v15 = [NSNumber numberWithBool:v32->_accessoryReachable];
  [v31[0] setObject:? forKeyedSubscript:?];

  v16 = [NSNumber numberWithBool:v32->_supportsDeveloperSettings];
  [v31[0] setObject:? forKeyedSubscript:?];

  if ([(NSString *)v32->_downloadedVersion length])
  {
    v11 = [(NSString *)v32->_downloadedVersion copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_dropboxVersion length])
  {
    v10 = [(NSString *)v32->_dropboxVersion copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  if ([(NSString *)v32->_assetURLOverride length])
  {
    v9 = [(NSString *)v32->_assetURLOverride copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  v6 = [NSNumber numberWithBool:v32->_pallasSupportEnabled];
  [v31[0] setObject:? forKeyedSubscript:?];

  v7 = [NSNumber numberWithBool:v32->_pallasInternalAssetVariant];
  [v31[0] setObject:? forKeyedSubscript:?];

  v8 = [NSNumber numberWithUnsignedInteger:v32->_pallasAudience];
  [v31[0] setObject:? forKeyedSubscript:?];

  if ([(NSString *)v32->_pallasAudienceOverride length])
  {
    v5 = [(NSString *)v32->_pallasAudienceOverride copy];
    [v31[0] setObject:? forKeyedSubscript:?];
  }

  v4 = [NSDictionary dictionaryWithDictionary:v31[0], v31];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)encodeAsChangedDictionary
{
  v23 = self;
  v22[1] = a2;
  v22[0] = [(UARPSettingsAccessory *)self encodeAsDictionary];
  location = objc_opt_new();
  v5 = v22[0];
  v14 = _NSConcreteStackBlock;
  v15 = -1073741824;
  v16 = 0;
  v17 = __50__UARPSettingsAccessory_encodeAsChangedDictionary__block_invoke;
  v18 = &unk_100034450;
  v19 = v23;
  v20 = location;
  [v5 enumerateKeysAndObjectsUsingBlock:&v14];
  originalSettings = v23->_originalSettings;
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

- (void)setName:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  name = v6->_name;
  v6->_name = v3;

  objc_storeStrong(location, 0);
}

- (void)setSerialNumber:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  serialNumber = v6->_serialNumber;
  v6->_serialNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setModelNumber:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  modelNumber = v6->_modelNumber;
  v6->_modelNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setMobileAssetModelNumber:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  mobileAssetModelNumber = v6->_mobileAssetModelNumber;
  v6->_mobileAssetModelNumber = v3;

  objc_storeStrong(location, 0);
}

- (void)setHwFusing:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  hwFusing = v6->_hwFusing;
  v6->_hwFusing = v3;

  objc_storeStrong(location, 0);
}

- (void)setHwRevision:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  hwRevision = v6->_hwRevision;
  v6->_hwRevision = v3;

  objc_storeStrong(location, 0);
}

- (void)setActiveVersion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  activeVersion = v6->_activeVersion;
  v6->_activeVersion = v3;

  objc_storeStrong(location, 0);
}

- (void)setPartnerSerialNumbers:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  partnerSerialNumbers = v6->_partnerSerialNumbers;
  v6->_partnerSerialNumbers = v3;

  objc_storeStrong(location, 0);
}

- (void)setAssetLocation:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  assetLocation = v6->_assetLocation;
  v6->_assetLocation = v3;

  objc_storeStrong(location, 0);
}

- (void)setCustomTrain:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  customTrain = v6->_customTrain;
  v6->_customTrain = v3;

  objc_storeStrong(location, 0);
}

- (void)setCustomBuild:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  customBuild = v6->_customBuild;
  v6->_customBuild = v3;

  objc_storeStrong(location, 0);
}

- (void)setSupplementalAssetLocation:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  supplementalAssetLocation = v6->_supplementalAssetLocation;
  v6->_supplementalAssetLocation = v3;

  objc_storeStrong(location, 0);
}

- (void)setSupplementalCustomTrain:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  supplementalCustomTrain = v6->_supplementalCustomTrain;
  v6->_supplementalCustomTrain = v3;

  objc_storeStrong(location, 0);
}

- (void)setSupplementalCustomBuild:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  supplementalCustomBuild = v6->_supplementalCustomBuild;
  v6->_supplementalCustomBuild = v3;

  objc_storeStrong(location, 0);
}

- (void)setDownloadedVersion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  downloadedVersion = v6->_downloadedVersion;
  v6->_downloadedVersion = v3;

  objc_storeStrong(location, 0);
}

- (void)setDropboxVersion:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  dropboxVersion = v6->_dropboxVersion;
  v6->_dropboxVersion = v3;

  objc_storeStrong(location, 0);
}

- (void)setAssetURLOverride:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  assetURLOverride = v6->_assetURLOverride;
  v6->_assetURLOverride = v3;

  objc_storeStrong(location, 0);
}

- (void)setPallasAudienceOverride:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] copy];
  pallasAudienceOverride = v6->_pallasAudienceOverride;
  v6->_pallasAudienceOverride = v3;

  objc_storeStrong(location, 0);
}

- (id)description
{
  v3 = [(UARPSettingsAccessory *)self encodeAsDictionary];
  v4 = [NSString stringWithFormat:@"%@", v3];

  return v4;
}

@end