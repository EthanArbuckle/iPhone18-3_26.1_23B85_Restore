@interface NIRangingAuthConfiguration
- (BOOL)isEqual:(id)a3;
- (NIRangingAuthConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionInternal;
- (id)initAsResponder:(BOOL)a3 macAddress:(id)a4 key:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIRangingAuthConfiguration

- (id)initAsResponder:(BOOL)a3 macAddress:(id)a4 key:(id)a5
{
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = NIRangingAuthConfiguration;
  v11 = [(NIConfiguration *)&v19 initInternal];
  v12 = v11;
  if (v11)
  {
    *(v11 + 32) = a3;
    objc_storeStrong(v11 + 6, a4);
    objc_storeStrong(v12 + 7, a5);
    v20[0] = &off_1009C4328;
    v13 = v12[6];
    v20[1] = &off_1009C4340;
    v21[0] = v13;
    v21[1] = v12[7];
    v14 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    Data = OPACKEncoderCreateData();
    v16 = [[NIDiscoveryToken alloc] initWithBytes:Data];
    v17 = v12[5];
    v12[5] = v16;
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = NIRangingAuthConfiguration;
  v4 = [(NIConfiguration *)&v12 copyWithZone:a3];
  v4[32] = self->_isResponder;
  v5 = [(NIDiscoveryToken *)self->_peerToken copy];
  v6 = *(v4 + 5);
  *(v4 + 5) = v5;

  v7 = [(NSData *)self->_macAddress copy];
  v8 = *(v4 + 6);
  *(v4 + 6) = v7;

  v9 = [(NSData *)self->_secureKey copy];
  v10 = *(v4 + 7);
  *(v4 + 7) = v9;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NIRangingAuthConfiguration;
  [(NIConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_isResponder forKey:@"isResponder"];
  [v4 encodeObject:self->_macAddress forKey:@"macAddress"];
  [v4 encodeObject:self->_secureKey forKey:@"secureKey"];
  [v4 encodeObject:self->_peerToken forKey:@"peerToken"];
}

- (NIRangingAuthConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NIRangingAuthConfiguration;
  v5 = [(NIConfiguration *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_isResponder = [v4 decodeBoolForKey:@"isResponder"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"macAddress"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerToken"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = 0;
    }

    else
    {
      objc_storeStrong(&v5->_macAddress, v6);
      objc_storeStrong(&v5->_secureKey, v7);
      objc_storeStrong(&v5->_peerToken, v8);
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
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
      v16 = 1;
    }

    else
    {
      isResponder = self->_isResponder;
      v8 = [(NIRangingAuthConfiguration *)v5 isResponder];
      v9 = [(NIRangingAuthConfiguration *)v6 macAddress];
      v10 = [v9 isEqualToData:self->_macAddress];

      v11 = [(NIRangingAuthConfiguration *)v6 secureKey];
      v12 = [v11 isEqualToData:self->_secureKey];

      peerToken = v6->_peerToken;
      v14 = (peerToken | self->_peerToken) == 0;
      v15 = [peerToken isEqual:?];
      if (((isResponder == v8) & v10) == 1)
      {
        v16 = v12 & (v14 | v15);
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  isResponder = self->_isResponder;
  v4 = [(NSData *)self->_macAddress hash]^ isResponder;
  v5 = [(NSData *)self->_secureKey hash];
  return v4 ^ v5 ^ [(NIDiscoveryToken *)self->_peerToken hash];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NIRangingAuthConfiguration *)self descriptionInternal];
  v6 = [NSString stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

- (id)descriptionInternal
{
  if (self->_isResponder)
  {
    v2 = @"Yes";
  }

  else
  {
    v2 = @"No";
  }

  v3 = [(NIDiscoveryToken *)self->_peerToken descriptionInternal];
  v4 = [NSString stringWithFormat:@", isResponder: %@, peerToken: %@", v2, v3];

  return v4;
}

@end