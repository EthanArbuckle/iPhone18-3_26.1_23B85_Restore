@interface BTVCLinkAgent
+ (BTVCLinkAgent)sharedBTVCLinkAgent;
- ($D91DDCA3822F03E96939068EA8DE741A)getLocalAddress;
- (BOOL)_isAdvertisingEnabled;
- (BOOL)_isAdvertisingEnabled:(unsigned __int8)enabled;
- (BOOL)_isInFilterAcceptList:(id)list type:(unsigned __int8)type;
- (BTVCLinkAgent)init;
- (id)_getBTVCLinkAdvertiserSet:(unsigned __int8)set;
- (id)_getConnectIndAddress:(id)address type:(unsigned __int8)type;
- (id)_resovleAddress:(id)address;
- (id)description;
- (id)getLocalAddressData;
- (unsigned)leAddDeviceToResolvingList:(unsigned __int8)list address:(char *)address irk:(char *)irk;
- (unsigned)leRemoveDeviceFromResolvingList:(unsigned __int8)list address:(char *)address;
- (unsigned)leSetAdvertisingSetRandomAddress:(unsigned __int8)address address:(id)a4;
- (unsigned)leSetExtendedAdvertisingData:(unsigned __int8)data advertisingData:(id)advertisingData;
- (unsigned)leSetExtendedAdvertisingEnable:(BOOL)enable numSets:(unsigned __int8)sets advertisingHandles:(char *)handles;
- (unsigned)leSetExtendedAdvertisingParameters:(unsigned __int8)parameters advertisingParameters:(id)advertisingParameters;
- (unsigned)leSetExtendedScanEnable:(BOOL)enable;
- (void)_activate;
- (void)_bleBTVCLinkAdvertiserEnsureStarted;
- (void)_bleBTVCLinkAdvertiserEnsureStopped;
- (void)_bleBTVCLinkScannerEnsureStarted;
- (void)_bleBTVCLinkScannerEnsureStopped;
- (void)_handleConnection:(id)connection parameters:(id)parameters;
- (void)_handleHciCommands:(unsigned __int16)commands params:(id)params;
- (void)_handleHciLeAddDeviceToFilterAcceptList:(id)list;
- (void)_handleHciLeClearFilterAcceptList:(id)list;
- (void)_handleHciLeReadFilterAcceptListSize:(id)size;
- (void)_handleHciLeRemoveDeviceFromFilterAcceptList:(id)list;
- (void)_handleHciVscAddToFilterAcceptListUnified:(id)unified;
- (void)_handleHciVscLeIrk:(id)irk;
- (void)_invalidate;
- (void)_receivedAdvReport:(int64_t)report withData:(id)data fromPeer:(id)peer peerInfo:(id)info;
- (void)_reset;
- (void)_resetAdvertisingEnable;
- (void)_sendHciCommandComplete:(unsigned __int16)complete status:(unsigned __int8)status params:(char *)params length:(unsigned __int8)length;
- (void)_systemHasPoweredOn;
- (void)_systemWillSleep;
- (void)_update;
- (void)activate;
- (void)handleHciCommands:(unsigned __int16)commands params:(id)params;
- (void)invalidate;
- (void)prefsChanged;
- (void)reset;
- (void)update;
@end

@implementation BTVCLinkAgent

+ (BTVCLinkAgent)sharedBTVCLinkAgent
{
  if (qword_100B6EF88 != -1)
  {
    sub_100836318();
  }

  v3 = qword_100BCE5A8;

  return v3;
}

- (BTVCLinkAgent)init
{
  v6.receiver = self;
  v6.super_class = BTVCLinkAgent;
  v2 = [(BTVCLinkAgent *)&v6 init];
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
  v3 = 0;
  v4 = v3;
  if (self->_bleBTVCLinkAdvertiser)
  {
    v8 = v3;
    NSAppendPrintF();
    v5 = v8;

    v4 = v5;
  }

  if (self->_bleBTVCLinkScanner)
  {
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  return v4;
}

- (void)activate
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[BTVCLinkAgent activate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C0288;
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
    v32 = "[BTVCLinkAgent _activate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  self->_activated = 1;
  self->_startTime = CFAbsoluteTimeGetCurrent();
  v4 = objc_alloc_init(BTVCLocalDevice);
  localDevice = self->_localDevice;
  self->_localDevice = v4;

  if (!self->_bleBTVCLinkAdvertiseSets)
  {
    v6 = [[NSMutableArray alloc] initWithCapacity:8];
    bleBTVCLinkAdvertiseSets = self->_bleBTVCLinkAdvertiseSets;
    self->_bleBTVCLinkAdvertiseSets = v6;

    v8 = 8;
    do
    {
      v9 = objc_alloc_init(BTVCLinkAdvertiseSet);
      v9->enable = 0;
      v10 = objc_alloc_init(NSMutableDictionary);
      address = v9->address;
      v9->address = v10;

      v12 = objc_alloc_init(NSMutableDictionary);
      parameters = v9->parameters;
      v9->parameters = v12;

      v14 = objc_alloc_init(NSMutableDictionary);
      data = v9->data;
      v9->data = v14;

      [(NSMutableArray *)self->_bleBTVCLinkAdvertiseSets addObject:v9];
      --v8;
    }

    while (v8);
  }

  objc_initWeak(buf, self);
  v16 = +[BTVCConnectionManager sharedConnectionManager];
  connectionManager = self->_connectionManager;
  self->_connectionManager = v16;

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1004C0688;
  v29[3] = &unk_100AEE5C8;
  objc_copyWeak(&v30, buf);
  [(BTVCConnectionManager *)self->_connectionManager setHciEventHandler:v29];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1004C071C;
  v27[3] = &unk_100AEE5C8;
  objc_copyWeak(&v28, buf);
  [(BTVCConnectionManager *)self->_connectionManager setLeMetaEventHandler:v27];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1004C07B0;
  v25[3] = &unk_100AEE5F0;
  objc_copyWeak(&v26, buf);
  [(BTVCConnectionManager *)self->_connectionManager setLmpEventHandler:v25];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1004C0838;
  v23 = &unk_100AEF370;
  objc_copyWeak(&v24, buf);
  [(BTVCConnectionManager *)self->_connectionManager setReceiveDataPacketHandler:&v20];
  v18 = self->_connectionManager;
  v19 = [(BTVCLinkAgent *)self getLocalAddressData:v20];
  [(BTVCConnectionManager *)v18 leSetPublicAddress:v19];

  [(BTVCConnectionManager *)self->_connectionManager activate];
  [(BTVCLinkAgent *)self prefsChanged];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C093C;
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
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent] Invalidate\n", v8, 2u);
  }

  [(BTVCLinkAgent *)self _bleBTVCLinkAdvertiserEnsureStopped];
  [(BTVCLinkAgent *)self _bleBTVCLinkScannerEnsureStopped];
  bleBTVCLinkAdvertiseSets = self->_bleBTVCLinkAdvertiseSets;
  self->_bleBTVCLinkAdvertiseSets = 0;

  [(NSMutableDictionary *)self->_filterAcceptList removeAllObjects];
  filterAcceptList = self->_filterAcceptList;
  self->_filterAcceptList = 0;

  [(NSMutableDictionary *)self->_resolvingList removeAllObjects];
  resolvingList = self->_resolvingList;
  self->_resolvingList = 0;

  [(BTVCConnectionManager *)self->_connectionManager invalidate];
  v7 = +[BTVCLinkClient sharedClient];
  [v7 removeBTVCBonjourLinkDelegate:self];

  self->_activated = 0;
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCLinkAgent *)self _update];
}

- (void)update
{
  dispatch_assert_queue_V2(self->_dispatchQueue);

  [(BTVCLinkAgent *)self _update];
}

- (void)_update
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BTVCLinkAgent _update]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", &v4, 0xCu);
  }

  if (self->_activated)
  {
    if ([(BTVCLinkAgent *)self _bleBTVCLinkAdvertiserShouldAdvertise])
    {
      [(BTVCLinkAgent *)self _bleBTVCLinkAdvertiserEnsureStarted];
    }

    else
    {
      [(BTVCLinkAgent *)self _bleBTVCLinkAdvertiserEnsureStopped];
    }

    if ([(BTVCLinkAgent *)self _bleBTVCLinkScannerShouldScan])
    {
      [(BTVCLinkAgent *)self _bleBTVCLinkScannerEnsureStarted];
    }

    else
    {
      [(BTVCLinkAgent *)self _bleBTVCLinkScannerEnsureStopped];
    }
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_10083632C();
  }
}

- (id)getLocalAddressData
{
  bluetoothAddress = [(BTVCDevice *)self->_localDevice bluetoothAddress];
  addressData = [bluetoothAddress addressData];

  return addressData;
}

- ($D91DDCA3822F03E96939068EA8DE741A)getLocalAddress
{
  bluetoothAddress = [(BTVCDevice *)self->_localDevice bluetoothAddress];
  addressData = [bluetoothAddress addressData];
  bytes = [addressData bytes];

  return bytes;
}

- (void)reset
{
  v3 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[BTVCLinkAgent reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C0E00;
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
    v7 = "[BTVCLinkAgent _reset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s\n", &v6, 0xCu);
  }

  if (self->_activated)
  {
    if ([(BTVCLinkAgent *)self _isAdvertisingEnabled])
    {
      [self->_bleBTVCLinkAdvertiser advertisingEnable:0];
      [(BTVCLinkAgent *)self _resetAdvertisingEnable];
    }

    if (self->_bleBTVCLinkScanEnable)
    {
      [self->_bleBTVCLinkScanner scanEnable:0];
    }

    [(BTVCConnectionManager *)self->_connectionManager reset];
    [(NSMutableDictionary *)self->_filterAcceptList removeAllObjects];
    filterAcceptList = self->_filterAcceptList;
    self->_filterAcceptList = 0;

    [(NSMutableDictionary *)self->_resolvingList removeAllObjects];
    resolvingList = self->_resolvingList;
    self->_resolvingList = 0;

    [(BTVCLinkAgent *)self _sendHciCommandComplete:3075 status:0 params:0 length:0];
  }

  else if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_10083636C();
  }
}

- (BOOL)_isAdvertisingEnabled:(unsigned __int8)enabled
{
  if (self->_bleBTVCLinkAdvertiseSets || ([(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:enabled], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = 0;
  }

  else
  {
    v3 = v4[8];
  }

  return v3 & 1;
}

- (BOOL)_isAdvertisingEnabled
{
  if (self->_bleBTVCLinkAdvertiseSets)
  {
LABEL_5:
    v5 = 0;
  }

  else
  {
    v3 = 0;
    while (1)
    {
      v4 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:v3];
      if (v4)
      {
        break;
      }

      if (++v3 == 8)
      {
        goto LABEL_5;
      }
    }

    v5 = v4[8];
  }

  return v5 & 1;
}

- (void)_resetAdvertisingEnable
{
  if (!self->_bleBTVCLinkAdvertiseSets)
  {
    v9 = v3;
    v10 = v2;
    v11 = v4;
    v12 = v5;
    for (i = 0; i != 8; ++i)
    {
      v8 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:i, v9, v10, v11, v12];
      if (v8)
      {
        v8[8] = 0;
      }
    }
  }
}

- (void)handleHciCommands:(unsigned __int16)commands params:(id)params
{
  paramsCopy = params;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C1124;
  block[3] = &unk_100AEF470;
  commandsCopy = commands;
  block[4] = self;
  v10 = paramsCopy;
  v8 = paramsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleHciCommands:(unsigned __int16)commands params:(id)params
{
  commandsCopy = commands;
  paramsCopy = params;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[BTVCLinkAgent _handleHciCommands:params:]";
    v11 = 1024;
    v12 = commandsCopy;
    v13 = 2112;
    v14 = paramsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s opCpde 0x%04X params %@", &v9, 0x1Cu);
  }

  if (commandsCopy > 8209)
  {
    switch(commandsCopy)
    {
      case 8210:
        v8 = &selRef__handleHciLeRemoveDeviceFromFilterAcceptList_;
        goto LABEL_18;
      case 65279:
        v8 = &selRef__handleHciVscLeIrk_;
        goto LABEL_18;
      case 65479:
        v8 = &selRef__handleHciVscAddToFilterAcceptListUnified_;
        goto LABEL_18;
    }
  }

  else
  {
    switch(commandsCopy)
    {
      case 8207:
        v8 = &selRef__handleHciLeReadFilterAcceptListSize_;
        goto LABEL_18;
      case 8208:
        v8 = &selRef__handleHciLeClearFilterAcceptList_;
        goto LABEL_18;
      case 8209:
        v8 = &selRef__handleHciLeAddDeviceToFilterAcceptList_;
LABEL_18:
        [self *v8];
        goto LABEL_19;
    }
  }

  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
  {
    sub_1008363AC();
  }

LABEL_19:
}

- (void)_handleHciLeReadFilterAcceptListSize:(id)size
{
  v4 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[BTVCLinkAgent _handleHciLeReadFilterAcceptListSize:]";
    v7 = 1024;
    v8 = 128;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent]:%s, Filter Accept List Size %d", &v5, 0x12u);
  }

  LOBYTE(v5) = 0x80;
  [(BTVCLinkAgent *)self _sendHciCommandComplete:8207 status:0 params:&v5 length:1];
}

- (void)_handleHciLeClearFilterAcceptList:(id)list
{
  listCopy = list;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[BTVCLinkAgent _handleHciLeClearFilterAcceptList:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent]:%s, clear filter accept list", &v7, 0xCu);
  }

  [(NSMutableDictionary *)self->_filterAcceptList removeAllObjects];
  filterAcceptList = self->_filterAcceptList;
  self->_filterAcceptList = 0;

  [(BTVCLinkAgent *)self _sendHciCommandComplete:8208 status:0 params:0 length:0];
}

- (void)_handleHciLeAddDeviceToFilterAcceptList:(id)list
{
  listCopy = list;
  bytes = [listCopy bytes];
  if ([(NSMutableDictionary *)self->_filterAcceptList count]> 0x7F)
  {
    v8 = 7;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    sub_1000075EC(&v13, (bytes + 1), 6uLL);
    v6 = [NSData dataWithBytes:&v13 length:6];
    v7 = [(NSMutableDictionary *)self->_filterAcceptList objectForKeyedSubscript:v6];
    if (v7 || (v7 = objc_alloc_init(NSMutableDictionary)) == 0)
    {
      v8 = 7;
    }

    else
    {
      v9 = [[BTVCBluetoothAddress alloc] initWithDeviceAddresAndType:&v13 addressType:*bytes];
      if (v9)
      {
        if (!self->_filterAcceptList)
        {
          v10 = objc_alloc_init(NSMutableDictionary);
          filterAcceptList = self->_filterAcceptList;
          self->_filterAcceptList = v10;
        }

        [v7 setObject:v9 forKeyedSubscript:@"address"];
        [(NSMutableDictionary *)self->_filterAcceptList setObject:v7 forKeyedSubscript:v6];
        v12 = qword_100BCEA70;
        v8 = 0;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v16 = "[BTVCLinkAgent _handleHciLeAddDeviceToFilterAcceptList:]";
          v17 = 2112;
          v18 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent]:%s add device: %@ from filter accept list", buf, 0x16u);
          v8 = 0;
        }
      }

      else
      {
        v8 = 7;
      }
    }
  }

  [(BTVCLinkAgent *)self _sendHciCommandComplete:8209 status:v8 params:0 length:0];
}

- (void)_handleHciLeRemoveDeviceFromFilterAcceptList:(id)list
{
  listCopy = list;
  v11 = 0;
  v10 = 0;
  sub_1000075EC(&v10, [list bytes] + 1, 6uLL);
  v6 = [NSData dataWithBytes:&v10 length:6];
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[BTVCLinkAgent _handleHciLeRemoveDeviceFromFilterAcceptList:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent]:%s remove device: %@ from filter accept list", buf, 0x16u);
  }

  v8 = [(NSMutableDictionary *)self->_filterAcceptList objectForKeyedSubscript:v6];
  if (v8)
  {
    [(NSMutableDictionary *)self->_filterAcceptList removeObjectForKey:v6];
    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_10083642C();
    }

    v9 = 18;
  }

  [(BTVCLinkAgent *)self _sendHciCommandComplete:8210 status:v9 params:0 length:0];
}

- (void)_handleHciVscLeIrk:(id)irk
{
  irkCopy = irk;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[BTVCLinkAgent _handleHciVscLeIrk:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: opCode HCI_VSC_LE_IRK", &v11, 0xCu);
  }

  v6 = irkCopy;
  bytes = [irkCopy bytes];
  LOWORD(v12) = 0;
  v11 = 0;
  sub_1000075EC(&v11, (bytes + 1), 6uLL);
  v8 = *bytes;
  v9 = 18;
  if (v8 <= 1)
  {
    if (*bytes)
    {
      if (v8 != 1)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

LABEL_10:
    v10 = [(BTVCLinkAgent *)self leAddDeviceToResolvingList:v8 >> 1 address:&v11 irk:bytes + 7];
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    goto LABEL_10;
  }

  if (v8 == 3)
  {
LABEL_9:
    v10 = [(BTVCLinkAgent *)self leRemoveDeviceFromResolvingList:v8 >> 1 address:&v11];
LABEL_11:
    v9 = v10;
  }

LABEL_12:
  [(BTVCLinkAgent *)self _sendHciCommandComplete:65279 status:v9 params:0 length:0];
}

- (void)_handleHciVscAddToFilterAcceptListUnified:(id)unified
{
  unifiedCopy = unified;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[BTVCLinkAgent _handleHciVscAddToFilterAcceptListUnified:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: opCode HCI_VSC_ADD_DEVICE_TO_FILTER_ACCEPT_LIST_UNIFIED", buf, 0xCu);
  }

  v6 = unifiedCopy;
  bytes = [unifiedCopy bytes];
  v16 = 0;
  v15 = 0;
  sub_1000075EC(&v15, (bytes + 2), 6uLL);
  v8 = [NSData dataWithBytes:&v15 length:6];
  v9 = [(NSMutableDictionary *)self->_filterAcceptList objectForKeyedSubscript:v8];
  if (v9)
  {
    v14 = 0;
    v13 = 0;
    sub_1000075EC(&v13, (bytes + 22), 6uLL);
    v10 = [[BTVCBluetoothAddress alloc] initWithDeviceAddresAndType:&v13 addressType:bytes[21]];
    if (v10)
    {
      [v9 setObject:v10 forKeyedSubscript:@"connIndAddress"];
      v11 = qword_100BCEA70;
      v12 = 0;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[BTVCLinkAgent _handleHciVscAddToFilterAcceptListUnified:]";
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent]:%s add connIndAddress: %@ to filter accept list", buf, 0x16u);
        v12 = 0;
      }
    }

    else
    {
      v12 = 7;
    }
  }

  else
  {
    v12 = 18;
  }

  [(BTVCLinkAgent *)self _sendHciCommandComplete:65479 status:v12 params:0 length:0];
}

- (unsigned)leSetAdvertisingSetRandomAddress:(unsigned __int8)address address:(id)a4
{
  addressCopy = address;
  v6 = a4;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[BTVCLinkAgent leSetAdvertisingSetRandomAddress:address:]";
    v13 = 1024;
    v14 = addressCopy;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, handle:%d address:%@", &v11, 0x1Cu);
  }

  v8 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:addressCopy];
  v9 = v8;
  if (v8)
  {
    [*(v8 + 16) addEntriesFromDictionary:v6];
  }

  return 0;
}

- (unsigned)leSetExtendedAdvertisingParameters:(unsigned __int8)parameters advertisingParameters:(id)advertisingParameters
{
  parametersCopy = parameters;
  advertisingParametersCopy = advertisingParameters;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[BTVCLinkAgent leSetExtendedAdvertisingParameters:advertisingParameters:]";
    v13 = 1024;
    v14 = parametersCopy;
    v15 = 2112;
    v16 = advertisingParametersCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, handle:%d advertisingParameters:%@", &v11, 0x1Cu);
  }

  v8 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:parametersCopy];
  v9 = v8;
  if (v8)
  {
    [*(v8 + 24) addEntriesFromDictionary:advertisingParametersCopy];
  }

  return 0;
}

- (unsigned)leSetExtendedAdvertisingData:(unsigned __int8)data advertisingData:(id)advertisingData
{
  dataCopy = data;
  advertisingDataCopy = advertisingData;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[BTVCLinkAgent leSetExtendedAdvertisingData:advertisingData:]";
    v13 = 1024;
    v14 = dataCopy;
    v15 = 2112;
    v16 = advertisingDataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, handle:%d advertisingData:%@", &v11, 0x1Cu);
  }

  v8 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:dataCopy];
  v9 = v8;
  if (v8)
  {
    [*(v8 + 32) addEntriesFromDictionary:advertisingDataCopy];
  }

  return 0;
}

- (unsigned)leSetExtendedAdvertisingEnable:(BOOL)enable numSets:(unsigned __int8)sets advertisingHandles:(char *)handles
{
  LODWORD(v6) = sets;
  enableCopy = enable;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315650;
    v21 = "[BTVCLinkAgent leSetExtendedAdvertisingEnable:numSets:advertisingHandles:]";
    v22 = 1024;
    *v23 = enableCopy;
    *&v23[4] = 1024;
    *&v23[6] = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, enable:%d, numSets:%d", &v20, 0x18u);
  }

  if (self->_bleBTVCLinkAdvertiser)
  {
    if (v6)
    {
      v6 = v6;
      do
      {
        v10 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:*handles];
        if (v10)
        {
          v10[8] = enableCopy;
        }

        ++handles;
        --v6;
      }

      while (v6);
    }

    else
    {
      for (i = 0; i != 8; ++i)
      {
        v13 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:i];
        if (v13)
        {
          v13[8] = 0;
        }
      }
    }

    if (enableCopy)
    {
      +[NSMutableArray array];
      v14 = [objc_claimAutoreleasedReturnValue() init];
      if (v14)
      {
        for (j = 0; j != 8; ++j)
        {
          v16 = [(BTVCLinkAgent *)self _getBTVCLinkAdvertiserSet:j];
          v17 = v16;
          if (v16 && *(v16 + 8) == 1)
          {
            v18 = objc_alloc_init(NSMutableDictionary);
            [v18 addEntriesFromDictionary:v17[2]];
            [v18 addEntriesFromDictionary:v17[3]];
            [v18 addEntriesFromDictionary:v17[4]];
            [v14 addObject:v18];
          }
        }
      }

      v19 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 136315394;
        v21 = "[BTVCLinkAgent leSetExtendedAdvertisingEnable:numSets:advertisingHandles:]";
        v22 = 2112;
        *v23 = v14;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s, payloadFields:%@", &v20, 0x16u);
      }

      [self->_bleBTVCLinkAdvertiser setPayloadFields:v14];
    }

    [self->_bleBTVCLinkAdvertiser advertisingEnable:enableCopy];
    result = 0;
    self->_bleBTVCLinkAdvertiseEnable = enableCopy;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_1008364B4();
    }

    return 3;
  }

  return result;
}

- (unsigned)leSetExtendedScanEnable:(BOOL)enable
{
  enableCopy = enable;
  v5 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[BTVCLinkAgent leSetExtendedScanEnable:]";
    v10 = 1024;
    v11 = enableCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s, enable:%d", &v8, 0x12u);
  }

  bleBTVCLinkScanner = self->_bleBTVCLinkScanner;
  if (bleBTVCLinkScanner)
  {
    [bleBTVCLinkScanner scanEnable:enableCopy];
    result = 0;
    self->_bleBTVCLinkScanEnable = enableCopy;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_ERROR))
    {
      sub_100836534();
    }

    return 3;
  }

  return result;
}

- (unsigned)leAddDeviceToResolvingList:(unsigned __int8)list address:(char *)address irk:(char *)irk
{
  v7 = [[BTVCBluetoothAddress alloc] initWithDeviceAddresAndType:address addressType:list];
  v8 = [[NSData alloc] initWithBytes:irk length:16];
  [(BTVCBluetoothAddress *)v7 setIrkData:v8];

  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = "[BTVCLinkAgent leAddDeviceToResolvingList:address:irk:]";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s, %@", &v16, 0x16u);
  }

  resolvingList = self->_resolvingList;
  if (!resolvingList)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v13 = self->_resolvingList;
    p_resolvingList = &self->_resolvingList;
    *p_resolvingList = v11;

    resolvingList = *p_resolvingList;
  }

  addressWithType = [(BTVCBluetoothAddress *)v7 addressWithType];
  [(NSMutableDictionary *)resolvingList setObject:v7 forKeyedSubscript:addressWithType];

  return 0;
}

- (unsigned)leRemoveDeviceFromResolvingList:(unsigned __int8)list address:(char *)address
{
  v5 = [[BTVCBluetoothAddress alloc] initWithDeviceAddresAndType:address addressType:list];
  v6 = v5;
  resolvingList = self->_resolvingList;
  if (resolvingList)
  {
    addressWithType = [(BTVCBluetoothAddress *)v5 addressWithType];
    v9 = [(NSMutableDictionary *)resolvingList objectForKeyedSubscript:addressWithType];

    if (v9)
    {
      v10 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315394;
        v15 = "[BTVCLinkAgent leRemoveDeviceFromResolvingList:address:]";
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s, %@", &v14, 0x16u);
      }

      v11 = self->_resolvingList;
      addressWithType2 = [v9 addressWithType];
      [(NSMutableDictionary *)v11 removeObjectForKey:addressWithType2];
    }
  }

  return 0;
}

- (void)_sendHciCommandComplete:(unsigned __int16)complete status:(unsigned __int8)status params:(char *)params length:(unsigned __int8)length
{
  memset(v13, 0, sizeof(v13));
  v10 = 1;
  completeCopy = complete;
  statusCopy = status;
  if (length)
  {
    memcpy(v13, params, length);
    v8 = length + 4;
  }

  else
  {
    v8 = 4;
  }

  hciEventHandler = self->_hciEventHandler;
  if (hciEventHandler)
  {
    hciEventHandler[2](hciEventHandler, 14, &v10, v8);
  }
}

- (BOOL)_isInFilterAcceptList:(id)list type:(unsigned __int8)type
{
  typeCopy = type;
  listCopy = list;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    if (typeCopy > 3)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_100AF9770[typeCopy];
    }

    filterAcceptList = self->_filterAcceptList;
    v17 = 136315906;
    v18 = "[BTVCLinkAgent _isInFilterAcceptList:type:]";
    v19 = 2112;
    v20 = listCopy;
    v21 = 2080;
    v22 = v8;
    v23 = 2112;
    v24 = filterAcceptList;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, address: %@, addressType: %s, filterAcceptList:%@", &v17, 0x2Au);
  }

  v10 = [(NSMutableDictionary *)self->_filterAcceptList objectForKeyedSubscript:listCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:@"address"];
    v13 = v12;
    if (v12 && [v12 addressType] == typeCopy)
    {
      v14 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[BTVCLinkAgent _isInFilterAcceptList:type:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s, device is in FilterAcceptList", &v17, 0xCu);
      }

      v15 = 1;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_getConnectIndAddress:(id)address type:(unsigned __int8)type
{
  typeCopy = type;
  addressCopy = address;
  v7 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    if (typeCopy > 3)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_100AF9770[typeCopy];
    }

    filterAcceptList = self->_filterAcceptList;
    v17 = 136315906;
    v18 = "[BTVCLinkAgent _getConnectIndAddress:type:]";
    v19 = 2112;
    v20 = addressCopy;
    v21 = 2080;
    v22 = v8;
    v23 = 2112;
    v24 = filterAcceptList;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s, address: %@, addressType: %s, filterAcceptList:%@", &v17, 0x2Au);
  }

  v10 = [(NSMutableDictionary *)self->_filterAcceptList objectForKeyedSubscript:addressCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 objectForKeyedSubscript:@"address"];
    v13 = v12;
    if (v12 && [v12 addressType] == typeCopy)
    {
      v14 = qword_100BCEA70;
      if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[BTVCLinkAgent _getConnectIndAddress:type:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%s, device is in FilterAcceptList", &v17, 0xCu);
      }

      v15 = [v11 objectForKeyedSubscript:@"connIndAddress"];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_getBTVCLinkAdvertiserSet:(unsigned __int8)set
{
  setCopy = set;
  if ([(NSMutableArray *)self->_bleBTVCLinkAdvertiseSets count]<= set)
  {
    bleBTVCLinkAdvertiseSets = 0;
  }

  else
  {
    bleBTVCLinkAdvertiseSets = self->_bleBTVCLinkAdvertiseSets;
    if (bleBTVCLinkAdvertiseSets)
    {
      bleBTVCLinkAdvertiseSets = [bleBTVCLinkAdvertiseSets objectAtIndex:setCopy];
    }
  }

  return bleBTVCLinkAdvertiseSets;
}

- (void)_bleBTVCLinkAdvertiserEnsureStarted
{
  objc_initWeak(&location, self);
  if (!self->_bleBTVCLinkAdvertiser)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent] BLE BTVCLink advertiser start\n", buf, 2u);
    }

    v4 = [[BTVCLinkAdvertiser alloc] initWithType:2];
    bleBTVCLinkAdvertiser = self->_bleBTVCLinkAdvertiser;
    self->_bleBTVCLinkAdvertiser = v4;

    [self->_bleBTVCLinkAdvertiser setDispatchQueue:self->_dispatchQueue];
    self->_bleBTVCLinkAdvertiseEnable = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004C2DBC;
    v6[3] = &unk_100AF96E8;
    objc_copyWeak(&v7, &location);
    [self->_bleBTVCLinkAdvertiser setConnectionHandler:v6];
    [self->_bleBTVCLinkAdvertiser activateWithCompletion:&stru_100AF9708];
    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

- (void)_bleBTVCLinkAdvertiserEnsureStopped
{
  if (self->_bleBTVCLinkAdvertiser)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent] BLE BTVCLink advertiser stop\n", v6, 2u);
    }

    bleBTVCLinkAdvertiser = self->_bleBTVCLinkAdvertiser;
  }

  else
  {
    bleBTVCLinkAdvertiser = 0;
  }

  [bleBTVCLinkAdvertiser invalidate];
  self->_bleBTVCLinkAdvertiseEnable = 0;
  v5 = self->_bleBTVCLinkAdvertiser;
  self->_bleBTVCLinkAdvertiser = 0;
}

- (void)_bleBTVCLinkScannerEnsureStarted
{
  if (self->_bleBTVCLinkScanner)
  {

    [(BTVCLinkAgent *)self _bleUpdateScanner:?];
  }

  else
  {
    self->_bleBTVCLinkScanEnable = 0;
    objc_initWeak(&location, self);
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent] BLE BTVCLink scanner start\n", buf, 2u);
    }

    v4 = [[BTVCLinkScanner alloc] initWithType:2];
    bleBTVCLinkScanner = self->_bleBTVCLinkScanner;
    self->_bleBTVCLinkScanner = v4;

    [self->_bleBTVCLinkScanner setDispatchQueue:self->_dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1004C3160;
    v6[3] = &unk_100AF9730;
    objc_copyWeak(&v7, &location);
    [self->_bleBTVCLinkScanner setAdvReportReceiveHandler:v6];
    [(BTVCLinkAgent *)self _bleUpdateScanner:self->_bleBTVCLinkScanner];
    [self->_bleBTVCLinkScanner activateWithCompletion:&stru_100AF9750];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_bleBTVCLinkScannerEnsureStopped
{
  if (self->_bleBTVCLinkScanner)
  {
    v3 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[BTVCLinkAgent] BLE BTVCLink scanner stop\n", v6, 2u);
    }

    bleBTVCLinkScanner = self->_bleBTVCLinkScanner;
  }

  else
  {
    bleBTVCLinkScanner = 0;
  }

  [bleBTVCLinkScanner invalidate];
  self->_bleBTVCLinkScanEnable = 0;
  v5 = self->_bleBTVCLinkScanner;
  self->_bleBTVCLinkScanner = 0;
}

- (void)_receivedAdvReport:(int64_t)report withData:(id)data fromPeer:(id)peer peerInfo:(id)info
{
  dataCopy = data;
  peerCopy = peer;
  infoCopy = info;
  v79 = 0;
  v8 = qword_100BCEA70;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
    *&buf[12] = 1024;
    *&buf[14] = [dataCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s report count %d", buf, 0x12u);
  }

  if ([dataCopy count])
  {
    v9 = 0;
    v72 = 0;
    while (1)
    {
      if ([dataCopy count] <= v9)
      {
LABEL_78:
        if (v79 && (v56 = qword_100BCEA70, os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT)))
        {
          *buf = 136315394;
          *&buf[4] = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
          *&buf[12] = 2112;
          v55 = v72;
          *&buf[14] = v72;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%s ADV data missing field %@\n", buf, 0x16u);
        }

        else
        {
          v55 = v72;
        }

        goto LABEL_82;
      }

      v61 = v9;
      v10 = [dataCopy objectAtIndex:v9];

      v72 = v10;
      if (!v10)
      {
        v33 = qword_100BCEA70;
        if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
          *&buf[12] = 1024;
          *&buf[14] = v61;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%s ADV data [%d] is empty", buf, 0x12u);
        }

        goto LABEL_62;
      }

      memset(__src, 0, sizeof(__src));
      v78[0] = 0;
      v78[1] = 0;
      v76 = NSDictionaryGetNSNumber();
      if (v79)
      {
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v74 = 0;
        v75 = 0;
      }

      else
      {
        v74 = NSDictionaryGetNSNumber();
        if (v79)
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v71 = 0;
          v75 = 0;
        }

        else
        {
          CFDataGetTypeID();
          v75 = CFDictionaryGetTypedValue();
          if (v79)
          {
            v63 = 0;
            v64 = 0;
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = 0;
          }

          else
          {
            v71 = NSDictionaryGetNSNumber();
            if (v79)
            {
              v63 = 0;
              v64 = 0;
              v65 = 0;
              v66 = 0;
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
            }

            else
            {
              v70 = NSDictionaryGetNSNumber();
              if (v79)
              {
                v63 = 0;
                v64 = 0;
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = 0;
                v69 = 0;
              }

              else
              {
                v69 = NSDictionaryGetNSNumber();
                if (v79)
                {
                  v63 = 0;
                  v64 = 0;
                  v65 = 0;
                  v66 = 0;
                  v67 = 0;
                  v68 = 0;
                }

                else
                {
                  v68 = NSDictionaryGetNSNumber();
                  if (v79)
                  {
                    v63 = 0;
                    v64 = 0;
                    v65 = 0;
                    v66 = 0;
                    v67 = 0;
                  }

                  else
                  {
                    v67 = NSDictionaryGetNSNumber();
                    if (v79)
                    {
                      v63 = 0;
                      v64 = 0;
                      v65 = 0;
                      v66 = 0;
                    }

                    else
                    {
                      v66 = NSDictionaryGetNSNumber();
                      if (v79)
                      {
                        v63 = 0;
                        v64 = 0;
                        v65 = 0;
                      }

                      else
                      {
                        v65 = NSDictionaryGetNSNumber();
                        if (v79)
                        {
                          v63 = 0;
                          v64 = 0;
                        }

                        else
                        {
                          v63 = NSDictionaryGetNSNumber();
                          if (v79)
                          {
                            v64 = 0;
                          }

                          else
                          {
                            v64 = NSDictionaryGetNSNumber();
                            if (!v79)
                            {
                              CFDictionaryGetData();
                              if (!v79)
                              {
                                LOBYTE(v59) = [v74 intValue];
                                v11 = v75;
                                v12 = *[v75 bytes];
                                v77 = 0;
                                v78[0] = v12;
                                v13 = qword_100BCEA70;
                                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                                {
                                  log = v13;
                                  intValue = [v76 intValue];
                                  v15 = v78[0];
                                  intValue2 = [v71 intValue];
                                  intValue3 = [v70 intValue];
                                  intValue4 = [v69 intValue];
                                  intValue5 = [v68 intValue];
                                  intValue6 = [v67 intValue];
                                  intValue7 = [v66 intValue];
                                  intValue8 = [v65 intValue];
                                  v23 = v77;
                                  intValue9 = [v64 intValue];
                                  *buf = 136318210;
                                  *&buf[4] = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
                                  *&buf[12] = 1024;
                                  *&buf[14] = intValue;
                                  *&buf[18] = 1024;
                                  *&buf[20] = v59;
                                  *&buf[24] = 2048;
                                  *&buf[26] = v15;
                                  *&buf[34] = 1024;
                                  *&buf[36] = intValue2;
                                  *&buf[40] = 1024;
                                  *&buf[42] = intValue3;
                                  *&buf[46] = 1024;
                                  *&buf[48] = intValue4;
                                  *&buf[52] = 1024;
                                  *&buf[54] = intValue5;
                                  *&buf[58] = 1024;
                                  *&buf[60] = intValue6;
                                  *&buf[64] = 1024;
                                  *&buf[66] = intValue7;
                                  *&buf[70] = 1024;
                                  *&buf[72] = intValue8;
                                  *&buf[76] = 2048;
                                  *&buf[78] = v23;
                                  *&buf[86] = 1024;
                                  *&buf[88] = intValue9;
                                  v13 = log;
                                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s EventType:0x%04X, AddressType:0x%02X, PeerAddress:%llX, primaryPHY:0x%02X, secondaryPHY:0x%02X, advertisingSID:0x%02X, txPower:0x%02X, rssi:0x%02X, periodicAdvInterval:0x%02X, directAddressType:0x%02X, directAddress:0x%llX, DataLength:%d", buf, 0x5Cu);
                                }

                                v25 = v78[0] & 0xC0;
                                v26 = qword_100BCEA70;
                                v27 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
                                if (v25 == 64)
                                {
                                  if (v27)
                                  {
                                    *buf = 138412290;
                                    *&buf[4] = v75;
                                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "BTVCLinkAgent address %@ is resolvable address\n", buf, 0xCu);
                                  }

                                  v28 = [(BTVCLinkAgent *)self _resovleAddress:v75];
                                  v29 = qword_100BCEA70;
                                  v30 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
                                  if (v28)
                                  {
                                    if (v30)
                                    {
                                      *buf = 138412290;
                                      *&buf[4] = v28;
                                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "resolved address %@", buf, 0xCu);
                                    }

                                    addressData = [v28 addressData];
                                    v32 = addressData;
                                    v78[0] = *[addressData bytes];

                                    v59 = [v28 addressType] + 2;
LABEL_37:
                                    v96 = 0u;
                                    v95 = 0u;
                                    v94 = 0u;
                                    v93 = 0u;
                                    v92 = 0u;
                                    v91 = 0u;
                                    v90 = 0u;
                                    v89 = 0u;
                                    v88 = 0u;
                                    v87 = 0u;
                                    memset(&buf[1], 0, 96);
                                    buf[0] = 1;
                                    *&buf[1] = [v76 intValue];
                                    buf[3] = v59;
                                    sub_1000075EC(&buf[4], v78, 6uLL);
                                    buf[10] = [v71 intValue];
                                    buf[11] = [v70 intValue];
                                    buf[12] = [v69 intValue];
                                    buf[13] = [v68 intValue];
                                    buf[14] = [v67 intValue];
                                    *&buf[15] = [v66 intValue];
                                    buf[17] = [v65 intValue];
                                    sub_1000075EC(&buf[18], &v77, 6uLL);
                                    if ([v64 intValue] < 1)
                                    {
                                      v37 = 24;
                                    }

                                    else
                                    {
                                      buf[24] = [v64 intValue];
                                      memcpy(&buf[25], __src, [v64 intValue]);
                                      v37 = [v64 intValue] + 25;
                                    }

                                    leMetaEventHandler = [(BTVCLinkAgent *)self leMetaEventHandler];
                                    v39 = leMetaEventHandler == 0;

                                    if (!v39)
                                    {
                                      leMetaEventHandler2 = [(BTVCLinkAgent *)self leMetaEventHandler];
                                      (leMetaEventHandler2)[2](leMetaEventHandler2, 13, buf, v37);
                                    }

                                    if ([v76 intValue])
                                    {
                                      if ([(BTVCConnectionManager *)self->_connectionManager isConnectActivated])
                                      {
                                        if (v28)
                                        {
                                          addressData2 = [v28 addressData];
                                          LOBYTE(v59) = [v28 addressType];
                                          v42 = addressData2;
                                        }

                                        else
                                        {
                                          v42 = v75;
                                        }

                                        if ([(BTVCConnectionManager *)self->_connectionManager isInConnectionList:v42])
                                        {
                                          v43 = qword_100BCEA70;
                                          if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *v82 = 136315394;
                                            v83 = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
                                            v84 = 2112;
                                            v85 = v42;
                                            v44 = v43;
                                            v45 = "%s peer address %@ is in connected\n";
                                            goto LABEL_58;
                                          }
                                        }

                                        else if ([(BTVCLinkAgent *)self _isInFilterAcceptList:v42 type:v59])
                                        {
                                          v46 = [BTVCBluetoothAddress alloc];
                                          v47 = v42;
                                          v48 = -[BTVCBluetoothAddress initWithDeviceAddresAndType:addressType:](v46, "initWithDeviceAddresAndType:addressType:", [v42 bytes], v59);
                                          v49 = v48;
                                          if (v28)
                                          {
                                            v50 = v75;
                                          }

                                          else
                                          {
                                            v50 = 0;
                                          }

                                          [(BTVCBluetoothAddress *)v48 setRpaData:v50];
                                          v51 = [(BTVCLinkAgent *)self _getConnectIndAddress:v42 type:v59];
                                          [(BTVCConnectionManager *)self->_connectionManager startConnectionToDevice:peerCopy peerAddress:v49 localAddress:v51 owner:0 connected:0];
                                        }

                                        else
                                        {
                                          v52 = qword_100BCEA70;
                                          if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
                                          {
                                            *v82 = 136315394;
                                            v83 = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
                                            v84 = 2112;
                                            v85 = v42;
                                            v44 = v52;
                                            v45 = "%s peer address %@ is not in filter accept list\n";
LABEL_58:
                                            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v45, v82, 0x16u);
                                          }
                                        }
                                      }

                                      else
                                      {
                                        sub_1008365B4(v80, &v81);
                                      }
                                    }

                                    v53 = 0;
                                    goto LABEL_61;
                                  }

                                  if (v30)
                                  {
                                    *buf = 136315394;
                                    *&buf[4] = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
                                    *&buf[12] = 2112;
                                    *&buf[14] = 0;
                                    v34 = v29;
                                    v35 = "%s address %@ is not resolved";
                                    v36 = 22;
LABEL_35:
                                    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
                                  }
                                }

                                else if (v27)
                                {
                                  *buf = 138412290;
                                  *&buf[4] = v75;
                                  v34 = v26;
                                  v35 = "BTVCLinkAgent address %@ is not resolvable address\n";
                                  v36 = 12;
                                  goto LABEL_35;
                                }

                                v28 = 0;
                                goto LABEL_37;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v28 = 0;
      v53 = 7;
LABEL_61:

      if (v53)
      {
        goto LABEL_78;
      }

LABEL_62:
      v9 = v61 + 1;
    }
  }

  v54 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[BTVCLinkAgent _receivedAdvReport:withData:fromPeer:peerInfo:]";
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "%s empty ADV set received", buf, 0xCu);
  }

  v55 = 0;
LABEL_82:
}

- (void)_handleConnection:(id)connection parameters:(id)parameters
{
  connectionCopy = connection;
  parametersCopy = parameters;
  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  v9 = [[BTVCBluetoothAddress alloc] initWithDeviceAddresData:v8];
  addressData = [(BTVCBluetoothAddress *)v9 addressData];
  v11 = addressData;
  v12 = *[addressData bytes];

  if ([(BTVCBluetoothAddress *)v9 addressType]&& (v12 & 0xC0) == 0x40)
  {
    v13 = qword_100BCEA70;
    if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BTVCLinkAgent address %@ is resolvable address\n", buf, 0xCu);
    }

    addressData2 = [(BTVCBluetoothAddress *)v9 addressData];
    v15 = [(BTVCLinkAgent *)self _resovleAddress:addressData2];

    v16 = qword_100BCEA70;
    v17 = os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "resolved address %@", buf, 0xCu);
      }

      addressData3 = [(BTVCBluetoothAddress *)v9 addressData];
      [(BTVCBluetoothAddress *)v9 setRpaData:addressData3];

      addressData4 = [v15 addressData];
      [(BTVCBluetoothAddress *)v9 setAddressData:addressData4];

      -[BTVCBluetoothAddress setAddressType:](v9, "setAddressType:", [v15 addressType]);
    }

    else if (v17)
    {
      *buf = 136315394;
      v21 = "[BTVCLinkAgent _handleConnection:parameters:]";
      v22 = 2112;
      v23 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s address %@ is not resolved", buf, 0x16u);
    }
  }

  [(BTVCConnectionManager *)self->_connectionManager handleConnection:connectionCopy peerAddress:v9 parameters:parametersCopy];
}

- (id)_resovleAddress:(id)address
{
  addressCopy = address;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_resolvingList;
  v6 = 0;
  v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      v10 = v6;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v6 = [(NSMutableDictionary *)self->_resolvingList objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v9), v15];

        v11 = [v6 resolveAddress:addressCopy];
        v12 = v11 == 0;

        if (!v12)
        {
          v6 = v6;
          v13 = v6;
          goto LABEL_11;
        }

        v9 = v9 + 1;
        v10 = v6;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)_systemWillSleep
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C4940;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_systemHasPoweredOn
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004C49C8;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

@end