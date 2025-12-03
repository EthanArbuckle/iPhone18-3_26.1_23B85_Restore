@interface NIServerAccessoryGATTServiceManager
+ (id)sharedInstance;
- (BOOL)_isListener:(id)listener backgroundAuthorizedForPeer:(id)peer useCache:(BOOL)cache;
- (id)_initInternal;
- (id)_internalPrintableState;
- (id)printableState;
- (void)_cleanupExcessiveDetachedPeers;
- (void)_connectToPeer:(id)peer;
- (void)_peer:(id)_peer didFailWithError:(id)error;
- (void)addServiceListener:(id)listener withIdentifier:(id)identifier forBluetoothPeer:(id)peer withConfiguration:(id)configuration;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)probeAuthorizationForServiceListenerWithIdentifier:(id)identifier;
- (void)removeServiceListenerWithIdentifier:(id)identifier;
@end

@implementation NIServerAccessoryGATTServiceManager

- (id)_initInternal
{
  v17.receiver = self;
  v17.super_class = NIServerAccessoryGATTServiceManager;
  v2 = [(NIServerAccessoryGATTServiceManager *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.nearbyd.accessory.gatt-service", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = [[CBCentralManager alloc] initWithDelegate:v2 queue:v2->_queue];
    cbManager = v2->_cbManager;
    v2->_cbManager = v6;

    v8 = objc_opt_new();
    listeners = v2->_listeners;
    v2->_listeners = v8;

    v10 = objc_opt_new();
    peerDevices = v2->_peerDevices;
    v2->_peerDevices = v10;

    if (+[NIPlatformInfo isInternalBuild](NIPlatformInfo, "isInternalBuild") || (+[NSUserDefaults standardUserDefaults](NSUserDefaults, "standardUserDefaults"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 BOOLForKey:@"EnableStateDump"], v12, v13))
    {
      v14 = v2->_queue;
      v16 = v2;
      os_state_add_handler();
    }
  }

  return v2;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D5360;
  block[3] = &unk_10098AD98;
  block[4] = self;
  if (qword_1009F0D08 != -1)
  {
    dispatch_once(&qword_1009F0D08, block);
  }

  v2 = qword_1009F0D00;

  return v2;
}

- (void)addServiceListener:(id)listener withIdentifier:(id)identifier forBluetoothPeer:(id)peer withConfiguration:(id)configuration
{
  listenerCopy = listener;
  identifierCopy = identifier;
  peerCopy = peer;
  configurationCopy = configuration;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D54AC;
  block[3] = &unk_10099CBC0;
  block[4] = self;
  v20 = identifierCopy;
  v21 = peerCopy;
  v22 = listenerCopy;
  v23 = configurationCopy;
  v15 = configurationCopy;
  v16 = listenerCopy;
  v17 = peerCopy;
  v18 = identifierCopy;
  dispatch_sync(queue, block);
}

- (void)probeAuthorizationForServiceListenerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D59B0;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(queue, v7);
}

- (void)removeServiceListenerWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D617C;
  v7[3] = &unk_10098A2E8;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (id)printableState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1001D6590;
  v10 = sub_1001D65A0;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D65A8;
  v5[3] = &unk_10098A310;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_internalPrintableState
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1001D6590;
  v19 = sub_1001D65A0;
  v20 = objc_opt_new();
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_autoreleasePoolPush();
  v4 = sub_100005288();
  v5 = v16[5];
  v6 = [NSString stringWithFormat:@"%d listeners", [(NSMutableDictionary *)self->_listeners count]];
  [v5 addObject:v6];

  listeners = self->_listeners;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001D683C;
  v14[3] = &unk_10099CBE8;
  v14[4] = &v15;
  [(NSMutableDictionary *)listeners enumerateKeysAndObjectsUsingBlock:v14];
  v8 = v16[5];
  v9 = [NSString stringWithFormat:@"%d peers", [(NSMutableDictionary *)self->_peerDevices count]];
  [v8 addObject:v9];

  peerDevices = self->_peerDevices;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D6A08;
  v13[3] = &unk_10099CC38;
  v13[4] = &v15;
  *&v13[5] = v4;
  [(NSMutableDictionary *)peerDevices enumerateKeysAndObjectsUsingBlock:v13];
  objc_autoreleasePoolPop(v3);
  v11 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (void)_connectToPeer:(id)peer
{
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  state = [(CBCentralManager *)self->_cbManager state];
  if ((state - 2) < 3)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A6A08();
    }

    v9 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-10017 userInfo:0];
    [(NIServerAccessoryGATTServiceManager *)self _peer:peerCopy didFailWithError:v9];
  }

  else if (state >= 2)
  {
    if (state != 5)
    {
      __assert_rtn("[NIServerAccessoryGATTServiceManager _connectToPeer:]", "NIServerAccessoryGATTServiceManager.mm", 413, "cbState == CBManagerStatePoweredOn");
    }

    v10 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:peerCopy];
    connectionState = [v10 connectionState];

    if (connectionState == 6)
    {
      v12 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = peerCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#bt-accessory,ConnectToPeer [%@]: already finished", buf, 0xCu);
      }
    }

    else
    {
      sharedPairingAgent = [(CBCentralManager *)self->_cbManager sharedPairingAgent];
      retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1001D74AC;
      v33[3] = &unk_10099CC60;
      v15 = peerCopy;
      v34 = v15;
      if ([retrievePairedPeers indexOfObjectPassingTest:v33] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A69A0();
        }

        v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
        [(NIServerAccessoryGATTServiceManager *)self _peer:v15 didFailWithError:v16];
      }

      else
      {
        v16 = [(CBCentralManager *)self->_cbManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];
        v28 = _NSConcreteStackBlock;
        v29 = 3221225472;
        v30 = sub_1001D7500;
        v31 = &unk_10099CC88;
        v17 = v15;
        v32 = v17;
        v18 = [v16 indexOfObjectPassingTest:&v28];
        v19 = qword_1009F9820;
        if (v18 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            sub_1004A6938();
          }

          v20 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0, v28, v29, v30, v31];
          [(NIServerAccessoryGATTServiceManager *)self _peer:v17 didFailWithError:v20];
        }

        else
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#bt-accessory,ConnectToPeer [%@]: Paired and connected. Establishing a local connection", buf, 0xCu);
          }

          v21 = [v16 objectAtIndexedSubscript:{v18, v28, v29, v30, v31}];
          v22 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v17];
          [v22 setPeripheral:v21];

          v23 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v17];
          peripheral = [v23 peripheral];
          [peripheral setDelegate:self];

          cbManager = self->_cbManager;
          v26 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v17];
          peripheral2 = [v26 peripheral];
          [(CBCentralManager *)cbManager connectPeripheral:peripheral2 options:0];

          v20 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v17];
          [v20 changeConnectionState:2];
        }
      }
    }
  }

  else
  {
    v6 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = peerCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#bt-accessory,ConnectToPeer [%@]: wait for CBManager state update", buf, 0xCu);
    }

    v7 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:peerCopy];
    [v7 changeConnectionState:1];

    v8 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:peerCopy];
    [v8 cacheCharacteristics];
  }
}

- (void)_peer:(id)_peer didFailWithError:(id)error
{
  _peerCopy = _peer;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:_peerCopy];
  [v8 changeConnectionState:0];

  v9 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:_peerCopy];
  [v9 cacheCharacteristics];

  v10 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:_peerCopy];
  listeners = [v10 listeners];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001D76B8;
  v13[3] = &unk_10099CCB0;
  v13[4] = self;
  v12 = errorCopy;
  v14 = v12;
  [listeners enumerateObjectsUsingBlock:v13];
}

- (BOOL)_isListener:(id)listener backgroundAuthorizedForPeer:(id)peer useCache:(BOOL)cache
{
  cacheCopy = cache;
  listenerCopy = listener;
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  v10 = [(NSMutableDictionary *)self->_listeners objectForKeyedSubscript:listenerCopy];
  configuration = [v10 configuration];

  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    accessoryConfigData = [configuration accessoryConfigData];
    v15 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:peerCopy];
    if (cacheCopy)
    {
      [v15 cachedConfigCharacteristics];
    }

    else
    {
      [v15 resultConfigCharacteristics];
    }
    v16 = ;
    v17 = [v16 containsObject:accessoryConfigData];

    v13 = (v17 & 1) != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_cleanupExcessiveDetachedPeers
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"NIAccessoryMaxDetachedPeersOverride"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntValue = [v4 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 2;
  }

  v6 = objc_opt_new();
  peerDevices = self->_peerDevices;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001D7B98;
  v11[3] = &unk_10099CCD8;
  v8 = v6;
  v12 = v8;
  [(NSMutableDictionary *)peerDevices enumerateKeysAndObjectsUsingBlock:v11];
  if ([v8 count] > unsignedIntValue)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 67109376;
      v14 = v10;
      v15 = 1024;
      v16 = unsignedIntValue;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#bt-accessory,Cleaning up detached peers. %d found, exceeds max of %d", buf, 0xEu);
    }

    [(NSMutableDictionary *)self->_peerDevices removeObjectsForKeys:v8];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    state = [stateCopy state];
    if (state > 0xA)
    {
      v7 = "?";
    }

    else
    {
      v7 = off_10099CD90[state];
    }

    *buf = 136315138;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#bt-accessory,centralManagerDidUpdateState: %s", buf, 0xCu);
  }

  peerDevices = self->_peerDevices;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001D7DA0;
  v9[3] = &unk_10099CCD8;
  v9[4] = self;
  [(NSMutableDictionary *)peerDevices enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  identifier = [peripheralCopy identifier];
  v7 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
    peripheral = [v8 peripheral];
    if (peripheral)
    {
      v10 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      peripheral2 = [v10 peripheral];

      if (peripheral2 == peripheralCopy)
      {
        v12 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
        connectionState = [v12 connectionState];

        v14 = qword_1009F9820;
        if (connectionState == 2)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v20 = identifier;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#bt-accessory,centralManager:didConnectPeripheral [%@]: Success", buf, 0xCu);
          }

          v15 = [CBUUID UUIDWithString:@"48fe3e40-0817-4bb2-8633-3073689c2dba"];
          v18 = v15;
          v16 = [NSArray arrayWithObjects:&v18 count:1];
          [peripheralCopy discoverServices:v16];

          v17 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
          [v17 changeConnectionState:3];
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A6A70();
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A6AD8();
  }

LABEL_11:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  identifier = [peripheralCopy identifier];
  v10 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
    peripheral = [v11 peripheral];
    if (peripheral)
    {
      v13 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      peripheral2 = [v13 peripheral];

      if (peripheral2 == peripheralCopy)
      {
        v15 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
        connectionState = [v15 connectionState];

        v17 = qword_1009F9820;
        if (connectionState == 2)
        {
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412546;
            v20 = identifier;
            v21 = 2112;
            v22 = errorCopy;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#bt-accessory,centralManager:didFailToConnectPeripheral [%@]: Error: %@", &v19, 0x16u);
          }

          v18 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
          [(NIServerAccessoryGATTServiceManager *)self _peer:identifier didFailWithError:v18];
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A6B40();
        }

        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A6BB0();
  }

LABEL_11:
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  identifier = [peripheralCopy identifier];
  v10 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  if (v10)
  {
    v11 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
    peripheral = [v11 peripheral];
    if (peripheral)
    {
      v13 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      peripheral2 = [v13 peripheral];

      if (peripheral2 == peripheralCopy)
      {
        v15 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = identifier;
          v19 = 2112;
          v20 = errorCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#bt-accessory,centralManager:didDisconnectPeripheral [%@]: Error: %@", &v17, 0x16u);
        }

        v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
        [(NIServerAccessoryGATTServiceManager *)self _peer:identifier didFailWithError:v16];

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A6C20();
  }

LABEL_10:
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  identifier = [peripheralCopy identifier];
  v9 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  if (!v9)
  {
LABEL_10:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A6DD8();
    }

    goto LABEL_12;
  }

  v10 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  peripheral = [v10 peripheral];
  if (!peripheral)
  {

    goto LABEL_10;
  }

  v12 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  peripheral2 = [v12 peripheral];

  if (peripheral2 != peripheralCopy)
  {
    goto LABEL_10;
  }

  v14 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  connectionState = [v14 connectionState];

  if (connectionState == 3)
  {
    if (servicesCopy)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A6D00();
      }

LABEL_8:
      v16 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
      [(NIServerAccessoryGATTServiceManager *)self _peer:identifier didFailWithError:v16];

      goto LABEL_12;
    }

    services = [peripheralCopy services];
    v18 = [services indexOfObjectPassingTest:&stru_10099CD18];

    v19 = qword_1009F9820;
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004A6D70();
      }

      goto LABEL_8;
    }

    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = identifier;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#bt-accessory,peripheral:didDiscoverServices [%@]: Success", buf, 0xCu);
    }

    v20 = [CBUUID UUIDWithString:@"95e8d9d5-d8ef-4721-9a4e-807375f53328"];
    v21 = [CBUUID UUIDWithString:@"1176cf7b-bed2-4690-bd69-5f34001e820c", v20];
    v26[1] = v21;
    v22 = [NSArray arrayWithObjects:v26 count:2];
    services2 = [peripheralCopy services];
    v24 = [services2 objectAtIndexedSubscript:v18];
    [peripheralCopy discoverCharacteristics:v22 forService:v24];

    v25 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
    [v25 changeConnectionState:4];
  }

  else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A6C90();
  }

LABEL_12:
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  identifier = [peripheralCopy identifier];
  v12 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  if (v12)
  {
    v13 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
    peripheral = [v13 peripheral];
    if (peripheral)
    {
      v15 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      peripheral2 = [v15 peripheral];

      if (peripheral2 == peripheralCopy)
      {
        v17 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
        connectionState = [v17 connectionState];

        if (connectionState == 4)
        {
          if (errorCopy)
          {
            if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
            {
              sub_1004A6EB8();
            }

            v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
            [(NIServerAccessoryGATTServiceManager *)self _peer:identifier didFailWithError:v19];
          }

          else
          {
            uUID = [serviceCopy UUID];
            v21 = [CBUUID UUIDWithString:@"48fe3e40-0817-4bb2-8633-3073689c2dba"];
            if (([uUID isEqual:v21] & 1) == 0)
            {
              __assert_rtn("[NIServerAccessoryGATTServiceManager peripheral:didDiscoverCharacteristicsForService:error:]", "NIServerAccessoryGATTServiceManager.mm", 662, "[service.UUID isEqual:[CBUUID UUIDWithString:kNearbyInteractionServiceUUID]]");
            }

            v22 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
            [v22 setNumCharacteristicsLeftToRead:0];

            v23 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
            [v23 setReadingMultiConfigCharacteristics:0];

            characteristics = [serviceCopy characteristics];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_1001D910C;
            v45[3] = &unk_10099CD40;
            v25 = peripheralCopy;
            v46 = v25;
            selfCopy = self;
            v26 = identifier;
            v48 = v26;
            [characteristics enumerateObjectsUsingBlock:v45];

            v27 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v26];
            readingMultiConfigCharacteristics = [v27 readingMultiConfigCharacteristics];

            if ((readingMultiConfigCharacteristics & 1) == 0)
            {
              characteristics2 = [serviceCopy characteristics];
              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_1001D9224;
              v41[3] = &unk_10099CD40;
              v42 = v25;
              selfCopy2 = self;
              v44 = v26;
              [characteristics2 enumerateObjectsUsingBlock:v41];
            }

            v30 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v26];
            v31 = [v30 numCharacteristicsLeftToRead] == 0;

            if (v31)
            {
              if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
              {
                sub_1004A6F28();
              }

              v38 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
              [(NIServerAccessoryGATTServiceManager *)self _peer:v26 didFailWithError:v38];
            }

            else
            {
              v32 = qword_1009F9820;
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                characteristics3 = [serviceCopy characteristics];
                v33 = [characteristics3 count];
                v39 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v26];
                numCharacteristicsLeftToRead = [v39 numCharacteristicsLeftToRead];
                v35 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v26];
                readingMultiConfigCharacteristics2 = [v35 readingMultiConfigCharacteristics];
                v37 = "single-config";
                *buf = 138413058;
                v50 = v26;
                v51 = 1024;
                if (readingMultiConfigCharacteristics2)
                {
                  v37 = "multi-config";
                }

                v52 = v33;
                v53 = 1024;
                v54 = numCharacteristicsLeftToRead;
                v55 = 2080;
                v56 = v37;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#bt-accessory,peripheral:didDiscoverCharacteristics [%@]: %d total characteristics discovered, and triggered reads on %d %s characteristics", buf, 0x22u);
              }

              v38 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:v26];
              [v38 changeConnectionState:5];
            }
          }
        }

        else if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
        {
          sub_1004A6E48();
        }

        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
  {
    sub_1004A6F90();
  }

LABEL_12:
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  identifier = [peripheralCopy identifier];
  v12 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  if (!v12)
  {
LABEL_10:
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A71C8();
    }

    goto LABEL_12;
  }

  v13 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  peripheral = [v13 peripheral];
  if (!peripheral)
  {

    goto LABEL_10;
  }

  v15 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  peripheral2 = [v15 peripheral];

  if (peripheral2 != peripheralCopy)
  {
    goto LABEL_10;
  }

  v17 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  connectionState = [v17 connectionState];

  if (connectionState != 5)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A7000();
    }

    goto LABEL_12;
  }

  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A7070();
    }

LABEL_8:
    v19 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
    [(NIServerAccessoryGATTServiceManager *)self _peer:identifier didFailWithError:v19];

    goto LABEL_12;
  }

  v20 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  [v20 setNumCharacteristicsLeftToRead:{objc_msgSend(v20, "numCharacteristicsLeftToRead") - 1}];

  uUID = [characteristicCopy UUID];
  v22 = [CBUUID UUIDWithString:@"1176cf7b-bed2-4690-bd69-5f34001e820c"];
  v23 = [uUID isEqual:v22];

  if (!v23)
  {
    uUID2 = [characteristicCopy UUID];
    v27 = [CBUUID UUIDWithString:@"95e8d9d5-d8ef-4721-9a4e-807375f53328"];
    v28 = [uUID2 isEqual:v27];

    if (v28)
    {
      v29 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      resultConfigCharacteristics = [v29 resultConfigCharacteristics];
      value = [characteristicCopy value];
      [resultConfigCharacteristics addObject:value];

      v32 = qword_1009F9820;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
        resultConfigCharacteristics2 = [v33 resultConfigCharacteristics];
        v35 = [resultConfigCharacteristics2 count];
        v36 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
        *buf = 138412802;
        v78 = identifier;
        v79 = 1024;
        v80 = v35;
        v81 = 1024;
        numCharacteristicsLeftToRead = [v36 numCharacteristicsLeftToRead];
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#bt-accessory,peripheral:didUpdateValueForCharacteristic [%@]: Read %d single-config characteristics, %d left to go", buf, 0x18u);
      }
    }

    goto LABEL_56;
  }

  value2 = [characteristicCopy value];
  v25 = [value2 length];

  v71 = v25;
  if (v25 >= 65282)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A7154();
    }

    goto LABEL_8;
  }

  buf[0] = 0;
  sub_100025100(&__p, v25);
  value3 = [characteristicCopy value];
  [value3 getBytes:__p length:v76 - __p];

  if (v25 <= 0)
  {
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      sub_1004A70E0();
    }

    v49 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0];
    [(NIServerAccessoryGATTServiceManager *)self _peer:identifier didFailWithError:v49];

    if (__p)
    {
      v76 = __p;
      operator delete(__p);
    }

    goto LABEL_12;
  }

  v38 = *__p;
  v39 = qword_1009F9820;
  if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v78 = identifier;
    v79 = 1024;
    v80 = 1;
    v81 = 1024;
    numCharacteristicsLeftToRead = v71;
    v83 = 1024;
    v84 = v38;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#bt-accessory,peripheral:didUpdateValueForCharacteristic [%@]: Multi-config characteristic (idx: %d, len: %d): Read config count (%d)", buf, 0x1Eu);
  }

  v70 = objc_opt_new();
  LODWORD(v41) = 1;
  v42 = v71;
  if (v38)
  {
    v69 = v38;
    v43 = 1 - v38;
    *&v40 = 138413570;
    v68 = v40;
    v44 = 1;
    v45 = 1;
    while (v45 < v42)
    {
      v41 = (v45 + 1);
      v46 = *(__p + v45);
      if (*(__p + v45))
      {
        if (v45 + v46 >= v42)
        {
          v60 = qword_1009F9820;
          if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
          {
            *buf = v68;
            v78 = identifier;
            v79 = 1024;
            v80 = v45 + 1;
            v81 = 1024;
            numCharacteristicsLeftToRead = v71;
            v83 = 1024;
            v84 = v69 - -v43;
            v85 = 1024;
            v86 = v69;
            v87 = 1024;
            v88 = v46;
            _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "#bt-accessory,peripheral:didUpdateValueForCharacteristic [%@]: Multi-config characteristic (idx: %d, len: %d): Config %d of %d: Could not read data (len: %d)", buf, 0x2Au);
          }

          goto LABEL_52;
        }

        v41 = [NSData dataWithBytes:&v41[__p] length:v46];
        [v70 addObject:v41];

        LODWORD(v41) = v45 + 1 + v46;
        v47 = qword_1009F9820;
        if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v68;
          v78 = identifier;
          v79 = 1024;
          v80 = v41;
          v81 = 1024;
          numCharacteristicsLeftToRead = v71;
          v83 = 1024;
          v84 = v44;
          v85 = 1024;
          v86 = v69;
          v87 = 1024;
          v88 = v46;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#bt-accessory,peripheral:didUpdateValueForCharacteristic [%@]: Multi-config characteristic (idx: %d, len: %d): Config %d of %d: Read data (len: %d)", buf, 0x2Au);
        }

        v42 = v71;
      }

      ++v43;
      ++v44;
      v45 = v41;
      if (v43 == 1)
      {
        goto LABEL_36;
      }
    }

    v59 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v78 = identifier;
      v79 = 1024;
      v80 = v45;
      v81 = 1024;
      numCharacteristicsLeftToRead = v71;
      v83 = 1024;
      v84 = v69 - -v43;
      v85 = 1024;
      v86 = v69;
      _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "#bt-accessory,peripheral:didUpdateValueForCharacteristic [%@]: Multi-config characteristic (idx: %d, len: %d): Config %d of %d: Could not read length", buf, 0x24u);
    }

    goto LABEL_52;
  }

LABEL_36:
  if (v41 < v42)
  {
    v48 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v78 = identifier;
      v79 = 1024;
      v80 = v41;
      v81 = 1024;
      numCharacteristicsLeftToRead = v71;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#bt-accessory,peripheral:didUpdateValueForCharacteristic [%@]: Multi-config characteristic (idx: %d, len: %d): Did not consume all bytes", buf, 0x18u);
    }

LABEL_52:
    v52 = [NSError errorWithDomain:@"com.apple.NearbyInteraction" code:-5882 userInfo:0, v68];
    [(NIServerAccessoryGATTServiceManager *)self _peer:identifier didFailWithError:v52];
    v58 = 0;
    goto LABEL_53;
  }

  v50 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
  resultConfigCharacteristics3 = [v50 resultConfigCharacteristics];
  [resultConfigCharacteristics3 unionSet:v70];

  v52 = qword_1009F9820;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v72 = [v70 count];
    v53 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
    resultConfigCharacteristics4 = [v53 resultConfigCharacteristics];
    v55 = [resultConfigCharacteristics4 count];
    v56 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
    numCharacteristicsLeftToRead2 = [v56 numCharacteristicsLeftToRead];
    *buf = 138413058;
    v78 = identifier;
    v79 = 1024;
    v80 = v72;
    v81 = 1024;
    numCharacteristicsLeftToRead = v55;
    v83 = 1024;
    v84 = numCharacteristicsLeftToRead2;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#bt-accessory,peripheral:didUpdateValueForCharacteristic [%@]: Read %d unique configs from this multi-config characteristic. %d unique configs so far. %d characteristics left to read", buf, 0x1Eu);
  }

  v58 = 1;
LABEL_53:

  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v58)
  {
LABEL_56:
    v61 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier, v68];
    v62 = [v61 numCharacteristicsLeftToRead] == 0;

    if (v62)
    {
      v63 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      [v63 changeConnectionState:6];

      v64 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      cachedConfigCharacteristics = [v64 cachedConfigCharacteristics];
      [cachedConfigCharacteristics removeAllObjects];

      v66 = [(NSMutableDictionary *)self->_peerDevices objectForKeyedSubscript:identifier];
      listeners = [v66 listeners];
      v73[0] = _NSConcreteStackBlock;
      v73[1] = 3221225472;
      v73[2] = sub_1001DA028;
      v73[3] = &unk_10099CCB0;
      v73[4] = self;
      v74 = identifier;
      [listeners enumerateObjectsUsingBlock:v73];
    }
  }

LABEL_12:
}

@end