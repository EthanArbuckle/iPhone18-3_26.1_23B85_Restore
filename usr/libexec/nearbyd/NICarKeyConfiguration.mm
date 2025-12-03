@interface NICarKeyConfiguration
+ (id)_labTestModeConfigurationWithOptions:(id)options;
+ (id)_vehicleSimConfigurationWithOptions:(id)options;
- (BOOL)canUpdateToConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (NICarKeyConfiguration)initWithCoder:(id)coder;
- (NICarKeyConfiguration)initWithConfiguration:(id)configuration;
- (NICarKeyConfiguration)initWithVehicleIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initLabTestModeConfiguration:(id)configuration;
- (id)initVehicleSimConfiguration:(id)configuration;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NICarKeyConfiguration

- (NICarKeyConfiguration)initWithVehicleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"vehicleIdentifier"}];
  }

  v11.receiver = self;
  v11.super_class = NICarKeyConfiguration;
  initInternal = [(NIConfiguration *)&v11 initInternal];
  v8 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 6, identifier);
    v8->_protocolVersion = 256;
    v8->_configurationTypeInternal = 1;
  }

  return v8;
}

- (id)initVehicleSimConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"debugOptions"}];
  }

  v12.receiver = self;
  v12.super_class = NICarKeyConfiguration;
  initInternal = [(NIConfiguration *)&v12 initInternal];
  v8 = initInternal;
  if (initInternal)
  {
    v9 = initInternal[6];
    initInternal[6] = @"VEHICLE SIMULATION CONFIGURATION";

    *(v8 + 20) = 256;
    objc_storeStrong(v8 + 7, configuration);
    v8[4] = 2;
  }

  return v8;
}

- (id)initLabTestModeConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v11 = +[NSAssertionHandler currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"debugOptions"}];
  }

  v12.receiver = self;
  v12.super_class = NICarKeyConfiguration;
  initInternal = [(NIConfiguration *)&v12 initInternal];
  v8 = initInternal;
  if (initInternal)
  {
    v9 = initInternal[6];
    initInternal[6] = @"TEST MODE CONFIGURATION";

    *(v8 + 20) = 256;
    objc_storeStrong(v8 + 7, configuration);
    v8[4] = 3;
  }

  return v8;
}

+ (id)_vehicleSimConfigurationWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [[NICarKeyConfiguration alloc] initVehicleSimConfiguration:optionsCopy];

  return v4;
}

+ (id)_labTestModeConfigurationWithOptions:(id)options
{
  optionsCopy = options;
  v4 = [[NICarKeyConfiguration alloc] initLabTestModeConfiguration:optionsCopy];

  return v4;
}

- (NICarKeyConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NICarKeyConfiguration.mm" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v13.receiver = self;
  v13.super_class = NICarKeyConfiguration;
  initInternal = [(NIConfiguration *)&v13 initInternal];
  if (initInternal)
  {
    vehicleIdentifier = [configurationCopy vehicleIdentifier];
    vehicleIdentifier = initInternal->_vehicleIdentifier;
    initInternal->_vehicleIdentifier = vehicleIdentifier;

    initInternal->_protocolVersion = [configurationCopy protocolVersion];
    debugOptions = [configurationCopy debugOptions];
    debugOptions = initInternal->_debugOptions;
    initInternal->_debugOptions = debugOptions;

    initInternal->_configurationTypeInternal = [configurationCopy configurationType];
  }

  return initInternal;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_vehicleIdentifier forKey:@"vehicleIdentifier"];
  [coderCopy encodeInteger:self->_protocolVersion forKey:@"protocolVersion"];
  [coderCopy encodeObject:self->_debugOptions forKey:@"debugOptions"];
  [coderCopy encodeInteger:self->_configurationTypeInternal forKey:@"configurationType"];
}

- (NICarKeyConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleIdentifier"];
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

    v10 = [coderCopy decodeDictionaryWithKeysOfClasses:v7 objectsOfClasses:v9 forKey:@"debugOptions"];
    v11 = [coderCopy decodeIntegerForKey:@"configurationType"];
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

    -[NICarKeyConfiguration setProtocolVersion:](v13, "setProtocolVersion:", [coderCopy decodeIntegerForKey:@"protocolVersion"]);
LABEL_12:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (BOOL)canUpdateToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy)
  {
    if (self == configurationCopy)
    {
      v11 = 1;
    }

    else
    {
      vehicleIdentifier = self->_vehicleIdentifier;
      vehicleIdentifier = [(NICarKeyConfiguration *)configurationCopy vehicleIdentifier];
      v8 = [(NSString *)vehicleIdentifier isEqualToString:vehicleIdentifier];

      debugOptions = self->_debugOptions;
      if (debugOptions)
      {
        v10 = 0;
      }

      else
      {
        debugOptions = [(NICarKeyConfiguration *)v5 debugOptions];
        v10 = debugOptions == 0;

        debugOptions = self->_debugOptions;
      }

      debugOptions2 = [(NICarKeyConfiguration *)v5 debugOptions];
      v14 = [(NSDictionary *)debugOptions isEqualToDictionary:debugOptions2];

      v11 = v8 & (v14 | v10);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
  descriptionInternal = [(NICarKeyConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

@end