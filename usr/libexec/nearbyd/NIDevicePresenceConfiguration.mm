@interface NIDevicePresenceConfiguration
+ (BOOL)_validateRegionPredicates:(id)a3 outer:(id)a4;
+ (const)_NIDevicePresenceMonitoringOptionToString:(unint64_t)a3;
+ (float)_radiusFromDevicePresencePreset:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NIDevicePresenceConfiguration)initWithCoder:(id)a3;
- (NIDevicePresenceConfiguration)initWithDiscoveryToken:(id)a3 regions:(id)a4 preferredUpdateRate:(int64_t)a5 error:(id *)a6;
- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)a3 outerBoundary:(id)a4 error:(id *)a5;
- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)a3 outerBoundary:(id)a4 monitoringOption:(unint64_t)a5 allowedDevices:(unint64_t)a6 error:(id *)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIDevicePresenceConfiguration

- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)a3 outerBoundary:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = NIDevicePresenceConfiguration;
  v10 = [(NIConfiguration *)&v21 initInternal];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = [v8 copy];
  v12 = v10[7];
  v10[7] = v11;

  v13 = [v9 copy];
  v14 = v10[8];
  v10[8] = v13;

  v10[5] = 1;
  v10[6] = 2;
  if (!v9)
  {
    v15 = [[NIRegionPredicate alloc] initWithName:@"default-max-sensor-region" devicePresencePreset:5];
    v16 = v10[8];
    v10[8] = v15;
  }

  v22[0] = v10[7];
  v22[1] = v10[8];
  v17 = [NSArray arrayWithObjects:v22 count:2];
  v18 = v10[9];
  v10[9] = v17;

  if ([NIDevicePresenceConfiguration _validateRegionPredicates:v10[7] outer:v10[8]])
  {
    *(v10 + 32) = 0;
LABEL_6:
    v19 = v10;
    goto LABEL_10;
  }

  if (a5)
  {
    sub_100206B64(-10013, 0);
    *a5 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_10:

  return v19;
}

- (NIDevicePresenceConfiguration)initWithInnerBoundary:(id)a3 outerBoundary:(id)a4 monitoringOption:(unint64_t)a5 allowedDevices:(unint64_t)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [objc_alloc(objc_opt_class()) initWithInnerBoundary:v12 outerBoundary:v13 error:a7];

  if (v14)
  {
    v14->_allowedDevices = a6;
    v14->_monitoringOption = a5;
  }

  return v14;
}

- (NIDevicePresenceConfiguration)initWithDiscoveryToken:(id)a3 regions:(id)a4 preferredUpdateRate:(int64_t)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = objc_alloc(objc_opt_class());
  v14 = [v12 firstObject];
  v15 = [v12 lastObject];
  v16 = [v13 initWithInnerBoundary:v14 outerBoundary:v15 error:a6];

  if (v16)
  {
    objc_storeStrong(&v16->_token, a3);
    v16->_allowedDevices = 2;
    v16->_monitoringOption = 1;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = *v25;
      do
      {
        v20 = 0;
        do
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v24 + 1) + 8 * v20) setPreferredUpdateRate:{a5, v24}];
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }

    v21 = [[NSArray alloc] initWithArray:v17 copyItems:1];
    monitoredRegions = v16->_monitoredRegions;
    v16->_monitoredRegions = v21;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v15.receiver = self;
  v15.super_class = NIDevicePresenceConfiguration;
  v5 = [(NIConfiguration *)&v15 copyWithZone:?];
  [v5 setAllowedDevices:self->_allowedDevices];
  [v5 setMonitoringOption:self->_monitoringOption];
  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  v6 = [(NIRegionPredicate *)self->_innerBoundary copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NIRegionPredicate *)self->_outerBoundary copyWithZone:a3];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(NSArray *)self->_monitoredRegions copyWithZone:a3];
  v11 = v5[9];
  v5[9] = v10;

  v12 = [(NIDiscoveryToken *)self->_token copyWithZone:a3];
  v13 = v5[10];
  v5[10] = v12;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NIDevicePresenceConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_innerBoundary forKey:@"innerboundary"];
  [v4 encodeObject:self->_outerBoundary forKey:@"outerboundary"];
  [v4 encodeObject:self->_monitoredRegions forKey:@"monitoredRegions"];
  [v4 encodeObject:self->_token forKey:@"token"];
  [v4 encodeInteger:self->_allowedDevices forKey:@"allowedDevices"];
  [v4 encodeInteger:self->_monitoringOption forKey:@"monitoringOption"];
  [v4 encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
}

- (NIDevicePresenceConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NIDevicePresenceConfiguration;
  v5 = [(NIConfiguration *)&v18 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"monitoredRegions"];
  monitoredRegions = v5->_monitoredRegions;
  v5->_monitoredRegions = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"innerboundary"];
  innerBoundary = v5->_innerBoundary;
  v5->_innerBoundary = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outerboundary"];
  outerBoundary = v5->_outerBoundary;
  v5->_outerBoundary = v10;

  v12 = [v4 decodeIntegerForKey:@"allowedDevices"];
  if (![NIInternalUtils isIntValidRelationshipSpecifier:v12])
  {
    goto LABEL_5;
  }

  v5->_allowedDevices = v12;
  v13 = [v4 decodeIntegerForKey:@"monitoringOption"];
  if ((v13 - 1) < 3)
  {
    v5->_monitoringOption = v13;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    token = v5->_token;
    v5->_token = v14;

    v5->_cameraAssistanceEnabled = [v4 decodeBoolForKey:@"cameraAssistanceEnabled"];
    v16 = v5;
  }

  else
  {
LABEL_5:
    v16 = 0;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v13 = 1;
    }

    else
    {
      v7 = [(NIDevicePresenceConfiguration *)v5 innerBoundary];
      v8 = [v7 isEqual:self->_innerBoundary];

      v9 = [(NIDevicePresenceConfiguration *)v6 outerBoundary];
      v10 = [v9 isEqual:self->_outerBoundary];

      v11 = [(NIDevicePresenceConfiguration *)v6 outerBoundary];
      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = self->_outerBoundary == 0;
      }

      v14 = [(NIDevicePresenceConfiguration *)v6 monitoredRegions];
      v15 = [v14 isEqualToArray:self->_monitoredRegions];

      v25 = [(NIDevicePresenceConfiguration *)v6 allowedDevices];
      v26 = v15;
      allowedDevices = self->_allowedDevices;
      v17 = [(NIDevicePresenceConfiguration *)v6 monitoringOption];
      monitoringOption = self->_monitoringOption;
      v19 = [(NIDevicePresenceConfiguration *)v6 token];
      token = self->_token;

      v20 = [(NIDevicePresenceConfiguration *)v6 isCameraAssistanceEnabled];
      v21 = v8 & (v10 | v12);
      if (v25 != allowedDevices)
      {
        v21 = 0;
      }

      if (v17 != monitoringOption)
      {
        v21 = 0;
      }

      v13 = (v21 & v26) == 1 && v19 == token && (v20 & 1) == self->_cameraAssistanceEnabled;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NIRegionPredicate *)self->_innerBoundary hash];
  v4 = [(NIRegionPredicate *)self->_outerBoundary hash]^ v3;
  v5 = self->_allowedDevices ^ self->_monitoringOption;
  v6 = v4 ^ v5 ^ [(NIDiscoveryToken *)self->_token hash];
  return v6 ^ [(NSArray *)self->_monitoredRegions hash]^ self->_cameraAssistanceEnabled;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIDevicePresenceConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  innerBoundary = self->_innerBoundary;
  outerBoundary = self->_outerBoundary;
  v5 = [NIInternalUtils NIRelationshipSpecifierToString:self->_allowedDevices];
  v6 = [NIDevicePresenceConfiguration _NIDevicePresenceMonitoringOptionToString:self->_monitoringOption];
  if (self->_cameraAssistanceEnabled)
  {
    v7 = "Yes";
  }

  else
  {
    v7 = "No";
  }

  return [NSString stringWithFormat:@"<innerboundary: %@, outerboundary: %@, allowedDevices: %s, monitoringOption: %s>, isCameraAssistanceEnabled: %s", innerBoundary, outerBoundary, v5, v6, v7];
}

+ (BOOL)_validateRegionPredicates:(id)a3 outer:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([NIDevicePresenceConfiguration _validateRegionIsPreset:v5]&& [NIDevicePresenceConfiguration _validateRegionIsPreset:v6])
  {
    +[NIDevicePresenceConfiguration _radiusFromDevicePresencePreset:](NIDevicePresenceConfiguration, "_radiusFromDevicePresencePreset:", [v6 devicePresencePreset]);
    v8 = v7;
    +[NIDevicePresenceConfiguration _radiusFromDevicePresencePreset:](NIDevicePresenceConfiguration, "_radiusFromDevicePresencePreset:", [v5 devicePresencePreset]);
    v10 = v8 >= v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (float)_radiusFromDevicePresencePreset:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 3.4028e38;
  }

  else
  {
    return flt_100568AA0[a3 - 1];
  }
}

+ (const)_NIDevicePresenceMonitoringOptionToString:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return "N/A";
  }

  else
  {
    return (&off_1009A1928)[a3 - 1];
  }
}

@end