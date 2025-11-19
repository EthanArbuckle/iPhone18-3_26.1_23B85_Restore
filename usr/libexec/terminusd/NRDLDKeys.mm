@interface NRDLDKeys
- (NRDLDKeys)initWithCoder:(id)a3;
@end

@implementation NRDLDKeys

- (NRDLDKeys)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remotePublicKey"];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v7 length];
    if (v8)
    {
      v9 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v7 bytes], v8);
    }

    else
    {
      v9 = objc_alloc_init(NSData);
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (self)
  {
    objc_storeStrong(&self->_remotePublicKey, v10);
  }

  if (v6)
  {
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localPublicKey"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
    v14 = [v13 length];
    if (v14)
    {
      v15 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v13 bytes], v14);
    }

    else
    {
      v15 = objc_alloc_init(NSData);
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (self)
  {
    objc_storeStrong(&self->_localPublicKey, v16);
  }

  if (v12)
  {
  }

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localPrivateKey"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    v20 = [v19 length];
    if (v20)
    {
      v21 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v19 bytes], v20);
    }

    else
    {
      v21 = objc_alloc_init(NSData);
    }

    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (self)
  {
    objc_storeStrong(&self->_localPrivateKey, v22);
  }

  if (v18)
  {
  }

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedSecret"];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
    v26 = [v25 length];
    if (v26)
    {
      v27 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v25 bytes], v26);
    }

    else
    {
      v27 = objc_alloc_init(NSData);
    }

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  if (self)
  {
    objc_storeStrong(&self->_sharedSecret, v28);
  }

  if (v24)
  {
  }

  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dhLocalPublic"];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
    v32 = [v31 length];
    if (v32)
    {
      v33 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v31 bytes], v32);
    }

    else
    {
      v33 = objc_alloc_init(NSData);
    }

    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (self)
  {
    objc_storeStrong(&self->_dhLocalPublic, v34);
  }

  if (v30)
  {
  }

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dhLocalPrivate"];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
    v38 = [v37 length];
    if (v38)
    {
      v39 = +[NSData _newZeroingDataWithBytes:length:](NSData, "_newZeroingDataWithBytes:length:", [v37 bytes], v38);
    }

    else
    {
      v39 = objc_alloc_init(NSData);
    }

    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  if (self)
  {
    objc_storeStrong(&self->_dhLocalPrivate, v40);
  }

  if (v36)
  {
  }

  return self;
}

@end