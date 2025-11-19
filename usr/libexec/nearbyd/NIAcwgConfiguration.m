@interface NIAcwgConfiguration
- (BOOL)isEqual:(id)a3;
- (NIAcwgConfiguration)initWithCoder:(id)a3;
- (NIAcwgConfiguration)initWithConfiguration:(id)a3;
- (NIAcwgConfiguration)initWithLockIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAcwgConfiguration

- (NIAcwgConfiguration)initWithLockIdentifier:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NIAcwgConfiguration.mm" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"lockIdentifier"}];
  }

  v11.receiver = self;
  v11.super_class = NIAcwgConfiguration;
  v7 = [(NIConfiguration *)&v11 initInternal];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(v7 + 6, a3);
    v8->_lockBtConnHandle = -1;
    v8->_configurationTypeInternal = 1;
  }

  return v8;
}

- (NIAcwgConfiguration)initWithConfiguration:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NIAcwgConfiguration.mm" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v13.receiver = self;
  v13.super_class = NIAcwgConfiguration;
  v6 = [(NIConfiguration *)&v13 initInternal];
  if (v6)
  {
    v7 = [v5 lockIdentifier];
    lockIdentifier = v6->_lockIdentifier;
    v6->_lockIdentifier = v7;

    v6->_lockBtConnHandle = [v5 lockBtConnHandle];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_lockIdentifier forKey:@"lockIdentifier"];
  [v4 encodeInt:self->_lockBtConnHandle forKey:@"lockBtConnHandle"];
  [v4 encodeObject:self->_debugOptions forKey:@"debugOptions"];
  [v4 encodeInteger:self->_configurationTypeInternal forKey:@"configurationType"];
}

- (NIAcwgConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  if (!self)
  {
    v13 = 0;
LABEL_9:
    self = v13;
    v5 = self;
    goto LABEL_10;
  }

  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockIdentifier"];
  if (v5)
  {
    v6 = [v4 decodeIntForKey:@"lockBtConnHandle"];
    v16 = objc_opt_class();
    v7 = [NSArray arrayWithObjects:&v16 count:1];
    v8 = [NSSet setWithArray:v7];

    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v9 = [NSArray arrayWithObjects:v15 count:3];
    v10 = [NSSet setWithArray:v9];

    v11 = [v4 decodeDictionaryWithKeysOfClasses:v8 objectsOfClasses:v10 forKey:@"debugOptions"];
    if ([v4 decodeIntegerForKey:@"configurationType"] == 1)
    {
      v12 = [(NIAcwgConfiguration *)self initWithLockIdentifier:v5];
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

  return v5;
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
      v14 = 1;
    }

    else
    {
      lockIdentifier = self->_lockIdentifier;
      v8 = [(NIAcwgConfiguration *)v5 lockIdentifier];
      v9 = [(NSString *)lockIdentifier isEqualToString:v8];

      lockBtConnHandle = self->_lockBtConnHandle;
      v11 = [(NIAcwgConfiguration *)v6 lockBtConnHandle];
      debugOptions = self->_debugOptions;
      if (debugOptions)
      {
        v13 = 0;
      }

      else
      {
        v15 = [(NIAcwgConfiguration *)v6 debugOptions];
        v13 = v15 == 0;

        debugOptions = self->_debugOptions;
      }

      v16 = [(NIAcwgConfiguration *)v6 debugOptions];
      v17 = [(NSDictionary *)debugOptions isEqualToDictionary:v16];

      configurationTypeInternal = self->_configurationTypeInternal;
      v19 = [(NIAcwgConfiguration *)v6 configurationType];
      if (lockBtConnHandle == v11)
      {
        v20 = v9;
      }

      else
      {
        v20 = 0;
      }

      if (v20 == 1)
      {
        v14 = (v17 | v13) & (configurationTypeInternal == v19);
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
  v6 = [(NIAcwgConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

@end