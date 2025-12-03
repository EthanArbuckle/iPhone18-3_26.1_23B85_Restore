@interface FMDSupportedAccessory
- (BOOL)isEqual:(id)equal;
- (FMDSupportedAccessory)init;
- (FMDSupportedAccessory)initWithCoder:(id)coder;
- (FMDSupportedAccessory)initWithDictionary:(id)dictionary assetRegistry:(id)registry;
- (FMDSupportedAccessory)initWithType:(id)type locationInfo:(id)info;
- (FMDSupportedAccessory)initWithVendorID:(unsigned __int16)d productID:(unsigned int)iD profile:(int64_t)profile assets:(id)assets;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)profileForProfileName:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)unmarshallAssets:(id)assets assetRegistry:(id)registry;
@end

@implementation FMDSupportedAccessory

- (FMDSupportedAccessory)initWithDictionary:(id)dictionary assetRegistry:(id)registry
{
  dictionaryCopy = dictionary;
  registryCopy = registry;
  v8 = [(FMDSupportedAccessory *)self init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"assets"];
    [(FMDSupportedAccessory *)v8 unmarshallAssets:v9 assetRegistry:registryCopy];
    v10 = [dictionaryCopy objectForKeyedSubscript:@"vendorId"];
    v8->_vendorID = [v10 intValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"productId"];
    v8->_productID = [v11 intValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
    productType = v12;
    if (!v12)
    {
      productType = v8->_productType;
    }

    [(FMDSupportedAccessory *)v8 setProductType:productType];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"maxHistoricalLocations"];
    maximumHistoricalLocations = v14;
    if (!v14)
    {
      maximumHistoricalLocations = v8->_maximumHistoricalLocations;
    }

    [(FMDSupportedAccessory *)v8 setMaximumHistoricalLocations:maximumHistoricalLocations];

    v16 = [dictionaryCopy objectForKeyedSubscript:@"longTermLocationExpiry"];
    longTermlocationExpiryTimeInterval = v16;
    if (!v16)
    {
      longTermlocationExpiryTimeInterval = v8->_longTermlocationExpiryTimeInterval;
    }

    [(FMDSupportedAccessory *)v8 setLongTermlocationExpiryTimeInterval:longTermlocationExpiryTimeInterval];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"shortTermLocationExpiry"];
    shortTermlocationExpiryTimeInterval = v18;
    if (!v18)
    {
      shortTermlocationExpiryTimeInterval = v8->_shortTermlocationExpiryTimeInterval;
    }

    [(FMDSupportedAccessory *)v8 setShortTermlocationExpiryTimeInterval:shortTermlocationExpiryTimeInterval];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"locationThrottleRatio"];
    locationThrottleRatio = v20;
    if (!v20)
    {
      locationThrottleRatio = v8->_locationThrottleRatio;
    }

    [(FMDSupportedAccessory *)v8 setLocationThrottleRatio:locationThrottleRatio];

    v22 = [dictionaryCopy objectForKeyedSubscript:@"locateTimeout"];
    locateTimeout = v22;
    if (!v22)
    {
      locateTimeout = v8->_locateTimeout;
    }

    [(FMDSupportedAccessory *)v8 setLocateTimeout:locateTimeout];

    v24 = [dictionaryCopy objectForKeyedSubscript:@"desiredAccuracy"];
    desiredAccuracy = v24;
    if (!v24)
    {
      desiredAccuracy = v8->_desiredAccuracy;
    }

    [(FMDSupportedAccessory *)v8 setDesiredAccuracy:desiredAccuracy];

    v26 = [dictionaryCopy objectForKeyedSubscript:@"startThreshold"];
    startThreshold = v26;
    if (!v26)
    {
      startThreshold = v8->_startThreshold;
    }

    [(FMDSupportedAccessory *)v8 setStartThreshold:startThreshold];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"endThreshold"];
    endThreshold = v28;
    if (!v28)
    {
      endThreshold = v8->_endThreshold;
    }

    [(FMDSupportedAccessory *)v8 setEndThreshold:endThreshold];

    v30 = [dictionaryCopy objectForKeyedSubscript:@"decayFactor"];
    decayFactor = v30;
    if (!v30)
    {
      decayFactor = v8->_decayFactor;
    }

    [(FMDSupportedAccessory *)v8 setDecayFactor:decayFactor];

    v32 = [dictionaryCopy objectForKeyedSubscript:@"cachedLocValidityDuration"];
    cachedLocValidityDuration = v32;
    if (!v32)
    {
      cachedLocValidityDuration = v8->_cachedLocValidityDuration;
    }

    [(FMDSupportedAccessory *)v8 setCachedLocValidityDuration:cachedLocValidityDuration];

    v34 = [dictionaryCopy objectForKeyedSubscript:@"advertisementStatusKey"];
    [(FMDSupportedAccessory *)v8 setProfile:[(FMDSupportedAccessory *)v8 profileForProfileName:v34]];
    v35 = [[FMDAccessoryIdentifier alloc] initWithVendorID:v8->_vendorID productID:v8->_productID];
    [(FMDSupportedAccessory *)v8 setAccessoryIdentifier:v35];
  }

  return v8;
}

- (FMDSupportedAccessory)initWithType:(id)type locationInfo:(id)info
{
  typeCopy = type;
  infoCopy = info;
  v8 = [(FMDSupportedAccessory *)self init];
  v9 = v8;
  if (v8)
  {
    productType = typeCopy;
    if (!typeCopy)
    {
      productType = v8->_productType;
    }

    [(FMDSupportedAccessory *)v8 setProductType:productType];
    v11 = [infoCopy objectForKeyedSubscript:@"maxHistoricalLocations"];
    maximumHistoricalLocations = v11;
    if (!v11)
    {
      maximumHistoricalLocations = v9->_maximumHistoricalLocations;
    }

    [(FMDSupportedAccessory *)v9 setMaximumHistoricalLocations:maximumHistoricalLocations];

    v13 = [infoCopy objectForKeyedSubscript:@"longTermLocationExpiry"];
    longTermlocationExpiryTimeInterval = v13;
    if (!v13)
    {
      longTermlocationExpiryTimeInterval = v9->_longTermlocationExpiryTimeInterval;
    }

    [(FMDSupportedAccessory *)v9 setLongTermlocationExpiryTimeInterval:longTermlocationExpiryTimeInterval];

    v15 = [infoCopy objectForKeyedSubscript:@"shortTermLocationExpiry"];
    shortTermlocationExpiryTimeInterval = v15;
    if (!v15)
    {
      shortTermlocationExpiryTimeInterval = v9->_shortTermlocationExpiryTimeInterval;
    }

    [(FMDSupportedAccessory *)v9 setShortTermlocationExpiryTimeInterval:shortTermlocationExpiryTimeInterval];

    v17 = [infoCopy objectForKeyedSubscript:@"locationThrottleRatio"];
    locationThrottleRatio = v17;
    if (!v17)
    {
      locationThrottleRatio = v9->_locationThrottleRatio;
    }

    [(FMDSupportedAccessory *)v9 setLocationThrottleRatio:locationThrottleRatio];

    v19 = [infoCopy objectForKeyedSubscript:@"locateTimeout"];
    locateTimeout = v19;
    if (!v19)
    {
      locateTimeout = v9->_locateTimeout;
    }

    [(FMDSupportedAccessory *)v9 setLocateTimeout:locateTimeout];

    v21 = [infoCopy objectForKeyedSubscript:@"desiredAccuracy"];
    desiredAccuracy = v21;
    if (!v21)
    {
      desiredAccuracy = v9->_desiredAccuracy;
    }

    [(FMDSupportedAccessory *)v9 setDesiredAccuracy:desiredAccuracy];

    v23 = [infoCopy objectForKeyedSubscript:@"startThreshold"];
    startThreshold = v23;
    if (!v23)
    {
      startThreshold = v9->_startThreshold;
    }

    [(FMDSupportedAccessory *)v9 setStartThreshold:startThreshold];

    v25 = [infoCopy objectForKeyedSubscript:@"endThreshold"];
    endThreshold = v25;
    if (!v25)
    {
      endThreshold = v9->_endThreshold;
    }

    [(FMDSupportedAccessory *)v9 setEndThreshold:endThreshold];

    v27 = [infoCopy objectForKeyedSubscript:@"decayFactor"];
    decayFactor = v27;
    if (!v27)
    {
      decayFactor = v9->_decayFactor;
    }

    [(FMDSupportedAccessory *)v9 setDecayFactor:decayFactor];

    v29 = [infoCopy objectForKeyedSubscript:@"cachedLocValidityDuration"];
    cachedLocValidityDuration = v29;
    if (!v29)
    {
      cachedLocValidityDuration = v9->_cachedLocValidityDuration;
    }

    [(FMDSupportedAccessory *)v9 setCachedLocValidityDuration:cachedLocValidityDuration];
  }

  return v9;
}

- (FMDSupportedAccessory)initWithVendorID:(unsigned __int16)d productID:(unsigned int)iD profile:(int64_t)profile assets:(id)assets
{
  assetsCopy = assets;
  v11 = [(FMDSupportedAccessory *)self init];
  v12 = v11;
  if (v11)
  {
    v11->_vendorID = d;
    v11->_productID = iD;
    v13 = [[FMDAccessoryIdentifier alloc] initWithVendorID:v11->_vendorID productID:v11->_productID];
    [(FMDSupportedAccessory *)v12 setAccessoryIdentifier:v13];

    [(FMDSupportedAccessory *)v12 setProfile:profile];
    [(FMDSupportedAccessory *)v12 setAssets:assetsCopy];
  }

  return v12;
}

- (FMDSupportedAccessory)init
{
  v5.receiver = self;
  v5.super_class = FMDSupportedAccessory;
  v2 = [(FMDSupportedAccessory *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FMDSupportedAccessory *)v2 setMaximumHistoricalLocations:&off_1002E7948];
    [(FMDSupportedAccessory *)v3 setShortTermlocationExpiryTimeInterval:&off_1002E7960];
    [(FMDSupportedAccessory *)v3 setLongTermlocationExpiryTimeInterval:&off_1002E7978];
    [(FMDSupportedAccessory *)v3 setLocationThrottleRatio:&off_1002E7D10];
    [(FMDSupportedAccessory *)v3 setLocateTimeout:&off_1002E7990];
    [(FMDSupportedAccessory *)v3 setDesiredAccuracy:&off_1002E79A8];
    [(FMDSupportedAccessory *)v3 setStartThreshold:&off_1002E8D38];
    [(FMDSupportedAccessory *)v3 setEndThreshold:&off_1002E8D48];
    [(FMDSupportedAccessory *)v3 setDecayFactor:&off_1002E8D58];
    [(FMDSupportedAccessory *)v3 setCachedLocValidityDuration:&off_1002E7D20];
    [(FMDSupportedAccessory *)v3 setProfile:1];
  }

  return v3;
}

- (void)unmarshallAssets:(id)assets assetRegistry:(id)registry
{
  assetsCopy = assets;
  registryCopy = registry;
  v8 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = assetsCopy;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [registryCopy newAssetWithDictionary:{*(*(&v15 + 1) + 8 * v13), v15}];
        [v8 fm_safeAddObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(FMDSupportedAccessory *)self setAssets:v8];
}

- (int64_t)profileForProfileName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AirPods"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"Frost"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  vendorID = self->_vendorID;
  coderCopy = coder;
  [coderCopy encodeInt:vendorID forKey:@"vendorId"];
  [coderCopy encodeInt:self->_productID forKey:@"productId"];
  productType = self->_productType;
  v7 = NSStringFromSelector("productType");
  [coderCopy encodeObject:productType forKey:v7];

  assets = self->_assets;
  v9 = NSStringFromSelector("assets");
  [coderCopy encodeObject:assets forKey:v9];

  maximumHistoricalLocations = self->_maximumHistoricalLocations;
  v11 = NSStringFromSelector("maximumHistoricalLocations");
  [coderCopy encodeObject:maximumHistoricalLocations forKey:v11];

  longTermlocationExpiryTimeInterval = self->_longTermlocationExpiryTimeInterval;
  v13 = NSStringFromSelector("longTermlocationExpiryTimeInterval");
  [coderCopy encodeObject:longTermlocationExpiryTimeInterval forKey:v13];

  shortTermlocationExpiryTimeInterval = self->_shortTermlocationExpiryTimeInterval;
  v15 = NSStringFromSelector("shortTermlocationExpiryTimeInterval");
  [coderCopy encodeObject:shortTermlocationExpiryTimeInterval forKey:v15];

  locationThrottleRatio = self->_locationThrottleRatio;
  v17 = NSStringFromSelector("locationThrottleRatio");
  [coderCopy encodeObject:locationThrottleRatio forKey:v17];

  locateTimeout = self->_locateTimeout;
  v19 = NSStringFromSelector("locateTimeout");
  [coderCopy encodeObject:locateTimeout forKey:v19];

  startThreshold = self->_startThreshold;
  v21 = NSStringFromSelector("startThreshold");
  [coderCopy encodeObject:startThreshold forKey:v21];

  endThreshold = self->_endThreshold;
  v23 = NSStringFromSelector("endThreshold");
  [coderCopy encodeObject:endThreshold forKey:v23];

  decayFactor = self->_decayFactor;
  v25 = NSStringFromSelector("decayFactor");
  [coderCopy encodeObject:decayFactor forKey:v25];

  cachedLocValidityDuration = self->_cachedLocValidityDuration;
  v27 = NSStringFromSelector("cachedLocValidityDuration");
  [coderCopy encodeObject:cachedLocValidityDuration forKey:v27];

  desiredAccuracy = self->_desiredAccuracy;
  v29 = NSStringFromSelector("desiredAccuracy");
  [coderCopy encodeObject:desiredAccuracy forKey:v29];

  v31 = [NSNumber numberWithInteger:self->_profile];
  v30 = NSStringFromSelector("profile");
  [coderCopy encodeObject:v31 forKey:v30];
}

- (FMDSupportedAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FMDSupportedAccessory *)self init];
  if (v5)
  {
    v5->_vendorID = [coderCopy decodeIntForKey:@"vendorId"];
    v5->_productID = [coderCopy decodeIntForKey:@"productId"];
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("productType");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    productType = v8;
    if (!v8)
    {
      productType = v5->_productType;
    }

    objc_storeStrong(&v5->_productType, productType);

    v10 = objc_opt_class();
    v11 = NSStringFromSelector("assets");
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    assets = v5->_assets;
    v5->_assets = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector("maximumHistoricalLocations");
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    maximumHistoricalLocations = v16;
    if (!v16)
    {
      maximumHistoricalLocations = v5->_maximumHistoricalLocations;
    }

    objc_storeStrong(&v5->_maximumHistoricalLocations, maximumHistoricalLocations);

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("longTermlocationExpiryTimeInterval");
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    longTermlocationExpiryTimeInterval = v20;
    if (!v20)
    {
      longTermlocationExpiryTimeInterval = v5->_longTermlocationExpiryTimeInterval;
    }

    objc_storeStrong(&v5->_longTermlocationExpiryTimeInterval, longTermlocationExpiryTimeInterval);

    v22 = objc_opt_class();
    v23 = NSStringFromSelector("shortTermlocationExpiryTimeInterval");
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    shortTermlocationExpiryTimeInterval = v24;
    if (!v24)
    {
      shortTermlocationExpiryTimeInterval = v5->_shortTermlocationExpiryTimeInterval;
    }

    objc_storeStrong(&v5->_shortTermlocationExpiryTimeInterval, shortTermlocationExpiryTimeInterval);

    v26 = objc_opt_class();
    v27 = NSStringFromSelector("locationThrottleRatio");
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    locationThrottleRatio = v28;
    if (!v28)
    {
      locationThrottleRatio = v5->_locationThrottleRatio;
    }

    objc_storeStrong(&v5->_locationThrottleRatio, locationThrottleRatio);

    v30 = objc_opt_class();
    v31 = NSStringFromSelector("locateTimeout");
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    locateTimeout = v32;
    if (!v32)
    {
      locateTimeout = v5->_locateTimeout;
    }

    objc_storeStrong(&v5->_locateTimeout, locateTimeout);

    v34 = objc_opt_class();
    v35 = NSStringFromSelector("startThreshold");
    v36 = [coderCopy decodeObjectOfClass:v34 forKey:v35];
    startThreshold = v36;
    if (!v36)
    {
      startThreshold = v5->_startThreshold;
    }

    objc_storeStrong(&v5->_startThreshold, startThreshold);

    v38 = objc_opt_class();
    v39 = NSStringFromSelector("endThreshold");
    v40 = [coderCopy decodeObjectOfClass:v38 forKey:v39];
    endThreshold = v40;
    if (!v40)
    {
      endThreshold = v5->_endThreshold;
    }

    objc_storeStrong(&v5->_endThreshold, endThreshold);

    v42 = objc_opt_class();
    v43 = NSStringFromSelector("decayFactor");
    v44 = [coderCopy decodeObjectOfClass:v42 forKey:v43];
    decayFactor = v44;
    if (!v44)
    {
      decayFactor = v5->_decayFactor;
    }

    objc_storeStrong(&v5->_decayFactor, decayFactor);

    v46 = objc_opt_class();
    v47 = NSStringFromSelector("cachedLocValidityDuration");
    v48 = [coderCopy decodeObjectOfClass:v46 forKey:v47];
    cachedLocValidityDuration = v48;
    if (!v48)
    {
      cachedLocValidityDuration = v5->_cachedLocValidityDuration;
    }

    objc_storeStrong(&v5->_cachedLocValidityDuration, cachedLocValidityDuration);

    v50 = objc_opt_class();
    v51 = NSStringFromSelector("desiredAccuracy");
    v52 = [coderCopy decodeObjectOfClass:v50 forKey:v51];
    desiredAccuracy = v52;
    if (!v52)
    {
      desiredAccuracy = v5->_desiredAccuracy;
    }

    objc_storeStrong(&v5->_desiredAccuracy, desiredAccuracy);

    v54 = objc_opt_class();
    v55 = NSStringFromSelector("profile");
    v56 = [coderCopy decodeObjectOfClass:v54 forKey:v55];
    profile = [v56 integerValue];
    if (!profile)
    {
      profile = v5->_profile;
    }

    v5->_profile = profile;

    v58 = [[FMDAccessoryIdentifier alloc] initWithVendorID:v5->_vendorID productID:v5->_productID];
    [(FMDSupportedAccessory *)v5 setAccessoryIdentifier:v58];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FMDSupportedAccessory allocWithZone:zone];
  vendorID = self->_vendorID;
  productID = self->_productID;
  profile = [(FMDSupportedAccessory *)self profile];

  return [(FMDSupportedAccessory *)v4 initWithVendorID:vendorID productID:productID profile:profile];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      vendorID = [(FMDSupportedAccessory *)self vendorID];
      if (vendorID == [(FMDSupportedAccessory *)v5 vendorID])
      {
        productID = [(FMDSupportedAccessory *)self productID];
        v8 = productID == [(FMDSupportedAccessory *)v5 productID];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end