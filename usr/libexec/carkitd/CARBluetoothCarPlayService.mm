@interface CARBluetoothCarPlayService
- (BOOL)isActive;
- (CARBluetoothCarPlayService)initWithPeripheral:(id)a3;
- (CARBluetoothCarPlayServiceDelegate)serviceDelegate;
- (id)_queue_popMessageForData:(id)a3;
- (void)_queue_handleFailedToSendMessage:(id)a3;
- (void)bluetoothLEChannel:(id)a3 didFailToSendData:(id)a4;
- (void)bluetoothLEChannel:(id)a3 didReceiveData:(id)a4;
- (void)bluetoothLEChannel:(id)a3 didSendData:(id)a4;
- (void)bluetoothLEService:(id)a3 didCloseChannel:(id)a4;
- (void)bluetoothLEService:(id)a3 didOpenChannel:(id)a4;
- (void)propertyListMessenger:(id)a3 didReceiveMessageWithIdentifier:(unsigned __int16)a4 contents:(id)a5;
- (void)sendMessage:(id)a3;
@end

@implementation CARBluetoothCarPlayService

- (CARBluetoothCarPlayService)initWithPeripheral:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = CARBluetoothCarPlayService;
  v6 = [(CARBluetoothCarPlayService *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripheral, a3);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v9 = dispatch_queue_create("com.apple.carkit.BLE_service", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = [CBUUID UUIDWithString:CBUUIDLECarPlayServiceString];
    v12 = [CBUUID UUIDWithString:CBUUIDLECarPlayL2CAPPSMCharacteristicString];
    v13 = [[CARBluetoothLEService alloc] initWithPeripheral:v5 serviceUUID:v11 psmCharacteristicUUID:v12];
    service = v7->_service;
    v7->_service = v13;

    [(CARBluetoothLEService *)v7->_service setServiceDelegate:v7];
    v15 = objc_alloc_init(CARPropertyListMessenger);
    plistMessenger = v7->_plistMessenger;
    v7->_plistMessenger = v15;

    [(CARPropertyListMessenger *)v7->_plistMessenger setMessageReceiver:v7];
    v17 = sub_1000378A4();
    messageClassesForIdentifiers = v7->_messageClassesForIdentifiers;
    v7->_messageClassesForIdentifiers = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    activeMessagesForDatas = v7->_activeMessagesForDatas;
    v7->_activeMessagesForDatas = v19;
  }

  return v7;
}

- (BOOL)isActive
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CARBluetoothCarPlayService *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100069148;
  v5[3] = &unk_1000DDA88;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v5 = [(CARBluetoothCarPlayService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069268;
  v7[3] = &unk_1000DD580;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_queue_popMessageForData:(id)a3
{
  v4 = a3;
  v5 = [(CARBluetoothCarPlayService *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CARBluetoothCarPlayService *)self activeMessagesForDatas];
  v7 = [v6 objectForKey:v4];

  if (v7)
  {
    v8 = [(CARBluetoothCarPlayService *)self activeMessagesForDatas];
    [v8 removeObjectForKey:v4];
  }

  return v7;
}

- (void)_queue_handleFailedToSendMessage:(id)a3
{
  v4 = a3;
  v5 = [(CARBluetoothCarPlayService *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100088DA4(v4, v6);
  }

  v7 = [(CARBluetoothCarPlayService *)self serviceDelegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 carPlayService:self didFailToSendMessage:v4];
  }
}

- (void)propertyListMessenger:(id)a3 didReceiveMessageWithIdentifier:(unsigned __int16)a4 contents:(id)a5
{
  v7 = a5;
  v8 = [(CARBluetoothCarPlayService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069658;
  block[3] = &unk_1000DFD18;
  v12 = a4;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)bluetoothLEService:(id)a3 didOpenChannel:(id)a4
{
  v5 = a4;
  v6 = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000698B4;
  v8[3] = &unk_1000DD580;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)bluetoothLEService:(id)a3 didCloseChannel:(id)a4
{
  v5 = a4;
  v6 = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069A54;
  v8[3] = &unk_1000DD580;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)bluetoothLEChannel:(id)a3 didSendData:(id)a4
{
  v5 = a4;
  v6 = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069CC8;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)bluetoothLEChannel:(id)a3 didFailToSendData:(id)a4
{
  v5 = a4;
  v6 = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069E0C;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)bluetoothLEChannel:(id)a3 didReceiveData:(id)a4
{
  v5 = a4;
  v6 = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069F24;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (CARBluetoothCarPlayServiceDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceDelegate);

  return WeakRetained;
}

@end