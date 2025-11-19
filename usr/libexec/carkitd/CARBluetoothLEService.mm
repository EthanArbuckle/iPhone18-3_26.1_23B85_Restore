@interface CARBluetoothLEService
- (CARBluetoothLEChannel)activeChannel;
- (CARBluetoothLEService)initWithPeripheral:(id)a3 serviceUUID:(id)a4 psmCharacteristicUUID:(id)a5;
- (CARBluetoothLEServiceDelegate)serviceDelegate;
- (void)_discoverService;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
@end

@implementation CARBluetoothLEService

- (CARBluetoothLEService)initWithPeripheral:(id)a3 serviceUUID:(id)a4 psmCharacteristicUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = CARBluetoothLEService;
  v12 = [(CARBluetoothLEService *)&v18 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_create("com.apple.carkit.BLE_service", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_peripheral, a3);
    [v9 setDelegate:v12];
    objc_storeStrong(&v12->_serviceUUID, a4);
    objc_storeStrong(&v12->_psmCharacteristicUUID, a5);
    currentConnectionState = v12->_currentConnectionState;
    v12->_currentConnectionState = 0;

    [(CARBluetoothLEService *)v12 _discoverService];
  }

  return v12;
}

- (void)_discoverService
{
  v3 = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E964;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(v3, block);
}

- (CARBluetoothLEChannel)activeChannel
{
  v2 = [(CARBluetoothLEService *)self currentConnectionState];
  v3 = [v2 serviceChannel];

  return v3;
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EBD4;
  block[3] = &unk_1000DD6F0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EFD8;
  block[3] = &unk_1000DD6F0;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
  dispatch_async(v9, block);
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F3E0;
  block[3] = &unk_1000DD6F0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F7B8;
  block[3] = &unk_1000DD6F0;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (CARBluetoothLEServiceDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceDelegate);

  return WeakRetained;
}

@end