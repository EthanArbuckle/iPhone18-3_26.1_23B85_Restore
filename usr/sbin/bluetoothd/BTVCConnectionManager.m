@interface BTVCConnectionManager
+ (BTVCConnectionManager)sharedConnectionManager;
- (BOOL)isInConnectionList:(id)a3;
- (BTVCConnectionManager)init;
- (id)description;
- (int)startConnectionToDevice:(id)a3 peerAddress:(id)a4 localAddress:(id)a5 owner:(id)a6 connected:(BOOL *)a7;
- (int64_t)_getAvaliableConnectionHandle;
- (unsigned)leCreateConnectionCancel;
- (unsigned)leExtendedCreateConnection:(id)a3;
- (unsigned)leSetPublicAddress:(id)a3;
- (unsigned)leSetRandomAddress:(id)a3;
- (unsigned)sendDataToPeer:(char *)a3 dataLength:(unsigned __int16)a4;
- (void)_activate;
- (void)_btvcLinkReceivedData:(id)a3 packetBoundaryFlag:(unsigned __int16)a4 connection:(id)a5;
- (void)_handleCommandStatus:(unsigned __int8)a3 numHciCommandPackets:(unsigned __int8)a4 opcode:(unsigned __int16)a5;
- (void)_handleDisconnectionComplete:(id)a3 status:(unsigned __int8)a4 reason:(unsigned __int8)a5;
- (void)_handleHciEvent:(unsigned __int8)a3 parameters:(char *)a4 length:(unsigned __int8)a5;
- (void)_handleLeConnectionComplete:(id)a3 status:(unsigned __int8)a4;
- (void)_handleLeMetaEvent:(unsigned __int8)a3 parameters:(char *)a4 length:(unsigned __int8)a5;
- (void)_handleLmpEvent:(id)a3;
- (void)_invalidate;
- (void)_registerCallbacks:(id)a3;
- (void)_reset;
- (void)_setConnectionHandle:(int64_t)a3 allocated:(BOOL)a4;
- (void)_systemHasPoweredOn;
- (void)_systemWillSleep;
- (void)_update;
- (void)activate;
- (void)btvcBonjourLink:(id)a3 didDisconnectFromPeer:(id)a4 address:(id)a5 error:(id)a6;
- (void)forEachConnection:(id)a3;
- (void)handleConnection:(id)a3 peerAddress:(id)a4 parameters:(id)a5;
- (void)handleHciCommandsForConnection:(unsigned __int16)a3 params:(id)a4;
- (void)invalidate;
- (void)prefsChanged;
- (void)reset;
- (void)stopConnectionToDevice:(id)a3 owner:(id)a4;
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

- (BOOL)isInConnectionList:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    connections = self->_connections;
    *buf = 136315650;
    v22 = "[BTVCConnectionManager isInConnectionList:]";
    v23 = 2112;
    v24 = connections;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s connections %@ device %@", buf, 0x20u);
  }

  v7 = [(NSMutableDictionary *)self->_connections objectEnumerator];
  *&v8 = 136315650;
  v20 = v8;
  while (1)
  {
    v9 = [v7 nextObject];
    v10 = qword_100BCEA70;
    if (!v9)
    {
      break;
    }

    v11 = qword_100BCEA70;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v9 peerDevice];
      v13 = [v12 bluetoothAddress];
      *buf = v20;
      v22 = "[BTVCConnectionManager isInConnectionList:]";
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ztest %s connected device %@ device %@", buf, 0x20u);
    }

    v14 = [v9 peerDevice];
    v15 = [v14 bluetoothAddress];
    v16 = [v15 addressData];
    v17 = [v16 isEqual:v4];

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

  return v9 != 0;
}

- (void)forEachConnection:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_connections objectEnumerator];
  v5 = 0;
  while (1)
  {
    v6 = [v4 nextObject];

    if (!v6)
    {
      break;
    }

    v5 = v6;
    v7[2](v7, v6);
  }
}

- (unsigned)leSetPublicAddress:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCConnectionManager leSetPublicAddress:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s address %@", &v8, 0x16u);
  }

  publicAddress = self->_publicAddress;
  self->_publicAddress = v4;

  return 0;
}

- (unsigned)leSetRandomAddress:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCConnectionManager leSetRandomAddress:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s address %@", &v8, 0x16u);
  }

  randomAddress = self->_randomAddress;
  self->_randomAddress = v4;

  return 0;
}

- (void)handleHciCommandsForConnection:(unsigned __int16)a3 params:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = "[BTVCConnectionManager handleHciCommandsForConnection:params:]";
    v14 = 1024;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s handleHciCommands opCpde 0x%04X params %@", &v12, 0x1Cu);
  }

  v8 = v6;
  v9 = [[NSNumber alloc] initWithInt:{*objc_msgSend(v6, "bytes")}];
  v10 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    [v10 handleHciCommands:v4 params:v6];
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008211F4();
    }

    [(BTVCConnectionManager *)self _handleCommandStatus:2 numHciCommandPackets:1 opcode:v4];
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

- (unsigned)leExtendedCreateConnection:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 136315394;
    *&v14[4] = "[BTVCConnectionManager leExtendedCreateConnection:]";
    v15 = 2112;
    v16 = v4;
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

- (int)startConnectionToDevice:(id)a3 peerAddress:(id)a4 localAddress:(id)a5 owner:(id)a6 connected:(BOOL *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  leConnectionEnabled = self->_leConnectionEnabled;
  v14 = qword_100BCEA70;
  v15 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
  if (leConnectionEnabled)
  {
    if (v15)
    {
      *buf = 138412546;
      v33 = v11;
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating BLE connection for device %@ endpoint %@\n", buf, 0x16u);
    }

    if (v12)
    {
      v16 = [[BTVCBluetoothAddress alloc] initWithDeviceAddres:v12];
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
      v33 = v11;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Creating BLE connection for device %@ endpoint %@ with local address %@\n", buf, 0x20u);
    }

    v22 = [[NSNumber alloc] initWithInteger:{-[BTVCConnectionManager _getAvaliableConnectionHandle](self, "_getAvaliableConnectionHandle")}];
    v23 = [[BTVCDevice alloc] initWithDeviceAddres:v11];
    [(BTVCDevice *)v23 setIdentifier:v10];
    v24 = objc_alloc_init(BTVCConnection);
    [(BTVCConnection *)v24 setIdentifier:v10];
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
    if (a7)
    {
      *a7 = 0;
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

- (void)stopConnectionToDevice:(id)a3 owner:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8 && ([v8 removeClient:v7] & 1) == 0)
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

    [(NSMutableDictionary *)self->_connections removeObjectForKey:v6];
    [v9 invalidate];
    -[BTVCConnectionManager _setConnectionHandle:allocated:](self, "_setConnectionHandle:allocated:", [v6 intValue], 0);
  }
}

- (void)_registerCallbacks:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100380E48;
  v15[3] = &unk_100AEE5C8;
  objc_copyWeak(&v16, &location);
  [v4 setHciEventHandler:v15];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100380ECC;
  v13[3] = &unk_100AEE5C8;
  objc_copyWeak(&v14, &location);
  [v4 setLeMetaEventHandler:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100380F50;
  v11[3] = &unk_100AEE5F0;
  objc_copyWeak(&v12, &location);
  [v4 setLmpEventHandler:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100380FCC;
  v9[3] = &unk_100AEE618;
  objc_copyWeak(&v10, &location);
  [v4 setDataHandler:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1003810E8;
  v7[3] = &unk_100AEE640;
  objc_copyWeak(&v8, &location);
  [v4 setConnectionCompletedHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100381368;
  v5[3] = &unk_100AEE668;
  objc_copyWeak(&v6, &location);
  [v4 setDisconnectionCompletedHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_handleHciEvent:(unsigned __int8)a3 parameters:(char *)a4 length:(unsigned __int8)a5
{
  v5 = a5;
  v7 = a3;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[BTVCConnectionManager _handleHciEvent:parameters:length:]";
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s length %d\n", &v13, 0x12u);
  }

  v10 = [(BTVCConnectionManager *)self hciEventHandler];
  v11 = v10 == 0;

  if (v11)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100821338();
    }
  }

  else
  {
    v12 = [(BTVCConnectionManager *)self hciEventHandler];
    (v12)[2](v12, v7, a4, v5);
  }
}

- (void)_handleLeMetaEvent:(unsigned __int8)a3 parameters:(char *)a4 length:(unsigned __int8)a5
{
  v5 = a5;
  v7 = a3;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[BTVCConnectionManager _handleLeMetaEvent:parameters:length:]";
    v15 = 1024;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s length %d\n", &v13, 0x12u);
  }

  v10 = [(BTVCConnectionManager *)self leMetaEventHandler];
  v11 = v10 == 0;

  if (v11)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008213B8();
    }
  }

  else
  {
    v12 = [(BTVCConnectionManager *)self leMetaEventHandler];
    (v12)[2](v12, v7, a4, v5);
  }
}

- (void)_handleLeConnectionComplete:(id)a3 status:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
    v52 = 2112;
    *v53 = v6;
    *&v53[8] = 1024;
    v54[0] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %d\n", buf, 0x1Cu);
  }

  v48 = 0;
  v47 = 0;
  memset(v49, 0, sizeof(v49));
  v46 = v4;
  if (!v6 || v4)
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
      v36 = [v6 acceptor];
      *buf = 136315394;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = v36;
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
    v8 = [v6 peerDevice];
    v9 = [v8 bluetoothAddress];
    v10 = [v9 addressData];
    v11 = v10;
    v12 = *[v10 bytes];

    v13 = [v6 peerDevice];
    v14 = [v13 bluetoothAddress];
    v15 = [v14 addressType];

    v43 = 0;
    v42 = 0;
    v41 = 0;
    v40 = 0;
    v44 = v12;
    v45 = WORD2(v12);
    v16 = [v6 peerDevice];
    v17 = [v16 bluetoothAddress];
    v18 = [v17 rpaData];
    LOBYTE(v12) = v18 == 0;

    if ((v12 & 1) == 0)
    {
      v19 = [v6 peerDevice];
      v20 = [v19 bluetoothAddress];
      v21 = [v20 rpaData];
      v22 = v21;
      v23 = [v21 bytes];

      v24 = *v23;
      v41 = v23[2];
      v40 = v24;
      v15 |= 2u;
    }

    v25 = qword_100BCEA70;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v6 peerDevice];
      v27 = [v26 bluetoothAddress];
      v28 = [v27 addressData];
      *buf = 136315906;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = 62;
      *&v53[4] = 1024;
      *&v53[6] = 0;
      LOWORD(v54[0]) = 2112;
      *(v54 + 2) = v28;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%s: eventCode 0x%04X, status %d address %@", buf, 0x22u);
    }

    v29 = qword_100BCEA70;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v6 connectionHandle];
      v31 = [v30 intValue];
      *buf = 136315394;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%s: connectionHandle 0x%04X", buf, 0x12u);
    }

    v32 = [v6 connectionHandle];
    LOWORD(v47) = [v32 intValue];

    v33 = qword_100BCEA70;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v6 acceptor];
      *buf = 136315394;
      v51 = "[BTVCConnectionManager _handleLeConnectionComplete:status:]";
      v52 = 1024;
      *v53 = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s: acceptor 0x%04X", buf, 0x12u);
    }

    BYTE2(v47) = [v6 acceptor];
    BYTE3(v47) = v15;
    sub_1000075EC(&v47 + 4, &v44, 6uLL);
    sub_1000075EC(&v48 + 2, &v42, 6uLL);
    sub_1000075EC(v49, &v40, 6uLL);
    *&v49[6] = [v6 connInterval];
    *&v49[8] = [v6 connPeripheralLatency];
    *&v49[10] = [v6 connSupervisionTimeout];
    v49[12] = [v6 centralSCA];
  }

  v37 = [(BTVCConnectionManager *)self leMetaEventHandler];
  v38 = v37 == 0;

  if (v38)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100821438();
    }
  }

  else
  {
    v39 = [(BTVCConnectionManager *)self leMetaEventHandler];
    (v39)[2](v39, 10, &v46, 30);
  }
}

- (void)_handleDisconnectionComplete:(id)a3 status:(unsigned __int8)a4 reason:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[BTVCConnectionManager _handleDisconnectionComplete:status:reason:]";
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    LODWORD(v20[0]) = v6;
    WORD2(v20[0]) = 1024;
    *(v20 + 6) = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s connection ID %@, status %d, reason 0x%04X \n", &v15, 0x22u);
  }

  v10 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v8];
  v11 = qword_100BCEA70;
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      connections = self->_connections;
      v15 = 136315650;
      v16 = "[BTVCConnectionManager _handleDisconnectionComplete:status:reason:]";
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20[0] = connections;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s device %@ will be removed from connect list %@ \n", &v15, 0x20u);
    }

    [(NSMutableDictionary *)self->_connections removeObjectForKey:v8];
    [v10 invalidate];
    -[BTVCConnectionManager _setConnectionHandle:allocated:](self, "_setConnectionHandle:allocated:", [v8 intValue], 0);
    v13 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_connections;
      v15 = 136315650;
      v16 = "[BTVCConnectionManager _handleDisconnectionComplete:status:reason:]";
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20[0] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s device %@ is removed from connect list %@ \n", &v15, 0x20u);
    }
  }

  else
  {
    sub_1008214B8(qword_100BCEA70, v8);
  }
}

- (void)_handleLmpEvent:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BTVCConnectionManager _handleLmpEvent:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s params %@\n", &v9, 0x16u);
  }

  v6 = [(BTVCConnectionManager *)self lmpEventHandler];
  v7 = v6 == 0;

  if (v7)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008215B8();
    }
  }

  else
  {
    v8 = [(BTVCConnectionManager *)self lmpEventHandler];
    (v8)[2](v8, v4);
  }
}

- (unsigned)sendDataToPeer:(char *)a3 dataLength:(unsigned __int16)a4
{
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    v8 = *(a3 + 1);
    v17 = 136315650;
    v18 = "[BTVCConnectionManager sendDataToPeer:dataLength:]";
    v19 = 1024;
    v20 = v7;
    v21 = 1024;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s connectionHandle 0x%04X, dataLength %d", &v17, 0x18u);
  }

  v9 = [[NSNumber alloc] initWithInt:*a3 & 0xFFF];
  v10 = *a3;
  v11 = [(NSMutableDictionary *)self->_connections objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = [[NSData alloc] initWithBytes:a3 + 4 length:*(a3 + 1)];
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

- (void)_setConnectionHandle:(int64_t)a3 allocated:(BOOL)a4
{
  if ((a3 - 1025) <= 0x63)
  {
    *(&self[-3] + a3 - 233) = a4;
  }
}

- (void)_handleCommandStatus:(unsigned __int8)a3 numHciCommandPackets:(unsigned __int8)a4 opcode:(unsigned __int16)a5
{
  v6[0] = a3;
  v6[1] = a4;
  v7 = a5;
  hciEventHandler = self->_hciEventHandler;
  if (hciEventHandler)
  {
    hciEventHandler[2](hciEventHandler, 15, v6, 4);
  }
}

- (void)handleConnection:(id)a3 peerAddress:(id)a4 parameters:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315650;
    v24 = "[BTVCConnectionManager handleConnection:peerAddress:parameters:]";
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s peer device: %@ parameters: %@\n", &v23, 0x20u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!v8)
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
  v13 = [[BTVCDevice alloc] initWithDeviceAddres:v9];
  [(BTVCDevice *)v13 setIdentifier:v8];
  v14 = [[BTVCConnection alloc] initConnectionWithParams:v13 parameters:v10];
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
  [v14 setIdentifier:v8];
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

- (void)_btvcLinkReceivedData:(id)a3 packetBoundaryFlag:(unsigned __int16)a4 connection:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[BTVCConnectionManager _btvcLinkReceivedData:packetBoundaryFlag:connection:]";
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s data %@ from connection:%@\n", &v13, 0x20u);
  }

  receiveDataPacketHandler = self->_receiveDataPacketHandler;
  if (receiveDataPacketHandler)
  {
    v12 = [v9 connectionHandle];
    receiveDataPacketHandler[2](receiveDataPacketHandler, ((a4 << 12) | [v12 intValue]), v8);
  }
}

- (void)btvcBonjourLink:(id)a3 didDisconnectFromPeer:(id)a4 address:(id)a5 error:(id)a6
{
  v8 = a4;
  v9 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v10 = qword_100BCEA70;
  if (v9)
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
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
    v20 = v8;
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
  v15 = v8;
  v17 = v15;
  v18 = self;
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