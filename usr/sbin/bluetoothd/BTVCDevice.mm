@interface BTVCDevice
- (BTVCDevice)init;
- (BTVCDevice)initWithDeviceAddres:(id)addres;
- (BTVCDevice)initWithDeviceAddresData:(id)data;
@end

@implementation BTVCDevice

- (BTVCDevice)initWithDeviceAddres:(id)addres
{
  addresCopy = addres;
  v11.receiver = self;
  v11.super_class = BTVCDevice;
  v5 = [(BTVCDevice *)&v11 init];
  if (v5)
  {
    v6 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[BTVCDevice initWithDeviceAddres:]";
      v14 = 2112;
      v15 = addresCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s initWithDeviceAddres %@\n", buf, 0x16u);
    }

    v7 = [[BTVCBluetoothAddress alloc] initWithDeviceAddres:addresCopy];
    bluetoothAddress = v5->_bluetoothAddress;
    v5->_bluetoothAddress = v7;

    v9 = v5;
  }

  return v5;
}

- (BTVCDevice)initWithDeviceAddresData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = BTVCDevice;
  v5 = [(BTVCDevice *)&v8 init];
  if (v5)
  {
    v6 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[BTVCDevice initWithDeviceAddresData:]";
      v11 = 2112;
      v12 = dataCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s address %@\n", buf, 0x16u);
    }

    sub_100850198(v5, [[BTVCBluetoothAddress alloc] initWithDeviceAddresData:dataCopy]);
  }

  return v5;
}

- (BTVCDevice)init
{
  v6.receiver = self;
  v6.super_class = BTVCDevice;
  v2 = [(BTVCDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end