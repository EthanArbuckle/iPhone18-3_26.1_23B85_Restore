@interface BTVCConnectionManager
+ (BTVCConnectionManager)sharedConnectionManager;
- (BOOL)isInConnectionList:(id)list;
- (BTVCConnectionManager)init;
- (id)description;
- (int)startConnectionToDevice:(id)device peerAddress:(id)address localAddress:(id)localAddress owner:(id)owner connected:(BOOL *)connected;
- (int64_t)_getAvaliableConnectionHandle;
- (unsigned)leCreateConnectionCancel;
- (unsigned)leExtendedCreateConnection:(id)connection;
- (unsigned)leSetPublicAddress:(id)address;
- (unsigned)leSetRandomAddress:(id)address;
- (unsigned)sendDataToPeer:(char *)peer dataLength:(unsigned __int16)length;
- (void)_activate;
- (void)_btvcLinkReceivedData:(id)data packetBoundaryFlag:(unsigned __int16)flag connection:(id)connection;
- (void)_handleCommandStatus:(unsigned __int8)status numHciCommandPackets:(unsigned __int8)packets opcode:(unsigned __int16)opcode;
- (void)_handleDisconnectionComplete:(id)complete status:(unsigned __int8)status reason:(unsigned __int8)reason;
- (void)_handleHciEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length;
- (void)_handleLeConnectionComplete:(id)complete status:(unsigned __int8)status;
- (void)_handleLeMetaEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length;
- (void)_handleLmpEvent:(id)event;
- (void)_invalidate;
- (void)_registerCallbacks:(id)callbacks;
- (void)_reset;
- (void)_setConnectionHandle:(int64_t)handle allocated:(BOOL)allocated;
- (void)_systemHasPoweredOn;
- (void)_systemWillSleep;
- (void)_update;
- (void)activate;
- (void)btvcBonjourLink:(id)link didDisconnectFromPeer:(id)peer address:(id)address error:(id)error;
- (void)forEachConnection:(id)connection;
- (void)handleConnection:(id)connection peerAddress:(id)address parameters:(id)parameters;
- (void)handleHciCommandsForConnection:(unsigned __int16)connection params:(id)params;
- (void)invalidate;
- (void)prefsChanged;
- (void)reset;
- (void)stopConnectionToDevice:(id)device owner:(id)owner;
- (void)update;
@end

@implementation BTVCConnectionManager

+ (BTVCConnectionManager)sharedConnectionManager
{
  if (qword_100B6D300 != -1)
  {
    sub_100821160();
  }

  v3 = qword_100BCE4D8;

  return v3;
}

- (BTVCConnectionManager)init
{
  v6.receiver = self;
  v6.super_class = BTVCConnectionManager;
  v2 = [(BTVCConnectionManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, &_dispatch_main_q);
    v4 = v3;
  }

  return v3;
}

- (id)description
{
  NSAppendPrintF();

  return 0;
}

- (void)activate
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[BTVCConnectionManager activate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037F570;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BTVCConnectionManager _activate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", &v4, 0xCu);
  }

  self->_activated = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  *self->_connectionHandles = 0u;
  *&self->_connectionHandles[16] = 0u;
  *&self->_connectionHandles[32] = 0u;
  *&self->_connectionHandles[48] = 0u;
  *&self->_connectionHandles[64] = 0u;
  *&self->_connectionHandles[80] = 0u;
  *&self->_connectionHandles[96] = 0;
  [(BTVCConnectionManager *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037F6E4;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCConnectionManager] Invalidate\n", v5, 2u);
  }

  [(BTVCConnectionManager *)self forEachConnection:&stru_100AEE580];
  [(NSMutableDictionary *)self->_connections removeAllObjects];
  connections = self->_connections;
  self->_connections = 0;

  *&self->_connectionHandles[96] = 0;
  *&self->_connectionHandles[80] = 0u;
  *&self->_connectionHandles[64] = 0u;
  *&self->_connectionHandles[48] = 0u;
  *&self->_connectionHandles[32] = 0u;
  *&self->_connectionHandles[16] = 0u;
  *self->_connectionHandles = 0u;
  self->_activated = 0;
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCConnectionManager *)self _update];
}

- (void)update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCConnectionManager *)self _update];
}

- (void)_update
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BTVCConnectionManager _update]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", &v4, 0xCu);
  }

  if (!self->_activated && os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100821174();
  }
}

- (void)reset
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[BTVCConnectionManager reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10037FA04;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_reset
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[BTVCConnectionManager _reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", &v6, 0xCu);
  }

  if (self->_activated)
  {
    connectParams = self->_connectParams;
    self->_connectParams = 0;

    self->_connectActivated = 0;
    [(BTVCConnectionManager *)self forEachConnection:&stru_100AEE5A0];
    [(NSMutableDictionary *)self->_connections removeAllObjects];
    connections = self->_connections;
    self->_connections = 0;
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_1008211B4();
  }
}

- (BOOL)isInConnectionList:(id)list
{
  listCopy = list;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    connections = self->_connections;
    *buf = 136315650;
    v22 = "[BTVCConnectionManager isInConnectionList:]";
    v23 = 2112;
    v24 = connections;
    v25 = 2112;
    v26 = listCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s connections %@ device %@", buf, 0x20u);
  }

  objectEnumerator = [(NSMutableDictionary *)self->_connections objectEnumerator];
  *&v8 = 136315650;
  v20 = v8;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];
    v10 = qword_100BCEA70;
    if (!nextObject)
    {
      break;
    }

    v11 = qword_100BCEA70;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      peerDevice = [nextObject peerDevice];
      bluetoothAddress = [peerDevice bluetoothAddress];
      *buf = v20;
      v22 = "[BTVCConnectionManager isInConnectionList:]";
      v23 = 2112;
      v24 = bluetoothAddress;
      v25 = 2112;
      v26 = listCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ztest %s connected device %@ device %@", buf, 0x20u);
    }

    peerDevice2 = [nextObject peerDevice];
    bluetoothAddress2 = [peerDevice2 bluetoothAddress];
    addressData = [bluetoothAddress2 addressData];
    v17 = [addressData isEqual:listCopy];

    if (v17)
    {
      v18 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v22 = "[BTVCConnectionManager isInConnectionList:]";
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ztest %s found", buf, 0xCu);
      }

      goto LABEL_14;
    }
  }

  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[BTVCConnectionManager isInConnectionList:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ztest %s not found", buf, 0xCu);
  }

LABEL_14:

  return nextObject != 0;
}

- (void)forEachConnection:(id)connection
{
  connectionCopy = connection;
  objectEnumerator = [(NSMutableDictionary *)self->_connections objectEnumerator];
  v5 = 0;
  while (1)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    v5 = nextObject;
    connectionCopy[2](connectionCopy, nextObject);
  }
}

- (unsigned)leSetPublicAddress:(id)address
{
  addressCopy = address;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCConnectionManager leSetPublicAddress:]";
    v10 = 2112;
    v11 = addressCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s address %@", &v8, 0x16u);
  }

  publicAddress = self->_publicAddress;
  self->_publicAddress = addressCopy;

  return 0;
}

- (unsigned)leSetRandomAddress:(id)address
{
  addressCopy = address;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCConnectionManager leSetRandomAddress:]";
    v10 = 2112;
    v11 = addressCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s address %@", &v8, 0x16u);
  }

  randomAddress = self->_randomAddress;
  self->_randomAddress = addressCopy;

  return 0;
}

- (void)handleHciCommandsForConnection:(unsigned __int16)connection params:(id)params
{
  connectionCopy = connection;
  paramsCopy = params;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[BTVCConnectionManager handleHciCommandsForConnection:params:]";
    v14 = 1024;
    v15 = connectionCopy;
    v16 = 2112;
    v17 = paramsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s handleHciCommands opCpde 0x%04X params %@", &v12, 0x1Cu);
  }

  v8 = paramsCopy;
  v9 = [[NSNumber alloc] initWithInt:{*objc_msgSend(paramsCopy, "bytes")}];
  v10 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    [v10 handleHciCommands:connectionCopy params:paramsCopy];
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008211F4();
    }

    [(BTVCConnectionManager *)self _handleCommandStatus:2 numHciCommandPackets:1 opcode:connectionCopy];
  }
}

- (unsigned)leCreateConnectionCancel
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[BTVCConnectionManager leCreateConnectionCancel]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCConnectionManager]:%s", &v5, 0xCu);
  }

  self->_connectActivated = 0;
  [(BTVCConnectionManager *)self _handleLeConnectionComplete:0 status:2];
  return 0;
}

- (unsigned)leExtendedCreateConnection:(id)connection
{
  connectionCopy = connection;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 136315394;
    *&v14[4] = "[BTVCConnectionManager leExtendedCreateConnection:]";
    v15 = 2112;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BTVCConnectionManager:%s connect parameters:%@", v14, 0x16u);
  }

  *v14 = 0;
  self->_connectActivated = 1;
  connectParams = self->_connectParams;
  if (connectParams)
  {
    self->_connectParams = 0;
  }

  v7 = objc_alloc_init(BTVCConnectionParams);
  v8 = self->_connectParams;
  self->_connectParams = v7;

  if (self->_connections)
  {
    v9 = NSDictionaryGetNSNumber();
    -[BTVCConnectionParams setConnInterval:](self->_connectParams, "setConnInterval:", [v9 intValue]);

    v10 = NSDictionaryGetNSNumber();
    -[BTVCConnectionParams setConnPeripheralLatency:](self->_connectParams, "setConnPeripheralLatency:", [v10 intValue]);

    v11 = NSDictionaryGetNSNumber();
    -[BTVCConnectionParams setConnSupervisionTimeout:](self->_connectParams, "setConnSupervisionTimeout:", [v11 intValue]);

    [(BTVCConnectionParams *)self->_connectParams setCentralSCA:0];
  }

  v12 = NSDictionaryGetNSNumber();
  self->_currentAddressType = [v12 intValue];

  return 0;
}

- (int)startConnectionToDevice:(id)device peerAddress:(id)address localAddress:(id)localAddress owner:(id)owner connected:(BOOL *)connected
{
  deviceCopy = device;
  addressCopy = address;
  localAddressCopy = localAddress;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  leConnectionEnabled = self->_leConnectionEnabled;
  v14 = qword_100BCEA70;
  v15 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
  if (leConnectionEnabled)
  {
    if (v15)
    {
      *buf = 138412546;
      v33 = addressCopy;
      v34 = 2112;
      v35 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating BLE connection for device %@ endpoint %@\n", buf, 0x16u);
    }

    if (localAddressCopy)
    {
      v16 = [[BTVCBluetoothAddress alloc] initWithDeviceAddres:localAddressCopy];
    }

    else
    {
      v17 = 24;
      if (!self->_currentAddressType)
      {
        v17 = 16;
      }

      v18 = *(&self->super.isa + v17);
      v19 = [BTVCBluetoothAddress alloc];
      v20 = v18;
      v16 = -[BTVCBluetoothAddress initWithDeviceAddresAndType:addressType:](v19, "initWithDeviceAddresAndType:addressType:", [v18 bytes], self->_currentAddressType);
    }

    v21 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v33 = addressCopy;
      v34 = 2112;
      v35 = deviceCopy;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Creating BLE connection for device %@ endpoint %@ with local address %@\n", buf, 0x20u);
    }

    v22 = [[NSNumber alloc] initWithInteger:{-[BTVCConnectionManager _getAvaliableConnectionHandle](self, "_getAvaliableConnectionHandle")}];
    v23 = [[BTVCDevice alloc] initWithDeviceAddres:addressCopy];
    [(BTVCDevice *)v23 setIdentifier:deviceCopy];
    v24 = objc_alloc_init(BTVCConnection);
    [(BTVCConnection *)v24 setIdentifier:deviceCopy];
    [(BTVCConnection *)v24 setPeerDevice:v23];
    [(BTVCConnection *)v24 setDispatchQueue:self->_dispatchQueue];
    v25 = [[BTVCBluetoothAddress alloc] initWithDeviceAddres:v16];
    [(BTVCConnection *)v24 setLocalAddress:v25];

    [(BTVCConnection *)v24 setConnectionHandle:v22];
    [(BTVCConnection *)v24 setConnInterval:[(BTVCConnectionParams *)self->_connectParams connInterval]];
    [(BTVCConnection *)v24 setConnPeripheralLatency:[(BTVCConnectionParams *)self->_connectParams connPeripheralLatency]];
    [(BTVCConnection *)v24 setConnSupervisionTimeout:[(BTVCConnectionParams *)self->_connectParams connSupervisionTimeout]];
    [(BTVCConnection *)v24 setCentralSCA:[(BTVCConnectionParams *)self->_connectParams centralSCA]];
    v26 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[BTVCConnectionManager startConnectionToDevice:peerAddress:localAddress:owner:connected:]";
      v34 = 1024;
      LODWORD(v35) = 1;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "BTVCConnectionManager:%s %d\n", buf, 0x12u);
    }

    [(BTVCConnectionManager *)self _registerCallbacks:v24];
    connections = self->_connections;
    if (!connections)
    {
      v28 = objc_alloc_init(NSMutableDictionary);
      v29 = self->_connections;
      self->_connections = v28;

      connections = self->_connections;
    }

    [(NSMutableDictionary *)connections setObject:v24 forKeyedSubscript:v22];
    [(BTVCConnection *)v24 activateDirect];
    if (connected)
    {
      *connected = 0;
    }

    -[BTVCConnectionManager _setConnectionHandle:allocated:](self, "_setConnectionHandle:allocated:", [v22 intValue], 1);
  }

  else if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "EnableBTVCLeConnection is No\n", buf, 2u);
  }

  return 0;
}

- (void)stopConnectionToDevice:(id)device owner:(id)owner
{
  deviceCopy = device;
  ownerCopy = owner;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:deviceCopy];
  v9 = v8;
  if (v8 && ([v8 removeClient:ownerCopy] & 1) == 0)
  {
    v10 = qword_100BCEA70;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalidating BLE connection for %@\n", &v13, 0xCu);
    }

    [(NSMutableDictionary *)self->_connections removeObjectForKey:deviceCopy];
    [v9 invalidate];
    -[BTVCConnectionManager _setConnectionHandle:allocated:](self, "_setConnectionHandle:allocated:", [deviceCopy intValue], 0);
  }
}

- (void)_registerCallbacks:(id)callbacks
{
  callbacksCopy = callbacks;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100380E48;
  v15[3] = &unk_100AEE5C8;
  objc_copyWeak(&v16, &location);
  [callbacksCopy setHciEventHandler:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100380ECC;
  v13[3] = &unk_100AEE5C8;
  objc_copyWeak(&v14, &location);
  [callbacksCopy setLeMetaEventHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100380F50;
  v11[3] = &unk_100AEE5F0;
  objc_copyWeak(&v12, &location);
  [callbacksCopy setLmpEventHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100380FCC;
  v9[3] = &unk_100AEE618;
  objc_copyWeak(&v10, &location);
  [callbacksCopy setDataHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003810E8;
  v7[3] = &unk_100AEE640;
  objc_copyWeak(&v8, &location);
  [callbacksCopy setConnectionCompletedHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100381368;
  v5[3] = &unk_100AEE668;
  objc_copyWeak(&v6, &location);
  [callbacksCopy setDisconnectionCompletedHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_handleHciEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length
{
  lengthCopy = length;
  eventCopy = event;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[BTVCConnectionManager _handleHciEvent:parameters:length:]";
    v15 = 1024;
    v16 = lengthCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s length %d\n", &v13, 0x12u);
  }

  hciEventHandler = [(BTVCConnectionManager *)self hciEventHandler];
  v11 = hciEventHandler == 0;

  if (v11)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100821338();
    }
  }

  else
  {
    hciEventHandler2 = [(BTVCConnectionManager *)self hciEventHandler];
    (hciEventHandler2)[2](hciEventHandler2, eventCopy, parameters, lengthCopy);
  }
}

- (void)_handleLeMetaEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length
{
  lengthCopy = length;
  eventCopy = event;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[BTVCConnectionManager _handleLeMetaEvent:parameters:length:]";
    v15 = 1024;
    v16 = lengthCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s length %d\n", &v13, 0x12u);
  }

  leMetaEventHandler = [(BTVCConnectionManager *)self leMetaEventHandler];
  v11 = leMetaEventHandler == 0;

  if (v11)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008213B8();
    }
  }

  else
  {
    leMetaEventHandler2 = [(BTVCConnectionManager *)self leMetaEventHandler];
    (leMetaEventHandler2)[2](leMetaEventHandler2, eventCopy, parameters, lengthCopy);
  }
}

- (void)_handleLeConnectionComplete:(id)complete status:(unsigned __int8)status
{
  statusCopy = status;
  completeCopy = complete;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
    v52 = 2112;
    *v53 = completeCopy;
    *&v53[8] = 1024;
    v54[0] = statusCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %d\n", buf, 0x1Cu);
  }

  v48 = 0;
  v47 = 0;
  memset(v49, 0, sizeof(v49));
  v46 = statusCopy;
  if (!completeCopy || statusCopy)
  {
    v45 = 0;
    v44 = 0;
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    LOWORD(v47) = 1024;
    v35 = qword_100BCEA70;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      acceptor = [completeCopy acceptor];
      *buf = 136315394;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = acceptor;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s: acceptor 0x%04X", buf, 0x12u);
    }

    WORD1(v47) = 0;
    sub_1000075EC(&v47 + 4, &v44, 6uLL);
    sub_1000075EC(&v48 + 2, &v42, 6uLL);
    sub_1000075EC(v49, &v40, 6uLL);
    *&v49[6] = 24;
    strcpy(&v49[10], "H");
    v49[12] = 0;
  }

  else
  {
    peerDevice = [completeCopy peerDevice];
    bluetoothAddress = [peerDevice bluetoothAddress];
    addressData = [bluetoothAddress addressData];
    v11 = addressData;
    v12 = *[addressData bytes];

    peerDevice2 = [completeCopy peerDevice];
    bluetoothAddress2 = [peerDevice2 bluetoothAddress];
    addressType = [bluetoothAddress2 addressType];

    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v44 = v12;
    v45 = WORD2(v12);
    peerDevice3 = [completeCopy peerDevice];
    bluetoothAddress3 = [peerDevice3 bluetoothAddress];
    rpaData = [bluetoothAddress3 rpaData];
    LOBYTE(v12) = rpaData == 0;

    if ((v12 & 1) == 0)
    {
      peerDevice4 = [completeCopy peerDevice];
      bluetoothAddress4 = [peerDevice4 bluetoothAddress];
      rpaData2 = [bluetoothAddress4 rpaData];
      v22 = rpaData2;
      bytes = [rpaData2 bytes];

      v24 = *bytes;
      v41 = bytes[2];
      v40 = v24;
      addressType |= 2u;
    }

    v25 = qword_100BCEA70;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      peerDevice5 = [completeCopy peerDevice];
      bluetoothAddress5 = [peerDevice5 bluetoothAddress];
      addressData2 = [bluetoothAddress5 addressData];
      *buf = 136315906;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = 62;
      *&v53[4] = 1024;
      *&v53[6] = 0;
      LOWORD(v54[0]) = 2112;
      *(v54 + 2) = addressData2;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: eventCode 0x%04X, status %d address %@", buf, 0x22u);
    }

    v29 = qword_100BCEA70;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      connectionHandle = [completeCopy connectionHandle];
      intValue = [connectionHandle intValue];
      *buf = 136315394;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = intValue;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: connectionHandle 0x%04X", buf, 0x12u);
    }

    connectionHandle2 = [completeCopy connectionHandle];
    LOWORD(v47) = [connectionHandle2 intValue];

    v33 = qword_100BCEA70;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      acceptor2 = [completeCopy acceptor];
      *buf = 136315394;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = acceptor2;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: acceptor 0x%04X", buf, 0x12u);
    }

    BYTE2(v47) = [completeCopy acceptor];
    BYTE3(v47) = addressType;
    sub_1000075EC(&v47 + 4, &v44, 6uLL);
    sub_1000075EC(&v48 + 2, &v42, 6uLL);
    sub_1000075EC(v49, &v40, 6uLL);
    *&v49[6] = [completeCopy connInterval];
    *&v49[8] = [completeCopy connPeripheralLatency];
    *&v49[10] = [completeCopy connSupervisionTimeout];
    v49[12] = [completeCopy centralSCA];
  }

  leMetaEventHandler = [(BTVCConnectionManager *)self leMetaEventHandler];
  v38 = leMetaEventHandler == 0;

  if (v38)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100821438();
    }
  }

  else
  {
    leMetaEventHandler2 = [(BTVCConnectionManager *)self leMetaEventHandler];
    (leMetaEventHandler2)[2](leMetaEventHandler2, 10, &v46, 30);
  }
}

- (void)_handleDisconnectionComplete:(id)complete status:(unsigned __int8)status reason:(unsigned __int8)reason
{
  reasonCopy = reason;
  statusCopy = status;
  completeCopy = complete;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[BTVCConnectionManager _handleDisconnectionComplete:status:reason:]";
    v17 = 2112;
    v18 = completeCopy;
    v19 = 1024;
    LODWORD(v20[0]) = statusCopy;
    WORD2(v20[0]) = 1024;
    *(v20 + 6) = reasonCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s connection ID %@, status %d, reason 0x%04X \n", &v15, 0x22u);
  }

  v10 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:completeCopy];
  v11 = qword_100BCEA70;
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      connections = self->_connections;
      v15 = 136315650;
      v16 = "[BTVCConnectionManager _handleDisconnectionComplete:status:reason:]";
      v17 = 2112;
      v18 = completeCopy;
      v19 = 2112;
      v20[0] = connections;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s device %@ will be removed from connect list %@ \n", &v15, 0x20u);
    }

    [(NSMutableDictionary *)self->_connections removeObjectForKey:completeCopy];
    [v10 invalidate];
    -[BTVCConnectionManager _setConnectionHandle:allocated:](self, "_setConnectionHandle:allocated:", [completeCopy intValue], 0);
    v13 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_connections;
      v15 = 136315650;
      v16 = "[BTVCConnectionManager _handleDisconnectionComplete:status:reason:]";
      v17 = 2112;
      v18 = completeCopy;
      v19 = 2112;
      v20[0] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s device %@ is removed from connect list %@ \n", &v15, 0x20u);
    }
  }

  else
  {
    sub_1008214B8(qword_100BCEA70, completeCopy);
  }
}

- (void)_handleLmpEvent:(id)event
{
  eventCopy = event;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BTVCConnectionManager _handleLmpEvent:]";
    v11 = 2112;
    v12 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s params %@\n", &v9, 0x16u);
  }

  lmpEventHandler = [(BTVCConnectionManager *)self lmpEventHandler];
  v7 = lmpEventHandler == 0;

  if (v7)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008215B8();
    }
  }

  else
  {
    lmpEventHandler2 = [(BTVCConnectionManager *)self lmpEventHandler];
    (lmpEventHandler2)[2](lmpEventHandler2, eventCopy);
  }
}

- (unsigned)sendDataToPeer:(char *)peer dataLength:(unsigned __int16)length
{
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *peer;
    v8 = *(peer + 1);
    v17 = 136315650;
    v18 = "[BTVCConnectionManager sendDataToPeer:dataLength:]";
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s connectionHandle 0x%04X, dataLength %d", &v17, 0x18u);
  }

  0xFFF = [[NSNumber alloc] initWithInt:*peer & 0xFFF];
  v10 = *peer;
  v11 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:0xFFF];
  if (v11)
  {
    v12 = [[NSData alloc] initWithBytes:peer + 4 length:*(peer + 1)];
    if (v12)
    {
      v13 = objc_alloc_init(NSMutableDictionary);
      if (v10 > 0xFFF)
      {
        [NSNumber numberWithInt:1];
      }

      else
      {
        [NSNumber numberWithInt:2];
      }
      v14 = ;
      [v13 setObject:v14 forKeyedSubscript:@"header"];

      [v13 setObject:v12 forKeyedSubscript:@"payload"];
      [v11 sendData:v13];

      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
      {
        sub_100821638();
      }

      v15 = 7;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008216B8();
    }

    v15 = 2;
  }

  return v15;
}

- (int64_t)_getAvaliableConnectionHandle
{
  connectionHandles = self->_connectionHandles;
  v3 = -1025;
  while (1)
  {
    v4 = *connectionHandles++;
    if ((v4 & 1) == 0)
    {
      break;
    }

    if (--v3 == -1125)
    {
      return 0;
    }
  }

  return -v3;
}

- (void)_setConnectionHandle:(int64_t)handle allocated:(BOOL)allocated
{
  if ((handle - 1025) <= 0x63)
  {
    *(&self[-3] + handle - 233) = allocated;
  }
}

- (void)_handleCommandStatus:(unsigned __int8)status numHciCommandPackets:(unsigned __int8)packets opcode:(unsigned __int16)opcode
{
  v6[0] = status;
  v6[1] = packets;
  opcodeCopy = opcode;
  hciEventHandler = self->_hciEventHandler;
  if (hciEventHandler)
  {
    hciEventHandler[2](hciEventHandler, 15, v6, 4);
  }
}

- (void)handleConnection:(id)connection peerAddress:(id)address parameters:(id)parameters
{
  connectionCopy = connection;
  addressCopy = address;
  parametersCopy = parameters;
  v11 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315650;
    v24 = "[BTVCConnectionManager handleConnection:peerAddress:parameters:]";
    v25 = 2112;
    v26 = connectionCopy;
    v27 = 2112;
    v28 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s peer device: %@ parameters: %@\n", &v23, 0x20u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!connectionCopy)
  {
    v20 = qword_100BCEA70;
    if (!os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    LOWORD(v23) = 0;
    v21 = "Warning: ### Connected with NULL peer\n";
    goto LABEL_13;
  }

  if (!self->_leConnectionEnabled)
  {
    v20 = qword_100BCEA70;
    if (!os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
LABEL_14:
      v13 = 0;
      v12 = 0;
LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }

    LOWORD(v23) = 0;
    v21 = "EnableBTVCLeConnection is No\n";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, &v23, 2u);
    goto LABEL_14;
  }

  v12 = [[NSNumber alloc] initWithInteger:{-[BTVCConnectionManager _getAvaliableConnectionHandle](self, "_getAvaliableConnectionHandle")}];
  v13 = [[BTVCDevice alloc] initWithDeviceAddres:addressCopy];
  [(BTVCDevice *)v13 setIdentifier:connectionCopy];
  v14 = [[BTVCConnection alloc] initConnectionWithParams:v13 parameters:parametersCopy];
  if (!v14)
  {
    v22 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[BTVCConnectionManager]_handleConnection failed to create conneciton\n", &v23, 2u);
    }

    goto LABEL_15;
  }

  v15 = v14;
  [v14 setIdentifier:connectionCopy];
  [v15 setDispatchQueue:self->_dispatchQueue];
  [v15 setConnectionHandle:v12];
  [(BTVCConnectionManager *)self _registerCallbacks:v15];
  connections = self->_connections;
  if (!connections)
  {
    v17 = objc_alloc_init(NSMutableDictionary);
    v18 = self->_connections;
    self->_connections = v17;

    connections = self->_connections;
  }

  [(NSMutableDictionary *)connections setObject:v15 forKeyedSubscript:v12];
  [v15 activateDirect];
  -[BTVCConnectionManager _setConnectionHandle:allocated:](self, "_setConnectionHandle:allocated:", [v12 intValue], 1);
  v19 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[BTVCConnectionManager]_handleConnectionComplete\n", &v23, 2u);
  }

  [(BTVCConnectionManager *)self _handleLeConnectionComplete:v15 status:0];
LABEL_16:
}

- (void)_btvcLinkReceivedData:(id)data packetBoundaryFlag:(unsigned __int16)flag connection:(id)connection
{
  dataCopy = data;
  connectionCopy = connection;
  v10 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[BTVCConnectionManager _btvcLinkReceivedData:packetBoundaryFlag:connection:]";
    v15 = 2112;
    v16 = dataCopy;
    v17 = 2112;
    v18 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s data %@ from connection:%@\n", &v13, 0x20u);
  }

  receiveDataPacketHandler = self->_receiveDataPacketHandler;
  if (receiveDataPacketHandler)
  {
    connectionHandle = [connectionCopy connectionHandle];
    receiveDataPacketHandler[2](receiveDataPacketHandler, ((flag << 12) | [connectionHandle intValue]), dataCopy);
  }
}

- (void)btvcBonjourLink:(id)link didDisconnectFromPeer:(id)peer address:(id)address error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = qword_100BCEA70;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = peerCopy;
      v21 = 2112;
      v22 = errorCopy;
      v11 = "### Disconnect from %@, error %@\n";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = peerCopy;
    v11 = "Disconnect from %@ success\n";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    v14 = 12;
    goto LABEL_6;
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100382BA0;
  v16[3] = &unk_100AEE690;
  v15 = peerCopy;
  v17 = v15;
  selfCopy = self;
  [(BTVCConnectionManager *)self forEachConnection:v16];
}

- (void)_systemWillSleep
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100382D20;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_systemHasPoweredOn
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100382DA8;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end