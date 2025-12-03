@interface BTVCHciManager
+ (BTVCHciManager)sharedManager;
- (BOOL)transportWriteCmd:(char *)cmd length:(unsigned __int16)length amountWritten:(unsigned __int16 *)written dtor:(void *)dtor;
- (BOOL)transportWriteData:(char *)data length:(unsigned __int16)length amountWritten:(unsigned __int16 *)written dtor:(void *)dtor;
- (BTVCHciManager)init;
- (id)description;
- (void)_activate;
- (void)_invalidate;
- (void)_sendHciCommandCompleteEvent:(unsigned __int16)event status:(unsigned __int8)status params:(char *)params length:(unsigned __int8)length;
- (void)_sendHciEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length;
- (void)_sendLeMetaEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length;
- (void)_sendingHciData:(id)data;
- (void)_sendingHciEvent:(id)event;
- (void)_sendingLmpEvent:(id)event;
- (void)_update;
- (void)activate;
- (void)handleHciCommand:(unsigned __int16)command params:(char *)params length:(unsigned __int16)length;
- (void)handleHciCommandsForConnection:(unsigned __int16)connection params:(char *)params length:(unsigned __int16)length;
- (void)handleHciCommandsForLinkAgent:(unsigned __int16)agent params:(char *)params length:(unsigned __int16)length;
- (void)handleHciCreateConnectionCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciInquiryCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeCreateConnectionCancelCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeExtendedCreateConnectionCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeRandCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeSetAdvertisingSetRandomAddressCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeSetEventMaskCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeSetExtendedAdvertisingDataCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeSetExtendedAdvertisingEnableCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeSetExtendedAdvertisingParametersCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeSetExtendedScanEnableCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciLeSetRandomAddressCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciReadRssiCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciResetCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciSetEventMaskCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)handleHciVscWriteBdAddrCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length;
- (void)invalidate;
- (void)prefsChanged;
- (void)receivedDatePacket:(unsigned __int16)packet payload:(char *)payload lenght:(unsigned __int16)lenght;
- (void)sendHciCommandCompleteEvent:(unsigned __int16)event status:(unsigned __int8)status params:(id)params;
- (void)sendHciCommandStatusEvent:(unsigned __int16)event status:(unsigned __int8)status;
- (void)sendHciConnectionCompleteEvent:(id)event status:(unsigned __int8)status delay:(unsigned int)delay;
- (void)sendHciData:(BTVirtualHCIPacket *)data;
- (void)sendHciEventPacket:(BTVirtualHCIPacket *)packet;
- (void)sendHciInquiryCompleteEvent:(unsigned int)event;
- (void)sendLmpEvent:(id)event;
- (void)sendLmpEventPacket:(BTVirtualHCIPacket *)packet;
- (void)setDataReadCompletionBlock:(id)block;
- (void)setEventReadCompletionBlock:(id)block;
- (void)setLmpEventReadCompletionBlock:(id)block;
- (void)update;
@end

@implementation BTVCHciManager

+ (BTVCHciManager)sharedManager
{
  if (qword_100B6D340 != -1)
  {
    sub_100821EF8();
  }

  v3 = qword_100B6D338;

  return v3;
}

- (BTVCHciManager)init
{
  v6.receiver = self;
  v6.super_class = BTVCHciManager;
  v2 = [(BTVCHciManager *)&v6 init];
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
    v7 = "[BTVCHciManager activate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038E7FC;
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
    *buf = 136315138;
    v27 = "[BTVCHciManager _activate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  self->_activated = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  objc_initWeak(buf, self);
  [(BTVCHciManager *)self _hciReset];
  v4 = +[BTVCLinkAgent sharedBTVCLinkAgent];
  linkAgent = self->_linkAgent;
  self->_linkAgent = v4;

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10038ED04;
  v24[3] = &unk_100AEE5C8;
  objc_copyWeak(&v25, buf);
  [(BTVCLinkAgent *)self->_linkAgent setHciEventHandler:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10038ED88;
  v22[3] = &unk_100AEE5C8;
  objc_copyWeak(&v23, buf);
  [(BTVCLinkAgent *)self->_linkAgent setLeMetaEventHandler:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10038EE0C;
  v20[3] = &unk_100AEE5F0;
  objc_copyWeak(&v21, buf);
  [(BTVCLinkAgent *)self->_linkAgent setLmpEventHandler:v20];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10038EE88;
  v18[3] = &unk_100AEF370;
  objc_copyWeak(&v19, buf);
  [(BTVCLinkAgent *)self->_linkAgent setReceiveDataPacketHandler:v18];
  [(BTVCLinkAgent *)self->_linkAgent activate];
  v6 = [[BTVCPacketControl alloc] initWithParams:self->_dispatchQueue response:0];
  eventPacketControl = self->_eventPacketControl;
  self->_eventPacketControl = v6;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10038EFB4;
  v16[3] = &unk_100AEE5F0;
  objc_copyWeak(&v17, buf);
  [(BTVCPacketControl *)self->_eventPacketControl setSendingPacket:v16];
  [(BTVCPacketControl *)self->_eventPacketControl activateDirect];
  v8 = [[BTVCPacketControl alloc] initWithParams:self->_dispatchQueue response:0];
  dataPacketControl = self->_dataPacketControl;
  self->_dataPacketControl = v8;

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10038F030;
  v14[3] = &unk_100AEE5F0;
  objc_copyWeak(&v15, buf);
  [(BTVCPacketControl *)self->_dataPacketControl setSendingPacket:v14];
  [(BTVCPacketControl *)self->_dataPacketControl activateDirect];
  v10 = [[BTVCPacketControl alloc] initWithParams:self->_dispatchQueue response:0];
  lmpEventPacketControl = self->_lmpEventPacketControl;
  self->_lmpEventPacketControl = v10;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10038F0AC;
  v12[3] = &unk_100AEE5F0;
  objc_copyWeak(&v13, buf);
  [(BTVCPacketControl *)self->_lmpEventPacketControl setSendingPacket:v12];
  [(BTVCPacketControl *)self->_lmpEventPacketControl activateDirect];
  [(BTVCHciManager *)self prefsChanged];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10038F19C;
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
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCHciManager] Invalidate\n", v4, 2u);
  }

  self->_activated = 0;
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCHciManager *)self _update];
}

- (void)update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCHciManager *)self _update];
}

- (void)_update
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[BTVCHciManager _update]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", &v5, 0xCu);
  }

  if (!self->_activated)
  {
    v4 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100821F0C(v4);
    }
  }
}

- (BOOL)transportWriteCmd:(char *)cmd length:(unsigned __int16)length amountWritten:(unsigned __int16 *)written dtor:(void *)dtor
{
  if (cmd)
  {
    v9 = *cmd;
    v10 = cmd[2];
    v11 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "[BTVCHciManager transportWriteCmd:length:amountWritten:dtor:]";
      v23 = 1024;
      v24 = v9;
      v25 = 1024;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: opCode 0x%04X, payload length: %d", &v21, 0x18u);
    }

    [(BTVCHciManager *)self handleHciCommand:v9 params:cmd + 3 length:v10];
    if (dtor)
    {
      (dtor)(cmd);
    }
  }

  else
  {
    v12 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100821F50(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  return cmd != 0;
}

- (BOOL)transportWriteData:(char *)data length:(unsigned __int16)length amountWritten:(unsigned __int16 *)written dtor:(void *)dtor
{
  v7 = qword_100BCEA70;
  if (data)
  {
    lengthCopy = length;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315394;
      v21 = "[BTVCHciManager transportWriteData:length:amountWritten:dtor:]";
      v22 = 1024;
      v23 = lengthCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: data length: %d", &v20, 0x12u);
    }

    getConnectionManager = [(BTVCLinkAgent *)self->_linkAgent getConnectionManager];
    [getConnectionManager sendDataToPeer:data dataLength:lengthCopy];

    if (dtor)
    {
      (dtor)(data);
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_100821FC8(v7, v12, v13, v14, v15, v16, v17, v18);
  }

  return data != 0;
}

- (void)setEventReadCompletionBlock:(id)block
{
  v4 = objc_retainBlock(block);
  transportSendEvent = self->_transportSendEvent;
  self->_transportSendEvent = v4;
}

- (void)setDataReadCompletionBlock:(id)block
{
  v4 = objc_retainBlock(block);
  transportSendData = self->_transportSendData;
  self->_transportSendData = v4;
}

- (void)setLmpEventReadCompletionBlock:(id)block
{
  v4 = objc_retainBlock(block);
  transportSendLmpEvent = self->_transportSendLmpEvent;
  self->_transportSendLmpEvent = v4;
}

- (void)sendHciEventPacket:(BTVirtualHCIPacket *)packet
{
  v4 = *packet->var0;
  v5 = *(packet->var0 + 5);
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCHciManager sendHciEventPacket:]";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s packet size %d", &v8, 0x12u);
  }

  v7 = [[NSData alloc] initWithBytes:v4 length:v5];
  [(BTVCPacketControl *)self->_eventPacketControl sendPacket:v7 completion:0];
}

- (void)_sendingHciEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy length];
  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  memcpy(v6, [eventCopy bytes], v5);
  if (self->_transportSendEvent)
  {
    v16 = 0;
    sub_1000216B4(&v16);
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[BTVCHciManager _sendingHciEvent:]";
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s send HCI event to virtual transport size %d", buf, 0x12u);
    }

    (*(self->_transportSendEvent + 2))();
    sub_100022214(&v16);
    sub_10002249C(&v16);
  }

  else
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100822040(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  [(BTVCPacketControl *)self->_eventPacketControl didSendPacket:eventCopy error:0];
}

- (void)sendHciData:(BTVirtualHCIPacket *)data
{
  v4 = *data->var0;
  v5 = *(data->var0 + 5);
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCHciManager sendHciData:]";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s packet size %d", &v8, 0x12u);
  }

  v7 = [[NSData alloc] initWithBytes:v4 length:v5];
  [(BTVCPacketControl *)self->_dataPacketControl sendPacket:v7 completion:0];
}

- (void)_sendingHciData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy length];
  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  memcpy(v6, [dataCopy bytes], v5);
  if (self->_transportSendData)
  {
    v16 = 0;
    sub_1000216B4(&v16);
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[BTVCHciManager _sendingHciData:]";
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s send HCI data to virtual transport size %d", buf, 0x12u);
    }

    (*(self->_transportSendData + 2))();
    sub_100022214(&v16);
    sub_10002249C(&v16);
  }

  else
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008220B8(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  [(BTVCPacketControl *)self->_dataPacketControl didSendPacket:dataCopy error:0];
}

- (void)sendLmpEventPacket:(BTVirtualHCIPacket *)packet
{
  v4 = *packet->var0;
  v5 = *(packet->var0 + 5);
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCHciManager sendLmpEventPacket:]";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s packet size %d", &v8, 0x12u);
  }

  v7 = [[NSData alloc] initWithBytes:v4 length:v5];
  [(BTVCPacketControl *)self->_lmpEventPacketControl sendPacket:v7 completion:0];
}

- (void)_sendingLmpEvent:(id)event
{
  eventCopy = event;
  v5 = [eventCopy length];
  v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
  memcpy(v6, [eventCopy bytes], v5);
  if (self->_transportSendLmpEvent)
  {
    v16 = 0;
    sub_1000216B4(&v16);
    v7 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[BTVCHciManager _sendingLmpEvent:]";
      v19 = 1024;
      v20 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s send LMP event to virtual transport size %d", buf, 0x12u);
    }

    (*(self->_transportSendLmpEvent + 2))();
    sub_100022214(&v16);
    sub_10002249C(&v16);
  }

  else
  {
    v8 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100822130(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  [(BTVCPacketControl *)self->_lmpEventPacketControl didSendPacket:eventCopy error:0];
}

- (void)handleHciCommand:(unsigned __int16)command params:(char *)params length:(unsigned __int16)length
{
  v5 = &selRef_handleHciCmdDefault_params_length_;
  if (command > 0x2000)
  {
    if (command <= 8287)
    {
      switch(command)
      {
        case 0x2001u:
          v5 = &selRef_handleHciLeSetEventMaskCmd_params_length_;
          break;
        case 0x2002u:
          v5 = &selRef_handleHciLeReadBufferSizeCmd_params_length_;
          break;
        case 0x2003u:
          v5 = &selRef_handleHciLeReadLocalFeaturesCmd_params_length_;
          break;
        case 0x2005u:
          v5 = &selRef_handleHciLeSetRandomAddressCmd_params_length_;
          break;
        case 0x2007u:
          v5 = &selRef_handleHciLeReadAdvChannelTxPowerCmd_params_length_;
          break;
        case 0x200Eu:
          v5 = &selRef_handleHciLeCreateConnectionCancelCmd_params_length_;
          break;
        case 0x200Fu:
        case 0x2010u:
        case 0x2011u:
        case 0x2012u:
          v5 = &selRef_handleHciCommandsForLinkAgent_params_length_;
          break;
        case 0x2013u:
        case 0x2016u:
        case 0x2019u:
        case 0x201Au:
        case 0x201Bu:
        case 0x2020u:
        case 0x2021u:
          v5 = &selRef_handleHciCommandsForConnection_params_length_;
          break;
        case 0x2018u:
          v5 = &selRef_handleHciLeRandCmd_params_length_;
          break;
        case 0x201Cu:
          v5 = &selRef_handleHciLeReadSupportedStateCmd_params_length_;
          break;
        case 0x202Fu:
          v5 = &selRef_handleHciLeReadMaximumDataLengthCmd_params_length_;
          break;
        case 0x2035u:
          v5 = &selRef_handleHciLeSetAdvertisingSetRandomAddressCmd_params_length_;
          break;
        case 0x2036u:
          v5 = &selRef_handleHciLeSetExtendedAdvertisingParametersCmd_params_length_;
          break;
        case 0x2037u:
          v5 = &selRef_handleHciLeSetExtendedAdvertisingDataCmd_params_length_;
          break;
        case 0x2039u:
          v5 = &selRef_handleHciLeSetExtendedAdvertisingEnableCmd_params_length_;
          break;
        case 0x203Au:
          v5 = &selRef_handleHciLeReadMaxAdvDataLengthCmd_params_length_;
          break;
        case 0x2042u:
          v5 = &selRef_handleHciLeSetExtendedScanEnableCmd_params_length_;
          break;
        case 0x2043u:
          v5 = &selRef_handleHciLeExtendedCreateConnectionCmd_params_length_;
          break;
        default:
          goto LABEL_78;
      }

      goto LABEL_78;
    }

    v6 = 65278;
    v18 = &selRef_handleHciCommandsForLinkAgent_params_length_;
    if (command != 65479)
    {
      v18 = &selRef_handleHciCmdDefault_params_length_;
    }

    if (command == 65279)
    {
      v11 = &selRef_handleHciCommandsForLinkAgent_params_length_;
    }

    else
    {
      v11 = v18;
    }

    if (command == 64518)
    {
      v5 = &selRef_handleHciVscWriteBdAddrCmd_params_length_;
    }

    if (command == 8288)
    {
      v5 = &selRef_handleHciLeReadBufferSizeV2Cmd_params_length_;
    }

    goto LABEL_58;
  }

  if (command > 3096)
  {
    v6 = 4099;
    v7 = &selRef_handleHciReadBdaddrCmd_params_length_;
    v8 = &selRef_handleHciReadRssiCmd_params_length_;
    if (command != 5125)
    {
      v8 = &selRef_handleHciCmdDefault_params_length_;
    }

    if (command != 4105)
    {
      v7 = v8;
    }

    v9 = &selRef_handleHciReadBufferSizeCmd_params_length_;
    if (command != 4101)
    {
      v9 = &selRef_handleHciCmdDefault_params_length_;
    }

    if (command == 4100)
    {
      v10 = &selRef_handleHciReadLocalExtFeaturesCmd_params_length_;
    }

    else
    {
      v10 = v9;
    }

    if (command <= 4104)
    {
      v11 = v10;
    }

    else
    {
      v11 = v7;
    }

    v12 = &selRef_handleHciReadLocalFeaturesCmd_params_length_;
    if (command != 4099)
    {
      v12 = &selRef_handleHciCmdDefault_params_length_;
    }

    if (command == 4098)
    {
      v13 = &selRef_handleHciReadLocalSupCmdsCmd_params_length_;
    }

    else
    {
      v13 = v12;
    }

    if (command == 4097)
    {
      v5 = &selRef_handleHciReadLocalVerInfoCmd_params_length_;
    }

    if (command == 3097)
    {
      v5 = &selRef_handleHciReadScanEnableCmd_params_length_;
    }

    if (command > 4097)
    {
      v5 = v13;
    }

LABEL_58:
    if (command > v6)
    {
      v5 = v11;
    }

    goto LABEL_78;
  }

  v14 = &selRef_handleHciResetCmd_params_length_;
  v15 = &selRef_handleHciReadStoredLinkKeyCmd_params_length_;
  if (command != 3085)
  {
    v15 = &selRef_handleHciCmdDefault_params_length_;
  }

  if (command != 3075)
  {
    v14 = v15;
  }

  v16 = &selRef_handleHciCommandsForConnection_params_length_;
  v17 = &selRef_handleHciSetEventMaskCmd_params_length_;
  if (command != 3073)
  {
    v17 = &selRef_handleHciCmdDefault_params_length_;
  }

  if (command != 1053)
  {
    v16 = v17;
  }

  if (command <= 3074)
  {
    v14 = v16;
  }

  if (command == 1030)
  {
    v5 = &selRef_handleHciCommandsForConnection_params_length_;
  }

  if (command == 1029)
  {
    v5 = &selRef_handleHciCreateConnectionCmd_params_length_;
  }

  if (command == 1025)
  {
    v5 = &selRef_handleHciInquiryCmd_params_length_;
  }

  if (command > 1052)
  {
    v5 = v14;
  }

LABEL_78:
  [self *v5];
}

- (void)handleHciCommandsForLinkAgent:(unsigned __int16)agent params:(char *)params length:(unsigned __int16)length
{
  agentCopy = agent;
  v7 = [[NSData alloc] initWithBytes:params length:length];
  [(BTVCLinkAgent *)self->_linkAgent handleHciCommands:agentCopy params:?];
}

- (void)handleHciCommandsForConnection:(unsigned __int16)connection params:(char *)params length:(unsigned __int16)length
{
  connectionCopy = connection;
  v8 = [[NSData alloc] initWithBytes:params length:length];
  getConnectionManager = [(BTVCLinkAgent *)self->_linkAgent getConnectionManager];
  [getConnectionManager handleHciCommandsForConnection:connectionCopy params:v8];
}

- (void)handleHciInquiryCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  [(BTVCHciManager *)self sendHciCommandStatusEvent:cmd status:0, length];
  v6 = dispatch_time(0, 12000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003903EC;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_after(v6, &_dispatch_main_q, block);
}

- (void)handleHciCreateConnectionCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  v12 = 0;
  v11 = 0;
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 621, "(uint8_t *)params");
  }

  cmdCopy = cmd;
  sub_1000075EC(&v11, params, 6uLL);
  [(BTVCHciManager *)self sendHciCommandStatusEvent:cmdCopy status:0];
  v7 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003904E4;
  block[3] = &unk_100AE2498;
  block[4] = self;
  v9 = v11;
  v10 = v12;
  dispatch_after(v7, &_dispatch_main_q, block);
}

- (void)handleHciSetEventMaskCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[BTVCHciManager handleHciSetEventMaskCmd:params:length:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s\n", &v9, 0xCu);
  }

  self->_hciEventMask = *params;
  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:0 params:0 length:0];
}

- (void)handleHciResetCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  v6 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[BTVCHciManager handleHciResetCmd:params:length:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  [(BTVCHciManager *)self _hciReset];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003906E8;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)handleHciReadRssiCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCHciManager handleHciReadRssiCmd:params:length:]";
    v10 = 1024;
    v11 = cmdCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: opCode 0x%04X", &v8, 0x12u);
  }

  if (params)
  {
    operator new();
  }

  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 873, "(uint8_t *)params");
}

- (void)handleHciLeSetEventMaskCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[BTVCHciManager handleHciLeSetEventMaskCmd:params:length:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s\n", &v9, 0xCu);
  }

  self->_hciLeEventMask = *params;
  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:0 params:0 length:0];
}

- (void)handleHciLeSetRandomAddressCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315394;
    *&v12[4] = "[BTVCHciManager handleHciLeSetRandomAddressCmd:params:length:]";
    v13 = 1024;
    v14 = cmdCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: opCode 0x%04X", v12, 0x12u);
  }

  *&v12[4] = 0;
  *v12 = 0;
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 970, "(uint8_t *)params");
  }

  sub_1000075EC(v12, params, 6uLL);
  v9 = [NSData dataWithBytes:v12 length:6];
  getConnectionManager = [(BTVCLinkAgent *)self->_linkAgent getConnectionManager];
  v11 = [getConnectionManager leSetRandomAddress:v9];

  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:v11 params:0 length:0];
}

- (void)handleHciLeCreateConnectionCancelCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v7 = [(BTVCLinkAgent *)self->_linkAgent getConnectionManager:cmd];
  leCreateConnectionCancel = [v7 leCreateConnectionCancel];

  [(BTVCHciManager *)self sendHciCommandStatusEvent:cmdCopy status:leCreateConnectionCancel];
}

- (void)handleHciLeRandCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v7 = 0;
  v8 = 0;
  do
  {
    *(&v8 + v7++) = arc4random_uniform(0xFFu);
  }

  while (v7 != 8);
  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:0 params:&v8 length:8];
}

- (void)handleHciLeSetAdvertisingSetRandomAddressCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  v12 = 0;
  v11 = 0;
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1093, "(uint8_t *)params");
  }

  cmdCopy = cmd;
  v7 = *params;
  sub_1000075EC(&v11, (params + 1), 6uLL);
  if (v7 <= 7)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = [NSData dataWithBytes:&v11 length:6];
    [v9 setObject:&off_100B337F8 forKeyedSubscript:@"at"];
    [v9 setObject:v10 forKeyedSubscript:@"pa"];
    [(BTVCLinkAgent *)self->_linkAgent leSetAdvertisingSetRandomAddress:v7 address:v9];

    v8 = 0;
  }

  else
  {
    v8 = 18;
  }

  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:v8 params:0 length:0];
}

- (void)handleHciLeSetExtendedAdvertisingParametersCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  v23 = 0;
  v22 = 0;
  if (params)
  {
    v7 = *params;
    v8 = *(params + 1);
    v9 = params[10];
    sub_1000075EC(&v22, (params + 12), 6uLL);
    if (v7 <= 7)
    {
      v10 = params[19];
      v11 = params[20];
      v12 = params[21];
      v13 = params[23];
      v14 = +[NSMutableDictionary dictionary];
      v15 = [NSNumber numberWithUnsignedChar:v9];
      [v14 setObject:v15 forKeyedSubscript:@"at"];

      v16 = [NSNumber numberWithUnsignedShort:v8];
      [v14 setObject:v16 forKeyedSubscript:@"et"];

      v17 = [NSNumber numberWithUnsignedChar:v11];
      [v14 setObject:v17 forKeyedSubscript:@"pPHY"];

      v18 = [NSNumber numberWithUnsignedChar:v12];
      [v14 setObject:v18 forKeyedSubscript:@"sPHY"];

      v19 = [NSNumber numberWithUnsignedChar:v13];
      [v14 setObject:v19 forKeyedSubscript:@"aSID"];

      v20 = [NSNumber numberWithUnsignedChar:v10];
      [v14 setObject:v20 forKeyedSubscript:@"tp"];

      v21 = [NSNumber numberWithUnsignedChar:[(BTVCLinkAgent *)self->_linkAgent getDefaultAdvRSSI]];
      [v14 setObject:v21 forKeyedSubscript:@"rssi"];

      [v14 setObject:&off_100B33810 forKeyedSubscript:@"pai"];
      [v14 setObject:&off_100B33810 forKeyedSubscript:@"dat"];
      [v14 setObject:&off_100B33810 forKeyedSubscript:@"da"];
      [(BTVCLinkAgent *)self->_linkAgent leSetExtendedAdvertisingParameters:v7 advertisingParameters:v14];
    }

    operator new();
  }

  sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1138, "(uint8_t *)params");
}

- (void)handleHciLeSetExtendedAdvertisingDataCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1214, "(uint8_t *)params");
  }

  cmdCopy = cmd;
  v26 = 0u;
  memset(v27, 0, 27);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v7 = *params;
  v8 = params[3];
  if (v8 <= 0xFB)
  {
    memcpy(&v13, params + 4, params[3]);
  }

  if (v7 <= 7)
  {
    v10 = [NSMutableDictionary dictionary:v13];
    v11 = [NSNumber numberWithUnsignedChar:v8];
    v12 = [NSData dataWithBytes:&v13 length:v8];
    [v10 setObject:v11 forKeyedSubscript:@"dtl"];
    [v10 setObject:v12 forKeyedSubscript:@"data"];
    v9 = [(BTVCLinkAgent *)self->_linkAgent leSetExtendedAdvertisingData:v7 advertisingData:v10];
  }

  else
  {
    v9 = 18;
  }

  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:v9 params:0 length:0, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, *v27, *&v27[8], *&v27[24]];
}

- (void)handleHciLeSetExtendedAdvertisingEnableCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1258, "(uint8_t *)params");
  }

  cmdCopy = cmd;
  v14 = 0;
  v7 = *params;
  v8 = params[1];
  if ((v8 - 1) <= 7u)
  {
    memcpy(&v14, params + 2, params[1]);
  }

  if (v8 <= 7)
  {
    if (v7 && v8)
    {
      v10 = v8 - 1;
      v11 = &v14;
      do
      {
        v12 = v10;
        v13 = *v11++;
        if ([(BTVCLinkAgent *)self->_linkAgent isAdvertisingEnabled:v13, v14])
        {
          break;
        }

        v10 = v12 - 1;
      }

      while (v12);
    }

    v9 = [(BTVCLinkAgent *)self->_linkAgent leSetExtendedAdvertisingEnable:v7 != 0 numSets:v8 advertisingHandles:&v14];
  }

  else
  {
    v9 = 18;
  }

  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:v9 params:0 length:0, v14];
}

- (void)handleHciLeSetExtendedScanEnableCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1335, "(uint8_t *)params");
  }

  cmdCopy = cmd;
  v7 = *params;
  if (v7 == [(BTVCLinkAgent *)self->_linkAgent isScanningEnabled])
  {
    v8 = 12;
  }

  else
  {
    v8 = [(BTVCLinkAgent *)self->_linkAgent leSetExtendedScanEnable:v7 != 0];
  }

  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:v8 params:0 length:0];
}

- (void)handleHciLeExtendedCreateConnectionCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v41) = cmdCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "handleHciCmd: opCode 0x%04X", buf, 8u);
  }

  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1379, "(uint8_t *)params");
  }

  v9 = *params;
  v10 = params[1];
  v11 = params[2];
  sub_1000075EC(&v38, (params + 3), 6uLL);
  v12 = params[9];
  v13 = vdupq_n_s32(v12);
  v14 = vbicq_s8(xmmword_1008A6910, vuzp1q_s16(vceqzq_s32(vandq_s8(v13, xmmword_1008A68F0)), vceqzq_s32(vandq_s8(v13, xmmword_1008A6900))));
  v15 = vaddvq_s16(v14);
  v14.i32[0] = v15;
  v16 = vcnt_s8(*v14.i8);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.i8[0];
  if (v16.i32[0] > 3u)
  {
    v21 = 18;
  }

  else
  {
    if (v15)
    {
      v18 = 0;
      v19 = params + 21;
      do
      {
        *(&v36 + v18) = *(v19 - 7);
        if (v18 == 30)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1396, "ByteStream_NumReadBytesAvail(bs) >= 2");
        }

        *(&v34 + v18) = *(v19 - 3);
        v20 = *(v19 - 1);
        v19 += 16;
        *(&v32 + v18) = v20;
        v18 += 2;
      }

      while (2 * v16.u8[0] != v18);
    }

    v21 = 0;
  }

  v22 = objc_alloc_init(NSMutableDictionary);
  v23 = [NSNumber numberWithUnsignedShort:v9];
  [v22 setObject:v23 forKeyedSubscript:@"FilterPolicy"];

  v24 = [NSNumber numberWithUnsignedShort:v10];
  [v22 setObject:v24 forKeyedSubscript:@"OwnAddressType"];

  v25 = [NSNumber numberWithUnsignedShort:v11];
  [v22 setObject:v25 forKeyedSubscript:@"PeerAddressType"];

  v26 = [NSNumber numberWithUnsignedShort:v12];
  [v22 setObject:v26 forKeyedSubscript:@"PHYs"];

  v27 = [NSNumber numberWithUnsignedShort:v36];
  [v22 setObject:v27 forKeyedSubscript:@"ConnInterval"];

  v28 = [NSNumber numberWithUnsignedShort:v34];
  [v22 setObject:v28 forKeyedSubscript:@"MaxLatency"];

  v29 = [NSNumber numberWithUnsignedShort:v32];
  [v22 setObject:v29 forKeyedSubscript:@"SupervisionTimeout"];

  v30 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v41 = "[BTVCHciManager handleHciLeExtendedCreateConnectionCmd:params:length:]";
    v42 = 1024;
    v43 = cmdCopy;
    v44 = 2112;
    v45 = v22;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s: LeExtendedCreateConnectionCmd (opCode 0x%04X), params %@\n", buf, 0x1Cu);
  }

  if (v17 <= 3u)
  {
    [(BTVCLinkAgent *)self->_linkAgent leSetExtendedScanEnable:0];
    getConnectionManager = [(BTVCLinkAgent *)self->_linkAgent getConnectionManager];
    v21 = [getConnectionManager leExtendedCreateConnection:v22];

    [(BTVCLinkAgent *)self->_linkAgent leSetExtendedScanEnable:1];
  }

  if (v21)
  {
    [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:v21 params:0 length:0];
  }

  else
  {
    [(BTVCHciManager *)self sendHciCommandStatusEvent:cmdCopy status:0];
  }
}

- (void)handleHciVscWriteBdAddrCmd:(unsigned __int16)cmd params:(char *)params length:(unsigned __int16)length
{
  cmdCopy = cmd;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 136315394;
    *&v9[4] = "[BTVCHciManager handleHciVscWriteBdAddrCmd:params:length:]";
    v10 = 1024;
    v11 = cmdCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: opCode 0x%04X", v9, 0x12u);
  }

  *&v9[4] = 0;
  *v9 = 0;
  if (!params)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/Platforms/Darwin/VirtualController/BTVCHciManager.m", 1475, "(uint8_t *)params");
  }

  sub_1000075EC(v9, params, 6uLL);
  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:cmdCopy status:0 params:0 length:0, *v9];
}

- (void)sendHciInquiryCompleteEvent:(unsigned int)event
{
  if ([(BTVCHciManager *)self _isHciEventEnabled:1])
  {
    operator new();
  }
}

- (void)sendHciConnectionCompleteEvent:(id)event status:(unsigned __int8)status delay:(unsigned int)delay
{
  if ([(BTVCHciManager *)self _isHciEventEnabled:3])
  {
    operator new();
  }
}

- (void)sendHciCommandCompleteEvent:(unsigned __int16)event status:(unsigned __int8)status params:(id)params
{
  statusCopy = status;
  eventCopy = event;
  paramsCopy = params;
  v10 = paramsCopy;
  if (paramsCopy)
  {
    bytes = [paramsCopy bytes];
    LOBYTE(paramsCopy) = [v10 length];
  }

  else
  {
    bytes = 0;
  }

  [(BTVCHciManager *)self _sendHciCommandCompleteEvent:eventCopy status:statusCopy params:bytes length:paramsCopy];
}

- (void)_sendHciCommandCompleteEvent:(unsigned __int16)event status:(unsigned __int8)status params:(char *)params length:(unsigned __int8)length
{
  if ([(BTVCHciManager *)self _isHciEventEnabled:14])
  {
    operator new();
  }
}

- (void)sendHciCommandStatusEvent:(unsigned __int16)event status:(unsigned __int8)status
{
  if ([(BTVCHciManager *)self _isHciEventEnabled:15])
  {
    operator new();
  }
}

- (void)_sendHciEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length
{
  lengthCopy = length;
  eventCopy = event;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[BTVCHciManager _sendHciEvent:parameters:length:]";
    v11 = 1024;
    v12 = eventCopy;
    v13 = 1024;
    v14 = lengthCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: eventCode 0x%02X, total length 0x%02X", &v9, 0x18u);
  }

  if ([(BTVCHciManager *)self _isHciEventEnabled:eventCopy])
  {
    operator new();
  }
}

- (void)_sendLeMetaEvent:(unsigned __int8)event parameters:(char *)parameters length:(unsigned __int8)length
{
  lengthCopy = length;
  eventCopy = event;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[BTVCHciManager _sendLeMetaEvent:parameters:length:]";
    v11 = 1024;
    v12 = eventCopy;
    v13 = 1024;
    v14 = lengthCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: subeventCode 0x%02X, total length 0x%02X", &v9, 0x18u);
  }

  if ([(BTVCHciManager *)self _isHciLeEventEnabled:eventCopy])
  {
    operator new();
  }
}

- (void)receivedDatePacket:(unsigned __int16)packet payload:(char *)payload lenght:(unsigned __int16)lenght
{
  lenghtCopy = lenght;
  packetCopy = packet;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_1008221A8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[BTVCHciManager receivedDatePacket:payload:lenght:]";
    v18 = 1024;
    v19 = packetCopy;
    v20 = 1024;
    v21 = lenghtCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s connectionHandle: 0x%04X length %d", &v16, 0x18u);
  }

  operator new();
}

- (void)sendLmpEvent:(id)event
{
  eventCopy = event;
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[BTVCHciManager sendLmpEvent:]";
    v8 = 2112;
    v9 = eventCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: params %@", &v6, 0x16u);
  }

  v5 = eventCopy;
  [eventCopy bytes];
  [eventCopy length];
  operator new();
}

@end