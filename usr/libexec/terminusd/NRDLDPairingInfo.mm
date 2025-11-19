@interface NRDLDPairingInfo
- (BOOL)isEqual:(id)a3;
- (NRDLDPairingInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRDLDPairingInfo

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    irkData = self->_irkData;
  }

  else
  {
    irkData = 0;
  }

  v5 = irkData;
  LogString = _NRKeyCreateLogString();
  if (self)
  {
    remoteAddress = self->_remoteAddress;
  }

  else
  {
    remoteAddress = 0;
  }

  v8 = remoteAddress;
  v9 = _NRKeyCreateLogString();
  if (self)
  {
    v10 = self->_remoteAddressType;
    sharedSecret = self->_sharedSecret;
  }

  else
  {
    v10 = 0;
    sharedSecret = 0;
  }

  v12 = sharedSecret;
  v13 = _NRKeyCreateLogString();
  v14 = v13;
  if (self)
  {
    salt = self->_salt;
  }

  else
  {
    salt = 0;
  }

  v16 = [v3 initWithFormat:@"NRDLDPairingInfo<irkData:%@, remoteAddress:%@, remoteAddressType:%@ sharedSecret:%@ salt:%@>", LogString, v9, v10, v13, salt];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self)
    {
      irkData = self->_irkData;
    }

    else
    {
      irkData = 0;
    }

    v7 = irkData;
    if (v5)
    {
      v8 = v5[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    if (![(NSData *)v7 isEqualToData:v9])
    {
      v24 = 0;
LABEL_39:

LABEL_40:
      goto LABEL_41;
    }

    if (self)
    {
      remoteAddress = self->_remoteAddress;
    }

    else
    {
      remoteAddress = 0;
    }

    v11 = remoteAddress;
    if (v5)
    {
      v12 = v5[2];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    if (![(NSData *)v11 isEqualToData:v13])
    {
      v24 = 0;
LABEL_38:

      goto LABEL_39;
    }

    if (self)
    {
      remoteAddressType = self->_remoteAddressType;
    }

    else
    {
      remoteAddressType = 0;
    }

    v15 = remoteAddressType;
    if (v5)
    {
      v16 = v5[3];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if (![(NSNumber *)v15 isEqualToNumber:v17])
    {
      v24 = 0;
LABEL_37:

      goto LABEL_38;
    }

    if (self)
    {
      sharedSecret = self->_sharedSecret;
    }

    else
    {
      sharedSecret = 0;
    }

    v19 = sharedSecret;
    if (v5)
    {
      v20 = v5[4];
    }

    else
    {
      v20 = 0;
    }

    v26 = v20;
    v27 = v19;
    if (!sub_10013EE38(v19, v26))
    {
      v24 = 0;
      goto LABEL_36;
    }

    if (self)
    {
      salt = self->_salt;
      if (v5)
      {
LABEL_24:
        v22 = v5[5];
LABEL_25:
        v23 = salt;
        v24 = sub_10013EE38(v23, v22);

LABEL_36:
        goto LABEL_37;
      }
    }

    else
    {
      salt = 0;
      if (v5)
      {
        goto LABEL_24;
      }
    }

    v22 = 0;
    goto LABEL_25;
  }

  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  v24 = 0;
  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    v5 = qword_100229480;
    objc_opt_class();
    objc_opt_class();
    _NRLogWithArgs();
    v24 = 0;
    goto LABEL_40;
  }

LABEL_41:

  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  if (self)
  {
    [v5 encodeObject:self->_remoteAddress forKey:@"remoteAddress"];
    [v5 encodeObject:self->_remoteAddressType forKey:@"remoteAddressType"];
    [v5 encodeObject:self->_salt forKey:@"salt"];
    [v5 encodeObject:self->_irkData forKey:@"irkData"];
    sharedSecret = self->_sharedSecret;
  }

  else
  {
    [v5 encodeObject:0 forKey:@"remoteAddress"];
    [v5 encodeObject:0 forKey:@"remoteAddressType"];
    [v5 encodeObject:0 forKey:@"salt"];
    [v5 encodeObject:0 forKey:@"irkData"];
    sharedSecret = 0;
  }

  [v5 encodeObject:sharedSecret forKey:@"sharedSecret"];
}

- (NRDLDPairingInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NRDLDPairingInfo;
  v5 = [(NRDLDPairingInfo *)&v33 init];
  if (!v5)
  {
    v28 = sub_10015B480();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v30 = sub_10015B480();
      _NRLogWithArgs();
    }

    _os_log_pack_size();
    __chkstk_darwin();
    v31 = *__error();
    v32 = _os_log_pack_fill();
    *v32 = 136446210;
    *(v32 + 4) = "[NRDLDPairingInfo initWithCoder:]";
    sub_10015B480();
    _NRLogAbortWithPack();
  }

  v6 = v5;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteAddress"];
  remoteAddress = v6->_remoteAddress;
  v6->_remoteAddress = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remoteAddressType"];
  remoteAddressType = v6->_remoteAddressType;
  v6->_remoteAddressType = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"salt"];
  salt = v6->_salt;
  v6->_salt = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"irkData"];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
    v16 = [v15 length];
    if (v16)
    {
      v17 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v15 bytes], v16);
    }

    else
    {
      v17 = objc_alloc_init(NSData);
    }

    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  irkData = v6->_irkData;
  v6->_irkData = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecret"];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
    v23 = [v22 length];
    if (v23)
    {
      v24 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v22 bytes], v23);
    }

    else
    {
      v24 = objc_alloc_init(NSData);
    }

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  sharedSecret = v6->_sharedSecret;
  v6->_sharedSecret = v25;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (self)
  {
    remoteAddress = self->_remoteAddress;
  }

  else
  {
    remoteAddress = 0;
  }

  v6 = remoteAddress;
  if (v4)
  {
    objc_storeStrong(v4 + 2, remoteAddress);
  }

  if (self)
  {
    remoteAddressType = self->_remoteAddressType;
  }

  else
  {
    remoteAddressType = 0;
  }

  v8 = remoteAddressType;
  if (v4)
  {
    objc_storeStrong(v4 + 3, remoteAddressType);
  }

  if (self)
  {
    salt = self->_salt;
  }

  else
  {
    salt = 0;
  }

  v10 = salt;
  if (v4)
  {
    objc_storeStrong(v4 + 5, salt);
  }

  if (self)
  {
    irkData = self->_irkData;
  }

  else
  {
    irkData = 0;
  }

  v12 = irkData;
  v13 = [(NSData *)v12 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 1, v13);
  }

  if (self)
  {
    sharedSecret = self->_sharedSecret;
  }

  else
  {
    sharedSecret = 0;
  }

  v15 = sharedSecret;
  v16 = [(NSData *)v15 copy];
  if (v4)
  {
    objc_storeStrong(v4 + 4, v16);
  }

  return v4;
}

@end