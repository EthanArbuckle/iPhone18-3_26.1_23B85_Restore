@interface CARCarPlayServiceConnector
- (BOOL)unpairWithBluetoothLEIdentifier:(id)a3;
- (CARCarPlayServiceConnector)initWithVehicleStore:(id)a3;
- (CARCarPlayServiceConnectorDelegate)delegate;
- (NSSet)connectedVehicles;
- (id)_pairedBLEIdentifiers;
- (id)_periperalForIdentifier:(id)a3;
- (id)_vehicleForService:(id)a3;
- (void)_addConnectedVehicle:(id)a3;
- (void)_connectWithBluetoothIdentifier:(id)a3 completion:(id)a4;
- (void)_finishedCurrentPairing;
- (void)_handleIdentificationMessage:(id)a3 fromService:(id)a4;
- (void)_handleStartSessionMessage:(id)a3 fromService:(id)a4;
- (void)_mainQueue_handleDidDiscoverDevice:(id)a3;
- (void)_pairWithBluetoothIdentifier:(id)a3 deviceName:(id)a4;
- (void)_removeConnectedVehicle:(id)a3;
- (void)_startServiceForPeripheral:(id)a3;
- (void)_updateDiscoverer;
- (void)carPlayService:(id)a3 didFailToSendMessage:(id)a4;
- (void)carPlayService:(id)a3 didReceiveMessage:(id)a4;
- (void)carPlayService:(id)a3 didSendMessage:(id)a4;
- (void)carPlayServiceDidActivate:(id)a3;
- (void)carPlayServiceDidDeactivate:(id)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didUpdateANCSAuthorizationForPeripheral:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connectWithBluetoothLEIdentifier:(id)a3;
- (void)pairWithBluetoothLEIdentifier:(id)a3 deviceName:(id)a4;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)vehicleStore:(id)a3 didRemoveVehicle:(id)a4;
- (void)vehicleStore:(id)a3 didSaveVehicle:(id)a4;
- (void)vehicleStoreDidBecomeAvailable:(id)a3;
@end

@implementation CARCarPlayServiceConnector

- (NSSet)connectedVehicles
{
  v2 = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  v3 = [v2 allValues];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (CARCarPlayServiceConnector)initWithVehicleStore:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = CARCarPlayServiceConnector;
  v6 = [(CARCarPlayServiceConnector *)&v21 init];
  if (v6)
  {
    v22 = CBCentralManagerOptionShowPowerAlertKey;
    v23 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    objc_storeStrong(&v6->_vehicleStore, a3);
    [v5 addObserver:v6];
    v8 = [[CBCentralManager alloc] initWithDelegate:v6 queue:&_dispatch_main_q options:v7];
    centralManager = v6->_centralManager;
    v6->_centralManager = v8;

    v10 = [(CBCentralManager *)v6->_centralManager sharedPairingAgent];
    v11 = objc_alloc_init(NSMutableDictionary);
    servicesForBluetoothIdentifiers = v6->_servicesForBluetoothIdentifiers;
    v6->_servicesForBluetoothIdentifiers = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    vehiclesForBluetoothIdentifiers = v6->_vehiclesForBluetoothIdentifiers;
    v6->_vehiclesForBluetoothIdentifiers = v13;

    pairingPeripheralIdentifier = v6->_pairingPeripheralIdentifier;
    v6->_pairingPeripheralIdentifier = 0;

    pairingPeripheralName = v6->_pairingPeripheralName;
    v6->_pairingPeripheralName = 0;

    activePeripheral = v6->_activePeripheral;
    v6->_activePeripheral = 0;

    currentConnectionCompletion = v6->_currentConnectionCompletion;
    v6->_currentConnectionCompletion = 0;

    actionPendingPowerOn = v6->_actionPendingPowerOn;
    v6->_actionPendingPowerOn = 0;

    if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
    {
      [(CARCarPlayServiceConnector *)v6 _updateDiscoverer];
    }
  }

  return v6;
}

- (void)_updateDiscoverer
{
  p_identifiersToDiscover = &self->_identifiersToDiscover;
  identifiersToDiscover = self->_identifiersToDiscover;
  if (identifiersToDiscover && ([(CARCarPlayServiceConnector *)self _pairedBLEIdentifiers], v5 = objc_claimAutoreleasedReturnValue(), v6 = [(NSSet *)identifiersToDiscover isEqualToSet:v5], v5, v6))
  {
    v7 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10008A9D0(v7);
    }
  }

  else
  {
    v8 = [(CARCarPlayServiceConnector *)self _pairedBLEIdentifiers];
    v9 = self->_identifiersToDiscover;
    self->_identifiersToDiscover = v8;

    v10 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10008AA14(p_identifiersToDiscover, v10);
    }

    p_discoverer = &self->_discoverer;
    discoverer = self->_discoverer;
    if (discoverer)
    {
      [(CBDiscovery *)discoverer invalidate];
      v13 = *p_discoverer;
      *p_discoverer = 0;
    }

    v7 = objc_alloc_init(CBDiscovery);
    [v7 setDispatchQueue:&_dispatch_main_q];
    [v7 setDiscoveryFlags:0x200000];
    v14 = [(CARCarPlayServiceConnector *)self identifiersToDiscover];
    v15 = [v14 allObjects];
    [v7 setDeviceFilter:v15];

    objc_initWeak(&location, self);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10007A280;
    v32[3] = &unk_1000E0280;
    objc_copyWeak(&v33, &location);
    [v7 setDeviceFoundHandler:v32];
    [v7 activateWithCompletion:&stru_1000E02A0];
    objc_storeStrong(&self->_discoverer, v7);
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = xpc_array_create(0, 0);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = [(CARCarPlayServiceConnector *)self identifiersToDiscover];
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v19)
    {
      v20 = *v29;
      do
      {
        v21 = 0;
        do
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [*(*(&v28 + 1) + 8 * v21) UTF8String];
          if (v22)
          {
            v23 = xpc_string_create(v22);
            xpc_array_append_value(v17, v23);
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v19);
    }

    xpc_dictionary_set_value(v16, "deviceFilter", v17);
    xpc_set_event();
    v24 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "setup BLE XPC event for devices: %@", buf, 0xCu);
    }

    v25 = xpc_dictionary_create(0, 0, 0);
    v26 = xpc_string_create([CBUUIDLECarPlayServiceString UTF8String]);
    xpc_dictionary_set_value(v25, "serviceUUIDs", v26);
    xpc_set_event();
    v27 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "setup BLE XPC event for service connections", buf, 2u);
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }
}

- (void)pairWithBluetoothLEIdentifier:(id)a3 deviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v17 = 1752392040;
    v18 = 2113;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "attempt to BLE pair to: %{private, mask.hash}@", buf, 0x16u);
  }

  v9 = [(CARCarPlayServiceConnector *)self centralManager];
  v10 = [v9 state] == 5;

  if (v10)
  {
    [(CARCarPlayServiceConnector *)self _pairWithBluetoothIdentifier:v6 deviceName:v7];
  }

  else
  {
    v11 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v17 = 1752392040;
      v18 = 2113;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "pending pairing to %{private, mask.hash}@ until BLE is ready", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007A594;
    v12[3] = &unk_1000DF4C0;
    objc_copyWeak(&v15, buf);
    v13 = v6;
    v14 = v7;
    [(CARCarPlayServiceConnector *)self setActionPendingPowerOn:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)connectWithBluetoothLEIdentifier:(id)a3
{
  v4 = a3;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v13 = 1752392040;
    v14 = 2113;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attempt to BLE connect to: %{private, mask.hash}@", buf, 0x16u);
  }

  v6 = [(CARCarPlayServiceConnector *)self centralManager];
  v7 = [v6 state] == 5;

  if (v7)
  {
    [(CARCarPlayServiceConnector *)self _connectWithBluetoothIdentifier:v4 completion:0];
  }

  else
  {
    v8 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v13 = 1752392040;
      v14 = 2113;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pending connection to %{private, mask.hash}@ until BLE is ready", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007A800;
    v9[3] = &unk_1000DD8E8;
    objc_copyWeak(&v11, buf);
    v10 = v4;
    [(CARCarPlayServiceConnector *)self setActionPendingPowerOn:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (BOOL)unpairWithBluetoothLEIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
    v6 = [v5 objectForKey:v4];

    if (v6)
    {
      v7 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removing connected service: %@", &v18, 0xCu);
      }

      v8 = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
      [v8 removeObjectForKey:v4];
    }

    v9 = [(CARCarPlayServiceConnector *)self _periperalForIdentifier:v4];
    v10 = v9 != 0;
    if (v9)
    {
      v11 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
      v12 = [v4 isEqual:v11];

      if (v12)
      {
        [(CARCarPlayServiceConnector *)self setPairingPeripheralIdentifier:0];
        [(CARCarPlayServiceConnector *)self setPairingPeripheralName:0];
      }

      v13 = [(CARCarPlayServiceConnector *)self centralManager];
      v14 = [v13 sharedPairingAgent];
      [v14 unpairPeer:v9];

      v15 = [(CARCarPlayServiceConnector *)self activePeripheral];
      LODWORD(v14) = [v9 isEqual:v15];

      if (v14)
      {
        [(CARCarPlayServiceConnector *)self setActivePeripheral:0];
      }
    }

    else
    {
      v16 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10008AB44();
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_pairedBLEIdentifiers
{
  v3 = objc_alloc_init(NSMutableSet);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CARCarPlayServiceConnector *)self vehicleStore];
  v5 = [v4 allStoredVehicles];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 supportsBluetoothLE] && objc_msgSend(v10, "pairingStatus") == 2)
        {
          v11 = [v10 bluetoothAddress];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)_periperalForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CARCarPlayServiceConnector *)self centralManager];
  v11 = v4;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [v5 retrievePeripheralsWithIdentifiers:v6];

  v8 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10008ABB4();
  }

  v9 = [v7 firstObject];

  return v9;
}

- (id)_vehicleForService:(id)a3
{
  v4 = a3;
  v5 = [v4 peripheral];
  v6 = [v5 identifier];

  v7 = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v9 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10008AC2C();
    }
  }

  return v8;
}

- (void)_pairWithBluetoothIdentifier:(id)a3 deviceName:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CARCarPlayServiceConnector *)self setPairingPeripheralIdentifier:v6];
  [(CARCarPlayServiceConnector *)self setPairingPeripheralName:v7];

  v8 = [(CARCarPlayServiceConnector *)self centralManager];
  v9 = [v8 sharedPairingAgent];
  [v9 setDelegate:self];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007AEA8;
  v11[3] = &unk_1000E02C8;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [(CARCarPlayServiceConnector *)self _connectWithBluetoothIdentifier:v10 completion:v11];
}

- (void)_finishedCurrentPairing
{
  v3 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "finished current pairing attempt", v6, 2u);
  }

  v4 = [(CARCarPlayServiceConnector *)self centralManager];
  v5 = [v4 sharedPairingAgent];
  [v5 setDelegate:0];

  [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:0];
  [(CARCarPlayServiceConnector *)self setPairingPeripheralIdentifier:0];
  [(CARCarPlayServiceConnector *)self setPairingPeripheralName:0];
}

- (void)_connectWithBluetoothIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
  v9 = [v8 objectForKey:v6];

  if (v9)
  {
    v10 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008AD2C();
    }

    v11 = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
    [v11 removeObjectForKey:v6];
  }

  v12 = [(CARCarPlayServiceConnector *)self _periperalForIdentifier:v6];
  v13 = sub_100002A68(2uLL);
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v12 name];
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "_connectWithBluetoothIdentifier peripheral %@ name: %@", &v16, 0x16u);
    }

    [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:v7];
    [(CARCarPlayServiceConnector *)self setActivePeripheral:v12];
    v14 = [(CARCarPlayServiceConnector *)self centralManager];
    [v14 connectPeripheral:v12 options:0];
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10008AD94();
  }
}

- (void)_startServiceForPeripheral:(id)a3
{
  v4 = a3;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "starting CarPlay service for %@", buf, 0xCu);
  }

  v6 = [v4 identifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B404;
  v7[3] = &unk_1000E02F0;
  v7[4] = self;
  [(CARCarPlayServiceConnector *)self _connectWithBluetoothIdentifier:v6 completion:v7];
}

- (void)_addConnectedVehicle:(id)a3
{
  v4 = a3;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connected vehicle: %@", &v11, 0xCu);
  }

  v6 = [NSUUID alloc];
  v7 = [v4 bluetoothAddress];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  [v9 setObject:v4 forKey:v8];

  v10 = [(CARCarPlayServiceConnector *)self delegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 serviceConnector:self didConnectVehicle:v4];
  }
}

- (void)_removeConnectedVehicle:(id)a3
{
  v4 = a3;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "disconnected vehicle: %@", &v11, 0xCu);
  }

  v6 = [NSUUID alloc];
  v7 = [v4 bluetoothAddress];
  v8 = [v6 initWithUUIDString:v7];

  v9 = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  [v9 removeObjectForKey:v8];

  v10 = [(CARCarPlayServiceConnector *)self delegate];
  if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v10 serviceConnector:self didDisconnectVehicle:v4];
  }
}

- (void)_handleIdentificationMessage:(id)a3 fromService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002A68(2uLL);
  if (os_signpost_enabled(v8))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedIdentification", "", &v13, 2u);
  }

  v9 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received identification: %@", &v13, 0xCu);
  }

  v10 = [v7 peripheral];
  v11 = [v10 identifier];

  v12 = [[CARCarPlayServiceVehicle alloc] initFromBluetoothIdentifier:v11 service:v7 identificationMessage:v6];
  [(CARCarPlayServiceConnector *)self _addConnectedVehicle:v12];
}

- (void)_handleStartSessionMessage:(id)a3 fromService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002A68(2uLL);
  if (os_signpost_enabled(v8))
  {
    LOWORD(v11) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReceivedCarPlayStartSession", "", &v11, 2u);
  }

  v9 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received start session: %@", &v11, 0xCu);
  }

  v10 = [(CARCarPlayServiceConnector *)self _vehicleForService:v7];

  if (v10)
  {
    [v10 _handleStartSessionMessage:v6];
  }
}

- (void)_mainQueue_handleDidDiscoverDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [v4 identifier];
  v6 = [(CARCarPlayServiceConnector *)self _pairedBLEIdentifiers];
  v7 = [v6 containsObject:v5];

  if (v7)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:v5];
    v9 = [(CARCarPlayServiceConnector *)self centralManager];
    v23 = v8;
    v10 = [NSArray arrayWithObjects:&v23 count:1];
    v11 = [v9 retrievePeripheralsWithIdentifiers:v10];
    v12 = [v11 firstObject];

    if (!v12)
    {
      v16 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10008AEE4();
      }

      goto LABEL_16;
    }

    if ([v12 isConnectedToSystem])
    {
      v13 = [v12 identifier];
      v14 = [(CARCarPlayServiceConnector *)self activePeripheral];
      v15 = [v14 identifier];
      if ([v13 isEqual:v15])
      {
      }

      else
      {
        v18 = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
        v19 = [v18 objectForKey:v8];

        if (!v19)
        {
          v20 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 138412290;
            v22 = v4;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "attempt to locally connect to discovered & connected device: %@", &v21, 0xCu);
          }

          [(CARCarPlayServiceConnector *)self connectWithBluetoothLEIdentifier:v8];
          goto LABEL_17;
        }
      }

      v16 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v12;
        v17 = "discovered peripheral is already connecting: %@";
        goto LABEL_15;
      }
    }

    else
    {
      v16 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v12;
        v17 = "discovered peripheral is not connected: %@";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, v17, &v21, 0xCu);
      }
    }

LABEL_16:

LABEL_17:
    goto LABEL_18;
  }

  v8 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10008AE74();
  }

LABEL_18:
}

- (void)carPlayServiceDidActivate:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BE08;
  block[3] = &unk_1000DD480;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayService:(id)a3 didSendMessage:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BFA0;
  block[3] = &unk_1000DD480;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayService:(id)a3 didFailToSendMessage:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C0E0;
  block[3] = &unk_1000DD480;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayService:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C1F8;
  block[3] = &unk_1000DD6F0;
  v10 = a4;
  v11 = self;
  v12 = v6;
  v7 = v6;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayServiceDidDeactivate:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007C388;
  v5[3] = &unk_1000DD580;
  v6 = a3;
  v7 = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = [v4 state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector centralManagerDidUpdateState, state is now: %ld", &v10, 0xCu);
  }

  v6 = [(CARCarPlayServiceConnector *)self centralManager];
  v7 = [v6 state];

  if (v7 == 5)
  {
    v8 = [(CARCarPlayServiceConnector *)self actionPendingPowerOn];
    if (v8)
    {
      v9 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "now powered on, starting pending action", &v10, 2u);
      }

      v8[2](v8);
    }
  }
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didDiscoverPeripheral %@ advertisementData: %@, RSSI: %@", &v12, 0x20u);
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = a4;
  v6 = sub_100002A68(2uLL);
  if (os_signpost_enabled(v6))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Connected", "", &v17, 2u);
  }

  v7 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didConnectPeripheral %@", &v17, 0xCu);
  }

  v8 = [(CARCarPlayServiceConnector *)self _pairedBLEIdentifiers];
  v9 = [v5 identifier];
  v10 = [v9 UUIDString];
  v11 = [v8 containsObject:v10];

  if (v11)
  {
    v12 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector connected periperal is paired, starting service", &v17, 2u);
    }

    [(CARCarPlayServiceConnector *)self _startServiceForPeripheral:v5];
  }

  v13 = [(CARCarPlayServiceConnector *)self activePeripheral];
  v14 = [v5 isEqual:v13];

  if (v14)
  {
    v15 = [(CARCarPlayServiceConnector *)self currentConnectionCompletion];
    v16 = v15;
    if (v15)
    {
      (*(v15 + 16))(v15, v5, 1, 0);
      [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:0];
    }
  }
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didFailToConnectPeripheral %@: %@", &v14, 0x16u);
  }

  v10 = [(CARCarPlayServiceConnector *)self activePeripheral];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    v12 = [(CARCarPlayServiceConnector *)self currentConnectionCompletion];
    v13 = v12;
    if (v12)
    {
      (*(v12 + 16))(v12, v7, 0, v8);
      [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:0];
    }

    [(CARCarPlayServiceConnector *)self setActivePeripheral:0];
  }
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002A68(2uLL);
  if (os_signpost_enabled(v9))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Disconnected", "", &v13, 2u);
  }

  v10 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didDisconnectPeripheral %@: %@", &v13, 0x16u);
  }

  v11 = [(CARCarPlayServiceConnector *)self activePeripheral];
  v12 = [v7 isEqual:v11];

  if (v12)
  {
    [(CARCarPlayServiceConnector *)self setActivePeripheral:0];
  }
}

- (void)centralManager:(id)a3 didUpdateANCSAuthorizationForPeripheral:(id)a4
{
  v4 = a4;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didUpdateANCSAuthorizationForPeripheral %@", &v6, 0xCu);
  }
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v5 = a4;
  v6 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    v8 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
    v17 = 141558787;
    v18 = 1752392040;
    v19 = 2113;
    v20 = v7;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2113;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "peerDidCompletePairing %{private, mask.hash}@, current pairing identifier: %{private, mask.hash}@", &v17, 0x2Au);
  }

  v9 = [v5 identifier];
  v10 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 141558275;
      v18 = 1752392040;
      v19 = 2113;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "completed BLE pairing for %{private, mask.hash}@", &v17, 0x16u);
    }

    v13 = [(CARCarPlayServiceConnector *)self pairingPeripheralName];
    v14 = [(CARCarPlayServiceConnector *)self delegate];
    if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v14 serviceConnector:self completedPairingForBluetoothLEIdentifier:v9 name:v13];
    }

    [(CARCarPlayServiceConnector *)self _finishedCurrentPairing];
    v15 = [(CARCarPlayServiceConnector *)self _periperalForIdentifier:v9];
    if (v15)
    {
      [(CARCarPlayServiceConnector *)self _startServiceForPeripheral:v15];
    }

    else
    {
      v16 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10008B044();
      }
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10008B0B4(v7, self, v9);
  }

  v10 = [v7 identifier];
  v11 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v12 = [v10 isEqual:v11];

  if (v12)
  {
    v13 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10008B194(v7, v8, v13);
    }

    v14 = [(CARCarPlayServiceConnector *)self pairingPeripheralName];
    v15 = [(CARCarPlayServiceConnector *)self delegate];
    if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v16 = [v7 identifier];
      [v15 serviceConnector:self failedPairingForBluetoothLEIdentifier:v16 name:v14 error:v8];
    }

    [(CARCarPlayServiceConnector *)self _finishedCurrentPairing];
  }
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v5 = a4;
  v6 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    v8 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
    v14 = 141558787;
    v15 = 1752392040;
    v16 = 2113;
    v17 = v7;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2113;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "peerDidUnpair %{private, mask.hash}@, current pairing identifier: %{private, mask.hash}@", &v14, 0x2Au);
  }

  v9 = [v5 identifier];
  v10 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 identifier];
      v14 = 141558275;
      v15 = 1752392040;
      v16 = 2113;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "unpaired BLE: %{private, mask.hash}@", &v14, 0x16u);
    }

    [(CARCarPlayServiceConnector *)self _finishedCurrentPairing];
  }
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = [v9 identifier];
  v12 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
    *buf = 141558787;
    v26 = 1752392040;
    v27 = 2113;
    v28 = v11;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2113;
    v32 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "peerDidRequestPairing %{private, mask.hash}@, current pairing identifier: %{private, mask.hash}@", buf, 0x2Au);
  }

  v14 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v15 = [v11 isEqual:v14];

  if (v15)
  {
    v16 = [(CARCarPlayServiceConnector *)self pairingPeripheralName];
    v17 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558531;
      v26 = 1752392040;
      v27 = 2113;
      v28 = v11;
      v29 = 2113;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "requested BLE pairing confirmation for %{private, mask.hash}@ (%{private}@)", buf, 0x20u);
    }

    if (a5 == 4)
    {
      v18 = [(CARCarPlayServiceConnector *)self delegate];
      if (v18 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10007D4FC;
        v19[3] = &unk_1000E0318;
        v20 = v11;
        v21 = self;
        v22 = v9;
        v24 = 4;
        v23 = v10;
        [v18 serviceConnector:self requestsPairingConfirmationForBluetoothLEIdentifier:v20 name:v16 numericCode:v23 responseHandler:v19];
      }
    }

    else
    {
      v18 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10008B240();
      }
    }
  }
}

- (void)vehicleStoreDidBecomeAvailable:(id)a3
{
  v4 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "updating BLE XPC event now that vehicle store is available", v5, 2u);
  }

  [(CARCarPlayServiceConnector *)self _updateDiscoverer];
}

- (void)vehicleStore:(id)a3 didSaveVehicle:(id)a4
{
  if ([a4 supportsBluetoothLE])
  {
    v5 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updating BLE XPC event for saved BLE vehicle", v6, 2u);
    }

    [(CARCarPlayServiceConnector *)self _updateDiscoverer];
  }
}

- (void)vehicleStore:(id)a3 didRemoveVehicle:(id)a4
{
  if ([a4 supportsBluetoothLE])
  {
    v5 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "updating BLE XPC event for removed BLE vehicle", v6, 2u);
    }

    [(CARCarPlayServiceConnector *)self _updateDiscoverer];
  }
}

- (CARCarPlayServiceConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end