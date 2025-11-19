@interface ConnectionManager
+ (id)instance;
- (BOOL)allowInRestrictedMode:(id)a3;
- (BOOL)isAlwaysConnecting:(id)a3;
- (BOOL)requireServicesAndMFi:(id)a3;
- (ConnectionManager)init;
- (id)centralManagerStateString;
- (id)peripheralForConnectionUUID:(id)a3;
- (id)peripheralForIdentifier:(id)a3;
- (id)peripheralToAddressString:(id)a3;
- (void)analyzeConnectionError:(id)a3 peripheral:(id)a4 info:(id)a5;
- (void)authDidFail:(id)a3;
- (void)authDidSucceed:(id)a3;
- (void)cancelPeripheralConnectionForConnectOnceIdentifier:(id)a3;
- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 timestamp:(double)a5 isReconnecting:(BOOL)a6 error:(id)a7;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connectAlways:(id)a3;
- (void)connectOnce:(id)a3 connectionTimeoutEnabled:(BOOL)a4;
- (void)connectPeripheral:(id)a3 options:(id)a4;
- (void)connectionTimeout:(id)a3;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)peerDidIdleTimeout:(id)a3;
- (void)peerIsUsingBuiltinService:(id)a3;
- (void)performMFiAuth:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheralPairingDidFail:(id)a3;
- (void)refreshConnectionAssertion;
- (void)refreshPeripherals;
- (void)sendAnalyticsEvent:(id)a3 withPayload:(id)a4;
- (void)setIAPProperty:(id)a3 withValue:(id)a4 forPeripheral:(id)a5;
- (void)setMFiAccessoryInfo:(id)a3 forPeripheral:(id)a4;
- (void)transportClient:(id)a3 authStatusDidChange:(BOOL)a4 forConnectionWithUUID:(id)a5;
- (void)transportClient:(id)a3 propertiesDidChange:(id)a4 forEndpointWithUUID:(id)a5 previousProperties:(id)a6 connectionUUID:(id)a7;
- (void)transportClientServerDisconnected:(id)a3;
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

- (void)connectOnce:(id)a3 connectionTimeoutEnabled:(BOOL)a4
{
  v9 = a3;
  if (a4)
  {
    v6 = [NSTimer scheduledTimerWithTimeInterval:self target:"connectionTimeout:" selector:v9 userInfo:0 repeats:5.0];
    v7 = [(ConnectionManager *)self connectOnceIdentifiersMap];
    [v7 setObject:v6 forKeyedSubscript:v9];
  }

  else
  {
    v6 = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
    [v6 addObject:v9];
  }

  v8 = [(ConnectionManager *)self denylistedIdentifiers];
  [v8 removeObject:v9];

  [(ConnectionManager *)self refreshConnectionAssertion];
  [(ConnectionManager *)self refreshPeripherals];
}

- (void)connectAlways:(id)a3
{
  v4 = a3;
  v5 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  v6 = [v5 allKeys];
  v7 = [v6 isEqualToArray:v4];

  if ((v7 & 1) == 0)
  {
    v8 = +[NSMutableDictionary dictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v4;
    v9 = v4;
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
          v15 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
          v16 = [v15 objectForKeyedSubscript:v14];

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

    v4 = v17;
  }
}

- (BOOL)isAlwaysConnecting:(id)a3
{
  v4 = a3;
  v5 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

- (id)peripheralForIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ConnectionManager *)self peripherals];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)cancelPeripheralConnectionForConnectOnceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  [v5 removeObject:v4];

  v6 = [(ConnectionManager *)self connectOnceIdentifiersMap];
  [v6 removeObjectForKey:v4];

  [(ConnectionManager *)self refreshConnectionAssertion];

  [(ConnectionManager *)self refreshPeripherals];
}

- (void)performMFiAuth:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v41 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing MFI Auth for CBPeripheral UUID %@", buf, 0xCu);
  }

  v6 = [(ConnectionManager *)self centralManager];
  v7 = [v6 state];

  if (v7 == 5)
  {
    v8 = [(ConnectionManager *)self centralManager];
    v39 = v4;
    v9 = [NSArray arrayWithObjects:&v39 count:1];
    v10 = [v8 retrievePeripheralsWithIdentifiers:v9];
    v11 = [v10 firstObject];

    LODWORD(v9) = [v11 hasTag:@"needsMFiAuthentication4.0"];
    v12 = [(ConnectionManager *)self centralManager];
    v13 = v12;
    if (v9)
    {
      [v12 connectPeripheral:v11 options:0];
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
            v26 = [v25 identifier];
            v27 = [v26 isEqual:v4];

            if (v27)
            {
              v30 = [(ConnectionManager *)self centralManager];
              [v30 connectPeripheral:v25 options:0];
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
      v30 = objc_alloc_init(NSMutableArray);
      v31 = [CBUUID UUIDWithString:@"0000FE13-0000-1000-8000-00805F9B34FB"];
      [v30 addObject:v31];

      [v29 setObject:v30 forKeyedSubscript:CBConnectionEventMatchingOptionServiceUUIDs];
      v32 = [(ConnectionManager *)self centralManager];
      [v32 registerForConnectionEventsWithOptions:v29];

LABEL_21:
    }
  }

  else
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ConnectionManager *)self centralManager];
      v17 = [v16 state];
      *buf = 67109378;
      *v41 = v17;
      *&v41[4] = 2112;
      *&v41[6] = v4;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Manager state is %d, deferring MFI Auth for %@", buf, 0x12u);
    }

    [(NSMutableSet *)self->_mfiAuthPendingPeripherals addObject:v4];
  }
}

- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [v9 name];
    v16 = 138412546;
    v17 = v12;
    v18 = 2048;
    v19 = a4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Peripheral %@ connection event:%tu", &v16, 0x16u);
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v13 = [(ConnectionManager *)self centralManager];
      [v13 connectPeripheral:v9 options:0];

      v14 = [(ConnectionManager *)self centralManager];
      [v14 registerForConnectionEventsWithOptions:0];
    }
  }

  else
  {
    v15 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075794(v15, v9);
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "peerDidCompletePairing", v5, 2u);
  }
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100075828();
  }

  v11 = v9;
  if (v11)
  {
    v12 = [(ConnectionManager *)self peripherals];
    v13 = [v12 containsObject:v11];

    if (v13)
    {
      if ([v11 state])
      {
        v14 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          v16 = [v11 identifier];
          v18 = 138412546;
          v19 = v16;
          v20 = 2112;
          v21 = v10;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "pairing failed with peer %@ error %@, disconnecting", &v18, 0x16u);
        }

        v17 = [(ConnectionManager *)self centralManager];
        [v17 cancelPeripheralConnection:v11];
      }
    }
  }
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
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

    v7 = [(CBCentralManager *)v2->_centralManager sharedPairingAgent];
    pairingAgent = v2->_pairingAgent;
    v2->_pairingAgent = v7;

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

- (BOOL)allowInRestrictedMode:(id)a3
{
  v3 = a3;
  if ([v3 hasTag:@"A1603"] & 1) != 0 || (objc_msgSend(v3, "hasTag:", @"A2051") & 1) != 0 || (objc_msgSend(v3, "hasTag:", @"A3085") & 1) != 0 || (objc_msgSend(v3, "hasTag:", @"A2538") & 1) != 0 || (objc_msgSend(v3, "hasTag:", @"FastConnection"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasTag:@"DA_ASK_RETAIN_DEVICE"];
  }

  return v4;
}

- (BOOL)requireServicesAndMFi:(id)a3
{
  v3 = a3;
  if ([v3 hasTag:@"A2538"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasTag:@"MFi-Generic"];
  }

  return v4;
}

- (void)refreshPeripherals
{
  v3 = [(ConnectionManager *)self centralManager];
  if ([v3 state] == 5)
  {
  }

  else
  {
    v4 = [(ConnectionManager *)self centralManager];
    v5 = [v4 state];

    if (v5 != 10)
    {
      return;
    }
  }

  v6 = +[NSMutableSet set];
  v7 = [(ConnectionManager *)self connectOnceIdentifiersMap];
  v8 = [v7 allKeys];
  [v6 addObjectsFromArray:v8];

  v9 = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  v10 = [v9 allObjects];
  [v6 addObjectsFromArray:v10];

  v11 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  v12 = [v11 allKeys];
  [v6 addObjectsFromArray:v12];

  v13 = [(ConnectionManager *)self centralManager];
  v14 = [v6 allObjects];
  v15 = [v13 retrievePeripheralsWithIdentifiers:v14];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = [(ConnectionManager *)self peripherals];
  v17 = [v16 countByEnumeratingWithState:&v43 objects:v50 count:16];
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
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v43 + 1) + 8 * i);
        if (([v15 containsObject:v21] & 1) == 0)
        {
          v22 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v22;
            v24 = [v21 name];
            *buf = 138412290;
            v49 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Disconnecting Peripheral %@ as it is not in list of Peripherals to connect.", buf, 0xCu);
          }

          [(ConnectionManager *)self disconnectPeripheral:v21 force:0];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v50 count:16];
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
        v31 = [(ConnectionManager *)self centralManager];
        v32 = [v31 state];

        if (v32 != 10)
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
          v37 = [v30 name];
          *buf = 138412290;
          v49 = v37;
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

- (void)connectPeripheral:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ConnectionManager *)self connectOptionsAllowableOnConnectedPeripherals];
  v9 = [v7 allKeys];
  v10 = [NSSet setWithArray:v9];
  v11 = [v8 intersectsSet:v10];

  v12 = [(ConnectionManager *)self centralManager];
  if ([v12 state] == 5)
  {

    goto LABEL_4;
  }

  v13 = [(ConnectionManager *)self centralManager];
  v14 = [v13 state];

  if (v14 == 10)
  {
LABEL_4:
    if (v7)
    {
      v15 = [v7 mutableCopy];
    }

    else
    {
      v15 = +[NSMutableDictionary dictionary];
    }

    v16 = v15;
    if ([v6 state])
    {
      if ([v6 state] == 2)
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
          v26 = [v6 name];
          *v40 = 138412802;
          *&v40[4] = v26;
          *&v40[12] = 2048;
          *&v40[14] = [v6 state];
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
        [v21 connectPeripheral:v6 options:v16];
        goto LABEL_31;
      }

      if ((([v6 state] == 1) & v11) != 0)
      {
        goto LABEL_16;
      }

LABEL_32:

      goto LABEL_33;
    }

    v17 = [(ConnectionManager *)self denylistedIdentifiers];
    v18 = [v6 identifier];
    v19 = [v17 containsObject:v18];

    if (v19)
    {
      v20 = qword_1000DDBC8;
      if (!os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v21 = v20;
      v22 = [v6 name];
      *v40 = 138412290;
      *&v40[4] = v22;
      v23 = "Not connecting peripheral %@ as it is denylisted";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v40, 0xCu);

LABEL_31:
      goto LABEL_32;
    }

    v30 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    v31 = [v6 identifier];
    v32 = [v30 objectForKeyedSubscript:v31];

    if (v32)
    {
      v33 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000758AC(v33, v6);
      }

      [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:CBConnectPeripheralOptionEnableAutoReconnect];
    }

    v34 = [(ConnectionManager *)self centralManager];
    v35 = [v34 state];

    if (v35 == 10)
    {
      v36 = [(ConnectionManager *)self allowInRestrictedMode:v6];
      v37 = qword_1000DDBC8;
      v38 = os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT);
      if (!v36)
      {
        if (!v38)
        {
          goto LABEL_32;
        }

        v21 = v37;
        v22 = [v6 name];
        *v40 = 138412290;
        *&v40[4] = v22;
        v23 = "Ignoring connection to %@ since bluetooth state is restricted";
        goto LABEL_14;
      }

      if (!v38)
      {
        goto LABEL_30;
      }

      v25 = v37;
      v26 = [v6 name];
      *v40 = 138412546;
      *&v40[4] = v26;
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
      v26 = [v6 name];
      *v40 = 138412546;
      *&v40[4] = v26;
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
  v3 = [(ConnectionManager *)self centralManager];
  if ([v3 state] == 4)
  {

LABEL_3:

    [(ConnectionManager *)self setConnectionAssertion:0];
    return;
  }

  v4 = [(ConnectionManager *)self connectOnceIdentifiersMap];
  if ([v4 count])
  {
    goto LABEL_9;
  }

  v5 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  if ([v5 count])
  {

LABEL_9:
    goto LABEL_10;
  }

  v9 = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  v10 = [v9 count];

  if (!v10)
  {
    goto LABEL_3;
  }

LABEL_10:
  v6 = [(ConnectionManager *)self connectionAssertion];

  if (!v6)
  {
    v11 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    v7 = v11;
    [v11 UTF8String];
    v8 = os_transaction_create();
    [(ConnectionManager *)self setConnectionAssertion:v8];
  }
}

- (void)connectionTimeout:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [(ConnectionManager *)self connectOnceIdentifiersMap];
  v7 = [v6 objectForKeyedSubscript:v5];

  if (v7 == v4)
  {
    v8 = [(ConnectionManager *)self peripheralForIdentifier:v5];
    v9 = v8;
    if (v8 && [v8 state] == 1)
    {
      v10 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        sub_100075950(v10, v9);
      }

      v11 = [(ConnectionManager *)self connectOnceIdentifiersMap];
      [v11 removeObjectForKey:v5];

      [(ConnectionManager *)self refreshConnectionAssertion];
      [(ConnectionManager *)self refreshPeripherals];
    }
  }
}

- (void)analyzeConnectionError:(id)a3 peripheral:(id)a4 info:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 domain];
  if (v11 == CBErrorDomain && [v8 code] == 6)
  {

    goto LABEL_7;
  }

  v12 = [v8 domain];
  v13 = v12;
  if (v12 == CBInternalErrorDomain)
  {
    v14 = [v8 code];

    if (v14 == 31)
    {
LABEL_7:
      v15 = +[NSDate date];
      v16 = [v10 date];
      [v15 timeIntervalSinceDate:v16];
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

  if ([v10 tryCount])
  {
    v19 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v9 name];
      *buf = 138412546;
      v47 = v21;
      v48 = 2048;
      v49 = [v10 tryCount];
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Peripheral %@ did not use any built-in service, strike #%lu", buf, 0x16u);
    }

    v22 = [v9 hasTag:@"DoNotStopAutoConnecting"];
    if ([v10 tryCount] >= 5 && (v22 & 1) == 0)
    {
      v23 = @"A1603";
      if (([v9 hasTag:@"A1603"] & 1) == 0)
      {
        v23 = @"A2051";
        if (([v9 hasTag:@"A2051"] & 1) == 0)
        {
          v23 = @"A3085";
          if (([v9 hasTag:@"A3085"] & 1) == 0)
          {
            v23 = @"A2538";
            if (![v9 hasTag:@"A2538"])
            {
              v23 = @"Unknown";
            }
          }
        }
      }

      v43 = self;
      v24 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        v26 = [v9 name];
        v27 = [v8 domain];
        v28 = [v8 code];
        *buf = 138478595;
        v47 = v23;
        v48 = 2113;
        v49 = v26;
        v50 = 2112;
        v51 = v27;
        v52 = 2048;
        v53 = v28;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Device type : %{private}@. Removing autoconnect tag for Peripheral %{private}@  : Error domain : %@ , Error code : %ld", buf, 0x2Au);
      }

      v29 = +[NSNotificationCenter defaultCenter];
      [v29 postNotificationName:@"PeerIsNotUsingBuiltinServiceNotification" object:v9];

      v44[0] = @"DurationSinceLastSuccessConnectionInSecs";
      v30 = +[NSDate date];
      v31 = [v10 date];
      [v30 timeIntervalSinceDate:v31];
      v32 = [NSNumber numberWithDouble:?];
      v45[0] = v32;
      v45[1] = v23;
      v44[1] = @"ApplePencilGen";
      v44[2] = @"ConnectionRetryCount";
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 tryCount]);
      v45[2] = v33;
      v44[3] = @"DisconnectionReason";
      v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      v45[3] = v34;
      v35 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];

      self = v43;
      [(ConnectionManager *)v43 sendAnalyticsEvent:@"com.apple.Bluetooth.PencilReconnectionFailures" withPayload:v35];
    }
  }

  v36 = [v8 domain];
  if (v36 != CBErrorDomain)
  {
    goto LABEL_26;
  }

  v37 = [v8 code];

  if (v37 == 14)
  {
    v38 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      v40 = [v9 name];
      *buf = 138412290;
      v47 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Peripheral %@ removed pairing info, stop always connect", buf, 0xCu);
    }

    v41 = +[NSNotificationCenter defaultCenter];
    [v41 postNotificationName:@"PeerIsNotUsingBuiltinServiceNotification" object:v9];

    v36 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    v42 = [v9 identifier];
    [(NSString *)v36 removeObjectForKey:v42];

LABEL_26:
  }

LABEL_27:
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ConnectionManager *)self centralManagerStateString];
    *buf = 138412290;
    v71 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CentralManager state is now %@", buf, 0xCu);
  }

  [(ConnectionManager *)self refreshConnectionAssertion];
  v8 = [(ConnectionManager *)self centralManager];
  v9 = [v8 state];

  if (v9 == 10)
  {
    v50 = v4;
    v10 = objc_opt_new();
    v54 = objc_opt_new();
    v53 = objc_opt_new();
    v52 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v11 = [(ConnectionManager *)self peripherals];
    v12 = [v11 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
            objc_enumerationMutation(v11);
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

        v13 = [v11 countByEnumeratingWithState:&v63 objects:v69 count:16];
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
          v23 = [(ConnectionManager *)self connectOnceIdentifiersMap];
          v24 = [v22 identifier];
          v25 = [v23 objectForKey:v24];

          v26 = [(ConnectionManager *)self clientServiceManagerMap];
          v27 = [v26 objectForKey:v22];

          v28 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
          v29 = [v22 identifier];
          v30 = [v28 objectForKey:v29];

          if (v25)
          {
            v31 = [v22 identifier];
            [v53 setObject:v25 forKey:v31];
          }

          if (v30)
          {
            v32 = [v22 identifier];
            [v54 setObject:v30 forKey:v32];
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

    v33 = [(ConnectionManager *)self connectOnceIdentifiersMap];
    [v33 setDictionary:v53];

    v34 = [(ConnectionManager *)self clientServiceManagerMap];
    [v34 setDictionary:v52];

    v35 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    [v35 setDictionary:v54];

    [(ConnectionManager *)self setDenylistedIdentifiers:0];
    [(ConnectionManager *)self refreshPeripherals];
  }

  else
  {
    v36 = [(ConnectionManager *)self centralManager];
    v37 = [v36 state];

    if (v37 != 5)
    {
      v45 = [(ConnectionManager *)self connectOnceIdentifiersMap];
      [v45 removeAllObjects];

      v46 = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
      [v46 removeAllObjects];

      [(ConnectionManager *)self setConnectAlwaysIdentifiersMap:0];
      v47 = [(ConnectionManager *)self denylistedIdentifiers];
      [v47 removeAllObjects];

      [(ConnectionManager *)self setPeripherals:0];
      v48 = [(ConnectionManager *)self clientServiceManagerMap];
      [v48 removeAllObjects];

      v49 = [(ConnectionManager *)self accessoryConnectionMap];
      [v49 removeAllObjects];

      goto LABEL_43;
    }

    v50 = v4;
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

  v4 = v50;
LABEL_43:
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v7 name];
    *buf = 138412290;
    v54 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is now connected", buf, 0xCu);
  }

  v11 = [(ConnectionManager *)self accessoryConnectionMap];
  v12 = [v11 objectForKey:v7];

  if (!v12)
  {
LABEL_9:
    if (![v7 hasTag:@"pencilMFiAuth4.0Passed"])
    {
      if (([v7 hasTag:@"needsMFiAuthentication4.0"] & 1) == 0 && !objc_msgSend(v7, "hasTag:", @"needsMFiAuthenticationCertClass2.0c"))
      {
        goto LABEL_37;
      }

      [v7 setDelegate:self];
      v23 = [(ConnectionManager *)self centralManager];
      v24 = [v23 sharedPairingAgent];
      v16 = [v24 retrievePairedPeers];

      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100036EEC;
      v51[3] = &unk_1000BDD58;
      v25 = v7;
      v52 = v25;
      if ([v16 indexOfObjectPassingTest:v51] != 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend(v25, "hasTag:", @"A2538") & 1) == 0)
      {
        v26 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
        {
          v27 = v26;
          v28 = [v25 name];
          *buf = 138412290;
          v54 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Opening L2CAP auth channel to %@", buf, 0xCu);
        }

        v29 = +[ACCTransportClient sharedClient];
        [v29 setDelegate:self];

        v30 = objc_alloc_init(MFiAccessoryConnection);
        [(MFiAccessoryConnection *)v30 setAuthInProgress:1];
        v31 = [(ConnectionManager *)self accessoryConnectionMap];
        [v31 setObject:v30 forKeyedSubscript:v25];

        if ([v25 hasTag:@"needsMFiAuthentication4.0"])
        {
          v32 = [(ConnectionManager *)self peripheralToAddressString:v25];
        }

        else if ([v25 hasTag:@"needsMFiAuthenticationCertClass2.0c"])
        {
          v37 = [v25 identifier];
          v32 = [v37 UUIDString];
        }

        else
        {
          v32 = 0;
        }

        [(MFiAccessoryConnection *)v30 activateConnectionWithIdentifier:v32];
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
    v16 = [(ConnectionManager *)self peripheralToAddressString:v7];
    v17 = +[ACCTransportClient sharedClient];
    v18 = [(MFiAccessoryConnection *)v12 connectionUUID];
    v19 = [v17 identifierForConnectionWithUUID:v18];

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
      if ([v19 isEqualToString:v16])
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
        v35 = [v7 name];
        *buf = 138412290;
        v54 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Creating accessory connection without auth for %@ as it previously passed auth", buf, 0xCu);
      }

      v12 = objc_alloc_init(MFiAccessoryConnection);
      v36 = [(ConnectionManager *)self accessoryConnectionMap];
      [v36 setObject:v12 forKeyedSubscript:v7];
    }

    [(MFiAccessoryConnection *)v12 activateConnectionWithIdentifier:v16];
    [(MFiAccessoryConnection *)v12 setAuthenticated];
LABEL_36:

LABEL_37:
    v39 = [(ConnectionManager *)self peripherals];
    v40 = [v39 containsObject:v7];

    if (!v40)
    {
      [(ConnectionManager *)self disconnectPeripheral:v7 force:0];
      goto LABEL_47;
    }

    [v7 setDelegate:self];
    v41 = [(ConnectionManager *)self clientServiceManagerMap];
    v42 = [v41 objectForKeyedSubscript:v7];

    if (!v42)
    {
      v43 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v44 = v43;
        v45 = [v7 name];
        *buf = 138412290;
        v54 = v45;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Initializing ClientServiceManager for %@...", buf, 0xCu);
      }

      v46 = [[ClientServiceManager alloc] initWithPeripheral:v7];
      v47 = [(ConnectionManager *)self clientServiceManagerMap];
      [v47 setObject:v46 forKeyedSubscript:v7];
    }

    v48 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    v49 = [v7 identifier];
    v14 = [v48 objectForKeyedSubscript:v49];

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
    if (!-[MFiAccessoryConnection authInProgress](v12, "authInProgress") && ([v7 hasTag:@"needsMFiAuthentication4.0"] & 1) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v13 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    v15 = [v7 name];
    *buf = 138412290;
    v54 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Authentication in progress for %@ Return.", buf, 0xCu);

LABEL_44:
  }

LABEL_47:
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v9 name];
    v24 = 138412546;
    v25 = v13;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Peripheral %@ failed to connect: %@", &v24, 0x16u);
  }

  v14 = [(ConnectionManager *)self connectOnceIdentifiersMap];
  v15 = [v9 identifier];
  [v14 removeObjectForKey:v15];

  v16 = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  v17 = [v9 identifier];
  [v16 removeObject:v17];

  v18 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  v19 = [v9 identifier];
  v20 = [v18 objectForKeyedSubscript:v19];

  if (v20)
  {
    [(ConnectionManager *)self analyzeConnectionError:v10 peripheral:v9 info:v20];
    v21 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    v22 = [v9 identifier];
    v23 = [v21 objectForKeyedSubscript:v22];

    if (v23)
    {
      [(ConnectionManager *)self connectPeripheral:v9 options:0];
    }
  }

  [(ConnectionManager *)self refreshConnectionAssertion];
  [(ConnectionManager *)self refreshPeripherals];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 timestamp:(double)a5 isReconnecting:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = [v13 name];
    v30 = 138413058;
    v31 = v17;
    v32 = 2112;
    v33 = v14;
    v34 = 2048;
    v35 = CFAbsoluteTimeGetCurrent() - a5;
    v36 = 1024;
    v37 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is disconnected: %@ %lf seconds ago, is reconnecting: %d", &v30, 0x26u);
  }

  v18 = [(ConnectionManager *)self clientServiceManagerMap];
  [v18 removeObjectForKey:v13];

  v19 = [(ConnectionManager *)self connectOnceIdentifiersMap];
  v20 = [v13 identifier];
  [v19 removeObjectForKey:v20];

  v21 = [(ConnectionManager *)self connectOnceNoTimeoutIdentifiers];
  v22 = [v13 identifier];
  [v21 removeObject:v22];

  v23 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  v24 = [v13 identifier];
  v25 = [v23 objectForKeyedSubscript:v24];

  if (v25)
  {
    [(ConnectionManager *)self analyzeConnectionError:v14 peripheral:v13 info:v25];
    v26 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
    v27 = [v13 identifier];
    v28 = [v26 objectForKeyedSubscript:v27];

    if (v28)
    {
      if (!v8)
      {
        [(ConnectionManager *)self connectPeripheral:v13 options:0];
      }
    }
  }

  v29 = [(ConnectionManager *)self accessoryConnectionMap];
  [v29 removeObjectForKey:v13];

  [(ConnectionManager *)self refreshConnectionAssertion];
  [(ConnectionManager *)self refreshPeripherals];
}

- (void)peripheral:(id)a3 didOpenL2CAPChannel:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ConnectionManager *)self accessoryConnectionMap];
  v12 = [v11 objectForKey:v8];

  if (v10)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000759E4();
    }

    if ([(ConnectionManager *)self requireServicesAndMFi:v8])
    {
      [(ConnectionManager *)self disconnectPeripheral:v8 force:0];
    }
  }

  else
  {
    v13 = +[ACCTransportClient sharedClient];
    [v13 setDelegate:self];

    if ([v8 hasTag:@"needsMFiAuthentication4.0"])
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    [v12 activateAuthEndpointWithType:v14 andChannel:v9];
    v15 = [(ConnectionManager *)self accessoryConnectionMap];
    [v15 setObject:v12 forKeyedSubscript:v8];
  }
}

- (void)transportClient:(id)a3 authStatusDidChange:(BOOL)a4 forConnectionWithUUID:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "not authenticated";
    if (v6)
    {
      v11 = "authenticated";
    }

    *buf = 138412546;
    v31 = v9;
    v32 = 2080;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AuthStatusDidChange for connectionUUID %@ %s", buf, 0x16u);
  }

  v12 = [(ConnectionManager *)self peripheralForConnectionUUID:v9];
  v13 = [(ConnectionManager *)self accessoryConnectionMap];
  v14 = [v13 objectForKey:v12];

  if (v14)
  {
    if ([(ConnectionManager *)self requireServicesAndMFi:v12])
    {
      [v14 tearDownPeerChannel];
    }

    if (v6)
    {
      v15 = [v12 identifier];
      v16 = [v15 UUIDString];
      v29 = v16;
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

- (void)transportClientServerDisconnected:(id)a3
{
  v17 = a3;
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "transportClientServerDisconnected!!", buf, 2u);
  }

  v5 = [(ConnectionManager *)self centralManager];
  v6 = [v5 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

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
          v16 = [(ConnectionManager *)self accessoryConnectionMap];
          [v16 setObject:v14 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)transportClient:(id)a3 propertiesDidChange:(id)a4 forEndpointWithUUID:(id)a5 previousProperties:(id)a6 connectionUUID:(id)a7
{
  v7 = a4;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100075A9C();
  }
}

- (void)setIAPProperty:(id)a3 withValue:(id)a4 forPeripheral:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ConnectionManager *)self accessoryConnectionMap];
  v12 = [v11 objectForKey:v8];

  [v12 sendDataToGenericEndpoint:v9 withProperty:v10];
}

- (void)setMFiAccessoryInfo:(id)a3 forPeripheral:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ConnectionManager *)self accessoryConnectionMap];
  v9 = [v8 objectForKey:v6];

  [v9 setAccessoryInfo:v7];
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ConnectionManager *)self clientServiceManagerMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  [v9 peripheral:v7 didModifyServices:v6];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ConnectionManager *)self clientServiceManagerMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  [v9 peripheral:v7 didDiscoverServices:v6];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didDiscoverCharacteristicsForService:v9 error:v8];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didUpdateValueForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didWriteValueForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didUpdateNotificationStateForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didDiscoverDescriptorsForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ConnectionManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didUpdateValueForDescriptor:v9 error:v8];
}

- (void)peripheralPairingDidFail:(id)a3
{
  v4 = [a3 object];
  v5 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100038380;
    v8[3] = &unk_1000BD8A8;
    v8[4] = self;
    v9 = v4;
    dispatch_async(&_dispatch_main_q, v8);
  }
}

- (void)authDidSucceed:(id)a3
{
  v6 = [a3 object];
  v4 = [(ConnectionManager *)self denylistedIdentifiers];
  v5 = [v6 identifier];
  [v4 removeObject:v5];
}

- (void)authDidFail:(id)a3
{
  v4 = [a3 object];
  v5 = [(ConnectionManager *)self denylistedIdentifiers];
  v6 = [v4 identifier];
  [v5 addObject:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000384F0;
  v8[3] = &unk_1000BD8A8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)peerIsUsingBuiltinService:(id)a3
{
  v7 = [a3 object];
  v4 = [(ConnectionManager *)self connectAlwaysIdentifiersMap];
  v5 = [v7 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v6 setTryCount:0];
  }
}

- (void)peerDidIdleTimeout:(id)a3
{
  [a3 object];
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
  v2 = [(ConnectionManager *)self centralManager];
  v3 = [v2 state];

  if ((v3 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_1000BDD78[(v3 - 1)];
  }
}

- (void)sendAnalyticsEvent:(id)a3 withPayload:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (id)peripheralToAddressString:(id)a3
{
  v4 = a3;
  v5 = [(ConnectionManager *)self centralManager];
  v6 = [v5 retrievePairingInfoForPeripheral:v4];

  v7 = [v6 objectForKey:@"kCBMsgArgRemoteAddress"];
  v8 = [v7 bytes];
  v9 = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *v8, v8[1], v8[2], v8[3], v8[4], v8[5]];

  return v9;
}

- (id)peripheralForConnectionUUID:(id)a3
{
  v4 = a3;
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
        v10 = [(ConnectionManager *)self accessoryConnectionMap];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 connectionUUID];
        v13 = [v12 isEqualToString:v4];

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