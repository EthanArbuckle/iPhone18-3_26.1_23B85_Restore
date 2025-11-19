@interface BTVCLinkLayerControl
- (BOOL)_sendConnectionUpdateIndComplete;
- (BOOL)_sendFeatureRspComplete;
- (BOOL)_sendLengthRspComplete;
- (BOOL)_sendPacketComplete:(id)a3 error:(id)a4;
- (BOOL)_sendPhyUpdateComplete;
- (BOOL)_sendStartEncryptionReqComplete;
- (BOOL)_sendStartEncryptionRspComplete;
- (BOOL)_sendTerminateIndComplete;
- (BOOL)_sendVersionIndComplete;
- (BTVCLinkLayerControl)init;
- (BTVCLinkLayerControl)initWithDevice:(id)a3 role:(unsigned __int8)a4;
- (BluetoothKey)getSk;
- (unsigned)_getOpcodeFromCurrentPacket;
- (void)_activate;
- (void)_generateRandom:(char *)a3 size:(unsigned int)a4;
- (void)_handleConnectionParamReq:(id)a3;
- (void)_handleConnectionParamRsp:(id)a3;
- (void)_handleConnectionUpdateInd:(id)a3;
- (void)_handleEncryptionReq:(id)a3;
- (void)_handleEncryptionRsp:(id)a3;
- (void)_handleFeatureReq:(id)a3;
- (void)_handleFeatureRsp:(id)a3;
- (void)_handleLengthReq:(id)a3;
- (void)_handleLengthRsp:(id)a3;
- (void)_handlePhyReq:(id)a3;
- (void)_handlePhyRsp:(id)a3;
- (void)_handlePhyUpdateInd:(id)a3;
- (void)_handleRejectExtendedInd:(id)a3;
- (void)_handleStartEncryptionReq:(id)a3;
- (void)_handleStartEncryptionRsp:(id)a3;
- (void)_handleTerminateInd:(id)a3;
- (void)_handleVersionInd:(id)a3;
- (void)_invalidate;
- (void)_linkLayerControlInit;
- (void)_sendPacketDirect:(id)a3;
- (void)_sendTerminateInd:(unsigned __int8)a3;
- (void)activate;
- (void)activateDirect;
- (void)controlPduReceived:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)linkLayerControlInit;
- (void)sendConnectionParamReq:(unsigned __int16)a3 intervalMax:(unsigned __int16)a4 latency:(unsigned __int16)a5 timeout:(unsigned __int16)a6;
- (void)sendConnectionParamRsp:(unsigned __int16)a3 intervalMax:(unsigned __int16)a4 maxLatency:(unsigned __int16)a5 timeout:(unsigned __int16)a6;
- (void)sendConnectionUpdateInd;
- (void)sendEncryptionReq:(char *)a3 encryptedDiversifier:(unsigned __int16)a4 longTermKey:(BluetoothKey *)a5;
- (void)sendEncryptionRsp:(BluetoothKey *)a3;
- (void)sendFeatureReq;
- (void)sendFeatureRsp;
- (void)sendLengthReq;
- (void)sendLengthRsp;
- (void)sendPhyReq;
- (void)sendPhyRsp;
- (void)sendPhyUpdateInd;
- (void)sendRejectExtendedInd:(unsigned __int8)a3 errorCode:(unsigned __int8)a4;
- (void)sendStartEncryptionReq;
- (void)sendStartEncryptionRsp;
- (void)sendTerminateInd:(unsigned __int8)a3;
- (void)sendVersionInd;
- (void)sendingPacket:(id)a3;
- (void)setDispatchQueue:(id)a3;
@end

@implementation BTVCLinkLayerControl

- (BTVCLinkLayerControl)initWithDevice:(id)a3 role:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = "Yes";
    if (!v4)
    {
      v8 = "No";
    }

    *buf = 136315394;
    v13 = "[BTVCLinkLayerControl initWithDevice:role:]";
    v14 = 2080;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, isPeripheral: %s\n", buf, 0x16u);
  }

  v11.receiver = self;
  v11.super_class = BTVCLinkLayerControl;
  v9 = [(BTVCLinkLayerControl *)&v11 init];
  sub_100822C14(v9, v6, v4);
  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = BTVCLinkLayerControl;
  [(BTVCLinkLayerControl *)&v2 dealloc];
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
  block[2] = sub_10039D95C;
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

  [(BTVCLinkLayerControl *)v3 _activate];
}

- (void)_activate
{
  if (!self->_invalidateCalled)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[BTVCLinkLayerControl _activate]";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s Activate\n", buf, 0xCu);
    }

    *&self->_txPhys = 514;
    *&self->_maxRxOctets = 0xA9000FB0A9000FBLL;
    self->_encryptionState = 0;
    [(BTVCLinkLayerControl *)self _generateRandom:self->_skd.data[self->_isPeripheral] size:8];
    [(BTVCLinkLayerControl *)self _generateRandom:self->_iv.data[self->_isPeripheral] size:4];
    v4 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_skd.data[self->_isPeripheral];
      *buf = 136315650;
      v13 = "[BTVCLinkLayerControl _activate]";
      v14 = 1040;
      v15 = 8;
      v16 = 2096;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s generated SKD %.8P", buf, 0x1Cu);
    }

    v6 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v7 = &self->_iv + 4 * self->_isPeripheral;
      *buf = 136315650;
      v13 = "[BTVCLinkLayerControl _activate]";
      v14 = 1040;
      v15 = 4;
      v16 = 2096;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s generated IV %.4P ", buf, 0x1Cu);
    }

    if (!self->_packetControl)
    {
      v8 = [[BTVCPacketControl alloc] initWithParams:self->_dispatchQueue response:1];
      packetControl = self->_packetControl;
      self->_packetControl = v8;

      [(BTVCPacketControl *)self->_packetControl setPacketCompleteTimeoutSeconds:40.0];
      objc_initWeak(buf, self);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10039DCB4;
      v10[3] = &unk_100AEE5F0;
      objc_copyWeak(&v11, buf);
      [(BTVCPacketControl *)self->_packetControl setSendingPacket:v10];
      [(BTVCPacketControl *)self->_packetControl activateDirect];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }

    self->_linkReadyState = 0;
    if (!self->_isPeripheral)
    {
      [(BTVCLinkLayerControl *)self linkLayerControlInit];
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039DDA4;
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
    [(BTVCPacketControl *)self->_packetControl invalidate];
    packetControl = self->_packetControl;
    self->_packetControl = 0;

    v5 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidated\n", v6, 2u);
    }
  }
}

- (void)_generateRandom:(char *)a3 size:(unsigned int)a4
{
  if (a4)
  {
    v5 = a4;
    do
    {
      *a3++ = arc4random_uniform(0xFFu);
      --v5;
    }

    while (v5);
  }
}

- (BluetoothKey)getSk
{
  p_longTermKey = &self->_longTermKey;
  p_sk = &self->_sk;
  sub_1003CE22C(&self->_longTermKey, &self->_skd, &self->_sk);
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136316162;
    v7 = "[BTVCLinkLayerControl getSk]";
    v8 = 1040;
    v9 = 16;
    v10 = 2096;
    v11 = p_longTermKey;
    v12 = 1040;
    v13 = 16;
    v14 = 2096;
    v15 = p_sk;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s LTK %.16P SK %.16P", &v6, 0x2Cu);
  }

  return p_sk;
}

- (void)linkLayerControlInit
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10039E06C;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_linkLayerControlInit
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    linkReadyState = self->_linkReadyState;
    if (linkReadyState > 5)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_100AEF728[linkReadyState];
    }

    v7 = 136315394;
    v8 = "[BTVCLinkLayerControl _linkLayerControlInit]";
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s link ready state %s", &v7, 0x16u);
  }

  if (!self->_isPeripheral && (self->_encryptionState & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    v6 = self->_linkReadyState;
    if (v6 > 2)
    {
      if (v6 - 4 < 2)
      {
        return;
      }

      if (v6 == 3)
      {
        [(BTVCLinkLayerControl *)self sendPhyReq];
        return;
      }
    }

    else
    {
      if (!self->_linkReadyState)
      {
        [(BTVCLinkLayerControl *)self sendVersionInd];
        return;
      }

      if (v6 == 1)
      {
        [(BTVCLinkLayerControl *)self sendFeatureReq];
        return;
      }

      if (v6 == 2)
      {
        [(BTVCLinkLayerControl *)self sendLengthReq];
        return;
      }
    }

    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100822C74();
    }
  }
}

- (void)_sendPacketDirect:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[BTVCLinkLayerControl _sendPacketDirect:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s %@\n", buf, 0x16u);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    v6 = qword_100BCEA70;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(BTVCPacketControl *)self->_packetControl getCurrentPacket];
      v8 = "No";
      if (!v7)
      {
        v8 = "Yes";
      }

      *buf = 136315394;
      v13 = "[BTVCLinkLayerControl _sendPacketDirect:]";
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s current packet is empty %s\n", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    packetControl = self->_packetControl;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10039E424;
    v10[3] = &unk_100AEF4C0;
    objc_copyWeak(&v11, buf);
    [(BTVCPacketControl *)packetControl sendPacket:v4 completion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (void)sendConnectionUpdateInd
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[BTVCLinkLayerControl sendConnectionUpdateInd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_CONNECTION_UPDATE_IND", &v8, 0xCu);
  }

  connParamIntervalMin = self->_connParamIntervalMin;
  self->_interval = connParamIntervalMin;
  connParamLatency = self->_connParamLatency;
  self->_latency = connParamLatency;
  connParamTimeout = self->_connParamTimeout;
  self->_timeout = connParamTimeout;
  v8 = 768;
  LOWORD(v9) = connParamIntervalMin;
  WORD1(v9) = connParamLatency;
  HIDWORD(v9) = connParamTimeout;
  v7 = [[NSData alloc] initWithBytes:&v8 length:12];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v7];
}

- (BOOL)_sendConnectionUpdateIndComplete
{
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 4);
  }

  return 1;
}

- (void)_handleConnectionUpdateInd:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BTVCLinkLayerControl _handleConnectionUpdateInd:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_CONNECTION_UPDATE_IND %@", &v9, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  self->_interval = v7[2];
  self->_latency = v7[3];
  self->_timeout = v7[4];
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 4);
  }
}

- (void)sendTerminateInd:(unsigned __int8)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10039E880;
  v4[3] = &unk_100AE1750;
  v4[4] = self;
  v5 = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)_sendTerminateInd:(unsigned __int8)a3
{
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[BTVCLinkLayerControl _sendTerminateInd:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s send LL_TERMINATE_IND", &v7, 0xCu);
  }

  [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:0];
  LOWORD(v7) = 2;
  self->_interval = self->_connParamIntervalMin;
  *&self->_latency = *&self->_connParamLatency;
  BYTE1(v7) = a3;
  v6 = [[NSData alloc] initWithBytes:&v7 length:2];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v6];
}

- (BOOL)_sendTerminateIndComplete
{
  v3 = [(BTVCPacketControl *)self->_packetControl getCurrentPacket];
  self->_errorCode = *([v3 bytes] + 1);
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 8);
  }

  return 1;
}

- (void)_handleTerminateInd:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCLinkLayerControl _handleTerminateInd:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_TERMINATE_IND %@", &v8, 0x16u);
  }

  v6 = v4;
  self->_errorCode = *([v4 bytes] + 1);
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 7);
  }
}

- (void)sendEncryptionReq:(char *)a3 encryptedDiversifier:(unsigned __int16)a4 longTermKey:(BluetoothKey *)a5
{
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136315138;
    *&v13[4] = "[BTVCLinkLayerControl sendEncryptionReq:encryptedDiversifier:longTermKey:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s send LL_ENC_REQ", v13, 0xCu);
  }

  v10 = *a3;
  *self->_randomNumber = *a3;
  self->_encryptedDiversifier = a4;
  self->_longTermKey = *a5;
  v13[0] = 3;
  *&v13[1] = v10;
  *&v13[9] = a4;
  isPeripheral = self->_isPeripheral;
  *&v13[11] = *&self->_skd.data[isPeripheral][0];
  v14 = *&self->_iv.data[isPeripheral][0];
  v12 = [[NSData alloc] initWithBytes:v13 length:23];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v12];
  self->_encryptionState = 1;
}

- (void)_handleEncryptionReq:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[BTVCLinkLayerControl _handleEncryptionReq:]";
    v14 = 2112;
    *v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_ENC_REQ %@", &v12, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  *self->_randomNumber = *(v7 + 1);
  self->_encryptedDiversifier = *(v7 + 9);
  v8 = !self->_isPeripheral;
  *&self->_skd.data[v8][0] = *(v7 + 11);
  *&self->_iv.data[v8][0] = *(v7 + 19);
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136316162;
    v13 = "[BTVCLinkLayerControl _handleEncryptionReq:]";
    v14 = 1040;
    *v15 = 8;
    *&v15[4] = 2096;
    *&v15[6] = &self->_skd;
    v16 = 1040;
    v17 = 8;
    v18 = 2096;
    v19 = self->_skd.data[1];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SKD_C %.8P SKD_P %.8P", &v12, 0x2Cu);
  }

  v10 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136316162;
    v13 = "[BTVCLinkLayerControl _handleEncryptionReq:]";
    v14 = 1040;
    *v15 = 4;
    *&v15[4] = 2096;
    *&v15[6] = &self->_iv;
    v16 = 1040;
    v17 = 4;
    v18 = 2096;
    v19 = &self->_iv + 4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s IV_C %.4P IV_P %.4P", &v12, 0x2Cu);
  }

  self->_encryptionState = 2;
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 6);
  }
}

- (void)sendEncryptionRsp:(BluetoothKey *)a3
{
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 136315138;
    *&v8[4] = "[BTVCLinkLayerControl sendEncryptionRsp:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s send LL_ENC_RSP", v8, 0xCu);
  }

  self->_longTermKey = *a3;
  v8[0] = 4;
  isPeripheral = self->_isPeripheral;
  *&v8[1] = *&self->_skd.data[isPeripheral][0];
  *&v8[9] = *&self->_iv.data[isPeripheral][0];
  v7 = [[NSData alloc] initWithBytes:v8 length:13];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v7];
}

- (void)_handleEncryptionRsp:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[BTVCLinkLayerControl _handleEncryptionRsp:]";
    v13 = 2112;
    *v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_ENC_RSP %@", &v11, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  v8 = !self->_isPeripheral;
  *&self->_skd.data[v8][0] = *(v7 + 1);
  *&self->_iv.data[v8][0] = *(v7 + 9);
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316162;
    v12 = "[BTVCLinkLayerControl _handleEncryptionRsp:]";
    v13 = 1040;
    *v14 = 8;
    *&v14[4] = 2096;
    *&v14[6] = &self->_skd;
    v15 = 1040;
    v16 = 8;
    v17 = 2096;
    v18 = self->_skd.data[1];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s SKD_C %.8P SKD_P %.8P", &v11, 0x2Cu);
  }

  v10 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316162;
    v12 = "[BTVCLinkLayerControl _handleEncryptionRsp:]";
    v13 = 1040;
    *v14 = 4;
    *&v14[4] = 2096;
    *&v14[6] = &self->_iv;
    v15 = 1040;
    v16 = 4;
    v17 = 2096;
    v18 = &self->_iv + 4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s IV_C %.4P IV_P %.4P", &v11, 0x2Cu);
  }

  [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
}

- (void)sendStartEncryptionReq
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[BTVCLinkLayerControl sendStartEncryptionReq]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_START_ENC_REQ", &v5, 0xCu);
  }

  LOBYTE(v5) = 5;
  v4 = [[NSData alloc] initWithBytes:&v5 length:1];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (BOOL)_sendStartEncryptionReqComplete
{
  self->_encryptionState = 3;
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 6);
  }

  return 0;
}

- (void)_handleStartEncryptionReq:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[BTVCLinkLayerControl _handleStartEncryptionReq:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_START_ENC_REQ %@", &v7, 0x16u);
  }

  [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
  self->_encryptionState = 3;
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 6);
  }
}

- (void)sendStartEncryptionRsp
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[BTVCLinkLayerControl sendStartEncryptionRsp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_START_ENC_RSP", &v5, 0xCu);
  }

  LOBYTE(v5) = 6;
  v4 = [[NSData alloc] initWithBytes:&v5 length:1];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (BOOL)_sendStartEncryptionRspComplete
{
  if (self->_isPeripheral)
  {
    self->_encryptionState = 4;
    sendLLEvent = self->_sendLLEvent;
    if (sendLLEvent)
    {
      sendLLEvent[2](sendLLEvent, 6);
    }
  }

  else
  {
    [(BTVCLinkLayerControl *)self linkLayerControlInit];
  }

  return 1;
}

- (void)_handleStartEncryptionRsp:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[BTVCLinkLayerControl _handleStartEncryptionRsp:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_START_ENC_RSP %@", &v7, 0x16u);
  }

  [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
  if (self->_isPeripheral)
  {
    [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
    [(BTVCLinkLayerControl *)self sendStartEncryptionRsp];
  }

  else
  {
    self->_encryptionState = 4;
    sendLLEvent = self->_sendLLEvent;
    if (sendLLEvent)
    {
      sendLLEvent[2](sendLLEvent, 6);
    }

    [(BTVCLinkLayerControl *)self linkLayerControlInit];
  }
}

- (void)sendFeatureReq
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136315138;
    *&v5[4] = "[BTVCLinkLayerControl sendFeatureReq]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_FEATURE_REQ", v5, 0xCu);
  }

  v5[0] = 8;
  *&v5[1] = qword_100B541C0;
  v4 = [[NSData alloc] initWithBytes:v5 length:9];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (void)_handleFeatureReq:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[BTVCLinkLayerControl _handleFeatureReq:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_FEATURE_REQ %@", &v7, 0x16u);
  }

  v6 = v4;
  -[BTVCDevice setLeFeature:](self->_peerDevice, "setLeFeature:", [v4 bytes] + 1);
  [(BTVCLinkLayerControl *)self sendFeatureRsp];
}

- (void)sendFeatureRsp
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136315138;
    *&v5[4] = "[BTVCLinkLayerControl sendFeatureRsp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_FEATURE_RSP", v5, 0xCu);
  }

  v5[0] = 9;
  *&v5[1] = qword_100B541C0;
  v4 = [[NSData alloc] initWithBytes:v5 length:9];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (BOOL)_sendFeatureRspComplete
{
  self->_linkReadyState = 2;
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 1);
  }

  return 1;
}

- (void)_handleFeatureRsp:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[BTVCLinkLayerControl _handleFeatureRsp:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_FEATURE_RSP %@", &v11, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  if ([(BTVCLinkLayerControl *)self _getOpcodeFromCurrentPacket]== 8)
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[BTVCLinkLayerControl _handleFeatureRsp:]";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s set self->_peerDevice.leFeatures.data", &v11, 0xCu);
    }

    [(BTVCDevice *)self->_peerDevice setLeFeature:v7 + 1];
    [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
    self->_linkReadyState = 2;
    sendLLEvent = self->_sendLLEvent;
    if (sendLLEvent)
    {
      sendLLEvent[2](sendLLEvent, 1);
    }

    v10 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[BTVCLinkLayerControl _handleFeatureRsp:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s Start LengthReq", &v11, 0xCu);
    }

    [(BTVCLinkLayerControl *)self linkLayerControlInit];
  }
}

- (void)sendVersionInd
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136315138;
    *&v5[4] = "[BTVCLinkLayerControl sendVersionInd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_VERSION_ID", v5, 0xCu);
  }

  *v5 = 3084;
  *&v5[2] = 65612;
  v4 = [[NSData alloc] initWithBytes:v5 length:6];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (BOOL)_sendVersionIndComplete
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    versionExchange = self->_versionExchange;
    v9 = 136315394;
    v10 = "[BTVCLinkLayerControl _sendVersionIndComplete]";
    v11 = 1024;
    v12 = versionExchange;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s versionExchange state %02X", &v9, 0x12u);
  }

  v5 = self->_versionExchange;
  v6 = v5 | 1;
  self->_versionExchange = v5 | 1;
  if ((v5 | 1) == 3)
  {
    self->_linkReadyState = 1;
    sendLLEvent = self->_sendLLEvent;
    if (sendLLEvent)
    {
      sendLLEvent[2](sendLLEvent, 0);
    }
  }

  return v6 == 3;
}

- (void)_handleVersionInd:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[BTVCLinkLayerControl _handleVersionInd:]";
    v16 = 2112;
    *v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_VERSION_ID %@", &v14, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  [(BTVCDevice *)self->_peerDevice setLmpVersion:v7[1]];
  [(BTVCDevice *)self->_peerDevice setCompanyIdentifier:*(v7 + 1)];
  [(BTVCDevice *)self->_peerDevice setLmpSubversion:*(v7 + 2)];
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(BTVCDevice *)self->_peerDevice lmpVersion];
    v10 = [(BTVCDevice *)self->_peerDevice companyIdentifier];
    v11 = [(BTVCDevice *)self->_peerDevice lmpSubversion];
    v14 = 136315906;
    v15 = "[BTVCLinkLayerControl _handleVersionInd:]";
    v16 = 1024;
    *v17 = v9;
    *&v17[4] = 1024;
    *&v17[6] = v10;
    v18 = 1024;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s received LL_VERSION_ID version 0x%02x, companyID 0x%04X subVersion 0x%04X ", &v14, 0x1Eu);
  }

  if (self->_versionExchange == 1 && [(BTVCLinkLayerControl *)self _getOpcodeFromCurrentPacket]== 12)
  {
    [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
  }

  v12 = self->_versionExchange | 2;
  self->_versionExchange |= 2u;
  if (v12 == 3)
  {
    if ([(BTVCLinkLayerControl *)self _getOpcodeFromCurrentPacket]== 12)
    {
      [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
    }

    self->_linkReadyState = 1;
    sendLLEvent = self->_sendLLEvent;
    if (sendLLEvent)
    {
      sendLLEvent[2](sendLLEvent, 0);
    }

    [(BTVCLinkLayerControl *)self linkLayerControlInit];
  }

  else if (v12 == 2)
  {
    [(BTVCLinkLayerControl *)self sendVersionInd];
  }
}

- (void)sendConnectionParamReq:(unsigned __int16)a3 intervalMax:(unsigned __int16)a4 latency:(unsigned __int16)a5 timeout:(unsigned __int16)a6
{
  v11 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136315138;
    *&v13[4] = "[BTVCLinkLayerControl sendConnectionParamReq:intervalMax:latency:timeout:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s send LL_CONNECTION_PARAM_REQ", v13, 0xCu);
  }

  v13[0] = 15;
  *&v13[1] = a3;
  *&v13[3] = a4;
  *&v13[5] = a5;
  *&v13[7] = a6;
  v13[9] = 0;
  *&v13[10] = 197838;
  v14 = -1;
  v15 = -1;
  v12 = [[NSData alloc] initWithBytes:v13 length:24];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v12];
}

- (void)_handleConnectionParamReq:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BTVCLinkLayerControl _handleConnectionParamReq:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_CONNECTION_PARAM_REQ %@", &v9, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  self->_connParamIntervalMin = *(v7 + 1);
  self->_connParamIntervalMax = *(v7 + 3);
  self->_connParamLatency = *(v7 + 5);
  self->_connParamTimeout = *(v7 + 7);
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 5);
  }
}

- (void)sendConnectionParamRsp:(unsigned __int16)a3 intervalMax:(unsigned __int16)a4 maxLatency:(unsigned __int16)a5 timeout:(unsigned __int16)a6
{
  v11 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 136315138;
    *&v13[4] = "[BTVCLinkLayerControl sendConnectionParamRsp:intervalMax:maxLatency:timeout:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s send LL_CONNECTION_PARAM_RSP", v13, 0xCu);
  }

  v13[0] = 16;
  *&v13[1] = a3;
  *&v13[3] = a4;
  *&v13[5] = a5;
  *&v13[7] = a6;
  v13[9] = 0;
  *&v13[10] = 197838;
  v14 = -1;
  v15 = -1;
  v12 = [[NSData alloc] initWithBytes:v13 length:24];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v12];
}

- (void)_handleConnectionParamRsp:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCLinkLayerControl _handleConnectionParamRsp:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_CONNECTION_PARAM_RSP %@", &v8, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  self->_connParamIntervalMin = *(v7 + 1);
  self->_connParamIntervalMax = *(v7 + 3);
  self->_connParamLatency = *(v7 + 5);
  self->_connParamTimeout = *(v7 + 7);
  [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
  [(BTVCLinkLayerControl *)self sendConnectionUpdateInd];
}

- (void)sendRejectExtendedInd:(unsigned __int8)a3 errorCode:(unsigned __int8)a4
{
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[BTVCLinkLayerControl sendRejectExtendedInd:errorCode:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s send LL_REJECT_EXT_IND", &v9, 0xCu);
  }

  LOBYTE(v9) = 17;
  BYTE1(v9) = a3;
  BYTE2(v9) = a4;
  v8 = [[NSData alloc] initWithBytes:&v9 length:3];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v8];
}

- (void)_handleRejectExtendedInd:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BTVCLinkLayerControl _handleRejectExtendedInd:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_REJECT_EXT_IND %@", &v9, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  self->_errorCode = v7[2];
  if (v7[1] == 3)
  {
    [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
    self->_encryptionState = 6;
    sendLLEvent = self->_sendLLEvent;
    if (sendLLEvent)
    {
      sendLLEvent[2](sendLLEvent, 6);
    }

    if (!self->_isPeripheral)
    {
      [(BTVCLinkLayerControl *)self linkLayerControlInit];
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100822CEC();
  }
}

- (void)sendLengthReq
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136315138;
    *&v5[4] = "[BTVCLinkLayerControl sendLengthReq]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_LENGTH_REQ", v5, 0xCu);
  }

  v5[0] = 20;
  *&v5[1] = *&self->_maxRxOctets;
  *&v5[5] = self->_maxTxOctets;
  *&v5[7] = *&v5[3];
  v4 = [[NSData alloc] initWithBytes:v5 length:9];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (void)_handleLengthReq:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[BTVCLinkLayerControl _handleLengthReq:]";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_LENGTH_REQ %@", &v15, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  v8 = *(v7 + 1);
  v9 = *(v7 + 3);
  v10 = *(v7 + 7);
  if (self->_maxRxOctets >= *(v7 + 5))
  {
    maxRxOctets = *(v7 + 5);
  }

  else
  {
    maxRxOctets = self->_maxRxOctets;
  }

  [(BTVCDevice *)self->_peerDevice setMaxRxOctets:maxRxOctets];
  if (self->_maxRxTime >= v10)
  {
    maxRxTime = v10;
  }

  else
  {
    maxRxTime = self->_maxRxTime;
  }

  [(BTVCDevice *)self->_peerDevice setMaxRxTime:maxRxTime];
  if (self->_maxTxOctets >= v8)
  {
    maxTxOctets = v8;
  }

  else
  {
    maxTxOctets = self->_maxTxOctets;
  }

  [(BTVCDevice *)self->_peerDevice setMaxTxOctets:maxTxOctets];
  if (self->_maxTxTime >= v9)
  {
    maxTxTime = v9;
  }

  else
  {
    maxTxTime = self->_maxTxTime;
  }

  [(BTVCDevice *)self->_peerDevice setMaxTxTime:maxTxTime];
  [(BTVCLinkLayerControl *)self sendLengthRsp];
}

- (void)sendLengthRsp
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136315138;
    *&v5[4] = "[BTVCLinkLayerControl sendLengthRsp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_LENGTH_RSP", v5, 0xCu);
  }

  v5[0] = 21;
  *&v5[1] = *&self->_maxRxOctets;
  *&v5[5] = self->_maxTxOctets;
  *&v5[7] = *&v5[3];
  v4 = [[NSData alloc] initWithBytes:v5 length:9];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (BOOL)_sendLengthRspComplete
{
  self->_linkReadyState = 3;
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 2);
  }

  return 1;
}

- (void)_handleLengthRsp:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[BTVCLinkLayerControl _handleLengthRsp:]";
    v22 = 2112;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_LENGTH_RSP %@", buf, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  if ([(BTVCLinkLayerControl *)self _getOpcodeFromCurrentPacket]== 20)
  {
    v8 = *(v7 + 1);
    v9 = *(v7 + 3);
    v10 = *(v7 + 5);
    v11 = *(v7 + 7);
    if (self->_maxRxOctets >= v10)
    {
      maxRxOctets = v10;
    }

    else
    {
      maxRxOctets = self->_maxRxOctets;
    }

    [(BTVCDevice *)self->_peerDevice setMaxRxOctets:maxRxOctets];
    if (self->_maxRxTime >= v11)
    {
      maxRxTime = v11;
    }

    else
    {
      maxRxTime = self->_maxRxTime;
    }

    [(BTVCDevice *)self->_peerDevice setMaxRxTime:maxRxTime];
    if (self->_maxTxOctets >= v8)
    {
      maxTxOctets = v8;
    }

    else
    {
      maxTxOctets = self->_maxTxOctets;
    }

    [(BTVCDevice *)self->_peerDevice setMaxTxOctets:maxTxOctets];
    if (self->_maxTxTime >= v9)
    {
      maxTxTime = v9;
    }

    else
    {
      maxTxTime = self->_maxTxTime;
    }

    [(BTVCDevice *)self->_peerDevice setMaxTxTime:maxTxTime];
    [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
    v19 = 0;
    [(BTVCDevice *)self->_peerDevice getLeFeature:&v19];
    v16 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v21 = "[BTVCLinkLayerControl _handleLengthRsp:]";
      v22 = 1024;
      LODWORD(v23) = BYTE1(v19);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s set self->_peerDevice.leFeatures.data[1] %x", buf, 0x12u);
    }

    if (!self->_isPeripheral && (v19 & 0x100) != 0)
    {
      v17 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v21 = "[BTVCLinkLayerControl _handleLengthRsp:]";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s Start Phy exchange", buf, 0xCu);
      }

      self->_linkReadyState = 3;
      [(BTVCLinkLayerControl *)self linkLayerControlInit];
    }

    else
    {
      self->_linkReadyState = 5;
    }

    sendLLEvent = self->_sendLLEvent;
    if (sendLLEvent)
    {
      sendLLEvent[2](sendLLEvent, 2);
    }
  }
}

- (void)sendPhyReq
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[BTVCLinkLayerControl sendPhyReq]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_PHY_REQ", &v5, 0xCu);
  }

  LOBYTE(v5) = 22;
  *(&v5 + 1) = *&self->_txPhys;
  v4 = [[NSData alloc] initWithBytes:&v5 length:3];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (void)_handlePhyReq:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BTVCLinkLayerControl _handlePhyReq:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_PHY_REQ %@", &v9, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  if (self->_isPeripheral)
  {
    [(BTVCLinkLayerControl *)self sendPhyRsp];
  }

  else
  {
    v8 = v7;
    [(BTVCDevice *)self->_peerDevice setTxPhys:(v7[2] & self->_txPhys)];
    [(BTVCDevice *)self->_peerDevice setRxPhys:(v8[1] & self->_rxPhys)];
    [(BTVCLinkLayerControl *)self sendPhyUpdateInd];
  }
}

- (void)sendPhyRsp
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[BTVCLinkLayerControl sendPhyRsp]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_PHY_RSP", &v5, 0xCu);
  }

  LOBYTE(v5) = 23;
  *(&v5 + 1) = *&self->_txPhys;
  v4 = [[NSData alloc] initWithBytes:&v5 length:3];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (void)_handlePhyRsp:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCLinkLayerControl _handlePhyRsp:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_PHY_RSP %@", &v8, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  if ([(BTVCLinkLayerControl *)self _getOpcodeFromCurrentPacket]== 22)
  {
    [(BTVCDevice *)self->_peerDevice setTxPhys:(v7[2] & self->_txPhys)];
    [(BTVCDevice *)self->_peerDevice setRxPhys:(v7[1] & self->_rxPhys)];
    [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
    if (!self->_isPeripheral)
    {
      [(BTVCLinkLayerControl *)self sendPhyUpdateInd];
    }
  }
}

- (void)sendPhyUpdateInd
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 136315138;
    *&v5[4] = "[BTVCLinkLayerControl sendPhyUpdateInd]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s send LL_PHY_UPDATE_IND", v5, 0xCu);
  }

  v5[0] = 24;
  v5[1] = [(BTVCDevice *)self->_peerDevice txPhys];
  v5[2] = [(BTVCDevice *)self->_peerDevice rxPhys];
  *&v5[3] = 0;
  v4 = [[NSData alloc] initWithBytes:v5 length:5];
  [(BTVCLinkLayerControl *)self _sendPacketDirect:v4];
}

- (BOOL)_sendPhyUpdateComplete
{
  self->_linkReadyState = 5;
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 3);
  }

  return 1;
}

- (void)_handlePhyUpdateInd:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BTVCLinkLayerControl _handlePhyUpdateInd:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s received LL_PHY_UPDATE_IND %@", &v9, 0x16u);
  }

  v6 = v4;
  v7 = [v4 bytes];
  [(BTVCDevice *)self->_peerDevice setTxPhys:v7[2]];
  [(BTVCDevice *)self->_peerDevice setRxPhys:v7[1]];
  [(BTVCPacketControl *)self->_packetControl completeCurrentPacket:v4];
  self->_linkReadyState = 5;
  sendLLEvent = self->_sendLLEvent;
  if (sendLLEvent)
  {
    sendLLEvent[2](sendLLEvent, 3);
  }
}

- (BOOL)_sendPacketComplete:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BTVCPacketControl *)self->_packetControl getCurrentPacket];
  if (!v8)
  {
LABEL_16:
    v13 = 1;
    goto LABEL_17;
  }

  v9 = [(BTVCLinkLayerControl *)self _getOpcodeFromCurrentPacket];
  v10 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    if ((v9 + 1) > 0x2Au)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_100AEF820[(v9 + 1)];
    }

    v16 = 136315394;
    v17 = v11;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "BTVC:LLPDU sent: %s, payload: %@", &v16, 0x16u);
  }

  if ([v7 code] == -6722)
  {
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[BTVCLinkLayerControl _sendPacketComplete:error:]";
      v18 = 1024;
      LODWORD(v19) = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s opCode %02X response timeout", &v16, 0x12u);
    }

    self->_linkReadyState = 5;
    [(BTVCPacketControl *)self->_packetControl cleanupQueuedPacket:4294960574];
    [(BTVCLinkLayerControl *)self sendTerminateInd:34];
    goto LABEL_16;
  }

  if (v9 >= 0x19 || ((0x1F3937Du >> v9) & 1) == 0)
  {
    v14 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "[BTVCLinkLayerControl _sendPacketComplete:error:]";
      v18 = 1024;
      LODWORD(v19) = v9;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s sent opCode %02X is not supported", &v16, 0x12u);
    }

    goto LABEL_16;
  }

  v13 = [self *off_100AEF758[v9]];
LABEL_17:

  return v13;
}

- (void)controlPduReceived:(id)a3
{
  v4 = a3;
  v5 = [(BTVCLinkLayerControl *)self _getOpcodeFromPayloadData:v4];
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    if ((v5 + 1) > 0x2Au)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_100AEF820[(v5 + 1)];
    }

    v15 = 136315394;
    v16 = v7;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTVC:LLPDU received: %s, payload: %@", &v15, 0x16u);
  }

  if (v5 < 0x19 && ((0x1F3937Du >> v5) & 1) != 0)
  {
    [self *off_100AEF978[v5]];
    [(BTVCPacketControl *)self->_packetControl update];
  }

  else
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100822D64(v5, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

- (unsigned)_getOpcodeFromCurrentPacket
{
  v3 = [(BTVCPacketControl *)self->_packetControl getCurrentPacket];
  if (v3)
  {
    v4 = [(BTVCLinkLayerControl *)self _getOpcodeFromPayloadData:v3];
  }

  else
  {
    v4 = -18;
  }

  return v4;
}

- (void)sendingPacket:(id)a3
{
  v4 = a3;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCLinkLayerControl sendingPacket:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s packet %@", &v8, 0x16u);
  }

  sendLLControlPacket = self->_sendLLControlPacket;
  if (sendLLControlPacket)
  {
    sendLLControlPacket[2](sendLLControlPacket, v4);
  }

  else
  {
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100822DE4(v7);
    }
  }
}

- (BTVCLinkLayerControl)init
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[BTVCLinkLayerControl init]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "BTVCLinkLayerControl:%s\n", buf, 0xCu);
  }

  v8.receiver = self;
  v8.super_class = BTVCLinkLayerControl;
  v4 = [(BTVCLinkLayerControl *)&v8 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_dispatchQueue, &_dispatch_main_q);
    v6 = v5;
  }

  return v5;
}

@end