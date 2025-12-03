@interface ConnectionManager
+ (id)instance;
- (BOOL)allowInRestrictedMode:(id)mode;
- (BOOL)isAlwaysConnecting:(id)connecting;
- (BOOL)requireServicesAndMFi:(id)fi;
- (ConnectionManager)init;
- (id)centralManagerStateString;
- (id)peripheralForConnectionUUID:(id)d;
- (id)peripheralForIdentifier:(id)identifier;
- (id)peripheralToAddressString:(id)string;
- (void)analyzeConnectionError:(id)error peripheral:(id)peripheral info:(id)info;
- (void)authDidFail:(id)fail;
- (void)authDidSucceed:(id)succeed;
- (void)cancelPeripheralConnectionForConnectOnceIdentifier:(id)identifier;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral timestamp:(double)timestamp isReconnecting:(BOOL)reconnecting error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectAlways:(id)always;
- (void)connectOnce:(id)once connectionTimeoutEnabled:(BOOL)enabled;
- (void)connectPeripheral:(id)peripheral options:(id)options;
- (void)connectionTimeout:(id)timeout;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair;
- (void)peerDidIdleTimeout:(id)timeout;
- (void)peerIsUsingBuiltinService:(id)service;
- (void)performMFiAuth:(id)auth;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheralPairingDidFail:(id)fail;
- (void)refreshConnectionAssertion;
- (void)refreshPeripherals;
- (void)sendAnalyticsEvent:(id)event withPayload:(id)payload;
- (void)setIAPProperty:(id)property withValue:(id)value forPeripheral:(id)peripheral;
- (void)setMFiAccessoryInfo:(id)info forPeripheral:(id)peripheral;
- (void)transportClient:(id)client authStatusDidChange:(BOOL)change forConnectionWithUUID:(id)d;
- (void)transportClient:(id)client propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD;
- (void)transportClientServerDisconnected:(id)disconnected;
@end

@implementation ConnectionManager

+ (id)instance
{
  if (qword_1000DDAE0 != -1)
  {
    sub_100075780();
  }

  v3 = qword_1000DDAD8;

  return v3;
}

- (void)connectOnce:(id)once connectionTimeoutEnabled:(BOOL)enabled
{
  onceCopy = once;
  if (enabled)
  {
    connectOnceNoTimeoutIdentifiers = [NSTimer scheduledTimerWithTimeInterval:self target:"connectionTimeout:" selector:onceCopy userInfo:0 repeats:5.0];
    connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
    [connectOnceIdentifiersMap setObject:connectOnceNoTimeoutIdentifiers forKeyedSubscript:onceCopy];
  }

  else
  {
    connectOnceNoTimeoutIdentifiers = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
    [connectOnceNoTimeoutIdentifiers addObject:onceCopy];
  }

  denylistedIdentifiers = [(ConnectionManager *)self denylistedIdentifiers];
  [denylistedIdentifiers removeObject:onceCopy];

  [(ConnectionManager *)self refreshConnectionAssertion];
  [(ConnectionManager *)self refreshPeripherals];
}

- (void)connectAlways:(id)always
{
  alwaysCopy = always;
  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  allKeys = [connectAlwaysIdentifiersMap allKeys];
  v7 = [allKeys isEqualToArray:alwaysCopy];

  if ((v7 & 1) == 0)
  {
    v8 = +[NSMutableDictionary dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = alwaysCopy;
    v9 = alwaysCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          connectAlwaysIdentifiersMap2 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
          v16 = [connectAlwaysIdentifiersMap2 objectForKeyedSubscript:v14];

          if (!v16)
          {
            v16 = objc_alloc_init(PeripheralConnectionInfo);
          }

          [v8 setObject:v16 forKeyedSubscript:v14];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    [(ConnectionManager *)self setConnectAlwaysIdentifiersMap:v8];
    [(ConnectionManager *)self refreshConnectionAssertion];
    [(ConnectionManager *)self refreshPeripherals];

    alwaysCopy = v17;
  }
}

- (BOOL)isAlwaysConnecting:(id)connecting
{
  connectingCopy = connecting;
  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  identifier = [connectingCopy identifier];

  v7 = [connectAlwaysIdentifiersMap objectForKeyedSubscript:identifier];
  LOBYTE(connectingCopy) = v7 != 0;

  return connectingCopy;
}

- (id)peripheralForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  peripherals = [(ConnectionManager *)self peripherals];
  v6 = [peripherals countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(peripherals);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [peripherals countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)cancelPeripheralConnectionForConnectOnceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connectOnceNoTimeoutIdentifiers = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  [connectOnceNoTimeoutIdentifiers removeObject:identifierCopy];

  connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
  [connectOnceIdentifiersMap removeObjectForKey:identifierCopy];

  [(ConnectionManager *)self refreshConnectionAssertion];

  [(ConnectionManager *)self refreshPeripherals];
}

- (void)performMFiAuth:(id)auth
{
  authCopy = auth;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v41 = authCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing MFI Auth for CBPeripheral UUID %@", buf, 0xCu);
  }

  centralManager = [(ConnectionManager *)self centralManager];
  state = [centralManager state];

  if (state == 5)
  {
    centralManager2 = [(ConnectionManager *)self centralManager];
    v39 = authCopy;
    v9 = [NSArray arrayWithObjects:&v39 count:1];
    v10 = [centralManager2 retrievePeripheralsWithIdentifiers:v9];
    firstObject = [v10 firstObject];

    LODWORD(v9) = [firstObject hasTag:@"needsMFiAuthentication4.0"];
    centralManager3 = [(ConnectionManager *)self centralManager];
    v13 = centralManager3;
    if (v9)
    {
      [centralManager3 connectPeripheral:firstObject options:0];
    }

    else
    {
      v18 = [CBUUID UUIDWithString:@"0xFE13"];
      v38 = v18;
      v19 = [NSArray arrayWithObjects:&v38 count:1];
      v20 = [v13 retrieveConnectedPeripheralsWithServices:v19];

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v13 = v20;
      v21 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        while (2)
        {
          for (i = 0; i != v22; i = i + 1)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v13);
            }

            v25 = *(*(&v33 + 1) + 8 * i);
            identifier = [v25 identifier];
            v27 = [identifier isEqual:authCopy];

            if (v27)
            {
              centralManager4 = [(ConnectionManager *)self centralManager];
              [centralManager4 connectPeripheral:v25 options:0];
              v29 = v13;
              goto LABEL_21;
            }
          }

          v22 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v28 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Register for connection event for this Fitness machine service", buf, 2u);
      }

      v29 = objc_alloc_init(NSMutableDictionary);
      centralManager4 = objc_alloc_init(NSMutableArray);
      v31 = [CBUUID UUIDWithString:@"0000FE13-0000-1000-8000-00805F9B34FB"];
      [centralManager4 addObject:v31];

      [v29 setObject:centralManager4 forKeyedSubscript:CBConnectionEventMatchingOptionServiceUUIDs];
      centralManager5 = [(ConnectionManager *)self centralManager];
      [centralManager5 registerForConnectionEventsWithOptions:v29];

LABEL_21:
    }
  }

  else
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      centralManager6 = [(ConnectionManager *)self centralManager];
      state2 = [centralManager6 state];
      *buf = 67109378;
      *v41 = state2;
      *&v41[4] = 2112;
      *&v41[6] = authCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Manager state is %d, deferring MFI Auth for %@", buf, 0x12u);
    }

    [(NSMutableSet *)self->_mfiAuthPendingPeripherals addObject:authCopy];
  }
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    name = [peripheralCopy name];
    v16 = 138412546;
    v17 = name;
    v18 = 2048;
    occurCopy = occur;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Peripheral %@ connection event:%tu", &v16, 0x16u);
  }

  if (occur)
  {
    if (occur == 1)
    {
      centralManager = [(ConnectionManager *)self centralManager];
      [centralManager connectPeripheral:peripheralCopy options:0];

      centralManager2 = [(ConnectionManager *)self centralManager];
      [centralManager2 registerForConnectionEventsWithOptions:0];
    }
  }

  else
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075794(v15, peripheralCopy);
    }
  }
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "peerDidCompletePairing", v5, 2u);
  }
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  errorCopy = error;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100075828();
  }

  v11 = pairingCopy;
  if (v11)
  {
    peripherals = [(ConnectionManager *)self peripherals];
    v13 = [peripherals containsObject:v11];

    if (v13)
    {
      if ([v11 state])
      {
        v14 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          identifier = [v11 identifier];
          v18 = 138412546;
          v19 = identifier;
          v20 = 2112;
          v21 = errorCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "pairing failed with peer %@ error %@, disconnecting", &v18, 0x16u);
        }

        centralManager = [(ConnectionManager *)self centralManager];
        [centralManager cancelPeripheralConnection:v11];
      }
    }
  }
}

- (void)pairingAgent:(id)agent peerDidUnpair:(id)unpair
{
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "peerDidUnpair", v5, 2u);
  }
}

- (ConnectionManager)init
{
  v33.receiver = self;
  v33.super_class = ConnectionManager;
  v2 = [(ConnectionManager *)&v33 init];
  if (v2)
  {
    v3 = [CBCentralManager alloc];
    v34[0] = CBCentralManagerOptionReceiveSystemEvents;
    v34[1] = CBManagerNeedsRestrictedStateOperation;
    v35[0] = &__kCFBooleanTrue;
    v35[1] = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
    v5 = [v3 initWithDelegate:v2 queue:&_dispatch_main_q options:v4];
    centralManager = v2->_centralManager;
    v2->_centralManager = v5;

    sharedPairingAgent = [(CBCentralManager *)v2->_centralManager sharedPairingAgent];
    pairingAgent = v2->_pairingAgent;
    v2->_pairingAgent = sharedPairingAgent;

    [(CBPairingAgent *)v2->_pairingAgent setDelegate:v2];
    v9 = objc_alloc_init(NSMutableDictionary);
    connectOnceIdentifiersMap = v2->_connectOnceIdentifiersMap;
    v2->_connectOnceIdentifiersMap = v9;

    v11 = objc_alloc_init(NSMutableSet);
    connectOnceNoTimeoutIdentifiers = v2->_connectOnceNoTimeoutIdentifiers;
    v2->_connectOnceNoTimeoutIdentifiers = v11;

    connectAlwaysIdentifiersMap = v2->_connectAlwaysIdentifiersMap;
    v2->_connectAlwaysIdentifiersMap = 0;

    v14 = objc_alloc_init(NSMutableSet);
    denylistedIdentifiers = v2->_denylistedIdentifiers;
    v2->_denylistedIdentifiers = v14;

    connectionAssertion = v2->_connectionAssertion;
    v2->_connectionAssertion = 0;

    peripherals = v2->_peripherals;
    v2->_peripherals = 0;

    v18 = objc_alloc_init(NSMutableDictionary);
    clientServiceManagerMap = v2->_clientServiceManagerMap;
    v2->_clientServiceManagerMap = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    accessoryConnectionMap = v2->_accessoryConnectionMap;
    v2->_accessoryConnectionMap = v20;

    v22 = objc_alloc_init(NSMutableSet);
    mfiAuthPendingPeripherals = v2->_mfiAuthPendingPeripherals;
    v2->_mfiAuthPendingPeripherals = v22;

    v24 = [NSSet alloc];
    v25 = [v24 initWithObjects:{CBConnectPeripheralOptionLESynchronizationEvents, 0}];
    connectOptionsAllowableOnConnectedPeripherals = v2->_connectOptionsAllowableOnConnectedPeripherals;
    v2->_connectOptionsAllowableOnConnectedPeripherals = v25;

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v2 selector:"peripheralPairingDidFail:" name:@"PeripheralPairingDidFailNotification" object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v2 selector:"authDidSucceed:" name:@"AuthenticationServiceAuthDidSucceedNotification" object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v2 selector:"authDidFail:" name:@"AuthenticationServiceAuthDidFailNotification" object:0];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v2 selector:"peerIsUsingBuiltinService:" name:@"PeerIsUsingBuiltinServiceNotification" object:0];

    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:v2 selector:"peerDidIdleTimeout:" name:@"PeerDidIdleTimeoutNotification" object:0];
  }

  return v2;
}

- (BOOL)allowInRestrictedMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy hasTag:@"A1603"] & 1) != 0 || (objc_msgSend(modeCopy, "hasTag:", @"A2051") & 1) != 0 || (objc_msgSend(modeCopy, "hasTag:", @"A3085") & 1) != 0 || (objc_msgSend(modeCopy, "hasTag:", @"A2538") & 1) != 0 || (objc_msgSend(modeCopy, "hasTag:", @"FastConnection"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [modeCopy hasTag:@"DA_ASK_RETAIN_DEVICE"];
  }

  return v4;
}

- (BOOL)requireServicesAndMFi:(id)fi
{
  fiCopy = fi;
  if ([fiCopy hasTag:@"A2538"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [fiCopy hasTag:@"MFi-Generic"];
  }

  return v4;
}

- (void)refreshPeripherals
{
  centralManager = [(ConnectionManager *)self centralManager];
  if ([centralManager state] == 5)
  {
  }

  else
  {
    centralManager2 = [(ConnectionManager *)self centralManager];
    state = [centralManager2 state];

    if (state != 10)
    {
      return;
    }
  }

  v6 = +[NSMutableSet set];
  connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
  allKeys = [connectOnceIdentifiersMap allKeys];
  [v6 addObjectsFromArray:allKeys];

  connectOnceNoTimeoutIdentifiers = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  allObjects = [connectOnceNoTimeoutIdentifiers allObjects];
  [v6 addObjectsFromArray:allObjects];

  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  allKeys2 = [connectAlwaysIdentifiersMap allKeys];
  [v6 addObjectsFromArray:allKeys2];

  centralManager3 = [(ConnectionManager *)self centralManager];
  allObjects2 = [v6 allObjects];
  v15 = [centralManager3 retrievePeripheralsWithIdentifiers:allObjects2];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  peripherals = [(ConnectionManager *)self peripherals];
  v17 = [peripherals countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(peripherals);
        }

        v21 = *(*(&v43 + 1) + 8 * i);
        if (([v15 containsObject:v21] & 1) == 0)
        {
          v22 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            name = [v21 name];
            *buf = 138412290;
            v49 = name;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disconnecting Peripheral %@ as it is not in list of Peripherals to connect.", buf, 0xCu);
          }

          [(ConnectionManager *)self disconnectPeripheral:v21 force:0];
        }
      }

      v18 = [peripherals countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v18);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v39 + 1) + 8 * v29);
        centralManager4 = [(ConnectionManager *)self centralManager];
        state2 = [centralManager4 state];

        if (state2 != 10)
        {
          goto LABEL_24;
        }

        v33 = [(ConnectionManager *)self allowInRestrictedMode:v30];
        v34 = qword_1000DDBC8;
        v35 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
        if (v33)
        {
          if (v35)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Bluetooth is restricted. Allowing connection to Apple Pencil.", buf, 2u);
          }

LABEL_24:
          [(ConnectionManager *)self connectPeripheral:v30 options:0];
          goto LABEL_25;
        }

        if (v35)
        {
          v36 = v34;
          name2 = [v30 name];
          *buf = 138412290;
          v49 = name2;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Bluetooth is restricted. Outgoing connection to %@ not allowed.", buf, 0xCu);
        }

LABEL_25:
        v29 = v29 + 1;
      }

      while (v27 != v29);
      v38 = [v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
      v27 = v38;
    }

    while (v38);
  }

  [(ConnectionManager *)self setPeripherals:v25];
}

- (void)connectPeripheral:(id)peripheral options:(id)options
{
  peripheralCopy = peripheral;
  optionsCopy = options;
  connectOptionsAllowableOnConnectedPeripherals = [(ConnectionManager *)self connectOptionsAllowableOnConnectedPeripherals];
  allKeys = [optionsCopy allKeys];
  v10 = [NSSet setWithArray:allKeys];
  v11 = [connectOptionsAllowableOnConnectedPeripherals intersectsSet:v10];

  centralManager = [(ConnectionManager *)self centralManager];
  if ([centralManager state] == 5)
  {

    goto LABEL_4;
  }

  centralManager2 = [(ConnectionManager *)self centralManager];
  state = [centralManager2 state];

  if (state == 10)
  {
LABEL_4:
    if (optionsCopy)
    {
      v15 = [optionsCopy mutableCopy];
    }

    else
    {
      v15 = +[NSMutableDictionary dictionary];
    }

    v16 = v15;
    if ([peripheralCopy state])
    {
      if ([peripheralCopy state] == 2)
      {
        if (!v11)
        {
          goto LABEL_32;
        }

LABEL_16:
        v24 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          name = [peripheralCopy name];
          *v40 = 138412802;
          *&v40[4] = name;
          *&v40[12] = 2048;
          *&v40[14] = [peripheralCopy state];
          *&v40[22] = 2112;
          v41 = v16;
          v27 = "Connecting peripheral %@ with state %ld and options %@...";
          v28 = v25;
          v29 = 32;
LABEL_29:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v27, v40, v29);
        }

LABEL_30:
        v21 = [(ConnectionManager *)self centralManager:*v40];
        [v21 connectPeripheral:peripheralCopy options:v16];
        goto LABEL_31;
      }

      if ((([peripheralCopy state] == 1) & v11) != 0)
      {
        goto LABEL_16;
      }

LABEL_32:

      goto LABEL_33;
    }

    denylistedIdentifiers = [(ConnectionManager *)self denylistedIdentifiers];
    identifier = [peripheralCopy identifier];
    v19 = [denylistedIdentifiers containsObject:identifier];

    if (v19)
    {
      v20 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v21 = v20;
      name2 = [peripheralCopy name];
      *v40 = 138412290;
      *&v40[4] = name2;
      v23 = "Not connecting peripheral %@ as it is denylisted";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v40, 0xCu);

LABEL_31:
      goto LABEL_32;
    }

    connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    identifier2 = [peripheralCopy identifier];
    v32 = [connectAlwaysIdentifiersMap objectForKeyedSubscript:identifier2];

    if (v32)
    {
      v33 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000758AC(v33, peripheralCopy);
      }

      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:CBConnectPeripheralOptionEnableAutoReconnect];
    }

    centralManager3 = [(ConnectionManager *)self centralManager];
    state2 = [centralManager3 state];

    if (state2 == 10)
    {
      v36 = [(ConnectionManager *)self allowInRestrictedMode:peripheralCopy];
      v37 = qword_1000DDBC8;
      v38 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
      if (!v36)
      {
        if (!v38)
        {
          goto LABEL_32;
        }

        v21 = v37;
        name2 = [peripheralCopy name];
        *v40 = 138412290;
        *&v40[4] = name2;
        v23 = "Ignoring connection to %@ since bluetooth state is restricted";
        goto LABEL_14;
      }

      if (!v38)
      {
        goto LABEL_30;
      }

      v25 = v37;
      name = [peripheralCopy name];
      *v40 = 138412546;
      *&v40[4] = name;
      *&v40[12] = 2112;
      *&v40[14] = v16;
      v27 = "Allowing connection to Apple Pencil %@ options %@...";
    }

    else
    {
      v39 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      v25 = v39;
      name = [peripheralCopy name];
      *v40 = 138412546;
      *&v40[4] = name;
      *&v40[12] = 2112;
      *&v40[14] = v16;
      v27 = "Connecting peripheral %@ options %@...";
    }

    v28 = v25;
    v29 = 22;
    goto LABEL_29;
  }

LABEL_33:
}

- (void)refreshConnectionAssertion
{
  centralManager = [(ConnectionManager *)self centralManager];
  if ([centralManager state] == 4)
  {

LABEL_3:

    [(ConnectionManager *)self setConnectionAssertion:0];
    return;
  }

  connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
  if ([connectOnceIdentifiersMap count])
  {
    goto LABEL_9;
  }

  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  if ([connectAlwaysIdentifiersMap count])
  {

LABEL_9:
    goto LABEL_10;
  }

  connectOnceNoTimeoutIdentifiers = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  v10 = [connectOnceNoTimeoutIdentifiers count];

  if (!v10)
  {
    goto LABEL_3;
  }

LABEL_10:
  connectionAssertion = [(ConnectionManager *)self connectionAssertion];

  if (!connectionAssertion)
  {
    v11 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    v7 = v11;
    [v11 UTF8String];
    v8 = os_transaction_create();
    [(ConnectionManager *)self setConnectionAssertion:v8];
  }
}

- (void)connectionTimeout:(id)timeout
{
  timeoutCopy = timeout;
  userInfo = [timeoutCopy userInfo];
  connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
  v7 = [connectOnceIdentifiersMap objectForKeyedSubscript:userInfo];

  if (v7 == timeoutCopy)
  {
    v8 = [(ConnectionManager *)self peripheralForIdentifier:userInfo];
    v9 = v8;
    if (v8 && [v8 state] == 1)
    {
      v10 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100075950(v10, v9);
      }

      connectOnceIdentifiersMap2 = [(ConnectionManager *)self connectOnceIdentifiersMap];
      [connectOnceIdentifiersMap2 removeObjectForKey:userInfo];

      [(ConnectionManager *)self refreshConnectionAssertion];
      [(ConnectionManager *)self refreshPeripherals];
    }
  }
}

- (void)analyzeConnectionError:(id)error peripheral:(id)peripheral info:(id)info
{
  errorCopy = error;
  peripheralCopy = peripheral;
  infoCopy = info;
  domain = [errorCopy domain];
  if (domain == CBErrorDomain && [errorCopy code] == 6)
  {

    goto LABEL_7;
  }

  domain2 = [errorCopy domain];
  v13 = domain2;
  if (domain2 == CBInternalErrorDomain)
  {
    code = [errorCopy code];

    if (code == 31)
    {
LABEL_7:
      v15 = +[NSDate date];
      date = [infoCopy date];
      [v15 timeIntervalSinceDate:date];
      v18 = v17;

      if (v18 < 10.0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
  }

  if ([infoCopy tryCount])
  {
    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      name = [peripheralCopy name];
      *buf = 138412546;
      v47 = name;
      v48 = 2048;
      tryCount = [infoCopy tryCount];
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Peripheral %@ did not use any built-in service, strike #%lu", buf, 0x16u);
    }

    v22 = [peripheralCopy hasTag:@"DoNotStopAutoConnecting"];
    if ([infoCopy tryCount] >= 5 && (v22 & 1) == 0)
    {
      v23 = @"A1603";
      if (([peripheralCopy hasTag:@"A1603"] & 1) == 0)
      {
        v23 = @"A2051";
        if (([peripheralCopy hasTag:@"A2051"] & 1) == 0)
        {
          v23 = @"A3085";
          if (([peripheralCopy hasTag:@"A3085"] & 1) == 0)
          {
            v23 = @"A2538";
            if (![peripheralCopy hasTag:@"A2538"])
            {
              v23 = @"Unknown";
            }
          }
        }
      }

      selfCopy = self;
      v24 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        name2 = [peripheralCopy name];
        domain3 = [errorCopy domain];
        code2 = [errorCopy code];
        *buf = 138478595;
        v47 = v23;
        v48 = 2113;
        tryCount = name2;
        v50 = 2112;
        v51 = domain3;
        v52 = 2048;
        v53 = code2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device type : %{private}@. Removing autoconnect tag for Peripheral %{private}@  : Error domain : %@ , Error code : %ld", buf, 0x2Au);
      }

      v29 = +[NSNotificationCenter defaultCenter];
      [v29 postNotificationName:@"PeerIsNotUsingBuiltinServiceNotification" object:peripheralCopy];

      v44[0] = @"DurationSinceLastSuccessConnectionInSecs";
      v30 = +[NSDate date];
      date2 = [infoCopy date];
      [v30 timeIntervalSinceDate:date2];
      v32 = [NSNumber numberWithDouble:?];
      v45[0] = v32;
      v45[1] = v23;
      v44[1] = @"ApplePencilGen";
      v44[2] = @"ConnectionRetryCount";
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [infoCopy tryCount]);
      v45[2] = v33;
      v44[3] = @"DisconnectionReason";
      v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
      v45[3] = v34;
      v35 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];

      self = selfCopy;
      [(ConnectionManager *)selfCopy sendAnalyticsEvent:@"com.apple.Bluetooth.PencilReconnectionFailures" withPayload:v35];
    }
  }

  domain4 = [errorCopy domain];
  if (domain4 != CBErrorDomain)
  {
    goto LABEL_26;
  }

  code3 = [errorCopy code];

  if (code3 == 14)
  {
    v38 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      name3 = [peripheralCopy name];
      *buf = 138412290;
      v47 = name3;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Peripheral %@ removed pairing info, stop always connect", buf, 0xCu);
    }

    v41 = +[NSNotificationCenter defaultCenter];
    [v41 postNotificationName:@"PeerIsNotUsingBuiltinServiceNotification" object:peripheralCopy];

    domain4 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    identifier = [peripheralCopy identifier];
    [(NSString *)domain4 removeObjectForKey:identifier];

LABEL_26:
  }

LABEL_27:
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    centralManagerStateString = [(ConnectionManager *)self centralManagerStateString];
    *buf = 138412290;
    v71 = centralManagerStateString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CentralManager state is now %@", buf, 0xCu);
  }

  [(ConnectionManager *)self refreshConnectionAssertion];
  centralManager = [(ConnectionManager *)self centralManager];
  state = [centralManager state];

  if (state == 10)
  {
    v50 = stateCopy;
    v10 = objc_opt_new();
    v54 = objc_opt_new();
    v53 = objc_opt_new();
    v52 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    peripherals = [(ConnectionManager *)self peripherals];
    v12 = [peripherals countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v64;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(peripherals);
          }

          v16 = *(*(&v63 + 1) + 8 * i);
          if ([(ConnectionManager *)self allowInRestrictedMode:v16])
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = qword_1000DDBC8;
            if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v71 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Disconnecting peripheral : %@ since bluetooth is in restricted mode", buf, 0xCu);
            }

            [(ConnectionManager *)self disconnectPeripheral:v16 force:1];
          }
        }

        v13 = [peripherals countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v13);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = v10;
    v18 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v60;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v60 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v59 + 1) + 8 * j);
          connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
          identifier = [v22 identifier];
          v25 = [connectOnceIdentifiersMap objectForKey:identifier];

          clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
          v27 = [clientServiceManagerMap objectForKey:v22];

          connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
          identifier2 = [v22 identifier];
          v30 = [connectAlwaysIdentifiersMap objectForKey:identifier2];

          if (v25)
          {
            identifier3 = [v22 identifier];
            [v53 setObject:v25 forKey:identifier3];
          }

          if (v30)
          {
            identifier4 = [v22 identifier];
            [v54 setObject:v30 forKey:identifier4];
          }

          if (v27)
          {
            [v52 setObject:v27 forKey:v22];
          }
        }

        v19 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v19);
    }

    connectOnceIdentifiersMap2 = [(ConnectionManager *)self connectOnceIdentifiersMap];
    [connectOnceIdentifiersMap2 setDictionary:v53];

    clientServiceManagerMap2 = [(ConnectionManager *)self clientServiceManagerMap];
    [clientServiceManagerMap2 setDictionary:v52];

    connectAlwaysIdentifiersMap2 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    [connectAlwaysIdentifiersMap2 setDictionary:v54];

    [(ConnectionManager *)self setDenylistedIdentifiers:0];
    [(ConnectionManager *)self refreshPeripherals];
  }

  else
  {
    centralManager2 = [(ConnectionManager *)self centralManager];
    state2 = [centralManager2 state];

    if (state2 != 5)
    {
      connectOnceIdentifiersMap3 = [(ConnectionManager *)self connectOnceIdentifiersMap];
      [connectOnceIdentifiersMap3 removeAllObjects];

      connectOnceNoTimeoutIdentifiers = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
      [connectOnceNoTimeoutIdentifiers removeAllObjects];

      [(ConnectionManager *)self setConnectAlwaysIdentifiersMap:0];
      denylistedIdentifiers = [(ConnectionManager *)self denylistedIdentifiers];
      [denylistedIdentifiers removeAllObjects];

      [(ConnectionManager *)self setPeripherals:0];
      clientServiceManagerMap3 = [(ConnectionManager *)self clientServiceManagerMap];
      [clientServiceManagerMap3 removeAllObjects];

      accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
      [accessoryConnectionMap removeAllObjects];

      goto LABEL_43;
    }

    v50 = stateCopy;
    [(ConnectionManager *)self refreshPeripherals];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v38 = self->_mfiAuthPendingPeripherals;
    v39 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v56;
      do
      {
        for (k = 0; k != v40; k = k + 1)
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v55 + 1) + 8 * k);
          v44 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v43;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Deferred MFI Auth for %@", buf, 0xCu);
          }

          [(ConnectionManager *)self performMFiAuth:v43];
        }

        v40 = [(NSMutableSet *)v38 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v40);
    }

    [(NSMutableSet *)self->_mfiAuthPendingPeripherals removeAllObjects];
  }

  stateCopy = v50;
LABEL_43:
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    name = [peripheralCopy name];
    *buf = 138412290;
    v54 = name;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is now connected", buf, 0xCu);
  }

  accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
  v12 = [accessoryConnectionMap objectForKey:peripheralCopy];

  if (!v12)
  {
LABEL_9:
    if (![peripheralCopy hasTag:@"pencilMFiAuth4.0Passed"])
    {
      if (([peripheralCopy hasTag:@"needsMFiAuthentication4.0"] & 1) == 0 && !objc_msgSend(peripheralCopy, "hasTag:", @"needsMFiAuthenticationCertClass2.0c"))
      {
        goto LABEL_37;
      }

      [peripheralCopy setDelegate:self];
      centralManager = [(ConnectionManager *)self centralManager];
      sharedPairingAgent = [centralManager sharedPairingAgent];
      retrievePairedPeers = [sharedPairingAgent retrievePairedPeers];

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100036EEC;
      v51[3] = &unk_1000BDD58;
      v25 = peripheralCopy;
      v52 = v25;
      if ([retrievePairedPeers indexOfObjectPassingTest:v51] != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v25, "hasTag:", @"A2538") & 1) == 0)
      {
        v26 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          name2 = [v25 name];
          *buf = 138412290;
          v54 = name2;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Opening L2CAP auth channel to %@", buf, 0xCu);
        }

        v29 = +[ACCTransportClient sharedClient];
        [v29 setDelegate:self];

        v30 = objc_alloc_init(MFiAccessoryConnection);
        [(MFiAccessoryConnection *)v30 setAuthInProgress:1];
        accessoryConnectionMap2 = [(ConnectionManager *)self accessoryConnectionMap];
        [accessoryConnectionMap2 setObject:v30 forKeyedSubscript:v25];

        if ([v25 hasTag:@"needsMFiAuthentication4.0"])
        {
          uUIDString = [(ConnectionManager *)self peripheralToAddressString:v25];
        }

        else if ([v25 hasTag:@"needsMFiAuthenticationCertClass2.0c"])
        {
          identifier = [v25 identifier];
          uUIDString = [identifier UUIDString];
        }

        else
        {
          uUIDString = 0;
        }

        [(MFiAccessoryConnection *)v30 activateConnectionWithIdentifier:uUIDString];
        if ([v25 hasTag:@"MFi-Generic"])
        {
          [(MFiAccessoryConnection *)v30 activateGenericEndpoint];
        }

        else
        {
          [v25 openL2CAPChannel:128];
        }

        v38 = [(ConnectionManager *)self requireServicesAndMFi:v25];

        if (!v38)
        {

          goto LABEL_47;
        }
      }

      v19 = v52;
      goto LABEL_36;
    }

LABEL_10:
    retrievePairedPeers = [(ConnectionManager *)self peripheralToAddressString:peripheralCopy];
    v17 = +[ACCTransportClient sharedClient];
    connectionUUID = [(MFiAccessoryConnection *)v12 connectionUUID];
    v19 = [v17 identifierForConnectionWithUUID:connectionUUID];

    v20 = +[ACCTransportClient sharedClient];
    [v20 setDelegate:self];

    v21 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Previously connected peripheral ..", buf, 2u);
    }

    if (v12)
    {
      if ([v19 isEqualToString:retrievePairedPeers])
      {
        v22 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Connection exists!", buf, 2u);
        }

        goto LABEL_36;
      }
    }

    else
    {
      v33 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        name3 = [peripheralCopy name];
        *buf = 138412290;
        v54 = name3;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Creating accessory connection without auth for %@ as it previously passed auth", buf, 0xCu);
      }

      v12 = objc_alloc_init(MFiAccessoryConnection);
      accessoryConnectionMap3 = [(ConnectionManager *)self accessoryConnectionMap];
      [accessoryConnectionMap3 setObject:v12 forKeyedSubscript:peripheralCopy];
    }

    [(MFiAccessoryConnection *)v12 activateConnectionWithIdentifier:retrievePairedPeers];
    [(MFiAccessoryConnection *)v12 setAuthenticated];
LABEL_36:

LABEL_37:
    peripherals = [(ConnectionManager *)self peripherals];
    v40 = [peripherals containsObject:peripheralCopy];

    if (!v40)
    {
      [(ConnectionManager *)self disconnectPeripheral:peripheralCopy force:0];
      goto LABEL_47;
    }

    [peripheralCopy setDelegate:self];
    clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
    v42 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

    if (!v42)
    {
      v43 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
        name4 = [peripheralCopy name];
        *buf = 138412290;
        v54 = name4;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Initializing ClientServiceManager for %@...", buf, 0xCu);
      }

      v46 = [[ClientServiceManager alloc] initWithPeripheral:peripheralCopy];
      clientServiceManagerMap2 = [(ConnectionManager *)self clientServiceManagerMap];
      [clientServiceManagerMap2 setObject:v46 forKeyedSubscript:peripheralCopy];
    }

    connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    identifier2 = [peripheralCopy identifier];
    v14 = [connectAlwaysIdentifiersMap objectForKeyedSubscript:identifier2];

    if (v14)
    {
      v50 = +[NSDate date];
      [v14 setDate:v50];

      [v14 setTryCount:[v14 tryCount]+ 1];
    }

    goto LABEL_44;
  }

  if (![(MFiAccessoryConnection *)v12 authInProgress])
  {
    if (!-[MFiAccessoryConnection authInProgress](v12, "authInProgress") && ([peripheralCopy hasTag:@"needsMFiAuthentication4.0"] & 1) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    name5 = [peripheralCopy name];
    *buf = 138412290;
    v54 = name5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Authentication in progress for %@ Return.", buf, 0xCu);

LABEL_44:
  }

LABEL_47:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    name = [peripheralCopy name];
    v24 = 138412546;
    v25 = name;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Peripheral %@ failed to connect: %@", &v24, 0x16u);
  }

  connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
  identifier = [peripheralCopy identifier];
  [connectOnceIdentifiersMap removeObjectForKey:identifier];

  connectOnceNoTimeoutIdentifiers = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  identifier2 = [peripheralCopy identifier];
  [connectOnceNoTimeoutIdentifiers removeObject:identifier2];

  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  identifier3 = [peripheralCopy identifier];
  v20 = [connectAlwaysIdentifiersMap objectForKeyedSubscript:identifier3];

  if (v20)
  {
    [(ConnectionManager *)self analyzeConnectionError:errorCopy peripheral:peripheralCopy info:v20];
    connectAlwaysIdentifiersMap2 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    identifier4 = [peripheralCopy identifier];
    v23 = [connectAlwaysIdentifiersMap2 objectForKeyedSubscript:identifier4];

    if (v23)
    {
      [(ConnectionManager *)self connectPeripheral:peripheralCopy options:0];
    }
  }

  [(ConnectionManager *)self refreshConnectionAssertion];
  [(ConnectionManager *)self refreshPeripherals];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral timestamp:(double)timestamp isReconnecting:(BOOL)reconnecting error:(id)error
{
  reconnectingCopy = reconnecting;
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v15 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    name = [peripheralCopy name];
    v30 = 138413058;
    v31 = name;
    v32 = 2112;
    v33 = errorCopy;
    v34 = 2048;
    v35 = CFAbsoluteTimeGetCurrent() - timestamp;
    v36 = 1024;
    v37 = reconnectingCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is disconnected: %@ %lf seconds ago, is reconnecting: %d", &v30, 0x26u);
  }

  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  [clientServiceManagerMap removeObjectForKey:peripheralCopy];

  connectOnceIdentifiersMap = [(ConnectionManager *)self connectOnceIdentifiersMap];
  identifier = [peripheralCopy identifier];
  [connectOnceIdentifiersMap removeObjectForKey:identifier];

  connectOnceNoTimeoutIdentifiers = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  identifier2 = [peripheralCopy identifier];
  [connectOnceNoTimeoutIdentifiers removeObject:identifier2];

  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  identifier3 = [peripheralCopy identifier];
  v25 = [connectAlwaysIdentifiersMap objectForKeyedSubscript:identifier3];

  if (v25)
  {
    [(ConnectionManager *)self analyzeConnectionError:errorCopy peripheral:peripheralCopy info:v25];
    connectAlwaysIdentifiersMap2 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    identifier4 = [peripheralCopy identifier];
    v28 = [connectAlwaysIdentifiersMap2 objectForKeyedSubscript:identifier4];

    if (v28)
    {
      if (!reconnectingCopy)
      {
        [(ConnectionManager *)self connectPeripheral:peripheralCopy options:0];
      }
    }
  }

  accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
  [accessoryConnectionMap removeObjectForKey:peripheralCopy];

  [(ConnectionManager *)self refreshConnectionAssertion];
  [(ConnectionManager *)self refreshPeripherals];
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  peripheralCopy = peripheral;
  channelCopy = channel;
  errorCopy = error;
  accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
  v12 = [accessoryConnectionMap objectForKey:peripheralCopy];

  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000759E4();
    }

    if ([(ConnectionManager *)self requireServicesAndMFi:peripheralCopy])
    {
      [(ConnectionManager *)self disconnectPeripheral:peripheralCopy force:0];
    }
  }

  else
  {
    v13 = +[ACCTransportClient sharedClient];
    [v13 setDelegate:self];

    if ([peripheralCopy hasTag:@"needsMFiAuthentication4.0"])
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [v12 activateAuthEndpointWithType:v14 andChannel:channelCopy];
    accessoryConnectionMap2 = [(ConnectionManager *)self accessoryConnectionMap];
    [accessoryConnectionMap2 setObject:v12 forKeyedSubscript:peripheralCopy];
  }
}

- (void)transportClient:(id)client authStatusDidChange:(BOOL)change forConnectionWithUUID:(id)d
{
  changeCopy = change;
  clientCopy = client;
  dCopy = d;
  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "not authenticated";
    if (changeCopy)
    {
      v11 = "authenticated";
    }

    *buf = 138412546;
    v31 = dCopy;
    v32 = 2080;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AuthStatusDidChange for connectionUUID %@ %s", buf, 0x16u);
  }

  v12 = [(ConnectionManager *)self peripheralForConnectionUUID:dCopy];
  accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
  v14 = [accessoryConnectionMap objectForKey:v12];

  if (v14)
  {
    if ([(ConnectionManager *)self requireServicesAndMFi:v12])
    {
      [v14 tearDownPeerChannel];
    }

    if (changeCopy)
    {
      identifier = [v12 identifier];
      uUIDString = [identifier UUIDString];
      v29 = uUIDString;
      v17 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.bluetooth.accessory-authentication.success", 0, 0, 0);
      DistributedCenter = CFNotificationCenterGetDistributedCenter();
      CFNotificationCenterPostNotification(DistributedCenter, @"com.apple.bluetooth.accessory-authentication.success", 0, v17, 0);
      if ([v12 hasTag:@"A2538"])
      {
        v20 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Posting Find My specific auth successful notification for: %@", buf, 0xCu);
        }

        v21 = +[NSNotificationCenter defaultCenter];
        [v21 postNotificationName:@"A2538_AuthenticationDidSucceed" object:v12 userInfo:0];

        [v12 tag:@"pencilMFiAuth4.0Passed"];
      }

      if ([v12 hasTag:@"needsMFiAuthentication4.0"])
      {
        v22 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Posting auth successful notification for: %@", buf, 0xCu);
        }

        v23 = +[NSNotificationCenter defaultCenter];
        [v23 postNotificationName:@"AuthenticationServiceAuthDidSucceedNotification" object:v12 userInfo:0];
      }
    }

    else
    {
      if ([v12 hasTag:@"needsMFiAuthentication4.0"])
      {
        v25 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Posting auth failed notification for: %@", buf, 0xCu);
        }

        v26 = +[NSNotificationCenter defaultCenter];
        [v26 postNotificationName:@"AuthenticationServiceAuthDidFailNotification" object:v12 userInfo:0];
      }

      if ([v12 hasTag:@"A2538"] && objc_msgSend(v12, "hasTag:", @"pencilMFiAuth4.0Passed"))
      {
        v27 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v12;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Untagging %@ due to auth fail", buf, 0xCu);
        }

        [v12 untag:@"pencilMFiAuth4.0Passed"];
      }
    }
  }

  else
  {
    v24 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075A58(v24);
    }
  }
}

- (void)transportClientServerDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "transportClientServerDisconnected!!", buf, 2u);
  }

  centralManager = [(ConnectionManager *)self centralManager];
  v6 = [centralManager retrieveConnectedPeripheralsWithServices:0 allowAll:1];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([(ConnectionManager *)self requireServicesAndMFi:v12])
        {
          v13 = +[ACCTransportClient sharedClient];
          [v13 setDelegate:self];

          v14 = objc_alloc_init(MFiAccessoryConnection);
          v15 = [(ConnectionManager *)self peripheralToAddressString:v12];
          [(MFiAccessoryConnection *)v14 activateConnectionWithIdentifier:v15];

          [(MFiAccessoryConnection *)v14 setAuthenticated];
          accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
          [accessoryConnectionMap setObject:v14 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)transportClient:(id)client propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD
{
  changeCopy = change;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100075A9C();
  }
}

- (void)setIAPProperty:(id)property withValue:(id)value forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  valueCopy = value;
  propertyCopy = property;
  accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
  v12 = [accessoryConnectionMap objectForKey:peripheralCopy];

  [v12 sendDataToGenericEndpoint:valueCopy withProperty:propertyCopy];
}

- (void)setMFiAccessoryInfo:(id)info forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  infoCopy = info;
  accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
  v9 = [accessoryConnectionMap objectForKey:peripheralCopy];

  [v9 setAccessoryInfo:infoCopy];
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  servicesCopy = services;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v9 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v9 peripheral:peripheralCopy didModifyServices:servicesCopy];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  servicesCopy = services;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v9 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v9 peripheral:peripheralCopy didDiscoverServices:servicesCopy];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  errorCopy = error;
  serviceCopy = service;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didDiscoverCharacteristicsForService:serviceCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didUpdateValueForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didWriteValueForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didUpdateNotificationStateForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didDiscoverDescriptorsForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  errorCopy = error;
  descriptorCopy = descriptor;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didUpdateValueForDescriptor:descriptorCopy error:errorCopy];
}

- (void)peripheralPairingDidFail:(id)fail
{
  object = [fail object];
  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  identifier = [object identifier];
  v7 = [connectAlwaysIdentifiersMap objectForKeyedSubscript:identifier];

  if (!v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100038380;
    v8[3] = &unk_1000BD8A8;
    v8[4] = self;
    v9 = object;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

- (void)authDidSucceed:(id)succeed
{
  object = [succeed object];
  denylistedIdentifiers = [(ConnectionManager *)self denylistedIdentifiers];
  identifier = [object identifier];
  [denylistedIdentifiers removeObject:identifier];
}

- (void)authDidFail:(id)fail
{
  object = [fail object];
  denylistedIdentifiers = [(ConnectionManager *)self denylistedIdentifiers];
  identifier = [object identifier];
  [denylistedIdentifiers addObject:identifier];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000384F0;
  v8[3] = &unk_1000BD8A8;
  v8[4] = self;
  v9 = object;
  v7 = object;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)peerIsUsingBuiltinService:(id)service
{
  object = [service object];
  connectAlwaysIdentifiersMap = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  identifier = [object identifier];
  v6 = [connectAlwaysIdentifiersMap objectForKeyedSubscript:identifier];

  if (v6)
  {
    [v6 setTryCount:0];
  }
}

- (void)peerDidIdleTimeout:(id)timeout
{
  [timeout object];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100038644;
  v5[3] = &unk_1000BD8A8;
  v6 = v5[4] = self;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (id)centralManagerStateString
{
  centralManager = [(ConnectionManager *)self centralManager];
  state = [centralManager state];

  if ((state - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1000BDD78[(state - 1)];
  }
}

- (void)sendAnalyticsEvent:(id)event withPayload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  AnalyticsSendEventLazy();
}

- (id)peripheralToAddressString:(id)string
{
  stringCopy = string;
  centralManager = [(ConnectionManager *)self centralManager];
  v6 = [centralManager retrievePairingInfoForPeripheral:stringCopy];

  v7 = [v6 objectForKey:@"kCBMsgArgRemoteAddress"];
  bytes = [v7 bytes];
  v9 = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];

  return v9;
}

- (id)peripheralForConnectionUUID:(id)d
{
  dCopy = d;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(ConnectionManager *)self accessoryConnectionMap];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        accessoryConnectionMap = [(ConnectionManager *)self accessoryConnectionMap];
        v11 = [accessoryConnectionMap objectForKeyedSubscript:v9];
        connectionUUID = [v11 connectionUUID];
        v13 = [connectionUUID isEqualToString:dCopy];

        if (v13)
        {
          v15 = v9;

          goto LABEL_13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100075B10(v14);
  }

  v15 = 0;
LABEL_13:

  return v15;
}

@end