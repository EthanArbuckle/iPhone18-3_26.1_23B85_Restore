@interface CARBluetoothCarPlayService
- (BOOL)isActive;
- (CARBluetoothCarPlayService)initWithPeripheral:(id)peripheral;
- (CARBluetoothCarPlayServiceDelegate)serviceDelegate;
- (id)_queue_popMessageForData:(id)data;
- (void)_queue_handleFailedToSendMessage:(id)message;
- (void)bluetoothLEChannel:(id)channel didFailToSendData:(id)data;
- (void)bluetoothLEChannel:(id)channel didReceiveData:(id)data;
- (void)bluetoothLEChannel:(id)channel didSendData:(id)data;
- (void)bluetoothLEService:(id)service didCloseChannel:(id)channel;
- (void)bluetoothLEService:(id)service didOpenChannel:(id)channel;
- (void)propertyListMessenger:(id)messenger didReceiveMessageWithIdentifier:(unsigned __int16)identifier contents:(id)contents;
- (void)sendMessage:(id)message;
@end

@implementation CARBluetoothCarPlayService

- (CARBluetoothCarPlayService)initWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v22.receiver = self;
  v22.super_class = CARBluetoothCarPlayService;
  v6 = [(CARBluetoothCarPlayService *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripheral, peripheral);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v9 = dispatch_queue_create("com.apple.carkit.BLE_service", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = [CBUUID UUIDWithString:CBUUIDLECarPlayServiceString];
    v12 = [CBUUID UUIDWithString:CBUUIDLECarPlayL2CAPPSMCharacteristicString];
    v13 = [[CARBluetoothLEService alloc] initWithPeripheral:peripheralCopy serviceUUID:v11 psmCharacteristicUUID:v12];
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CARBluetoothCarPlayService *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100069148;
  v5[3] = &unk_1000DDA88;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  queue = [(CARBluetoothCarPlayService *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069268;
  v7[3] = &unk_1000DD580;
  v8 = messageCopy;
  selfCopy = self;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

- (id)_queue_popMessageForData:(id)data
{
  dataCopy = data;
  queue = [(CARBluetoothCarPlayService *)self queue];
  dispatch_assert_queue_V2(queue);

  activeMessagesForDatas = [(CARBluetoothCarPlayService *)self activeMessagesForDatas];
  v7 = [activeMessagesForDatas objectForKey:dataCopy];

  if (v7)
  {
    activeMessagesForDatas2 = [(CARBluetoothCarPlayService *)self activeMessagesForDatas];
    [activeMessagesForDatas2 removeObjectForKey:dataCopy];
  }

  return v7;
}

- (void)_queue_handleFailedToSendMessage:(id)message
{
  messageCopy = message;
  queue = [(CARBluetoothCarPlayService *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100088DA4(messageCopy, v6);
  }

  serviceDelegate = [(CARBluetoothCarPlayService *)self serviceDelegate];
  if (serviceDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [serviceDelegate carPlayService:self didFailToSendMessage:messageCopy];
  }
}

- (void)propertyListMessenger:(id)messenger didReceiveMessageWithIdentifier:(unsigned __int16)identifier contents:(id)contents
{
  contentsCopy = contents;
  queue = [(CARBluetoothCarPlayService *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069658;
  block[3] = &unk_1000DFD18;
  identifierCopy = identifier;
  block[4] = self;
  v11 = contentsCopy;
  v9 = contentsCopy;
  dispatch_async(queue, block);
}

- (void)bluetoothLEService:(id)service didOpenChannel:(id)channel
{
  channelCopy = channel;
  queue = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000698B4;
  v8[3] = &unk_1000DD580;
  v9 = channelCopy;
  selfCopy = self;
  v7 = channelCopy;
  dispatch_async(queue, v8);
}

- (void)bluetoothLEService:(id)service didCloseChannel:(id)channel
{
  channelCopy = channel;
  queue = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069A54;
  v8[3] = &unk_1000DD580;
  v9 = channelCopy;
  selfCopy = self;
  v7 = channelCopy;
  dispatch_async(queue, v8);
}

- (void)bluetoothLEChannel:(id)channel didSendData:(id)data
{
  dataCopy = data;
  queue = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069CC8;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(queue, v8);
}

- (void)bluetoothLEChannel:(id)channel didFailToSendData:(id)data
{
  dataCopy = data;
  queue = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069E0C;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(queue, v8);
}

- (void)bluetoothLEChannel:(id)channel didReceiveData:(id)data
{
  dataCopy = data;
  queue = [(CARBluetoothCarPlayService *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100069F24;
  v8[3] = &unk_1000DD580;
  v8[4] = self;
  v9 = dataCopy;
  v7 = dataCopy;
  dispatch_async(queue, v8);
}

- (CARBluetoothCarPlayServiceDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceDelegate);

  return WeakRetained;
}

@end