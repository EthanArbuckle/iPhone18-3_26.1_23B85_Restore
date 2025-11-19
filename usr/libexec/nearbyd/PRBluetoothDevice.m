@interface PRBluetoothDevice
- (BOOL)isMobilePhoneModel;
- (BOOL)systemKeyRelationship;
- (NIDiscoveryToken)discoveryToken;
- (NSData)discoveryTokenData;
- (PRBluetoothDevice)initWithCBDevice:(id)a3;
- (array<unsigned)btAdvertisingAddress;
- (unint64_t)u64Identifier;
@end

@implementation PRBluetoothDevice

- (PRBluetoothDevice)initWithCBDevice:(id)a3
{
  v6 = a3;
  v7 = [v6 btAddressData];

  if (!v7)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PRBluetoothDevice.mm" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"cbDevice.btAddressData"}];
  }

  v15.receiver = self;
  v15.super_class = PRBluetoothDevice;
  v8 = [(PRBluetoothDevice *)&v15 init];
  p_isa = &v8->super.isa;
  if (!v8 || (objc_storeStrong(&v8->_cbDevice, a3), ([p_isa systemKeyRelationship] & 1) != 0) || (objc_msgSend(p_isa[1], "spatialInteractionTokenData"), v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = p_isa;
  }

  else
  {
    v13 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_FAULT))
    {
      sub_1004AD594(v6, v13);
    }

    v11 = 0;
  }

  return v11;
}

- (NSData)discoveryTokenData
{
  v3 = [(CBDevice *)self->_cbDevice spatialInteractionTokenData];

  if (v3)
  {
    v4 = [(CBDevice *)self->_cbDevice spatialInteractionTokenData];
  }

  else
  {
    if ([(PRBluetoothDevice *)self systemKeyRelationship])
    {
      v5 = [(PRBluetoothDevice *)self idsDeviceID];

      if (v5)
      {
        v6 = [(PRBluetoothDevice *)self idsDeviceID];
        v7 = [v6 dataUsingEncoding:4];

        goto LABEL_8;
      }
    }

    [NSException raise:NSInternalInconsistencyException format:@"Device does not have a discovery token nor is it a known device. %@", self->_cbDevice];
    v4 = objc_opt_new();
  }

  v7 = v4;
LABEL_8:

  return v7;
}

- (NIDiscoveryToken)discoveryToken
{
  v3 = [NIDiscoveryToken alloc];
  v4 = [(PRBluetoothDevice *)self discoveryTokenData];
  v5 = [(NIDiscoveryToken *)v3 initWithBytes:v4];

  return v5;
}

- (array<unsigned)btAdvertisingAddress
{
  v3 = [(CBDevice *)self->_cbDevice btAddressData];
  if (!v3)
  {
    sub_1004AD60C();
  }

  v4 = [(CBDevice *)self->_cbDevice btAddressData];
  [v4 getBytes:&v9 length:6];

  v5 = 0;
  for (i = 5; i != 2; --i)
  {
    v7 = *(&v9 + v5);
    *(&v9 + v5) = *(&v9 + i);
    *(&v9 + i) = v7;
    ++v5;
  }

  return (v9 | (v10 << 32));
}

- (unint64_t)u64Identifier
{
  v3 = [(CBDevice *)self->_cbDevice btAddressData];
  if (!v3)
  {
    sub_1004AD638();
  }

  v4 = [(CBDevice *)self->_cbDevice btAddressData];
  v5 = sub_1000298A8(v4);

  return v5;
}

- (BOOL)systemKeyRelationship
{
  if (([(CBDevice *)self->_cbDevice deviceFlags]& 0x80) != 0 || ([(CBDevice *)self->_cbDevice deviceFlags]& 0x100) != 0)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    return ([(CBDevice *)self->_cbDevice deviceFlags]>> 9) & 1;
  }

  return v3;
}

- (BOOL)isMobilePhoneModel
{
  v3 = [(CBDevice *)self->_cbDevice model];
  if (v3)
  {
    v4 = [(CBDevice *)self->_cbDevice model];
    v5 = [v4 hasPrefix:@"iPhone"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end