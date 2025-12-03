@interface CARBluetoothLEService
- (CARBluetoothLEChannel)activeChannel;
- (CARBluetoothLEService)initWithPeripheral:(id)peripheral serviceUUID:(id)d psmCharacteristicUUID:(id)iD;
- (CARBluetoothLEServiceDelegate)serviceDelegate;
- (void)_discoverService;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
@end

@implementation CARBluetoothLEService

- (CARBluetoothLEService)initWithPeripheral:(id)peripheral serviceUUID:(id)d psmCharacteristicUUID:(id)iD
{
  peripheralCopy = peripheral;
  dCopy = d;
  iDCopy = iD;
  v18.receiver = self;
  v18.super_class = CARBluetoothLEService;
  v12 = [(CARBluetoothLEService *)&v18 init];
  if (v12)
  {
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v14 = dispatch_queue_create("com.apple.carkit.BLE_service", v13);
    queue = v12->_queue;
    v12->_queue = v14;

    objc_storeStrong(&v12->_peripheral, peripheral);
    [peripheralCopy setDelegate:v12];
    objc_storeStrong(&v12->_serviceUUID, d);
    objc_storeStrong(&v12->_psmCharacteristicUUID, iD);
    currentConnectionState = v12->_currentConnectionState;
    v12->_currentConnectionState = 0;

    [(CARBluetoothLEService *)v12 _discoverService];
  }

  return v12;
}

- (void)_discoverService
{
  queue = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E964;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(queue, block);
}

- (CARBluetoothLEChannel)activeChannel
{
  currentConnectionState = [(CARBluetoothLEService *)self currentConnectionState];
  serviceChannel = [currentConnectionState serviceChannel];

  return serviceChannel;
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  queue = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EBD4;
  block[3] = &unk_1000DD6F0;
  v12 = servicesCopy;
  selfCopy = self;
  v14 = peripheralCopy;
  v9 = peripheralCopy;
  v10 = servicesCopy;
  dispatch_async(queue, block);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  queue = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EFD8;
  block[3] = &unk_1000DD6F0;
  block[4] = self;
  v13 = serviceCopy;
  v14 = peripheralCopy;
  v10 = peripheralCopy;
  v11 = serviceCopy;
  dispatch_async(queue, block);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  characteristicCopy = characteristic;
  errorCopy = error;
  queue = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F3E0;
  block[3] = &unk_1000DD6F0;
  block[4] = self;
  v13 = characteristicCopy;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = characteristicCopy;
  dispatch_async(queue, block);
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  queue = [(CARBluetoothLEService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F7B8;
  block[3] = &unk_1000DD6F0;
  v13 = channelCopy;
  v14 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  v11 = channelCopy;
  dispatch_async(queue, block);
}

- (CARBluetoothLEServiceDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceDelegate);

  return WeakRetained;
}

@end