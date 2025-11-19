@interface NIDLTDOAConfiguration
- (BOOL)isCameraAssistanceEnabled;
- (BOOL)isEqual:(id)a3;
- (NIDLTDOAConfiguration)initWithCoder:(id)a3;
- (NIDLTDOAConfiguration)initWithConfigParametersOverride:(id)a3;
- (NIDLTDOAConfiguration)initWithNetworkIdentifier:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (int64_t)networkIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCameraAssistanceEnabled:(BOOL)a3;
- (void)setNetworkIdentifier:(int64_t)a3;
@end

@implementation NIDLTDOAConfiguration

- (NIDLTDOAConfiguration)initWithNetworkIdentifier:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = NIDLTDOAConfiguration;
  v4 = [(NIConfiguration *)&v8 initInternal];
  v5 = v4;
  if (v4)
  {
    v4->_networkIdentifier = a3;
    v6 = v4;
  }

  return v5;
}

- (NIDLTDOAConfiguration)initWithConfigParametersOverride:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NIDLTDOAConfiguration.mm" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"configParameters"}];
  }

  v11.receiver = self;
  v11.super_class = NIDLTDOAConfiguration;
  v6 = [(NIConfiguration *)&v11 initInternal];
  if (v6)
  {
    v7 = objc_opt_new();
    [(NSDictionary *)v7 setObject:&__kCFBooleanTrue forKey:@"UseConfigParametersOverrides"];
    [(NSDictionary *)v7 addEntriesFromDictionary:v5];
    debugParameters = v6->_debugParameters;
    v6->_debugParameters = v7;

    v6->_networkIdentifier = 0;
  }

  return v6;
}

- (void)setNetworkIdentifier:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_networkIdentifier = a3;
  objc_sync_exit(obj);
}

- (int64_t)networkIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  networkIdentifier = v2->_networkIdentifier;
  objc_sync_exit(v2);

  return networkIdentifier;
}

- (void)setCameraAssistanceEnabled:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cameraAssistanceEnabled = a3;
  objc_sync_exit(obj);
}

- (BOOL)isCameraAssistanceEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  cameraAssistanceEnabled = v2->_cameraAssistanceEnabled;
  objc_sync_exit(v2);

  return cameraAssistanceEnabled;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NIDLTDOAConfiguration;
  v5 = [(NIConfiguration *)&v8 copyWithZone:?];
  [v5 setNetworkIdentifier:self->_networkIdentifier];
  if (self->_debugParameters)
  {
    v6 = [[NSDictionary allocWithZone:?]copyItems:"initWithDictionary:copyItems:", self->_debugParameters, 1];
    [v5 setDebugParameters:v6];
  }

  [v5 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NIDLTDOAConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_debugParameters forKey:@"debugParamsIdentifier"];
  [v4 encodeInt64:self->_networkIdentifier forKey:@"networkIdentifier"];
  [v4 encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
}

- (NIDLTDOAConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"debugParamsIdentifier"];
  v6 = [v4 decodeIntForKey:@"networkIdentifier"];
  v7 = [v4 decodeBoolForKey:@"cameraAssistanceEnabled"];
  v11.receiver = self;
  v11.super_class = NIDLTDOAConfiguration;
  v8 = [(NIConfiguration *)&v11 initWithCoder:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_debugParameters, v5);
    v9->_networkIdentifier = v6;
    v9->_cameraAssistanceEnabled = v7;
  }

  return v9;
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
LABEL_14:

      goto LABEL_15;
    }

    networkIdentifier = self->_networkIdentifier;
    v8 = [(NIDLTDOAConfiguration *)v5 networkIdentifier];
    debugParameters = self->_debugParameters;
    if (!debugParameters)
    {
      v10 = [(NIDLTDOAConfiguration *)v6 debugParameters];

      if (!v10)
      {
        v12 = 1;
LABEL_7:
        v13 = [(NIDLTDOAConfiguration *)v6 isCameraAssistanceEnabled];
        if (networkIdentifier == v8)
        {
          if ((v13 & 1) == self->_cameraAssistanceEnabled)
          {
            v14 = v12;
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

        goto LABEL_14;
      }

      debugParameters = self->_debugParameters;
    }

    v11 = [(NIDLTDOAConfiguration *)v6 debugParameters];
    v12 = [(NSDictionary *)debugParameters isEqual:v11];

    goto LABEL_7;
  }

  v14 = 0;
LABEL_15:

  return v14;
}

- (unint64_t)hash
{
  v3 = [NSNumber numberWithLongLong:self->_networkIdentifier];
  v4 = [v3 hash];
  v5 = v4 ^ [(NSDictionary *)self->_debugParameters hash]^ self->_cameraAssistanceEnabled;

  return v5 ^ 0x1F;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIDLTDOAConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [NSMutableString alloc];
  if (self->_cameraAssistanceEnabled)
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v5 = [v3 initWithFormat:@"0x%lx, debugParameters:%@, cameraAssistanceEnabled: %@", self->_networkIdentifier, self->_debugParameters, v4];

  return v5;
}

@end