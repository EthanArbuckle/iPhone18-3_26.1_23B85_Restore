@interface NIAcwgConfiguration
- (BOOL)isEqual:(id)equal;
- (NIAcwgConfiguration)initWithCoder:(id)coder;
- (NIAcwgConfiguration)initWithConfiguration:(id)configuration;
- (NIAcwgConfiguration)initWithLockIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgConfiguration

- (NIAcwgConfiguration)initWithLockIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NIAcwgConfiguration.mm" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"lockIdentifier"}];
  }

  v11.receiver = self;
  v11.super_class = NIAcwgConfiguration;
  initInternal = [(NIConfiguration *)&v11 initInternal];
  v8 = initInternal;
  if (initInternal)
  {
    objc_storeStrong(initInternal + 6, identifier);
    v8->_lockBtConnHandle = -1;
    v8->_configurationTypeInternal = 1;
  }

  return v8;
}

- (NIAcwgConfiguration)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIAcwgConfiguration.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v13.receiver = self;
  v13.super_class = NIAcwgConfiguration;
  initInternal = [(NIConfiguration *)&v13 initInternal];
  if (initInternal)
  {
    lockIdentifier = [configurationCopy lockIdentifier];
    lockIdentifier = initInternal->_lockIdentifier;
    initInternal->_lockIdentifier = lockIdentifier;

    initInternal->_lockBtConnHandle = [configurationCopy lockBtConnHandle];
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
  v9.super_class = NIAcwgConfiguration;
  v5 = [(NIConfiguration *)&v9 copyWithZone:?];
  [v5 setLockIdentifier:self->_lockIdentifier];
  [v5 setLockBtConnHandle:self->_lockBtConnHandle];
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
  [coderCopy encodeObject:self->_lockIdentifier forKey:@"lockIdentifier"];
  [coderCopy encodeInt:self->_lockBtConnHandle forKey:@"lockBtConnHandle"];
  [coderCopy encodeObject:self->_debugOptions forKey:@"debugOptions"];
  [coderCopy encodeInteger:self->_configurationTypeInternal forKey:@"configurationType"];
}

- (NIAcwgConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self)
  {
    v13 = 0;
LABEL_9:
    self = v13;
    selfCopy = self;
    goto LABEL_10;
  }

  selfCopy = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockIdentifier"];
  if (selfCopy)
  {
    v6 = [coderCopy decodeIntForKey:@"lockBtConnHandle"];
    v16 = objc_opt_class();
    v7 = [NSArray arrayWithObjects:&v16 count:1];
    v8 = [NSSet setWithArray:v7];

    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v15 count:3];
    v10 = [NSSet setWithArray:v9];

    v11 = [coderCopy decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v10 forKey:@"debugOptions"];
    if ([coderCopy decodeIntegerForKey:@"configurationType"] == 1)
    {
      v12 = [(NIAcwgConfiguration *)self initWithLockIdentifier:selfCopy];
      v13 = v12;
      if (v12)
      {
        [(NIAcwgConfiguration *)v12 setLockBtConnHandle:v6];
        [(NIAcwgConfiguration *)v13 setDebugOptions:v11];
      }
    }

    else
    {

      v13 = 0;
    }

    goto LABEL_9;
  }

LABEL_10:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v14 = 1;
    }

    else
    {
      lockIdentifier = self->_lockIdentifier;
      lockIdentifier = [(NIAcwgConfiguration *)v5 lockIdentifier];
      v9 = [(NSString *)lockIdentifier isEqualToString:lockIdentifier];

      lockBtConnHandle = self->_lockBtConnHandle;
      lockBtConnHandle = [(NIAcwgConfiguration *)v6 lockBtConnHandle];
      debugOptions = self->_debugOptions;
      if (debugOptions)
      {
        v13 = 0;
      }

      else
      {
        debugOptions = [(NIAcwgConfiguration *)v6 debugOptions];
        v13 = debugOptions == 0;

        debugOptions = self->_debugOptions;
      }

      debugOptions2 = [(NIAcwgConfiguration *)v6 debugOptions];
      v17 = [(NSDictionary *)debugOptions isEqualToDictionary:debugOptions2];

      configurationTypeInternal = self->_configurationTypeInternal;
      configurationType = [(NIAcwgConfiguration *)v6 configurationType];
      if (lockBtConnHandle == lockBtConnHandle)
      {
        v20 = v9;
      }

      else
      {
        v20 = 0;
      }

      if (v20 == 1)
      {
        v14 = (v17 | v13) & (configurationTypeInternal == configurationType);
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptionInternal = [(NIAcwgConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, descriptionInternal];

  return v7;
}

@end