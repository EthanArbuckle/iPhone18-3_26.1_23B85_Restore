@interface BTVCBluetoothAddress
- (BOOL)_resolveUsingIRK:(char *)a3 irk:(char *)a4;
- (BTVCBluetoothAddress)init;
- (BTVCBluetoothAddress)initWithDeviceAddres:(id)a3;
- (BTVCBluetoothAddress)initWithDeviceAddresAndType:(char *)a3 addressType:(unsigned __int8)a4;
- (BTVCBluetoothAddress)initWithDeviceAddresData:(id)a3;
- (id)description;
- (id)getAddressToNSDataWithType;
- (id)resolveAddress:(id)a3;
- (void)setAddressFromNSDataWithType:(id)a3;
@end

@implementation BTVCBluetoothAddress

- (BTVCBluetoothAddress)initWithDeviceAddres:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BTVCBluetoothAddress;
  v5 = [(BTVCBluetoothAddress *)&v18 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [NSData alloc];
      v7 = [v4 addressData];
      v8 = [v6 initWithData:v7];
      [(BTVCBluetoothAddress *)v5 setAddressData:v8];

      -[BTVCBluetoothAddress setAddressType:](v5, "setAddressType:", [v4 addressType]);
      v9 = [NSData alloc];
      v10 = [v4 addressWithType];
      v11 = [v9 initWithData:v10];
      [(BTVCBluetoothAddress *)v5 setAddressWithType:v11];

      v12 = [v4 rpaData];

      if (v12)
      {
        v13 = [NSData alloc];
        v14 = [v4 rpaData];
        v15 = [v13 initWithData:v14];
        [(BTVCBluetoothAddress *)v5 setRpaData:v15];
      }
    }

    v16 = v5;
  }

  return v5;
}

- (BTVCBluetoothAddress)initWithDeviceAddresAndType:(char *)a3 addressType:(unsigned __int8)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = BTVCBluetoothAddress;
  v6 = [(BTVCBluetoothAddress *)&v11 init];
  if (v6)
  {
    if (a3)
    {
      v7 = [[NSData alloc] initWithBytes:a3 length:6];
      [(BTVCBluetoothAddress *)v6 setAddressData:v7];

      [(BTVCBluetoothAddress *)v6 setAddressType:v4];
      v8 = [(BTVCBluetoothAddress *)v6 getAddressToNSDataWithType];
      [(BTVCBluetoothAddress *)v6 setAddressWithType:v8];
    }

    v9 = v6;
  }

  return v6;
}

- (BTVCBluetoothAddress)initWithDeviceAddresData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BTVCBluetoothAddress;
  v5 = [(BTVCBluetoothAddress *)&v10 init];
  if (v5)
  {
    v6 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[BTVCBluetoothAddress initWithDeviceAddresData:]";
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@\n", buf, 0x16u);
    }

    if (v4)
    {
      [(BTVCBluetoothAddress *)v5 setAddressFromNSDataWithType:v4];
      v7 = [[NSData alloc] initWithData:v4];
      [(BTVCBluetoothAddress *)v5 setAddressWithType:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v10[1] = 0;
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_irkData)
  {
    v10[0] = v3;
    v5 = v10;
    NSAppendPrintF();
  }

  else
  {
    v9 = v3;
    v5 = &v9;
    NSAppendPrintF();
  }

  v6 = *v5;
  v7 = v6;

  return v6;
}

- (id)resolveAddress:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    irkData = self->_irkData;
    v13 = 136315650;
    v14 = "[BTVCBluetoothAddress resolveAddress:]";
    v15 = 2112;
    v16 = v4;
    v17 = 2112;
    v18 = irkData;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s resolvable address: %@, irk %@", &v13, 0x20u);
  }

  v7 = v4;
  if ([(BTVCBluetoothAddress *)self _resolveUsingIRK:[(NSData *)v4 bytes] irk:[(NSData *)self->_irkData bytes]])
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      addressData = self->_addressData;
      v10 = self->_irkData;
      v13 = 136315906;
      v14 = "[BTVCBluetoothAddress resolveAddress:]";
      v15 = 2112;
      v16 = addressData;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s address: %@ resolvable address: %@, irk %@", &v13, 0x2Au);
    }

    v11 = self->_addressWithType;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_resolveUsingIRK:(char *)a3 irk:(char *)a4
{
  LOBYTE(v4) = 0;
  v11 = 0;
  v10 = 0;
  if (a3 && a4)
  {
    if ((*a3 & 0x40) != 0)
    {
      if (sub_1003CE098(a4, a3, &v10))
      {
        goto LABEL_7;
      }

      v7 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = "[BTVCBluetoothAddress _resolveUsingIRK:irk:]";
        v14 = 1040;
        v15 = 3;
        v16 = 2096;
        v17 = &v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s output %.3P", buf, 0x1Cu);
      }

      LOBYTE(v4) = v10 == *(a3 + 3) && v11 == a3[5];
    }

    else
    {
      v6 = qword_100BCEA70;
      v4 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
      if (v4)
      {
        *buf = 136315650;
        v13 = "[BTVCBluetoothAddress _resolveUsingIRK:irk:]";
        v14 = 1040;
        v15 = 6;
        v16 = 2096;
        v17 = a3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s address is not resolable address %.6P", buf, 0x1Cu);
LABEL_7:
        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

- (id)getAddressToNSDataWithType
{
  v3 = +[NSMutableData data];
  [v3 appendBytes:-[NSData bytes](self->_addressData length:{"bytes"), 6}];
  [v3 appendBytes:&self->_addressType length:1];

  return v3;
}

- (void)setAddressFromNSDataWithType:(id)a3
{
  v6 = a3;
  v4 = [v6 subdataWithRange:{0, 6}];
  addressData = self->_addressData;
  self->_addressData = v4;

  self->_addressType = *([v6 bytes] + 6);
}

- (BTVCBluetoothAddress)init
{
  v6.receiver = self;
  v6.super_class = BTVCBluetoothAddress;
  v2 = [(BTVCBluetoothAddress *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end