@interface NICarKeyConfiguration
+ (id)_labTestModeConfigurationWithOptions:(id)a3;
+ (id)_vehicleSimConfigurationWithOptions:(id)a3;
- (BOOL)canUpdateToConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NICarKeyConfiguration)initWithCoder:(id)a3;
- (NICarKeyConfiguration)initWithConfiguration:(id)a3;
- (NICarKeyConfiguration)initWithVehicleIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initLabTestModeConfiguration:(id)a3;
- (id)initVehicleSimConfiguration:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NICarKeyConfiguration

- (NICarKeyConfiguration)initWithVehicleIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"vehicleIdentifier"}];
  }

  v11.receiver = self;
  v11.super_class = NICarKeyConfiguration;
  v7 = [(NIConfiguration *)&v11 initInternal];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 6, a3);
    v8->_protocolVersion = 256;
    v8->_configurationTypeInternal = 1;
  }

  return v8;
}

- (id)initVehicleSimConfiguration:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"debugOptions"}];
  }

  v12.receiver = self;
  v12.super_class = NICarKeyConfiguration;
  v7 = [(NIConfiguration *)&v12 initInternal];
  v8 = v7;
  if (v7)
  {
    v9 = v7[6];
    v7[6] = @"VEHICLE SIMULATION CONFIGURATION";

    *(v8 + 20) = 256;
    objc_storeStrong(v8 + 7, a3);
    v8[4] = 2;
  }

  return v8;
}

- (id)initLabTestModeConfiguration:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"debugOptions"}];
  }

  v12.receiver = self;
  v12.super_class = NICarKeyConfiguration;
  v7 = [(NIConfiguration *)&v12 initInternal];
  v8 = v7;
  if (v7)
  {
    v9 = v7[6];
    v7[6] = @"TEST MODE CONFIGURATION";

    *(v8 + 20) = 256;
    objc_storeStrong(v8 + 7, a3);
    v8[4] = 3;
  }

  return v8;
}

+ (id)_vehicleSimConfigurationWithOptions:(id)a3
{
  v3 = a3;
  v4 = [[NICarKeyConfiguration alloc] initVehicleSimConfiguration:v3];

  return v4;
}

+ (id)_labTestModeConfigurationWithOptions:(id)a3
{
  v3 = a3;
  v4 = [[NICarKeyConfiguration alloc] initLabTestModeConfiguration:v3];

  return v4;
}

- (NICarKeyConfiguration)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v13.receiver = self;
  v13.super_class = NICarKeyConfiguration;
  v6 = [(NIConfiguration *)&v13 initInternal];
  if (v6)
  {
    v7 = [v5 vehicleIdentifier];
    vehicleIdentifier = v6->_vehicleIdentifier;
    v6->_vehicleIdentifier = v7;

    v6->_protocolVersion = [v5 protocolVersion];
    v9 = [v5 debugOptions];
    debugOptions = v6->_debugOptions;
    v6->_debugOptions = v9;

    v6->_configurationTypeInternal = [v5 configurationType];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = NICarKeyConfiguration;
  v5 = [(NIConfiguration *)&v9 copyWithZone:?];
  [v5 setVehicleIdentifier:self->_vehicleIdentifier];
  [v5 setProtocolVersion:self->_protocolVersion];
  v5[4] = self->_configurationTypeInternal;
  if (self->_debugOptions)
  {
    v6 = [[NSDictionary allocWithZone:?]copyItems:"initWithDictionary:copyItems:", self->_debugOptions, 1];
    v7 = v5[7];
    v5[7] = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_vehicleIdentifier forKey:@"vehicleIdentifier"];
  [v4 encodeInteger:self->_protocolVersion forKey:@"protocolVersion"];
  [v4 encodeObject:self->_debugOptions forKey:@"debugOptions"];
  [v4 encodeInteger:self->_configurationTypeInternal forKey:@"configurationType"];
}

- (NICarKeyConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vehicleIdentifier"];
  if (v5)
  {
    v16 = objc_opt_class();
    v6 = [NSArray arrayWithObjects:&v16 count:1];
    v7 = [NSSet setWithArray:v6];

    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v8 = [NSArray arrayWithObjects:v15 count:3];
    v9 = [NSSet setWithArray:v8];

    v10 = [v4 decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v9 forKey:@"debugOptions"];
    v11 = [v4 decodeIntegerForKey:@"configurationType"];
    if (v11 == 1)
    {
      v13 = [[NICarKeyConfiguration alloc] initWithVehicleIdentifier:v5];
      [(NICarKeyConfiguration *)v13 setDebugOptions:v10];
    }

    else
    {
      if (v11 == 2)
      {
        v12 = [[NICarKeyConfiguration alloc] initVehicleSimConfiguration:v10];
      }

      else
      {
        if (v11 != 3)
        {
          v13 = 0;
          goto LABEL_12;
        }

        v12 = [[NICarKeyConfiguration alloc] initLabTestModeConfiguration:v10];
      }

      v13 = v12;
    }

    -[NICarKeyConfiguration setProtocolVersion:](v13, "setProtocolVersion:", [v4 decodeIntegerForKey:@"protocolVersion"]);
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)canUpdateToConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v11 = 1;
    }

    else
    {
      vehicleIdentifier = self->_vehicleIdentifier;
      v7 = [(NICarKeyConfiguration *)v4 vehicleIdentifier];
      v8 = [(NSString *)vehicleIdentifier isEqualToString:v7];

      debugOptions = self->_debugOptions;
      if (debugOptions)
      {
        v10 = 0;
      }

      else
      {
        v12 = [(NICarKeyConfiguration *)v5 debugOptions];
        v10 = v12 == 0;

        debugOptions = self->_debugOptions;
      }

      v13 = [(NICarKeyConfiguration *)v5 debugOptions];
      v14 = [(NSDictionary *)debugOptions isEqualToDictionary:v13];

      v11 = v8 & (v14 | v10);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (v5 == self)
    {
      v7 = 1;
    }

    else if ([(NICarKeyConfiguration *)self canUpdateToConfiguration:v5])
    {
      protocolVersion = self->_protocolVersion;
      v7 = protocolVersion == [(NICarKeyConfiguration *)v5 protocolVersion];
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

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NICarKeyConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

@end