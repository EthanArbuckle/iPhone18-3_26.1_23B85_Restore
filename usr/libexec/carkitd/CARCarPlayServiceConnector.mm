@interface CARCarPlayServiceConnector
- (BOOL)unpairWithBluetoothLEIdentifier:(id)identifier;
- (CARCarPlayServiceConnector)initWithVehicleStore:(id)store;
- (CARCarPlayServiceConnectorDelegate)delegate;
- (NSSet)connectedVehicles;
- (id)_pairedBLEIdentifiers;
- (id)_periperalForIdentifier:(id)identifier;
- (id)_vehicleForService:(id)service;
- (void)_addConnectedVehicle:(id)vehicle;
- (void)_connectWithBluetoothIdentifier:(id)identifier completion:(id)completion;
- (void)_finishedCurrentPairing;
- (void)_handleIdentificationMessage:(id)message fromService:(id)service;
- (void)_handleStartSessionMessage:(id)message fromService:(id)service;
- (void)_mainQueue_handleDidDiscoverDevice:(id)device;
- (void)_pairWithBluetoothIdentifier:(id)identifier deviceName:(id)name;
- (void)_removeConnectedVehicle:(id)vehicle;
- (void)_startServiceForPeripheral:(id)peripheral;
- (void)_updateDiscoverer;
- (void)carPlayService:(id)service didFailToSendMessage:(id)message;
- (void)carPlayService:(id)service didReceiveMessage:(id)message;
- (void)carPlayService:(id)service didSendMessage:(id)message;
- (void)carPlayServiceDidActivate:(id)activate;
- (void)carPlayServiceDidDeactivate:(id)deactivate;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdateANCSAuthorizationForPeripheral:(id)peripheral;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectWithBluetoothLEIdentifier:(id)identifier;
- (void)pairWithBluetoothLEIdentifier:(id)identifier deviceName:(id)name;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)vehicleStore:(id)store didRemoveVehicle:(id)vehicle;
- (void)vehicleStore:(id)store didSaveVehicle:(id)vehicle;
- (void)vehicleStoreDidBecomeAvailable:(id)available;
@end

@implementation CARCarPlayServiceConnector

- (NSSet)connectedVehicles
{
  vehiclesForBluetoothIdentifiers = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  allValues = [vehiclesForBluetoothIdentifiers allValues];
  v4 = [NSSet setWithArray:allValues];

  return v4;
}

- (CARCarPlayServiceConnector)initWithVehicleStore:(id)store
{
  storeCopy = store;
  v21.receiver = self;
  v21.super_class = CARCarPlayServiceConnector;
  v6 = [(CARCarPlayServiceConnector *)&v21 init];
  if (v6)
  {
    v22 = CBCentralManagerOptionShowPowerAlertKey;
    v23 = &__kCFBooleanTrue;
    v7 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    objc_storeStrong(&v6->_vehicleStore, store);
    [storeCopy addObserver:v6];
    v8 = [[CBCentralManager alloc] initWithDelegate:v6 queue:&_dispatch_main_q options:v7];
    centralManager = v6->_centralManager;
    v6->_centralManager = v8;

    sharedPairingAgent = [(CBCentralManager *)v6->_centralManager sharedPairingAgent];
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
    _pairedBLEIdentifiers = [(CARCarPlayServiceConnector *)self _pairedBLEIdentifiers];
    v9 = self->_identifiersToDiscover;
    self->_identifiersToDiscover = _pairedBLEIdentifiers;

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
    identifiersToDiscover = [(CARCarPlayServiceConnector *)self identifiersToDiscover];
    allObjects = [identifiersToDiscover allObjects];
    [v7 setDeviceFilter:allObjects];

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
    identifiersToDiscover2 = [(CARCarPlayServiceConnector *)self identifiersToDiscover];
    v19 = [identifiersToDiscover2 countByEnumeratingWithState:&v28 objects:v37 count:16];
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
            objc_enumerationMutation(identifiersToDiscover2);
          }

          uTF8String = [*(*(&v28 + 1) + 8 * v21) UTF8String];
          if (uTF8String)
          {
            v23 = xpc_string_create(uTF8String);
            xpc_array_append_value(v17, v23);
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [identifiersToDiscover2 countByEnumeratingWithState:&v28 objects:v37 count:16];
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

- (void)pairWithBluetoothLEIdentifier:(id)identifier deviceName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v8 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v17 = 1752392040;
    v18 = 2113;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "attempt to BLE pair to: %{private, mask.hash}@", buf, 0x16u);
  }

  centralManager = [(CARCarPlayServiceConnector *)self centralManager];
  v10 = [centralManager state] == 5;

  if (v10)
  {
    [(CARCarPlayServiceConnector *)self _pairWithBluetoothIdentifier:identifierCopy deviceName:nameCopy];
  }

  else
  {
    v11 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v17 = 1752392040;
      v18 = 2113;
      v19 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "pending pairing to %{private, mask.hash}@ until BLE is ready", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10007A594;
    v12[3] = &unk_1000DF4C0;
    objc_copyWeak(&v15, buf);
    v13 = identifierCopy;
    v14 = nameCopy;
    [(CARCarPlayServiceConnector *)self setActionPendingPowerOn:v12];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }
}

- (void)connectWithBluetoothLEIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v13 = 1752392040;
    v14 = 2113;
    v15 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "attempt to BLE connect to: %{private, mask.hash}@", buf, 0x16u);
  }

  centralManager = [(CARCarPlayServiceConnector *)self centralManager];
  v7 = [centralManager state] == 5;

  if (v7)
  {
    [(CARCarPlayServiceConnector *)self _connectWithBluetoothIdentifier:identifierCopy completion:0];
  }

  else
  {
    v8 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558275;
      v13 = 1752392040;
      v14 = 2113;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "pending connection to %{private, mask.hash}@ until BLE is ready", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10007A800;
    v9[3] = &unk_1000DD8E8;
    objc_copyWeak(&v11, buf);
    v10 = identifierCopy;
    [(CARCarPlayServiceConnector *)self setActionPendingPowerOn:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }
}

- (BOOL)unpairWithBluetoothLEIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    servicesForBluetoothIdentifiers = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
    v6 = [servicesForBluetoothIdentifiers objectForKey:identifierCopy];

    if (v6)
    {
      v7 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "removing connected service: %@", &v18, 0xCu);
      }

      servicesForBluetoothIdentifiers2 = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
      [servicesForBluetoothIdentifiers2 removeObjectForKey:identifierCopy];
    }

    v9 = [(CARCarPlayServiceConnector *)self _periperalForIdentifier:identifierCopy];
    v10 = v9 != 0;
    if (v9)
    {
      pairingPeripheralIdentifier = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
      v12 = [identifierCopy isEqual:pairingPeripheralIdentifier];

      if (v12)
      {
        [(CARCarPlayServiceConnector *)self setPairingPeripheralIdentifier:0];
        [(CARCarPlayServiceConnector *)self setPairingPeripheralName:0];
      }

      centralManager = [(CARCarPlayServiceConnector *)self centralManager];
      sharedPairingAgent = [centralManager sharedPairingAgent];
      [sharedPairingAgent unpairPeer:v9];

      activePeripheral = [(CARCarPlayServiceConnector *)self activePeripheral];
      LODWORD(sharedPairingAgent) = [v9 isEqual:activePeripheral];

      if (sharedPairingAgent)
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
  vehicleStore = [(CARCarPlayServiceConnector *)self vehicleStore];
  allStoredVehicles = [vehicleStore allStoredVehicles];

  v6 = [allStoredVehicles countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allStoredVehicles);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 supportsBluetoothLE] && objc_msgSend(v10, "pairingStatus") == 2)
        {
          bluetoothAddress = [v10 bluetoothAddress];
          if (bluetoothAddress)
          {
            [v3 addObject:bluetoothAddress];
          }
        }
      }

      v7 = [allStoredVehicles countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)_periperalForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  centralManager = [(CARCarPlayServiceConnector *)self centralManager];
  v11 = identifierCopy;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  v7 = [centralManager retrievePeripheralsWithIdentifiers:v6];

  v8 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10008ABB4();
  }

  firstObject = [v7 firstObject];

  return firstObject;
}

- (id)_vehicleForService:(id)service
{
  serviceCopy = service;
  peripheral = [serviceCopy peripheral];
  identifier = [peripheral identifier];

  vehiclesForBluetoothIdentifiers = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  v8 = [vehiclesForBluetoothIdentifiers objectForKey:identifier];

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

- (void)_pairWithBluetoothIdentifier:(id)identifier deviceName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  [(CARCarPlayServiceConnector *)self setPairingPeripheralIdentifier:identifierCopy];
  [(CARCarPlayServiceConnector *)self setPairingPeripheralName:nameCopy];

  centralManager = [(CARCarPlayServiceConnector *)self centralManager];
  sharedPairingAgent = [centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:self];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007AEA8;
  v11[3] = &unk_1000E02C8;
  v12 = identifierCopy;
  selfCopy = self;
  v10 = identifierCopy;
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

  centralManager = [(CARCarPlayServiceConnector *)self centralManager];
  sharedPairingAgent = [centralManager sharedPairingAgent];
  [sharedPairingAgent setDelegate:0];

  [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:0];
  [(CARCarPlayServiceConnector *)self setPairingPeripheralIdentifier:0];
  [(CARCarPlayServiceConnector *)self setPairingPeripheralName:0];
}

- (void)_connectWithBluetoothIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  servicesForBluetoothIdentifiers = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
  v9 = [servicesForBluetoothIdentifiers objectForKey:identifierCopy];

  if (v9)
  {
    v10 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008AD2C();
    }

    servicesForBluetoothIdentifiers2 = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
    [servicesForBluetoothIdentifiers2 removeObjectForKey:identifierCopy];
  }

  v12 = [(CARCarPlayServiceConnector *)self _periperalForIdentifier:identifierCopy];
  v13 = sub_100002A68(2uLL);
  centralManager = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      name = [v12 name];
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = name;
      _os_log_impl(&_mh_execute_header, centralManager, OS_LOG_TYPE_DEFAULT, "_connectWithBluetoothIdentifier peripheral %@ name: %@", &v16, 0x16u);
    }

    [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:completionCopy];
    [(CARCarPlayServiceConnector *)self setActivePeripheral:v12];
    centralManager = [(CARCarPlayServiceConnector *)self centralManager];
    [centralManager connectPeripheral:v12 options:0];
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10008AD94();
  }
}

- (void)_startServiceForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "starting CarPlay service for %@", buf, 0xCu);
  }

  identifier = [peripheralCopy identifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B404;
  v7[3] = &unk_1000E02F0;
  v7[4] = self;
  [(CARCarPlayServiceConnector *)self _connectWithBluetoothIdentifier:identifier completion:v7];
}

- (void)_addConnectedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connected vehicle: %@", &v11, 0xCu);
  }

  v6 = [NSUUID alloc];
  bluetoothAddress = [vehicleCopy bluetoothAddress];
  v8 = [v6 initWithUUIDString:bluetoothAddress];

  vehiclesForBluetoothIdentifiers = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  [vehiclesForBluetoothIdentifiers setObject:vehicleCopy forKey:v8];

  delegate = [(CARCarPlayServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didConnectVehicle:vehicleCopy];
  }
}

- (void)_removeConnectedVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "disconnected vehicle: %@", &v11, 0xCu);
  }

  v6 = [NSUUID alloc];
  bluetoothAddress = [vehicleCopy bluetoothAddress];
  v8 = [v6 initWithUUIDString:bluetoothAddress];

  vehiclesForBluetoothIdentifiers = [(CARCarPlayServiceConnector *)self vehiclesForBluetoothIdentifiers];
  [vehiclesForBluetoothIdentifiers removeObjectForKey:v8];

  delegate = [(CARCarPlayServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didDisconnectVehicle:vehicleCopy];
  }
}

- (void)_handleIdentificationMessage:(id)message fromService:(id)service
{
  messageCopy = message;
  serviceCopy = service;
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
    v14 = messageCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received identification: %@", &v13, 0xCu);
  }

  peripheral = [serviceCopy peripheral];
  identifier = [peripheral identifier];

  v12 = [[CARCarPlayServiceVehicle alloc] initFromBluetoothIdentifier:identifier service:serviceCopy identificationMessage:messageCopy];
  [(CARCarPlayServiceConnector *)self _addConnectedVehicle:v12];
}

- (void)_handleStartSessionMessage:(id)message fromService:(id)service
{
  messageCopy = message;
  serviceCopy = service;
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
    v12 = messageCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "received start session: %@", &v11, 0xCu);
  }

  v10 = [(CARCarPlayServiceConnector *)self _vehicleForService:serviceCopy];

  if (v10)
  {
    [v10 _handleStartSessionMessage:messageCopy];
  }
}

- (void)_mainQueue_handleDidDiscoverDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  identifier = [deviceCopy identifier];
  _pairedBLEIdentifiers = [(CARCarPlayServiceConnector *)self _pairedBLEIdentifiers];
  v7 = [_pairedBLEIdentifiers containsObject:identifier];

  if (v7)
  {
    v8 = [[NSUUID alloc] initWithUUIDString:identifier];
    centralManager = [(CARCarPlayServiceConnector *)self centralManager];
    v23 = v8;
    v10 = [NSArray arrayWithObjects:&v23 count:1];
    v11 = [centralManager retrievePeripheralsWithIdentifiers:v10];
    firstObject = [v11 firstObject];

    if (!firstObject)
    {
      v16 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10008AEE4();
      }

      goto LABEL_16;
    }

    if ([firstObject isConnectedToSystem])
    {
      identifier2 = [firstObject identifier];
      activePeripheral = [(CARCarPlayServiceConnector *)self activePeripheral];
      identifier3 = [activePeripheral identifier];
      if ([identifier2 isEqual:identifier3])
      {
      }

      else
      {
        servicesForBluetoothIdentifiers = [(CARCarPlayServiceConnector *)self servicesForBluetoothIdentifiers];
        v19 = [servicesForBluetoothIdentifiers objectForKey:v8];

        if (!v19)
        {
          v20 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 138412290;
            v22 = deviceCopy;
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
        v22 = firstObject;
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
        v22 = firstObject;
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

- (void)carPlayServiceDidActivate:(id)activate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BE08;
  block[3] = &unk_1000DD480;
  activateCopy = activate;
  v3 = activateCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayService:(id)service didSendMessage:(id)message
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007BFA0;
  block[3] = &unk_1000DD480;
  messageCopy = message;
  v4 = messageCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayService:(id)service didFailToSendMessage:(id)message
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C0E0;
  block[3] = &unk_1000DD480;
  messageCopy = message;
  v4 = messageCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayService:(id)service didReceiveMessage:(id)message
{
  serviceCopy = service;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007C1F8;
  block[3] = &unk_1000DD6F0;
  messageCopy = message;
  selfCopy = self;
  v12 = serviceCopy;
  v7 = serviceCopy;
  v8 = messageCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)carPlayServiceDidDeactivate:(id)deactivate
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007C388;
  v5[3] = &unk_1000DD580;
  deactivateCopy = deactivate;
  selfCopy = self;
  v4 = deactivateCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    state = [stateCopy state];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector centralManagerDidUpdateState, state is now: %ld", &v10, 0xCu);
  }

  centralManager = [(CARCarPlayServiceConnector *)self centralManager];
  state2 = [centralManager state];

  if (state2 == 5)
  {
    actionPendingPowerOn = [(CARCarPlayServiceConnector *)self actionPendingPowerOn];
    if (actionPendingPowerOn)
    {
      v9 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "now powered on, starting pending action", &v10, 2u);
      }

      actionPendingPowerOn[2](actionPendingPowerOn);
    }
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  v11 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = peripheralCopy;
    v14 = 2112;
    v15 = dataCopy;
    v16 = 2112;
    v17 = iCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didDiscoverPeripheral %@ advertisementData: %@, RSSI: %@", &v12, 0x20u);
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
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
    v18 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didConnectPeripheral %@", &v17, 0xCu);
  }

  _pairedBLEIdentifiers = [(CARCarPlayServiceConnector *)self _pairedBLEIdentifiers];
  identifier = [peripheralCopy identifier];
  uUIDString = [identifier UUIDString];
  v11 = [_pairedBLEIdentifiers containsObject:uUIDString];

  if (v11)
  {
    v12 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector connected periperal is paired, starting service", &v17, 2u);
    }

    [(CARCarPlayServiceConnector *)self _startServiceForPeripheral:peripheralCopy];
  }

  activePeripheral = [(CARCarPlayServiceConnector *)self activePeripheral];
  v14 = [peripheralCopy isEqual:activePeripheral];

  if (v14)
  {
    currentConnectionCompletion = [(CARCarPlayServiceConnector *)self currentConnectionCompletion];
    v16 = currentConnectionCompletion;
    if (currentConnectionCompletion)
    {
      (*(currentConnectionCompletion + 16))(currentConnectionCompletion, peripheralCopy, 1, 0);
      [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:0];
    }
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = peripheralCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didFailToConnectPeripheral %@: %@", &v14, 0x16u);
  }

  activePeripheral = [(CARCarPlayServiceConnector *)self activePeripheral];
  v11 = [peripheralCopy isEqual:activePeripheral];

  if (v11)
  {
    currentConnectionCompletion = [(CARCarPlayServiceConnector *)self currentConnectionCompletion];
    v13 = currentConnectionCompletion;
    if (currentConnectionCompletion)
    {
      (*(currentConnectionCompletion + 16))(currentConnectionCompletion, peripheralCopy, 0, errorCopy);
      [(CARCarPlayServiceConnector *)self setCurrentConnectionCompletion:0];
    }

    [(CARCarPlayServiceConnector *)self setActivePeripheral:0];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
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
    v14 = peripheralCopy;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didDisconnectPeripheral %@: %@", &v13, 0x16u);
  }

  activePeripheral = [(CARCarPlayServiceConnector *)self activePeripheral];
  v12 = [peripheralCopy isEqual:activePeripheral];

  if (v12)
  {
    [(CARCarPlayServiceConnector *)self setActivePeripheral:0];
  }
}

- (void)centralManager:(id)manager didUpdateANCSAuthorizationForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v5 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CARCarPlayServiceConnector didUpdateANCSAuthorizationForPeripheral %@", &v6, 0xCu);
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  pairingCopy = pairing;
  v6 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [pairingCopy identifier];
    pairingPeripheralIdentifier = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
    v17 = 141558787;
    v18 = 1752392040;
    v19 = 2113;
    v20 = identifier;
    v21 = 2160;
    v22 = 1752392040;
    v23 = 2113;
    v24 = pairingPeripheralIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "peerDidCompletePairing %{private, mask.hash}@, current pairing identifier: %{private, mask.hash}@", &v17, 0x2Au);
  }

  identifier2 = [pairingCopy identifier];
  pairingPeripheralIdentifier2 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v11 = [identifier2 isEqual:pairingPeripheralIdentifier2];

  if (v11)
  {
    v12 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 141558275;
      v18 = 1752392040;
      v19 = 2113;
      v20 = identifier2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "completed BLE pairing for %{private, mask.hash}@", &v17, 0x16u);
    }

    pairingPeripheralName = [(CARCarPlayServiceConnector *)self pairingPeripheralName];
    delegate = [(CARCarPlayServiceConnector *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate serviceConnector:self completedPairingForBluetoothLEIdentifier:identifier2 name:pairingPeripheralName];
    }

    [(CARCarPlayServiceConnector *)self _finishedCurrentPairing];
    v15 = [(CARCarPlayServiceConnector *)self _periperalForIdentifier:identifier2];
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

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  pairingCopy = pairing;
  errorCopy = error;
  v9 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_10008B0B4(pairingCopy, self, v9);
  }

  identifier = [pairingCopy identifier];
  pairingPeripheralIdentifier = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v12 = [identifier isEqual:pairingPeripheralIdentifier];

  if (v12)
  {
    v13 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10008B194(pairingCopy, errorCopy, v13);
    }

    pairingPeripheralName = [(CARCarPlayServiceConnector *)self pairingPeripheralName];
    delegate = [(CARCarPlayServiceConnector *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      identifier2 = [pairingCopy identifier];
      [delegate serviceConnector:self failedPairingForBluetoothLEIdentifier:identifier2 name:pairingPeripheralName error:errorCopy];
    }

    [(CARCarPlayServiceConnector *)self _finishedCurrentPairing];
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  unpairCopy = unpair;
  v6 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [unpairCopy identifier];
    pairingPeripheralIdentifier = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
    v14 = 141558787;
    v15 = 1752392040;
    v16 = 2113;
    v17 = identifier;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2113;
    v21 = pairingPeripheralIdentifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "peerDidUnpair %{private, mask.hash}@, current pairing identifier: %{private, mask.hash}@", &v14, 0x2Au);
  }

  identifier2 = [unpairCopy identifier];
  pairingPeripheralIdentifier2 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v11 = [identifier2 isEqual:pairingPeripheralIdentifier2];

  if (v11)
  {
    v12 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [unpairCopy identifier];
      v14 = 141558275;
      v15 = 1752392040;
      v16 = 2113;
      v17 = identifier3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "unpaired BLE: %{private, mask.hash}@", &v14, 0x16u);
    }

    [(CARCarPlayServiceConnector *)self _finishedCurrentPairing];
  }
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  pairingCopy = pairing;
  passkeyCopy = passkey;
  identifier = [pairingCopy identifier];
  v12 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    pairingPeripheralIdentifier = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
    *buf = 141558787;
    v26 = 1752392040;
    v27 = 2113;
    v28 = identifier;
    v29 = 2160;
    v30 = 1752392040;
    v31 = 2113;
    v32 = pairingPeripheralIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "peerDidRequestPairing %{private, mask.hash}@, current pairing identifier: %{private, mask.hash}@", buf, 0x2Au);
  }

  pairingPeripheralIdentifier2 = [(CARCarPlayServiceConnector *)self pairingPeripheralIdentifier];
  v15 = [identifier isEqual:pairingPeripheralIdentifier2];

  if (v15)
  {
    pairingPeripheralName = [(CARCarPlayServiceConnector *)self pairingPeripheralName];
    v17 = sub_100002A68(2uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558531;
      v26 = 1752392040;
      v27 = 2113;
      v28 = identifier;
      v29 = 2113;
      v30 = pairingPeripheralName;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "requested BLE pairing confirmation for %{private, mask.hash}@ (%{private}@)", buf, 0x20u);
    }

    if (type == 4)
    {
      delegate = [(CARCarPlayServiceConnector *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10007D4FC;
        v19[3] = &unk_1000E0318;
        v20 = identifier;
        selfCopy = self;
        v22 = pairingCopy;
        v24 = 4;
        v23 = passkeyCopy;
        [delegate serviceConnector:self requestsPairingConfirmationForBluetoothLEIdentifier:v20 name:pairingPeripheralName numericCode:v23 responseHandler:v19];
      }
    }

    else
    {
      delegate = sub_100002A68(2uLL);
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        sub_10008B240();
      }
    }
  }
}

- (void)vehicleStoreDidBecomeAvailable:(id)available
{
  v4 = sub_100002A68(2uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "updating BLE XPC event now that vehicle store is available", v5, 2u);
  }

  [(CARCarPlayServiceConnector *)self _updateDiscoverer];
}

- (void)vehicleStore:(id)store didSaveVehicle:(id)vehicle
{
  if ([vehicle supportsBluetoothLE])
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

- (void)vehicleStore:(id)store didRemoveVehicle:(id)vehicle
{
  if ([vehicle supportsBluetoothLE])
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