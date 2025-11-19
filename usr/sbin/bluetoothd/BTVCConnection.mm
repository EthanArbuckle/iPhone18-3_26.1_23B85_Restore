@interface BTVCConnection
- (BOOL)_removeFromHciCommandList:(unsigned __int16)a3;
- (BOOL)removeClient:(id)a3;
- (BTVCConnection)init;
- (NSString)description;
- (id)initConnectionWithParams:(id)a3 parameters:(id)a4;
- (int64_t)connectionState;
- (void)_activate;
- (void)_addEncryptedPayload:(id)a3 packet:(id)a4;
- (void)_checkDataPendingQueue;
- (void)_connectIfNeeded;
- (void)_disconnectDevice:(unsigned __int8)a3;
- (void)_handleHciCommands:(unsigned __int16)a3 params:(id)a4;
- (void)_handleReceivedData:(id)a3;
- (void)_hciDisconnect:(id)a3;
- (void)_hciLeConnectionUpdate:(id)a3;
- (void)_hciLeEnableEncryption:(id)a3;
- (void)_hciLeLongTermKeyRequestNegativeReply:(id)a3;
- (void)_hciLeLongTermKeyRequestReply:(id)a3;
- (void)_hciLeReadRemoteFeatures:(id)a3;
- (void)_hciLeRemoteConnectionParameterRequestNegativeReply:(id)a3;
- (void)_hciLeRemoteConnectionParameterRequestReply:(id)a3;
- (void)_hciReadRemoteVersion:(id)a3;
- (void)_invalidate;
- (void)_linkLayerControlInitAndActivate:(unsigned __int8)a3;
- (void)_sendHCIEventDisconnectionComplete;
- (void)_sendHCIEventEncryptionChangeV2:(unsigned __int8)a3;
- (void)_sendHCIEventLeConnectionUpdateComplete:(unsigned __int8)a3;
- (void)_sendHCIEventLeDataLengthChange;
- (void)_sendHCIEventLeLongTermKeyRequest;
- (void)_sendHCIEventLeReadRemoteFeatureComplete:(unsigned __int8)a3;
- (void)_sendHCIEventLeRemoteConnectionParameterRequest;
- (void)_sendHCIEventPhyUpdateComplete;
- (void)_sendHCIEventReadRemoteVersionInformationComplete:(unsigned __int8)a3;
- (void)_sendHciCommandComplete:(unsigned __int16)a3 params:(char *)a4 length:(unsigned __int16)a5;
- (void)_sendHciCommandStatusEvent:(unsigned __int16)a3;
- (void)_sendLLControlPacket:(id)a3;
- (void)_sendLLEvent:(int64_t)a3;
- (void)_sendLmpEvent:(BOOL)a3 payload:(id)a4;
- (void)_sendPacketCompele:(id)a3 error:(id)a4;
- (void)_setConnectionHeader:(id)a3;
- (void)activate;
- (void)activateDirect;
- (void)addClient:(id)a3;
- (void)btvcBonjourLink:(id)a3 didConnectToPeer:(id)a4 parameters:(id)a5 role:(int64_t)a6 error:(id)a7;
- (void)btvcBonjourLink:(id)a3 didDisconnectFromPeer:(id)a4 parameters:(id)a5 error:(id)a6;
- (void)btvcBonjourLink:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5;
- (void)btvcBonjourLink:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6;
- (void)cleanupPendingHciCommands;
- (void)dealloc;
- (void)disconnectDevice:(unsigned __int8)a3;
- (void)handleHciCommands:(unsigned __int16)a3 params:(id)a4;
- (void)handleReceivedData:(id)a3;
- (void)invalidate;
- (void)linkLayerControlInitAndActivate:(unsigned __int8)a3;
- (void)sendData:(id)a3;
- (void)sendHciCommandStatusEvent:(unsigned __int16)a3;
- (void)sendLLControlPacket:(id)a3;
- (void)sendLLEvent:(int64_t)a3;
- (void)sendingPacket:(id)a3;
- (void)setAcceptor:(BOOL)a3;
- (void)setDispatchQueue:(id)a3;
- (void)testEncrytion;
@end

@implementation BTVCConnection

- (id)initConnectionWithParams:(id)a3 parameters:(id)a4
{
  v18 = a3;
  v20 = a4;
  v22 = 0;
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "[BTVCConnection initConnectionWithParams:parameters:]";
    v25 = 2112;
    v26 = v20;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTVCConnection:%s, connection parameters: %@\n", buf, 0x16u);
  }

  v21.receiver = self;
  v21.super_class = BTVCConnection;
  v7 = [(BTVCConnection *)&v21 init];
  v8 = v7;
  if (!v7)
  {
    v12 = 0;
    v15 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v7->_acceptor = 1;
  v7->_bleEncrypted = 1;
  objc_storeStrong(&v7->_dispatchQueue, &_dispatch_main_q);
  CFDataGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  if (v22)
  {
    v12 = 0;
    v15 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_10;
  }

  v10 = NSDictionaryGetNSNumber();
  if (v22)
  {
    v12 = 0;
    v15 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v11 = NSDictionaryGetNSNumber();
  if (v22)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v12 = NSDictionaryGetNSNumber();
  if (v22)
  {
LABEL_15:
    v15 = 0;
    goto LABEL_10;
  }

  v19 = NSDictionaryGetNSNumber();
  if (v22)
  {
    v15 = v19;
  }

  else
  {
    objc_storeStrong(&v8->_peerDevice, a3);
    v13 = [[BTVCBluetoothAddress alloc] initWithDeviceAddresData:v9];
    localAddress = v8->_localAddress;
    v8->_localAddress = v13;

    v15 = v19;
    v8->_connInterval = [v10 intValue];
    v8->_connPeripheralLatency = [v11 intValue];
    v8->_connSupervisionTimeout = [v12 intValue];
    v8->_centralSCA = [v19 intValue];
  }

LABEL_10:

  return v8;
}

- (void)dealloc
{
  if (self->_connectRetrier || self->_btvcBonjourLink)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    v2.receiver = self;
    v2.super_class = BTVCConnection;
    [(BTVCConnection *)&v2 dealloc];
  }
}

- (NSString)description
{
  v3 = [(BTVCDevice *)self->_peerDevice identifier];
  [(NSNumber *)self->_connectionHandle intValue];
  [(NSMutableSet *)self->_clients count];
  v4 = NSPrintF();

  return v4;
}

- (void)_setConnectionHeader:(id)a3
{
  v11 = a3;
  v4 = [NSData alloc];
  v5 = [(BTVCDevice *)self->_peerDevice bluetoothAddress];
  v6 = [v5 addressWithType];
  v7 = [v4 initWithData:v6];

  v8 = [NSData alloc];
  v9 = [(BTVCBluetoothAddress *)self->_localAddress addressWithType];
  v10 = [v8 initWithData:v9];

  [v11 setObject:v7 forKeyedSubscript:@"peerA"];
  [v11 setObject:v10 forKeyedSubscript:@"initA"];
}

- (void)setAcceptor:(BOOL)a3
{
  objc_initWeak(&location, self);
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100396778;
  v6[3] = &unk_100AEF400;
  v6[4] = self;
  v8 = a3;
  objc_copyWeak(&v7, &location);
  dispatch_async(dispatchQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (int64_t)connectionState
{
  if (self->_connected)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)setDispatchQueue:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF();
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = v4;

    objc_sync_exit(obj);
  }
}

- (void)activate
{
  v2 = self;
  objc_sync_enter(v2);
  v2->_activateCalled = 1;
  dispatchQueue = v2->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100396B64;
  block[3] = &unk_100ADF820;
  block[4] = v2;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(v2);
}

- (void)activateDirect
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self;
  objc_sync_enter(v3);
  v3->_activateCalled = 1;
  objc_sync_exit(v3);

  [(BTVCConnection *)v3 _activate];
}

- (void)_activate
{
  objc_initWeak(&location, self);
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activate\n", buf, 2u);
  }

  if (!self->_btvcBonjourLink)
  {
    v4 = +[BTVCLinkClient sharedClient];
    v5 = [v4 addBTVCBonjourLinkDelegate:self];
    btvcBonjourLink = self->_btvcBonjourLink;
    self->_btvcBonjourLink = v5;
  }

  if (self->_acceptor)
  {
    isPeripheral = 1;
    self->_connected = 1;
    if (!self->_packetControl)
    {
      v8 = [[BTVCPacketControl alloc] initWithParams:self->_dispatchQueue response:0];
      packetControl = self->_packetControl;
      self->_packetControl = v8;

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100396EAC;
      v22[3] = &unk_100AEE5F0;
      objc_copyWeak(&v23, &location);
      [(BTVCPacketControl *)self->_packetControl setSendingPacket:v22];
      [(BTVCPacketControl *)self->_packetControl activateDirect];
      objc_destroyWeak(&v23);
    }

    self->_isPeripheral = 1;
    connectionStateChangedHandler = self->_connectionStateChangedHandler;
    if (connectionStateChangedHandler)
    {
      v11 = [(BTVCConnection *)self identifier];
      connectionStateChangedHandler[2](connectionStateChangedHandler, v11, 1);

      isPeripheral = self->_isPeripheral;
    }

    [(BTVCConnection *)self _linkLayerControlInitAndActivate:isPeripheral];
  }

  else if (!self->_connectRetrier)
  {
    v12 = objc_alloc_init(CURetrier);
    connectRetrier = self->_connectRetrier;
    self->_connectRetrier = v12;

    [(CURetrier *)self->_connectRetrier setDispatchQueue:self->_dispatchQueue];
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100396F28;
    v20 = &unk_100AEB0C0;
    objc_copyWeak(&v21, &location);
    [(CURetrier *)self->_connectRetrier setActionHandler:&v17];
    [(CURetrier *)self->_connectRetrier setInterval:3.0, v17, v18, v19, v20];
    [(CURetrier *)self->_connectRetrier startDirect];
    objc_destroyWeak(&v21);
  }

  self->_dataPacketPending = 0;
  encryption = self->_encryption;
  self->_encryption = 0;

  v15 = objc_alloc_init(NSMutableDictionary);
  hciCommandList = self->_hciCommandList;
  self->_hciCommandList = v15;

  if (qword_100B6D348 != -1)
  {
    sub_10082299C();
  }

  objc_destroyWeak(&location);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100397078;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating\n", buf, 2u);
    }

    self->_invalidateCalled = 1;
    [(CURetrier *)self->_connectRetrier invalidateDirect];
    connectRetrier = self->_connectRetrier;
    self->_connectRetrier = 0;

    [(BTVCPacketControl *)self->_packetControl invalidate];
    packetControl = self->_packetControl;
    self->_packetControl = 0;

    if (self->_connected || self->_connecting)
    {
      *&self->_connected = 0;
      v6 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnect\n", v24, 2u);
      }

      linkLayerControl = self->_linkLayerControl;
      if (linkLayerControl)
      {
        [(BTVCLinkLayerControl *)linkLayerControl invalidate];
        v8 = self->_linkLayerControl;
        self->_linkLayerControl = 0;
      }

      v9 = objc_alloc_init(NSMutableDictionary);
      [(BTVCConnection *)self _setConnectionHeader:v9];
      btvcBonjourLink = self->_btvcBonjourLink;
      v11 = [(BTVCDevice *)self->_peerDevice identifier];
      [(BTVCBonjourLink *)btvcBonjourLink disconnectFromPeer:v11 withParameters:v9];
    }

    v12 = self->_btvcBonjourLink;
    if (v12)
    {
      v13 = +[BTVCLinkClient sharedClient];
      [v13 removeBTVCBonjourLinkDelegate:self];

      v12 = self->_btvcBonjourLink;
    }

    self->_btvcBonjourLink = 0;

    v14 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Invalidated\n", v23, 2u);
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
    self->_bluetoothStateChangedHandler = 0;

    clients = self->_clients;
    self->_clients = 0;

    connectionStateChangedHandler = self->_connectionStateChangedHandler;
    self->_connectionStateChangedHandler = 0;

    dataHandler = self->_dataHandler;
    self->_dataHandler = 0;

    v20 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    encryption = self->_encryption;
    self->_encryption = 0;

    hciCommandList = self->_hciCommandList;
    self->_hciCommandList = 0;
  }
}

- (void)_checkDataPendingQueue
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_packetPendingQueue;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);

        v5 = v8;
        if (v8)
        {
          [(BTVCConnection *)self sendData:v8];
        }

        else
        {
          v9 = qword_100BCEA70;
          if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v15 = "[BTVCConnection _checkDataPendingQueue]";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s packet is nil \n", buf, 0xCu);
          }
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  [(NSMutableArray *)self->_packetPendingQueue removeAllObjects];
}

- (void)linkLayerControlInitAndActivate:(unsigned __int8)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100397524;
  v4[3] = &unk_100AE1750;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_linkLayerControlInitAndActivate:(unsigned __int8)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  v5 = [[BTVCLinkLayerControl alloc] initWithDevice:self->_peerDevice role:v3];
  linkLayerControl = self->_linkLayerControl;
  self->_linkLayerControl = v5;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1003976B4;
  v9[3] = &unk_100AEE5F0;
  objc_copyWeak(&v10, &location);
  [(BTVCLinkLayerControl *)self->_linkLayerControl setSendLLControlPacket:v9];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100397730;
  v7[3] = &unk_100AEF448;
  objc_copyWeak(&v8, &location);
  [(BTVCLinkLayerControl *)self->_linkLayerControl setSendLLEvent:v7];
  [(BTVCLinkLayerControl *)self->_linkLayerControl setDispatchQueue:self->_dispatchQueue];
  [(BTVCLinkLayerControl *)self->_linkLayerControl activateDirect];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)disconnectDevice:(unsigned __int8)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100397814;
  v4[3] = &unk_100AE1750;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_disconnectDevice:(unsigned __int8)a3
{
  v3 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[BTVCConnection _disconnectDevice:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s\n", &v13, 0xCu);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && (self->_connected || self->_connecting))
  {
    *&self->_connected = 0;
    [(BTVCConnection *)self cleanupPendingHciCommands];
    v6 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disconnect\n", &v13, 2u);
    }

    v7 = objc_alloc_init(NSMutableDictionary);
    [(BTVCConnection *)self _setConnectionHeader:v7];
    v8 = [NSNumber numberWithUnsignedChar:v3];
    [v7 setObject:v8 forKeyedSubscript:@"reason"];

    btvcBonjourLink = self->_btvcBonjourLink;
    v10 = [(BTVCDevice *)self->_peerDevice identifier];
    [(BTVCBonjourLink *)btvcBonjourLink disconnectFromPeer:v10 withParameters:v7];

    linkLayerControl = self->_linkLayerControl;
    if (linkLayerControl)
    {
      [(BTVCLinkLayerControl *)linkLayerControl invalidate];
      v12 = self->_linkLayerControl;
      self->_linkLayerControl = 0;
    }
  }
}

- (void)handleHciCommands:(unsigned __int16)a3 params:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100397AB0;
  block[3] = &unk_100AEF470;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleHciCommands:(unsigned __int16)a3 params:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[BTVCConnection _handleHciCommands:params:]";
    v15 = 1024;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s opCpde 0x%04X params %@", &v13, 0x1Cu);
  }

  if (v4 <= 8216)
  {
    if (v4 > 8210)
    {
      if (v4 == 8211)
      {
        v8 = &selRef__hciLeConnectionUpdate_;
        goto LABEL_23;
      }

      if (v4 == 8214)
      {
        v8 = &selRef__hciLeReadRemoteFeatures_;
        goto LABEL_23;
      }
    }

    else
    {
      if (v4 == 1030)
      {
        v8 = &selRef__hciDisconnect_;
        goto LABEL_23;
      }

      if (v4 == 1053)
      {
        v8 = &selRef__hciReadRemoteVersion_;
        goto LABEL_23;
      }
    }
  }

  else
  {
    if (v4 <= 8218)
    {
      if (v4 == 8217)
      {
        v8 = &selRef__hciLeEnableEncryption_;
      }

      else
      {
        v8 = &selRef__hciLeLongTermKeyRequestReply_;
      }

      goto LABEL_23;
    }

    switch(v4)
    {
      case 0x201B:
        v8 = &selRef__hciLeLongTermKeyRequestNegativeReply_;
        goto LABEL_23;
      case 0x2020:
        v8 = &selRef__hciLeRemoteConnectionParameterRequestReply_;
        goto LABEL_23;
      case 0x2021:
        v8 = &selRef__hciLeRemoteConnectionParameterRequestNegativeReply_;
LABEL_23:
        v9 = *v8;
        v10 = [NSNumber numberWithInt:v4];
        hciCommandList = self->_hciCommandList;
        if (hciCommandList)
        {
          [(NSMutableDictionary *)hciCommandList setObject:v6 forKeyedSubscript:v10];
        }

        [self v9];

        goto LABEL_26;
    }
  }

  v12 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_1008229C4(v12);
  }

LABEL_26:
}

- (void)_hciDisconnect:(id)a3
{
  v5 = a3;
  [(BTVCConnection *)self _sendHciCommandStatusEvent:1030];
  v4 = [v5 bytes];
  if (self->_linkLayerControl)
  {
    [(BTVCLinkLayerControl *)self->_linkLayerControl sendTerminateInd:v4[2]];
  }
}

- (void)_hciReadRemoteVersion:(id)a3
{
  [(BTVCConnection *)self _sendHciCommandStatusEvent:1053];
  v4 = objc_retainBlock(self->_hciEventHandler);
  readRemoteVersionHandler = self->_readRemoteVersionHandler;
  self->_readRemoteVersionHandler = v4;

  linkLayerControl = self->_linkLayerControl;
  if (linkLayerControl && [(BTVCLinkLayerControl *)linkLayerControl isVersionExchanged])
  {

    [(BTVCConnection *)self sendLLEvent:0];
  }
}

- (void)_hciLeReadRemoteFeatures:(id)a3
{
  [(BTVCConnection *)self _sendHciCommandStatusEvent:8214];
  v4 = objc_retainBlock(self->_leMetaEventHandler);
  leReadRemoteFeatursHandler = self->_leReadRemoteFeatursHandler;
  self->_leReadRemoteFeatursHandler = v4;

  linkLayerControl = self->_linkLayerControl;
  if (linkLayerControl && [(BTVCLinkLayerControl *)linkLayerControl isFeatureExchanged])
  {

    [(BTVCConnection *)self sendLLEvent:1];
  }
}

- (void)_hciLeConnectionUpdate:(id)a3
{
  v4 = a3;
  [(BTVCConnection *)self _sendHciCommandStatusEvent:8211];
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCConnection _hciLeConnectionUpdate:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s params %@", &v8, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  if (self->_linkLayerControl)
  {
    [(BTVCLinkLayerControl *)self->_linkLayerControl sendConnectionParamReq:v7[1] intervalMax:v7[2] latency:v7[3] timeout:v7[4]];
  }
}

- (void)_hciLeEnableEncryption:(id)a3
{
  v4 = a3;
  [(BTVCConnection *)self _sendHciCommandStatusEvent:8217];
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315394;
    *&v10[4] = "[BTVCConnection _hciLeEnableEncryption:]";
    *&v10[12] = 2112;
    *&v10[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s params %@", v10, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  v8 = *v7;
  *&v10[12] = *(v7 + 12);
  *v10 = v8;
  linkLayerControl = self->_linkLayerControl;
  if (linkLayerControl)
  {
    [(BTVCLinkLayerControl *)linkLayerControl sendEncryptionReq:&v10[2] encryptedDiversifier:*&v10[10] longTermKey:v10 | 0xC, *v10];
  }
}

- (void)_hciLeLongTermKeyRequestReply:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  linkLayerControl = self->_linkLayerControl;
  if (linkLayerControl)
  {
    self->_dataPacketPending = 1;
    if ([(BTVCLinkLayerControl *)linkLayerControl encryptionState]== 2)
    {
      [(BTVCLinkLayerControl *)self->_linkLayerControl sendEncryptionRsp:v5 + 2];
    }
  }

  v7 = 0;
  v8 = [(NSNumber *)self->_connectionHandle intValue];
  [(BTVCConnection *)self _sendHciCommandComplete:8218 params:&v7 length:3];
}

- (void)_hciLeLongTermKeyRequestNegativeReply:(id)a3
{
  v4 = a3;
  linkLayerControl = self->_linkLayerControl;
  if (linkLayerControl)
  {
    self->_dataPacketPending = 0;
    if ([(BTVCLinkLayerControl *)linkLayerControl encryptionState]== 2)
    {
      [(BTVCLinkLayerControl *)self->_linkLayerControl sendRejectExtendedInd:3 errorCode:6];
    }
  }

  v6 = 0;
  v7 = [(NSNumber *)self->_connectionHandle intValue];
  [(BTVCConnection *)self _sendHciCommandComplete:8219 params:&v6 length:3];
}

- (void)_hciLeRemoteConnectionParameterRequestReply:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  if (self->_linkLayerControl)
  {
    [(BTVCLinkLayerControl *)self->_linkLayerControl sendConnectionParamRsp:v5[1] intervalMax:v5[2] maxLatency:v5[3] timeout:v5[4]];
  }

  v6 = 0;
  v7 = [(NSNumber *)self->_connectionHandle intValue];
  [(BTVCConnection *)self _sendHciCommandComplete:8224 params:&v6 length:3];
}

- (void)_hciLeRemoteConnectionParameterRequestNegativeReply:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  linkLayerControl = self->_linkLayerControl;
  if (linkLayerControl)
  {
    self->_dataPacketPending = 0;
    if ([(BTVCLinkLayerControl *)linkLayerControl encryptionState]== 2)
    {
      [(BTVCLinkLayerControl *)self->_linkLayerControl sendRejectExtendedInd:15 errorCode:v5[2]];
    }
  }

  v7 = 0;
  v8 = [(NSNumber *)self->_connectionHandle intValue];
  [(BTVCConnection *)self _sendHciCommandComplete:8225 params:&v7 length:3];
}

- (void)_sendHCIEventDisconnectionComplete
{
  if (self->_hciEventHandler)
  {
    [(BTVCConnection *)self _removeFromHciCommandList:1030];
    [(NSNumber *)self->_connectionHandle intValue];
    [(BTVCLinkLayerControl *)self->_linkLayerControl errorCode];
    (*(self->_hciEventHandler + 2))();
  }
}

- (void)_sendHCIEventReadRemoteVersionInformationComplete:(unsigned __int8)a3
{
  if (self->_hciEventHandler)
  {
    v3 = a3;
    if ([(BTVCConnection *)self _removeFromHciCommandList:1053])
    {
      [(NSNumber *)self->_connectionHandle intValue];
      if (!v3)
      {
        [(BTVCDevice *)self->_peerDevice lmpVersion];
        [(BTVCDevice *)self->_peerDevice companyIdentifier];
        [(BTVCDevice *)self->_peerDevice lmpSubversion];
      }

      (*(self->_hciEventHandler + 2))();
    }
  }
}

- (void)_sendHciCommandComplete:(unsigned __int16)a3 params:(char *)a4 length:(unsigned __int16)a5
{
  if (self->_hciEventHandler)
  {
    v5 = a5;
    [(BTVCConnection *)self _removeFromHciCommandList:?];
    memset(v8, 0, sizeof(v8));
    memcpy(&v8[1], a4, v5);
    (*(self->_hciEventHandler + 2))();
  }
}

- (void)sendHciCommandStatusEvent:(unsigned __int16)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1003985DC;
  v4[3] = &unk_100AEF498;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_sendHciCommandStatusEvent:(unsigned __int16)a3
{
  hciEventHandler = self->_hciEventHandler;
  if (hciEventHandler)
  {
    v4[0] = 256;
    v4[1] = a3;
    hciEventHandler[2](hciEventHandler, 15, v4, 4);
  }
}

- (void)_sendHCIEventLeConnectionUpdateComplete:(unsigned __int8)a3
{
  if (self->_leMetaEventHandler)
  {
    v3 = a3;
    [(BTVCConnection *)self _removeFromHciCommandList:8211];
    if (!v3)
    {
      [(NSNumber *)self->_connectionHandle intValue];
      [(BTVCLinkLayerControl *)self->_linkLayerControl interval];
      [(BTVCLinkLayerControl *)self->_linkLayerControl latency];
      [(BTVCLinkLayerControl *)self->_linkLayerControl timeout];
    }

    (*(self->_leMetaEventHandler + 2))();
  }
}

- (void)_sendHCIEventLeReadRemoteFeatureComplete:(unsigned __int8)a3
{
  if (self->_leMetaEventHandler)
  {
    v3 = a3;
    if ([(BTVCConnection *)self _removeFromHciCommandList:8214])
    {
      *(v5 + 7) = 0;
      v5[0] = 0;
      [(NSNumber *)self->_connectionHandle intValue];
      if (!v3)
      {
        [(BTVCDevice *)self->_peerDevice getLeFeature:v5 + 3];
      }

      (*(self->_leMetaEventHandler + 2))();
    }
  }
}

- (void)_sendHCIEventLeLongTermKeyRequest
{
  if (self->_leMetaEventHandler)
  {
    [(NSNumber *)self->_connectionHandle intValue];
    [(BTVCLinkLayerControl *)self->_linkLayerControl getRandom];
    [(BTVCLinkLayerControl *)self->_linkLayerControl getEdiv];
    (*(self->_leMetaEventHandler + 2))();
  }
}

- (void)_sendHCIEventLeRemoteConnectionParameterRequest
{
  if (self->_leMetaEventHandler)
  {
    [(NSNumber *)self->_connectionHandle intValue];
    [(BTVCLinkLayerControl *)self->_linkLayerControl connParamIntervalMin];
    [(BTVCLinkLayerControl *)self->_linkLayerControl connParamIntervalMax];
    [(BTVCLinkLayerControl *)self->_linkLayerControl connParamLatency];
    [(BTVCLinkLayerControl *)self->_linkLayerControl connParamTimeout];
    (*(self->_leMetaEventHandler + 2))();
  }
}

- (void)_sendHCIEventLeDataLengthChange
{
  if (self->_leMetaEventHandler)
  {
    [(NSNumber *)self->_connectionHandle intValue];
    [(BTVCDevice *)self->_peerDevice maxRxOctets];
    [(BTVCDevice *)self->_peerDevice maxRxTime];
    [(BTVCDevice *)self->_peerDevice maxTxOctets];
    [(BTVCDevice *)self->_peerDevice maxTxTime];
    (*(self->_leMetaEventHandler + 2))();
  }
}

- (void)_sendHCIEventPhyUpdateComplete
{
  if (self->_leMetaEventHandler)
  {
    [(NSNumber *)self->_connectionHandle intValue];
    [(BTVCDevice *)self->_peerDevice txPhys];
    [(BTVCDevice *)self->_peerDevice rxPhys];
    (*(self->_leMetaEventHandler + 2))();
  }
}

- (void)_sendHCIEventEncryptionChangeV2:(unsigned __int8)a3
{
  if (self->_hciEventHandler)
  {
    [(BTVCConnection *)self _removeFromHciCommandList:8217];
    [(BTVCLinkLayerControl *)self->_linkLayerControl errorCode];
    [(NSNumber *)self->_connectionHandle intValue];
    (*(self->_hciEventHandler + 2))();
  }
}

- (BOOL)_removeFromHciCommandList:(unsigned __int16)a3
{
  v3 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[BTVCConnection _removeFromHciCommandList:]";
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s opCode: 0x%04X", &v13, 0x12u);
  }

  hciCommandList = self->_hciCommandList;
  if (!hciCommandList || ![(NSMutableDictionary *)hciCommandList count])
  {
    return 0;
  }

  v7 = [NSNumber numberWithInt:v3];
  v8 = [(NSMutableDictionary *)self->_hciCommandList objectForKeyedSubscript:v7];
  v9 = v8 != 0;
  if (v8)
  {
    [(NSMutableDictionary *)self->_hciCommandList removeObjectForKey:v7];
  }

  else
  {
    v10 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_hciCommandList;
      v13 = 136315650;
      v14 = "[BTVCConnection _removeFromHciCommandList:]";
      v15 = 1024;
      v16 = v3;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s opCode: 0x%04X is not in _hciCommandList %@", &v13, 0x1Cu);
    }
  }

  return v9;
}

- (void)_sendLmpEvent:(BOOL)a3 payload:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_lmpEventHandler)
  {
    v15 = 0;
    v7 = [(BTVCDevice *)self->_peerDevice bluetoothAddress];
    v8 = [v7 addressData];
    v9 = *[v8 bytes];

    v12 = v9;
    if (v4)
    {
      v10 = -127;
    }

    else
    {
      v10 = 0x80;
    }

    v13 = v10;
    v14 = 0;
    sub_1000075EC(&v15, &v12, 6uLL);
    HIWORD(v15) = [(NSNumber *)self->_connectionHandle intValue];
    v11 = [[NSMutableData alloc] initWithBytes:&v13 length:13];
    [v11 appendData:v6];
    (*(self->_lmpEventHandler + 2))();
  }
}

- (void)sendData:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[BTVCConnection sendData:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  if (!self->_invalidateCalled && self->_packetControl)
  {
    if (self->_dataPacketPending)
    {
      [(NSMutableArray *)self->_packetPendingQueue addObject:v4];
    }

    else
    {
      [(BTVCConnection *)self _setConnectionHeader:v4];
      v6 = [v4 objectForKeyedSubscript:@"payload"];
      if (self->_encryption)
      {
        v7 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BTVC:Encryption: send data payload %@", buf, 0xCu);
        }

        [(BTVCConnection *)self _addEncryptedPayload:v6 packet:v4];
        v8 = qword_100BCEA70;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v4 objectForKeyedSubscript:@"payload"];
          v10 = [v4 objectForKeyedSubscript:@"MIC"];
          *buf = 138412546;
          v15 = v9;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTVC:Encryption: send encrypted data payload %@ MIC:%@", buf, 0x16u);
        }
      }

      objc_initWeak(buf, self);
      packetControl = self->_packetControl;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10039901C;
      v12[3] = &unk_100AEF4C0;
      objc_copyWeak(&v13, buf);
      [(BTVCPacketControl *)packetControl sendPacket:v4 completion:v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_sendPacketCompele:(id)a3 error:(id)a4
{
  if (self->_hciEventHandler)
  {
    [(NSNumber *)self->_connectionHandle intValue:a3];
    (*(self->_hciEventHandler + 2))();
  }
}

- (void)sendLLControlPacket:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100399234;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_sendLLControlPacket:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[BTVCConnection _sendLLControlPacket:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s payload %@\n", buf, 0x16u);
  }

  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [NSNumber numberWithInt:3];
  [v6 setObject:v7 forKeyedSubscript:@"header"];

  if (self->_encryption)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "BTVC:Encryption: send LL control payload %@", buf, 0xCu);
    }

    [(BTVCConnection *)self _addEncryptedPayload:v4 packet:v6];
    v9 = qword_100BCEA70;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 objectForKeyedSubscript:@"payload"];
      v11 = [v6 objectForKeyedSubscript:@"MIC"];
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BTVC:Encryption: send encrypted LL control payload %@ MIC:%@", buf, 0x16u);
    }
  }

  else
  {
    [v6 setObject:v4 forKeyedSubscript:@"payload"];
  }

  objc_initWeak(buf, self);
  packetControl = self->_packetControl;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100399548;
  v13[3] = &unk_100AEF4E8;
  objc_copyWeak(&v14, buf);
  v13[4] = self;
  [(BTVCPacketControl *)packetControl sendPacket:v6 completion:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)_addEncryptedPayload:(id)a3 packet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bytes];
  v9 = [v6 length];
  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  v13 = 0;
  [(BTVCEncryption *)self->_encryption calculation:v8 length:v9 operation:1 mic:&v13 result:v10];
  v11 = [[NSData alloc] initWithBytes:v10 length:v9];
  [v7 setObject:v11 forKeyedSubscript:@"payload"];
  v12 = [[NSData alloc] initWithBytes:&v13 length:4];
  [v7 setObject:v12 forKeyedSubscript:@"MIC"];
  free(v10);
}

- (void)sendLLEvent:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100399868;
  v4[3] = &unk_100AE1200;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_sendLLEvent:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315138;
    *&v12[4] = "[BTVCConnection _sendLLEvent:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s\n", v12, 0xCu);
  }

  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        [(BTVCConnection *)self _sendHCIEventLeDataLengthChange];
      }

      else
      {
        [(BTVCConnection *)self _sendHCIEventPhyUpdateComplete];
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        [(BTVCConnection *)self _sendHCIEventLeReadRemoteFeatureComplete:0];
      }
    }

    else
    {
      [(BTVCConnection *)self _sendHCIEventReadRemoteVersionInformationComplete:0];
    }
  }

  else if (a3 <= 5)
  {
    if (a3 == 4)
    {
      [(BTVCConnection *)self _sendHCIEventLeConnectionUpdateComplete:0];
    }

    else
    {
      [(BTVCConnection *)self _sendHCIEventLeRemoteConnectionParameterRequest];
    }
  }

  else
  {
    switch(a3)
    {
      case 6:
        if ([(BTVCLinkLayerControl *)self->_linkLayerControl encryptionState]== 2)
        {
          [(BTVCConnection *)self _sendHCIEventLeLongTermKeyRequest];
        }

        else if ([(BTVCLinkLayerControl *)self->_linkLayerControl encryptionState]== 3)
        {
          self->_dataPacketPending = 1;
          v6 = qword_100BCEA70;
          if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
          {
            *v12 = 136315138;
            *&v12[4] = "[BTVCConnection _sendLLEvent:]";
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s  EncryptionStateStarte", v12, 0xCu);
          }

          v7 = [BTVCEncryption alloc];
          isPeripheral = self->_isPeripheral;
          *v12 = [(BTVCLinkLayerControl *)self->_linkLayerControl iv];
          v9 = [(BTVCEncryption *)v7 initWithParams:isPeripheral iv:v12 key:[(BTVCLinkLayerControl *)self->_linkLayerControl getSk]];
          encryption = self->_encryption;
          self->_encryption = v9;

          if (!self->_isPeripheral)
          {
            [(BTVCLinkLayerControl *)self->_linkLayerControl sendStartEncryptionRsp];
          }
        }

        else if ([(BTVCLinkLayerControl *)self->_linkLayerControl encryptionState]== 4)
        {
          [(BTVCConnection *)self _sendHCIEventEncryptionChangeV2:0];
          self->_dataPacketPending = 0;
          [(BTVCConnection *)self _checkDataPendingQueue];
        }

        else if ([(BTVCLinkLayerControl *)self->_linkLayerControl encryptionState]== 5)
        {
          v11 = self->_encryption;
          self->_encryption = 0;
        }

        else if ([(BTVCLinkLayerControl *)self->_linkLayerControl encryptionState]== 6)
        {
          [(BTVCConnection *)self _sendHCIEventEncryptionChangeV2:[(BTVCLinkLayerControl *)self->_linkLayerControl errorCode]];
        }

        break;
      case 7:
        [(BTVCConnection *)self _sendHCIEventDisconnectionComplete];
        break;
      case 8:
        [(BTVCConnection *)self _sendHCIEventDisconnectionComplete];
        [(BTVCConnection *)self _disconnectDevice:[(BTVCLinkLayerControl *)self->_linkLayerControl errorCode]];
        break;
    }
  }
}

- (void)_connectIfNeeded
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
  {
    sub_100822A48(v3);
  }

  if (!self->_connected && !self->_connecting && [(BTVCBonjourLink *)self->_btvcBonjourLink state]== 3)
  {
    self->_connecting = 1;
    self->_connectStartTime = CFAbsoluteTimeGetCurrent();
    v4 = objc_alloc_init(NSMutableDictionary);
    [(BTVCConnection *)self _setConnectionHeader:v4];
    v5 = [NSNumber numberWithUnsignedShort:self->_connInterval];
    [v4 setObject:v5 forKeyedSubscript:@"interval"];

    v6 = [NSNumber numberWithUnsignedShort:self->_connPeripheralLatency];
    [v4 setObject:v6 forKeyedSubscript:@"latency"];

    v7 = [NSNumber numberWithUnsignedShort:self->_connSupervisionTimeout];
    [v4 setObject:v7 forKeyedSubscript:@"timeout"];

    v8 = [NSNumber numberWithUnsignedShort:self->_centralSCA];
    [v4 setObject:v8 forKeyedSubscript:@"SCA"];

    btvcBonjourLink = self->_btvcBonjourLink;
    v10 = [(BTVCDevice *)self->_peerDevice identifier];
    [(BTVCBonjourLink *)btvcBonjourLink connectToPeer:v10 withParameters:v4];

    v11 = qword_100BCEA70;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BTVCConnection *)self connectionHandle];
      v13 = 136315394;
      v14 = "[BTVCConnection _connectIfNeeded]";
      v15 = 1024;
      v16 = [v12 intValue];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s connection handle 0x%04X\n", &v13, 0x12u);
    }
  }
}

- (void)cleanupPendingHciCommands
{
  p_hciCommandList = &self->_hciCommandList;
  if (self->_hciCommandList)
  {
    v4 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEBUG))
    {
      sub_100822A8C(p_hciCommandList, v4);
    }

    v5 = [*p_hciCommandList allKeys];
    v6 = [v5 count];
    v7 = v6;
    if (v6)
    {
      v8 = 0;
      while (1)
      {
        v9 = [v5 objectAtIndex:v8];
        v10 = [v9 intValue];
        v11 = v10;
        v12 = v10 - 8214;
        if (v12 > 0xB)
        {
          break;
        }

        if (((1 << v12) & 0xC30) != 0)
        {
          v15 = 0;
          v14 = 22;
          v15 = [(NSNumber *)self->_connectionHandle intValue];
          [(BTVCConnection *)self _sendHciCommandComplete:v11 params:&v14 length:3];
        }

        else if (v10 == 8214)
        {
          [(BTVCConnection *)self _sendHCIEventLeReadRemoteFeatureComplete:22];
        }

        else
        {
          if (v10 != 8217)
          {
            break;
          }

          [(BTVCConnection *)self _sendHCIEventEncryptionChangeV2:22];
        }

LABEL_18:

        if (v7 == ++v8)
        {
          goto LABEL_19;
        }
      }

      if (v10 == 1053)
      {
        [(BTVCConnection *)self _sendHCIEventReadRemoteVersionInformationComplete:22];
      }

      else if (v10 == 8211)
      {
        [(BTVCConnection *)self _sendHCIEventLeConnectionUpdateComplete:22];
      }

      else
      {
        [*p_hciCommandList removeObjectForKey:v9];
      }

      goto LABEL_18;
    }

LABEL_19:
    v13 = *p_hciCommandList;
    *p_hciCommandList = 0;
  }
}

- (void)addClient:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  clients = v4->_clients;
  if (!clients)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = v4->_clients;
    v4->_clients = v6;

    clients = v4->_clients;
  }

  [(NSMutableSet *)clients addObject:v8];
  objc_sync_exit(v4);
}

- (BOOL)removeClient:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  [(NSMutableSet *)v5->_clients removeObject:v4];
  v6 = [(NSMutableSet *)v5->_clients count]!= 0;
  objc_sync_exit(v5);

  return v6;
}

- (void)btvcBonjourLink:(id)a3 didConnectToPeer:(id)a4 parameters:(id)a5 role:(int64_t)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v38 = "[BTVCConnection btvcBonjourLink:didConnectToPeer:parameters:role:error:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  v17 = self->_peerDevice;
  v18 = v17;
  if (!a6)
  {
    btvcBonjourLink = self->_btvcBonjourLink;
    if (btvcBonjourLink)
    {
      if (btvcBonjourLink == v12)
      {
        v20 = [(BTVCDevice *)v17 identifier];
        v21 = [v20 isEqual:v13];

        if (v21)
        {
          v22 = qword_100BCEA70;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [(BTVCConnection *)self connectionHandle];
            v24 = [v23 intValue];
            *buf = 136315394;
            v38 = "[BTVCConnection btvcBonjourLink:didConnectToPeer:parameters:role:error:]";
            v39 = 1024;
            LODWORD(v40) = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s connection handle 0x%04X\n", buf, 0x12u);
          }

          self->_connecting = 0;
          v25 = CFAbsoluteTimeGetCurrent() - self->_connectStartTime;
          self->_connected = v15 == 0;
          if (v15)
          {
            v26 = qword_100BCEA70;
            if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v38 = *&v25;
              v39 = 2112;
              v40 = v15;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "### Connect failed (%f seconds): %@\n", buf, 0x16u);
            }

            if (self->_connectionStateChangedHandler)
            {
              connectionCompletedHandler = self->_connectionCompletedHandler;
              v28 = [(BTVCConnection *)self connectionHandle];
              connectionCompletedHandler[2](connectionCompletedHandler, v28, 8);
            }

            [(CURetrier *)self->_connectRetrier failedDirect];
          }

          else
          {
            if (!self->_packetControl)
            {
              v29 = [[BTVCPacketControl alloc] initWithParams:self->_dispatchQueue response:0];
              packetControl = self->_packetControl;
              self->_packetControl = v29;

              objc_initWeak(buf, self);
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 3221225472;
              v35[2] = sub_10039A564;
              v35[3] = &unk_100AEE5F0;
              objc_copyWeak(&v36, buf);
              [(BTVCPacketControl *)self->_packetControl setSendingPacket:v35];
              [(BTVCPacketControl *)self->_packetControl activateDirect];
              objc_destroyWeak(&v36);
              objc_destroyWeak(buf);
            }

            v31 = qword_100BCEA70;
            if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v38 = *&v25;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Connected (%f seconds)\n", buf, 0xCu);
            }

            self->_isPeripheral = 0;
            v32 = self->_connectionCompletedHandler;
            if (v32)
            {
              v33 = [(BTVCConnection *)self connectionHandle];
              v32[2](v32, v33, 0);

              isPeripheral = self->_isPeripheral;
            }

            else
            {
              isPeripheral = 0;
            }

            [(BTVCConnection *)self linkLayerControlInitAndActivate:isPeripheral];
          }
        }
      }
    }
  }
}

- (void)btvcBonjourLink:(id)a3 didDisconnectFromPeer:(id)a4 parameters:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v14 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[BTVCConnection btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
    v33 = 2112;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s peer device %@ parameters: %@\n", buf, 0x20u);
  }

  v15 = 0;
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink && btvcBonjourLink == v10)
  {
    v17 = qword_100BCEA70;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(BTVCDevice *)self->_peerDevice identifier];
      *buf = 136315394;
      v32 = "[BTVCConnection btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s peer device of current link %@\n", buf, 0x16u);
    }

    v19 = [(BTVCDevice *)self->_peerDevice identifier];
    v20 = [v19 isEqual:v11];

    if ((v20 & 1) == 0)
    {
      v15 = 0;
      goto LABEL_20;
    }

    v15 = NSDictionaryGetNSNumber();
    [(BTVCConnection *)self cleanupPendingHciCommands];
    *&self->_connected = 0;
    v21 = qword_100BCEA70;
    v22 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v22)
      {
        *buf = 138412290;
        v32 = v13;
        v23 = "### Disconnect failed: %@\n";
        v24 = v21;
        v25 = 12;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
      }
    }

    else if (v22)
    {
      *buf = 0;
      v23 = "Disconnected\n";
      v24 = v21;
      v25 = 2;
      goto LABEL_14;
    }

    [(BTVCPacketControl *)self->_packetControl invalidate];
    packetControl = self->_packetControl;
    self->_packetControl = 0;

    v27 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v32 = "[BTVCConnection btvcBonjourLink:didDisconnectFromPeer:parameters:error:]";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%s call _disconnectionCompletedHandler\n", buf, 0xCu);
    }

    disconnectionCompletedHandler = self->_disconnectionCompletedHandler;
    if (disconnectionCompletedHandler)
    {
      v29 = [(BTVCConnection *)self connectionHandle];
      (*(disconnectionCompletedHandler + 2))(disconnectionCompletedHandler, v29, 0, [v15 unsignedIntValue]);
    }

    [(CURetrier *)self->_connectRetrier invalidateDirect];
    connectRetrier = self->_connectRetrier;
    self->_connectRetrier = 0;
  }

LABEL_20:
}

- (void)btvcBonjourLink:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315650;
    v19 = "[BTVCConnection btvcBonjourLink:didSendData:toPeer:error:]";
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s data %@, peer %@", &v18, 0x20u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    if (btvcBonjourLink == v10)
    {
      v16 = [(BTVCDevice *)self->_peerDevice identifier];
      v17 = [v16 isEqual:v12];

      if (v17)
      {
        [(BTVCPacketControl *)self->_packetControl didSendPacket:v11 error:v13];
      }
    }
  }
}

- (void)handleReceivedData:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10039AB94;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleReceivedData:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 136315394;
    *&v25[4] = "[BTVCConnection _handleReceivedData:]";
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s data %@", v25, 0x16u);
  }

  v6 = v4;
  v7 = [v6 objectForKeyedSubscript:@"header"];
  v8 = [v7 intValue];

  v9 = [v6 objectForKeyedSubscript:@"payload"];
  v10 = [v6 objectForKeyedSubscript:@"MIC"];
  v11 = v10;
  if (self->_encryption && v10)
  {
    v12 = v9;
    v13 = [v9 bytes];
    v14 = [v9 length];
    v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
    v16 = v11;
    v17 = [v11 bytes];
    v18 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "data";
      *v25 = 136315906;
      if (v8 == 3)
      {
        v19 = "LL control";
      }

      *&v25[4] = v19;
      v26 = 2112;
      v27 = v9;
      v28 = 1040;
      v29 = 4;
      v30 = 2096;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BTVC:Encryption: received encrypted %s payload %@ MIC %.4P", v25, 0x26u);
    }

    if ([(BTVCEncryption *)self->_encryption calculation:v13 length:v14 operation:0 mic:v17 result:v15, *v25])
    {
      v20 = [[NSData alloc] initWithBytes:v15 length:v14];

      v21 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v22 = "data";
        if (v8 == 3)
        {
          v22 = "LL control";
        }

        *v25 = 136315394;
        *&v25[4] = v22;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "BTVC:Encryption: received decrypted %s payload %@", v25, 0x16u);
      }
    }

    else
    {
      v23 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 138412290;
        *&v25[4] = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "BTVC:Encryption: MIC Error %@", v25, 0xCu);
      }

      v20 = v9;
    }

    free(v15);
    v9 = v20;
  }

  if (v8 - 1 > 1)
  {
    if (v8 == 3)
    {
      [(BTVCConnection *)self _sendLmpEvent:1 payload:v9];
      [(BTVCLinkLayerControl *)self->_linkLayerControl controlPduReceived:v9];
    }
  }

  else
  {
    dataHandler = self->_dataHandler;
    if (dataHandler)
    {
      dataHandler[2](dataHandler, v9, v8, self);
    }
  }

  [(BTVCPacketControl *)self->_packetControl update];
}

- (void)btvcBonjourLink:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  btvcBonjourLink = self->_btvcBonjourLink;
  if (btvcBonjourLink)
  {
    if (btvcBonjourLink == v13)
    {
      v11 = [(BTVCDevice *)self->_peerDevice identifier];
      v12 = [v11 isEqual:v9];

      if (v12)
      {
        [(BTVCConnection *)self handleReceivedData:v8];
      }
    }
  }
}

- (void)sendingPacket:(id)a3
{
  v6 = a3;
  btvcBonjourLink = self->_btvcBonjourLink;
  v5 = [(BTVCDevice *)self->_peerDevice identifier];
  [(BTVCBonjourLink *)btvcBonjourLink sendData:v6 toPeer:v5];
}

- (void)testEncrytion
{
  v37 = xmmword_1008A6920;
  v38 = xmmword_1008A5090;
  v8 = 0xDEAFBABEBADCAB24;
  v36[0] = 0;
  v36[1] = 0;
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BTVCConnection testEncrytion]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s generate sk", buf, 0xCu);
  }

  sub_1003CE22C(&v38, &v37, v36);
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *buf = 0u;
  v7 = 0;
  v3 = [[BTVCEncryption alloc] initWithParams:0 iv:&v8 key:v36];
  v20[0] = xmmword_1008A6930;
  *(v20 + 11) = *(&xmmword_1008A6930 + 11);
  [(BTVCEncryption *)v3 calculation:v20 length:27 operation:1 mic:&v7 result:buf];
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136316162;
    v11 = "[BTVCConnection testEncrytion]";
    v12 = 1040;
    v13 = 27;
    v14 = 2096;
    v15 = buf;
    v16 = 1040;
    v17 = 4;
    v18 = 2096;
    v19 = &v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s encrypted payload %.27P MIC: %.4Pj3ajyw", v10, 0x2Cu);
  }

  v5 = [[BTVCEncryption alloc] initWithParams:1 iv:&v8 key:v36];
  v9[0] = xmmword_1008A694B;
  *(v9 + 11) = *(&xmmword_1008A694B + 11);
  [(BTVCEncryption *)v5 calculation:v9 length:27 operation:1 mic:&v7 result:buf];
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136316162;
    v11 = "[BTVCConnection testEncrytion]";
    v12 = 1040;
    v13 = 27;
    v14 = 2096;
    v15 = buf;
    v16 = 1040;
    v17 = 4;
    v18 = 2096;
    v19 = &v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s encrypted payload %.27P MIC: %.4P", v10, 0x2Cu);
  }
}

- (BTVCConnection)init
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[BTVCConnection init]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BTVCConnection:%s\n", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = BTVCConnection;
  v4 = [(BTVCConnection *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_acceptor = 0;
    v4->_bleEncrypted = 1;
    objc_storeStrong(&v4->_dispatchQueue, &_dispatch_main_q);
    v6 = v5;
  }

  return v5;
}

@end