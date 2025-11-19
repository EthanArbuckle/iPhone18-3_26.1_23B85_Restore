@interface NRDDeviceIdentity
- (BOOL)isEqual:(id)a3;
- (NRDDeviceIdentity)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDDeviceIdentity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    if (self)
    {
      identity = self->_identity;
    }

    else
    {
      identity = 0;
    }

    v7 = identity;
    v8 = v5[1];
    if ([(NSUUID *)v7 isEqual:v8])
    {
      if (self)
      {
        publicKey = self->_publicKey;
      }

      else
      {
        publicKey = 0;
      }

      v10 = v5[2];
      v11 = publicKey;
      v12 = [(NSData *)v11 isEqualToData:v10];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  if (self)
  {
    [a3 encodeObject:self->_identity forKey:@"identity"];
    publicKey = self->_publicKey;
  }

  else
  {
    [a3 encodeObject:0 forKey:@"identity"];
    publicKey = 0;
  }

  [a3 encodeObject:publicKey forKey:@"publicKey"];
}

- (NRDDeviceIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = NRDDeviceIdentity;
  v5 = [(NRDDeviceIdentity *)&v24 init];
  if (!v5)
  {
    v13 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = sub_10015B480();
      _NRLogWithArgs();
    }

    v4 = _os_log_pack_size();
    v6 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = *__error();
    v17 = _os_log_pack_fill();
    *v17 = 136446210;
    *(v17 + 4) = "[NRDDeviceIdentity initWithCoder:]";
    sub_10015B480();
    _NRLogAbortWithPack();
LABEL_9:
    v18 = sub_10015B480();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = sub_10015B480();
LABEL_13:
      _NRLogWithArgs();
    }

LABEL_14:
    v11 = 0;
    goto LABEL_5;
  }

  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
  identity = v6->_identity;
  v6->_identity = v7;

  if (!v6->_identity)
  {
    goto LABEL_9;
  }

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
  publicKey = v6->_publicKey;
  v6->_publicKey = v9;

  if (!v6->_publicKey)
  {
    v21 = sub_10015B480();
    v22 = _NRLogIsLevelEnabled();

    if (v22)
    {
      v20 = sub_10015B480();
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v11 = v6;
LABEL_5:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[NRDDeviceIdentity allocWithZone:](NRDDeviceIdentity init];
  if (self)
  {
    identity = self->_identity;
  }

  else
  {
    identity = 0;
  }

  v7 = identity;
  v8 = [(NSUUID *)v7 copyWithZone:a3];
  if (v5)
  {
    objc_storeStrong(&v5->_identity, v8);
  }

  if (self)
  {
    publicKey = self->_publicKey;
  }

  else
  {
    publicKey = 0;
  }

  v10 = publicKey;
  v11 = [(NSData *)v10 copyWithZone:a3];
  if (v5)
  {
    objc_storeStrong(&v5->_publicKey, v11);
  }

  return v5;
}

@end