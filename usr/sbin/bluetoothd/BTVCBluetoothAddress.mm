@interface BTVCBluetoothAddress
- (BOOL)_resolveUsingIRK:(char *)k irk:(char *)irk;
- (BTVCBluetoothAddress)init;
- (BTVCBluetoothAddress)initWithDeviceAddres:(id)addres;
- (BTVCBluetoothAddress)initWithDeviceAddresAndType:(char *)type addressType:(unsigned __int8)addressType;
- (BTVCBluetoothAddress)initWithDeviceAddresData:(id)data;
- (id)description;
- (id)getAddressToNSDataWithType;
- (id)resolveAddress:(id)address;
- (void)setAddressFromNSDataWithType:(id)type;
@end

@implementation BTVCBluetoothAddress

- (BTVCBluetoothAddress)initWithDeviceAddres:(id)addres
{
  addresCopy = addres;
  v18.receiver = self;
  v18.super_class = BTVCBluetoothAddress;
  v5 = [(BTVCBluetoothAddress *)&v18 init];
  if (v5)
  {
    if (addresCopy)
    {
      v6 = [NSData alloc];
      addressData = [addresCopy addressData];
      v8 = [v6 initWithData:addressData];
      [(BTVCBluetoothAddress *)v5 setAddressData:v8];

      -[BTVCBluetoothAddress setAddressType:](v5, "setAddressType:", [addresCopy addressType]);
      v9 = [NSData alloc];
      addressWithType = [addresCopy addressWithType];
      v11 = [v9 initWithData:addressWithType];
      [(BTVCBluetoothAddress *)v5 setAddressWithType:v11];

      rpaData = [addresCopy rpaData];

      if (rpaData)
      {
        v13 = [NSData alloc];
        rpaData2 = [addresCopy rpaData];
        v15 = [v13 initWithData:rpaData2];
        [(BTVCBluetoothAddress *)v5 setRpaData:v15];
      }
    }

    v16 = v5;
  }

  return v5;
}

- (BTVCBluetoothAddress)initWithDeviceAddresAndType:(char *)type addressType:(unsigned __int8)addressType
{
  addressTypeCopy = addressType;
  v11.receiver = self;
  v11.super_class = BTVCBluetoothAddress;
  v6 = [(BTVCBluetoothAddress *)&v11 init];
  if (v6)
  {
    if (type)
    {
      v7 = [[NSData alloc] initWithBytes:type length:6];
      [(BTVCBluetoothAddress *)v6 setAddressData:v7];

      [(BTVCBluetoothAddress *)v6 setAddressType:addressTypeCopy];
      getAddressToNSDataWithType = [(BTVCBluetoothAddress *)v6 getAddressToNSDataWithType];
      [(BTVCBluetoothAddress *)v6 setAddressWithType:getAddressToNSDataWithType];
    }

    v9 = v6;
  }

  return v6;
}

- (BTVCBluetoothAddress)initWithDeviceAddresData:(id)data
{
  dataCopy = data;
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
      v14 = dataCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s %@\n", buf, 0x16u);
    }

    if (dataCopy)
    {
      [(BTVCBluetoothAddress *)v5 setAddressFromNSDataWithType:dataCopy];
      v7 = [[NSData alloc] initWithData:dataCopy];
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

- (id)resolveAddress:(id)address
{
  addressCopy = address;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    irkData = self->_irkData;
    v13 = 136315650;
    v14 = "[BTVCBluetoothAddress resolveAddress:]";
    v15 = 2112;
    v16 = addressCopy;
    v17 = 2112;
    v18 = irkData;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s resolvable address: %@, irk %@", &v13, 0x20u);
  }

  v7 = addressCopy;
  if ([(BTVCBluetoothAddress *)self _resolveUsingIRK:[(NSData *)addressCopy bytes] irk:[(NSData *)self->_irkData bytes]])
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
      v18 = addressCopy;
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

- (BOOL)_resolveUsingIRK:(char *)k irk:(char *)irk
{
  LOBYTE(v4) = 0;
  v11 = 0;
  v10 = 0;
  if (k && irk)
  {
    if ((*k & 0x40) != 0)
    {
      if (sub_1003CE098(irk, k, &v10))
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
        kCopy = &v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s output %.3P", buf, 0x1Cu);
      }

      LOBYTE(v4) = v10 == *(k + 3) && v11 == k[5];
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
        kCopy = k;
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

- (void)setAddressFromNSDataWithType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy subdataWithRange:{0, 6}];
  addressData = self->_addressData;
  self->_addressData = v4;

  self->_addressType = *([typeCopy bytes] + 6);
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