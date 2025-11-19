@interface NIItemLocalizerConfiguration
- (BOOL)canUpdateToConfiguration:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NIItemLocalizerConfiguration)initWithCoder:(id)a3;
- (NIItemLocalizerConfiguration)initWithItemUUID:(id)a3 preferredUpdateRate:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIItemLocalizerConfiguration

- (NIItemLocalizerConfiguration)initWithItemUUID:(id)a3 preferredUpdateRate:(int64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = NIItemLocalizerConfiguration;
  v8 = [(NIConfiguration *)&v14 initInternal];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 5, a3);
    v10 = [NIDiscoveryToken generateTokenWithUUID:v7];
    discoveryToken = v9->_discoveryToken;
    v9->_discoveryToken = v10;

    v9->_preferredUpdateRate = a4;
    debugParameters = v9->_debugParameters;
    v9->_debugParameters = 0;

    v9->_cameraAssistanceEnabled = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NIItemLocalizerConfiguration;
  v4 = [(NIConfiguration *)&v7 copyWithZone:a3];
  [v4 setItemUUID:self->_itemUUID];
  [v4 setDiscoveryToken:self->_discoveryToken];
  [v4 setPreferredUpdateRate:self->_preferredUpdateRate];
  v5 = [(NSDictionary *)self->_debugParameters copy];
  [v4 setDebugParameters:v5];

  [v4 setCameraAssistanceEnabled:self->_cameraAssistanceEnabled];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NIItemLocalizerConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_itemUUID forKey:@"itemUUID"];
  [v4 encodeObject:self->_discoveryToken forKey:@"discoveryToken"];
  [v4 encodeInteger:self->_preferredUpdateRate forKey:@"preferredUpdateRate"];
  [v4 encodeObject:self->_debugParameters forKey:@"debugParameters"];
  [v4 encodeBool:self->_cameraAssistanceEnabled forKey:@"cameraAssistanceEnabled"];
}

- (NIItemLocalizerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NIItemLocalizerConfiguration;
  v5 = [(NIConfiguration *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemUUID"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveryToken"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v8 = [v4 decodeIntegerForKey:@"preferredUpdateRate"], +[NIInternalUtils isIntValidNearbyObjectUpdateRate:](NIInternalUtils, "isIntValidNearbyObjectUpdateRate:", v8)))
      {
        v20 = objc_opt_class();
        v9 = [NSArray arrayWithObjects:&v20 count:1];
        v10 = [NSSet setWithArray:v9];

        v19[0] = objc_opt_class();
        v19[1] = objc_opt_class();
        v11 = [NSArray arrayWithObjects:v19 count:2];
        v12 = [NSSet setWithArray:v11];

        v13 = [v4 decodeDictionaryWithKeysOfClasses:v10 objectsOfClasses:v12 forKey:@"debugParameters"];
        v14 = [v4 decodeBoolForKey:@"cameraAssistanceEnabled"];
        objc_storeStrong(&v5->_itemUUID, v6);
        objc_storeStrong(&v5->_discoveryToken, v7);
        v5->_preferredUpdateRate = v8;
        debugParameters = v5->_debugParameters;
        v5->_debugParameters = v13;

        v5->_cameraAssistanceEnabled = v14;
        v16 = v5;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)canUpdateToConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  if (self != v4)
  {
    v6 = [(NIItemLocalizerConfiguration *)v4 itemUUID];
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_itemUUID == 0;
    }

    v9 = [(NIItemLocalizerConfiguration *)v5 itemUUID];
    v10 = [v9 isEqual:self->_itemUUID];

    v11 = [(NIItemLocalizerConfiguration *)v5 discoveryToken];
    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = self->_discoveryToken == 0;
    }

    v13 = [(NIItemLocalizerConfiguration *)v5 discoveryToken];
    v14 = [v13 isEqual:self->_discoveryToken];

    v15 = [(NIItemLocalizerConfiguration *)v5 isCameraAssistanceEnabled];
    if ((v7 | v10))
    {
      v8 = (v12 | v14) & ((v15 & 1) == self->_cameraAssistanceEnabled);
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 1;
LABEL_13:

  return v8;
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
      LOBYTE(v10) = 1;
    }

    else if ([(NIItemLocalizerConfiguration *)self canUpdateToConfiguration:v5])
    {
      v6 = [(NIItemLocalizerConfiguration *)v5 preferredUpdateRate];
      preferredUpdateRate = self->_preferredUpdateRate;
      debugParameters = v5->_debugParameters;
      v9 = self->_debugParameters;
      v10 = (v6 == preferredUpdateRate) & (((debugParameters | v9) == 0) | [(NSDictionary *)debugParameters isEqualToDictionary:v9]);
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_itemUUID hash];
  v4 = [(NIDiscoveryToken *)self->_discoveryToken hash];
  preferredUpdateRate = self->_preferredUpdateRate;
  return v3 ^ v4 ^ preferredUpdateRate ^ [(NSDictionary *)self->_debugParameters hash]^ self->_cameraAssistanceEnabled ^ 0x1F;
}

- (id)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NIItemLocalizerConfiguration *)self descriptionInternal];
  v7 = [v3 initWithFormat:@"<%@: %@>", v5, v6];

  return v7;
}

- (id)descriptionInternal
{
  v3 = [(NSUUID *)self->_itemUUID UUIDString];
  v4 = CUPrintNSObjectMasked();
  v5 = [(NIDiscoveryToken *)self->_discoveryToken descriptionInternal];
  v6 = [NSString stringWithFormat:@"<ItemUUID: %@, discoveryToken: %@, updateRate: %s, camera: %d, debug-params: %@>>", v4, v5, [NIInternalUtils NINearbyObjectUpdateRateToString:self->_preferredUpdateRate], self->_cameraAssistanceEnabled, self->_debugParameters];

  return v6;
}

@end