@interface NIHomeDeviceConfiguration
- (BOOL)canUpdateToConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NIHomeDeviceConfiguration)init;
- (NIHomeDeviceConfiguration)initWithAllowedDevices:(unint64_t)devices sessionKey:(id)key asAnchor:(BOOL)anchor regions:(id)regions;
- (NIHomeDeviceConfiguration)initWithCoder:(id)coder;
- (NIHomeDeviceConfiguration)initWithRegions:(id)regions;
- (NSArray)monitoredRegions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)_updateRegionDescription;
- (void)encodeWithCoder:(id)coder;
- (void)setMonitoredRegions:(id)regions;
@end

@implementation NIHomeDeviceConfiguration

- (NIHomeDeviceConfiguration)init
{
  v6.receiver = self;
  v6.super_class = NIHomeDeviceConfiguration;
  initInternal = [(NIConfiguration *)&v6 initInternal];
  v3 = initInternal;
  if (initInternal)
  {
    initInternal->_allowedDevices = 4;
    sessionKey = initInternal->_sessionKey;
    initInternal->_sessionKey = 0;

    v3->_anchor = 0;
    v3->_minimumPreferredUpdatedRate = 3;
    v3->_antennaDiversityOverride = 0;
    [(NIHomeDeviceConfiguration *)v3 setMonitoredRegions:&__NSArray0__struct];
  }

  return v3;
}

- (NIHomeDeviceConfiguration)initWithRegions:(id)regions
{
  regionsCopy = regions;
  v5 = objc_alloc_init(objc_opt_class());

  [(NIHomeDeviceConfiguration *)v5 setMonitoredRegions:regionsCopy];
  return v5;
}

- (NIHomeDeviceConfiguration)initWithAllowedDevices:(unint64_t)devices sessionKey:(id)key asAnchor:(BOOL)anchor regions:(id)regions
{
  keyCopy = key;
  regionsCopy = regions;
  v13 = objc_alloc_init(objc_opt_class());

  if (v13)
  {
    v13->_allowedDevices = devices;
    objc_storeStrong(&v13->_sessionKey, key);
    v13->_anchor = anchor;
    [(NIHomeDeviceConfiguration *)v13 setMonitoredRegions:regionsCopy];
  }

  return v13;
}

- (void)setMonitoredRegions:(id)regions
{
  objc_storeStrong(&self->_monitoredRegions, regions);

  [(NIHomeDeviceConfiguration *)self _updateRegionDescription];
}

- (NSArray)monitoredRegions
{
  v2 = [[NSArray alloc] initWithArray:self->_monitoredRegions copyItems:1];

  return v2;
}

- (void)_updateRegionDescription
{
  if ([(NSArray *)self->_monitoredRegions count])
  {
    v3 = objc_opt_new();
    monitoredRegions = self->_monitoredRegions;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10032895C;
    v9[3] = &unk_1009A5240;
    v5 = v3;
    v10 = v5;
    [(NSArray *)monitoredRegions enumerateObjectsUsingBlock:v9];
    regionDescription = self->_regionDescription;
    self->_regionDescription = v5;
    v7 = v5;
  }

  else
  {
    v8 = self->_regionDescription;
    self->_regionDescription = @"[none]";
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = NIHomeDeviceConfiguration;
  v5 = [(NIConfiguration *)&v9 copyWithZone:?];
  [v5 setAllowedDevices:self->_allowedDevices];
  [v5 setSessionKey:self->_sessionKey];
  [v5 setAnchor:self->_anchor];
  [v5 setAntennaDiversityOverride:self->_antennaDiversityOverride];
  [v5 setMinimumPreferredUpdatedRate:self->_minimumPreferredUpdatedRate];
  if (self->_monitoredRegions)
  {
    v6 = [[NSArray allocWithZone:?]copyItems:"initWithArray:copyItems:", self->_monitoredRegions, 1];
    v7 = v5[4];
    v5[4] = v6;
  }

  objc_storeStrong(v5 + 5, self->_regionDescription);
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = NIHomeDeviceConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_allowedDevices forKey:@"allowedDevices"];
  [coderCopy encodeObject:self->_sessionKey forKey:@"sessionKey"];
  [coderCopy encodeBool:self->_anchor forKey:@"anchor"];
  [coderCopy encodeInteger:self->_antennaDiversityOverride forKey:@"antennaDiversityOverride"];
  [coderCopy encodeObject:self->_monitoredRegions forKey:@"monitoredRegions"];
  [coderCopy encodeInteger:self->_minimumPreferredUpdatedRate forKey:@"minimumPreferredUpdatedRate"];
}

- (NIHomeDeviceConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NIHomeDeviceConfiguration;
  v5 = [(NIConfiguration *)&v16 initWithCoder:coderCopy];
  if (v5 && (v6 = [coderCopy decodeIntegerForKey:@"allowedDevices"], +[NIInternalUtils isIntValidRelationshipSpecifier:](NIInternalUtils, "isIntValidRelationshipSpecifier:", v6)))
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionKey"];
    v8 = [coderCopy decodeBoolForKey:@"anchor"];
    v9 = [coderCopy decodeIntegerForKey:@"antennaDiversityOverride"];
    if ([NIInternalUtils isIntValidAntennaDiversityOverride:v9])
    {
      v17[0] = objc_opt_class();
      v17[1] = objc_opt_class();
      v10 = [NSArray arrayWithObjects:v17 count:2];
      v11 = [NSSet setWithArray:v10];
      v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"monitoredRegions"];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (v13 = [coderCopy decodeIntegerForKey:@"minimumPreferredUpdatedRate"], +[NIInternalUtils isIntValidNearbyObjectUpdateRate:](NIInternalUtils, "isIntValidNearbyObjectUpdateRate:", v13)))
      {
        v5->_allowedDevices = v6;
        objc_storeStrong(&v5->_sessionKey, v7);
        v5->_anchor = v8;
        v5->_antennaDiversityOverride = v9;
        objc_storeStrong(&v5->_monitoredRegions, v12);
        [(NIHomeDeviceConfiguration *)v5 _updateRegionDescription];
        v5->_minimumPreferredUpdatedRate = v13;
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)canUpdateToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (!configurationCopy)
  {
    goto LABEL_21;
  }

  if (self != configurationCopy)
  {
    allowedDevices = [(NIHomeDeviceConfiguration *)configurationCopy allowedDevices];
    allowedDevices = self->_allowedDevices;
    isAnchor = [(NIHomeDeviceConfiguration *)v5 isAnchor];
    anchor = self->_anchor;
    antennaDiversityOverride = [(NIHomeDeviceConfiguration *)v5 antennaDiversityOverride];
    antennaDiversityOverride = self->_antennaDiversityOverride;
    minimumPreferredUpdatedRate = [(NIHomeDeviceConfiguration *)v5 minimumPreferredUpdatedRate];
    minimumPreferredUpdatedRate = self->_minimumPreferredUpdatedRate;
    sessionKey = [(NIHomeDeviceConfiguration *)v5 sessionKey];
    v28 = minimumPreferredUpdatedRate;
    if (sessionKey)
    {
      v32 = 0;
    }

    else
    {
      v32 = self->_sessionKey == 0;
    }

    sessionKey2 = [(NIHomeDeviceConfiguration *)v5 sessionKey];
    v30 = antennaDiversityOverride;
    v31 = antennaDiversityOverride;
    v16 = isAnchor;
    v17 = allowedDevices;
    v18 = [sessionKey2 isEqualToData:self->_sessionKey];

    monitoredRegions = [(NIHomeDeviceConfiguration *)v5 monitoredRegions];
    v20 = [monitoredRegions isEqualToArray:self->_monitoredRegions];

    monitoredRegions2 = [(NIHomeDeviceConfiguration *)v5 monitoredRegions];
    v22 = v32 | v18;
    if (monitoredRegions2)
    {
      v23 = 0;
    }

    else
    {
      v23 = self->_monitoredRegions == 0;
    }

    v26 = v17 == allowedDevices && anchor == v16 && v31 == v30;
    if ((v26 & v22) == 1)
    {
      v14 = (v20 | v23) & (v28 == minimumPreferredUpdatedRate);
      goto LABEL_22;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  v14 = 1;
LABEL_22:

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (v5 == self)
    {
      v7 = 1;
    }

    else if ([(NIHomeDeviceConfiguration *)self canUpdateToConfiguration:v5])
    {
      enabledGestures = [(NIConfiguration *)self enabledGestures];
      v7 = enabledGestures == [(NIConfiguration *)v5 enabledGestures];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = self->_allowedDevices ^ self->_anchor ^ [(NSData *)self->_sessionKey hash];
  antennaDiversityOverride = self->_antennaDiversityOverride;
  return v3 ^ antennaDiversityOverride ^ [(NSArray *)self->_monitoredRegions hash]^ self->_minimumPreferredUpdatedRate;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIHomeDeviceConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [NIInternalUtils NIRelationshipSpecifierToString:self->_allowedDevices];
  if (self->_anchor)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  return [NSString stringWithFormat:@"<devices: [%s], ses-key: %@, anchor: %s, ant-div: %s, min-rate: %s, gestures: %d, regions: %@>", v3, self->_sessionKey, v4, [NIInternalUtils AntennaDiversityOverrideToString:self->_antennaDiversityOverride], [NIInternalUtils NINearbyObjectUpdateRateToString:self->_minimumPreferredUpdatedRate], [(NIConfiguration *)self enabledGestures], self->_regionDescription];
}

@end