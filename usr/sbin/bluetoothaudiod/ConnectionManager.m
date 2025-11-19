@interface ConnectionManager
+ (id)instance;
- (BOOL)matchingCapSetWithSirk:(id)a3 withSirk:(id)a4;
- (ConnectionManager)init;
- (id)centralManagerStateString;
- (id)getCAPWithDevice:(id)a3;
- (id)handleAcceptorInterfaceRequest:(id)a3;
- (id)handleBapUnicastRequest:(id)a3;
- (id)handleCapCommanderRequest:(id)a3;
- (id)handleCapUnicastRequest:(id)a3;
- (id)handleCaptureRenderingControl:(id)a3;
- (id)handleHapUnicastRequest:(id)a3;
- (id)handleMediaControlCommands:(id)a3;
- (id)handleTelephonyControlCommands:(id)a3;
- (id)nameForCentral:(id)a3;
- (id)peripheralForIdentifier:(id)a3;
- (id)peripheralManagerStateString;
- (id)retrieveCapSessionsAndPeripherals;
- (id)retrievePairingInfo:(id)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)changeVolumeMute:(id)a3 withMute:(unsigned __int8)a4;
- (void)cleanupPeripheral:(id)a3;
- (void)connectCIS:(id)a3 withConnectionCompletion:(id)a4 withDisconnectionCompletion:(id)a5;
- (void)connectLEAudioDevice:(id)a3 withServiceUUID:(id)a4;
- (void)connectPeripheral:(id)a3;
- (void)disconnectCIS:(id)a3;
- (void)disconnectPeripheral:(id)a3 force:(BOOL)a4;
- (void)loadCSIPOrderedAccessValues;
- (void)loadRunInTestModeValue;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3;
- (void)respondToRequest:(id)a3 withResult:(int64_t)a4;
- (void)scanPeripherals:(BOOL)a3;
- (void)setAudioConfiguration:(id)a3 forSession:(id)a4;
- (void)setupCIG:(id)a3 withCompletion:(id)a4;
- (void)startLEAudioServer;
- (void)startStreamingForSession:(id)a3;
- (void)stopStreamingForSession:(id)a3;
- (void)tearDownCIG:(id)a3 withCompletion:(id)a4;
- (void)updateCodecConfigForSession:(id)a3 withCodecConfig:(id)a4;
- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5;
- (void)updateVolumeForSession:(id)a3 withVolume:(float)a4;
@end

@implementation ConnectionManager

+ (id)instance
{
  if (qword_1000AA048 != -1)
  {
    sub_10005D970();
  }

  v3 = qword_1000AA040;

  return v3;
}

- (void)connectLEAudioDevice:(id)a3 withServiceUUID:(id)a4
{
  v6 = a3;
  v7 = [CBUUID UUIDWithNSUUID:a4];
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "LE Audio device with service UUID %@ is now connected", buf, 0xCu);
  }

  v9 = [(ConnectionManager *)self pendingConnectingDevices];
  [v9 addObject:v6];

  v10 = [(ConnectionManager *)self centralManager];
  v24 = v6;
  v11 = [NSArray arrayWithObjects:&v24 count:1];
  v12 = [v10 retrievePeripheralsWithIdentifiers:v11];

  v13 = [(ConnectionManager *)self peripheralsWithServiceUUID];
  [v13 setObject:v7 forKey:v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(ConnectionManager *)self connectPeripheral:*(*(&v19 + 1) + 8 * v18), v19];
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)startLEAudioServer
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting CAP Server", v5, 2u);
  }

  self->_launchedAsServer = 1;
  v4 = +[ServerCommonAudioProfile instance];
}

- (id)peripheralForIdentifier:(id)a3
{
  v4 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(ConnectionManager *)self peripherals];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v26 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v25 + 1) + 8 * v9);
      v11 = [v10 identifier];
      v12 = [v11 isEqual:v4];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = [(ConnectionManager *)self centralManager];
    v29 = v4;
    v14 = [NSArray arrayWithObjects:&v29 count:1];
    v5 = [v13 retrievePeripheralsWithIdentifiers:v14];

    v15 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (!v15)
    {
      goto LABEL_19;
    }

    v16 = *v22;
LABEL_11:
    v17 = 0;
    while (1)
    {
      if (*v22 != v16)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v17);
      v18 = [v10 identifier];
      v19 = [v18 isEqual:v4];

      if (v19)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v5 countByEnumeratingWithState:&v21 objects:v30 count:16];
        if (v15)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }
  }

  v15 = v10;
LABEL_19:

  return v15;
}

- (ConnectionManager)init
{
  v36.receiver = self;
  v36.super_class = ConnectionManager;
  v2 = [(ConnectionManager *)&v36 init];
  if (v2)
  {
    v3 = CBCentralManagerOptionReceiveSystemEvents;
    v4 = CBManagerNeedsRestrictedStateOperation;
    v39[0] = CBCentralManagerOptionReceiveSystemEvents;
    v39[1] = CBManagerNeedsRestrictedStateOperation;
    v40[0] = &__kCFBooleanTrue;
    v40[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
    v6 = [[CBCentralManager alloc] initWithDelegate:v2 queue:&_dispatch_main_q options:v5];
    centralManager = v2->_centralManager;
    v2->_centralManager = v6;

    v37[0] = v3;
    v37[1] = v4;
    v38[0] = &__kCFBooleanTrue;
    v38[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
    v9 = [[CBPeripheralManager alloc] initWithDelegate:v2 queue:&_dispatch_main_q options:v8];
    peripheralManager = v2->_peripheralManager;
    v2->_peripheralManager = v9;

    objc_initWeak(&location, v2);
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100038F90;
    v33[3] = &unk_1000956E0;
    objc_copyWeak(&v34, &location);
    [(CBCentralManager *)v2->_centralManager setCisConnectEvent:v33];
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_100039058;
    v31 = &unk_1000956E0;
    objc_copyWeak(&v32, &location);
    [(CBCentralManager *)v2->_centralManager setCisDisconnectEvent:&v28];
    v11 = objc_alloc_init(NSMutableDictionary);
    cisConnectionEventDict = v2->_cisConnectionEventDict;
    v2->_cisConnectionEventDict = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    cisDisconnectionEventDict = v2->_cisDisconnectionEventDict;
    v2->_cisDisconnectionEventDict = v13;

    v15 = [(CBCentralManager *)v2->_centralManager sharedPairingAgent:v28];
    pairingAgent = v2->_pairingAgent;
    v2->_pairingAgent = v15;

    [(CBPairingAgent *)v2->_pairingAgent setDelegate:v2];
    v17 = objc_alloc_init(NSMutableSet);
    clientCAPSet = v2->_clientCAPSet;
    v2->_clientCAPSet = v17;

    v19 = objc_alloc_init(NSMutableSet);
    pendingConnectingDevices = v2->_pendingConnectingDevices;
    v2->_pendingConnectingDevices = v19;

    v21 = objc_alloc_init(NSMutableSet);
    peripherals = v2->_peripherals;
    v2->_peripherals = v21;

    v23 = objc_alloc_init(NSMutableDictionary);
    peripheralsWithServiceUUID = v2->_peripheralsWithServiceUUID;
    v2->_peripheralsWithServiceUUID = v23;

    v25 = objc_alloc_init(NSMutableArray);
    pendingUpdates = v2->_pendingUpdates;
    v2->_pendingUpdates = v25;

    [(ConnectionManager *)v2 loadRunInTestModeValue];
    [(ConnectionManager *)v2 loadCSIPOrderedAccessValues];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)loadRunInTestModeValue
{
  v3 = CFPreferencesCopyAppValue(@"LEAudioDebug", @"com.apple.MobileBluetooth.debug");
  self->_testMode = 0;
  p_testMode = &self->_testMode;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKeyedSubscript:@"RunInTestMode"];
    *p_testMode = [v5 BOOLValue];
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005D984(p_testMode);
  }
}

- (void)loadCSIPOrderedAccessValues
{
  v3 = CFPreferencesCopyAppValue(@"LEAudioDebug", @"com.apple.MobileBluetooth.debug");
  *&self->_useCSIPOrderedAccess = 256;
  p_useCSIPOrderedAccess = &self->_useCSIPOrderedAccess;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKeyedSubscript:@"UseCSIPOrderedAccess"];
    *p_useCSIPOrderedAccess = [v5 BOOLValue];

    v6 = [v3 objectForKeyedSubscript:@"UseCSIPOrderedAccessWithCaptureRendering"];
    p_useCSIPOrderedAccess[1] = [v6 BOOLValue];
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005DA14(p_useCSIPOrderedAccess);
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005DAA4(p_useCSIPOrderedAccess + 1);
  }
}

- (void)connectPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(ConnectionManager *)self centralManager];
  if ([v5 state] == 5)
  {
    v6 = [v4 state];

    if (!v6)
    {
      v7 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v4 name];
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connecting peripheral %@...", &v16, 0xCu);
      }

      v10 = [(ConnectionManager *)self peripherals];
      [v10 addObject:v4];

      v11 = [(ConnectionManager *)self centralManager];
      [v11 connectPeripheral:v4 options:0];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = [(ConnectionManager *)self centralManager];
  v13 = [v12 state];

  v14 = qword_1000A9FE0;
  v15 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR);
  if (v13 == 10)
  {
    if (v15)
    {
      sub_10005DBDC();
    }
  }

  else if (v15)
  {
    sub_10005DB34(v14, v4);
  }

LABEL_12:
}

- (void)disconnectPeripheral:(id)a3 force:(BOOL)a4
{
  v5 = a3;
  v6 = [(ConnectionManager *)self centralManager];
  if ([v6 state] == 5)
  {
    v7 = [v5 state];

    if (v7)
    {
      v8 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = [v5 name];
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disconnecting peripheral %@...", &v16, 0xCu);
      }

      v11 = [(ConnectionManager *)self centralManager];
      [v11 cancelPeripheralConnection:v5];

      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = [(ConnectionManager *)self centralManager];
  v13 = [v12 state];

  v14 = qword_1000A9FE0;
  v15 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR);
  if (v13 == 10)
  {
    if (v15)
    {
      sub_10005DBDC();
    }
  }

  else if (v15)
  {
    sub_10005DC18(v14, v5);
  }

LABEL_12:
}

- (void)cleanupPeripheral:(id)a3
{
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [(ConnectionManager *)self clientCAPSet];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = *v32;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v32 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v31 + 1) + 8 * v8);
      v10 = [v4 identifier];
      v11 = [v9 isPeripheralConnected:v10];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    v6 = v9;

    if (v6)
    {
      [v6 peripheralDisconnected:v4];
      if (![v6 getNumOfConnectedPeripherals])
      {
        v5 = [(ConnectionManager *)self clientCAPSet];
        [v5 removeObject:v6];
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(ConnectionManager *)self peripherals];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v27 + 1) + 8 * i) identifier];
        v18 = [v4 identifier];
        v19 = [v17 isEqual:v18];

        if (v19)
        {
          v20 = [(ConnectionManager *)self peripherals];
          [v20 removeObject:v4];

          v21 = [(ConnectionManager *)self peripheralsWithServiceUUID];
          v22 = [v4 identifier];
          [v21 removeObjectForKey:v22];

          goto LABEL_24;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

  if (![v6 getNumOfConnectedPeripherals])
  {
    v23 = [(ConnectionManager *)self peripherals];
    if ([v23 count])
    {
    }

    else
    {
      v24 = [v6 isCIGInUse];

      if ((v24 & 1) == 0)
      {
        v25 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No peripherals connected. Exiting", v26, 2u);
        }

        exit(0);
      }
    }
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ConnectionManager *)self centralManagerStateString];
    *buf = 138412290;
    v31 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CentralManager state is now %@", buf, 0xCu);
  }

  v8 = [(ConnectionManager *)self centralManager];
  v9 = [v8 state];

  if (v9 == 5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100039C94;
    block[3] = &unk_100094CB8;
    block[4] = self;
    if (qword_1000AA050 != -1)
    {
      dispatch_once(&qword_1000AA050, block);
    }

    v23 = v4;
    v10 = [(ConnectionManager *)self centralManager];
    v11 = [(ConnectionManager *)self pendingConnectingDevices];
    v12 = [v11 allObjects];
    v13 = [v10 retrievePeripheralsWithIdentifiers:v12];

    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Retrieved these peripherals %@", buf, 0xCu);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v24 + 1) + 8 * i);
          v21 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v31 = v20;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Connecting to LE Audio device %@", buf, 0xCu);
          }

          [(ConnectionManager *)self connectPeripheral:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v17);
    }

    if (![v15 count] && !self->_launchedAsServer)
    {
      v22 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No peripherals connected exiting", buf, 2u);
      }

      exit(0);
    }

    v4 = v23;
  }
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_launchedAsServer)
  {
    v8 = +[ServerCommonAudioProfile instance];
    [v8 centralManager:v6 didConnectPeripheral:v7];

    goto LABEL_48;
  }

  v9 = [(ConnectionManager *)self peripheralsWithServiceUUID];
  v10 = [v7 identifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v7 name];
    v15 = [v7 identifier];
    *buf = 138412802;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    v68 = 2112;
    v69 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Peripheral %@  - %@ with service UUID %@ is now connected", buf, 0x20u);
  }

  v16 = [v11 data];
  v17 = [v16 length];
  v57 = v17 >= 2 && ([v11 data], v18 = ;
  v59 = v11;
  v20 = [v7 customProperty:@"SirkInDevCache"];
  if (v20)
  {
    v21 = 0;
    *buf = 0;
    *&buf[8] = 0;
    v22 = buf;
    do
    {
      sscanf([v20 UTF8String] + v21, "%02x", v22);
      v21 += 2;
      ++v22;
    }

    while (v21 != 32);
    v23 = [[NSData alloc] initWithBytes:buf length:16];
  }

  else
  {
    v23 = 0;
  }

  v60 = v6;
  v24 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v24;
    v26 = [v7 name];
    *buf = 138412546;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Connected Peripheral %@ : sirk: %@", buf, 0x16u);
  }

  v58 = [[AcceptorInterface alloc] initWithPeripheral:v7];
  v27 = [(ConnectionManager *)self pendingConnectingDevices];
  v28 = [v7 identifier];
  [v27 removeObject:v28];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v29 = [(ConnectionManager *)self clientCAPSet];
  v30 = [v29 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (!v30)
  {

    goto LABEL_36;
  }

  v31 = v30;
  obj = v29;
  v32 = v23;
  v56 = self;
  v33 = 0;
  v34 = *v63;
LABEL_18:
  v35 = 0;
  while (1)
  {
    if (*v63 != v34)
    {
      objc_enumerationMutation(obj);
    }

    v36 = *(*(&v62 + 1) + 8 * v35);
    v37 = [v7 identifier];
    v38 = [(ClientCommonAudioProfile *)v36 isPeripheralResolvable:v37];

    if (v38)
    {
      break;
    }

    v39 = [(ClientCommonAudioProfile *)v36 getSIRK];
    if ([v39 isEqual:v32])
    {
      v44 = v36;

      v6 = v60;
      self = v56;
      goto LABEL_32;
    }

    v33 |= [v39 length] != 0;

    if (v31 == ++v35)
    {
      v31 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
      if (v31)
      {
        goto LABEL_18;
      }

      v6 = v60;
      self = v56;
      v23 = v32;
      if ((v33 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_34:
      v45 = qword_1000A9FE0;
      v46 = v58;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v45;
        v48 = [v7 identifier];
        *buf = 138412290;
        *&buf[4] = v48;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Peripheral %@ needs to proceed further for SIRK Matching", buf, 0xCu);
      }

      goto LABEL_47;
    }
  }

  v40 = qword_1000A9FE0;
  v6 = v60;
  self = v56;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v40;
    v42 = [v7 name];
    *buf = 138412290;
    *&buf[4] = v42;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is part of existing set", buf, 0xCu);
  }

  v43 = v36;
LABEL_32:
  v23 = v32;

  if (v36)
  {
    goto LABEL_46;
  }

  if (v33)
  {
    goto LABEL_34;
  }

LABEL_36:
  v49 = qword_1000A9FE0;
  v50 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
  if (v57)
  {
    if (v50)
    {
      v51 = v49;
      v52 = [v7 name];
      *buf = 138412290;
      *&buf[4] = v52;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is new. Creating new HAP set", buf, 0xCu);
    }

    v36 = objc_alloc_init(ClientHearingAccessProfile);
    if (!v23)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v50)
    {
      v53 = v49;
      v54 = [v7 name];
      *buf = 138412290;
      *&buf[4] = v54;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is new. Creating new CAP set", buf, 0xCu);
    }

    v36 = objc_alloc_init(ClientCommonAudioProfile);
    [(ClientCommonAudioProfile *)v36 setTestMode:self->_testMode];
    [(ClientCommonAudioProfile *)v36 setUseCSIPOrderedAccess:self->_useCSIPOrderedAccess];
    [(ClientCommonAudioProfile *)v36 setUseCSIPOrderedAccessWithCaptureRendering:self->_useCSIPOrderedAccessWithCaptureRendering];
    if (!v23)
    {
      goto LABEL_45;
    }
  }

  [(ClientCommonAudioProfile *)v36 setSIRK:v23 withIdentifier:0];
LABEL_45:
  v55 = [(ConnectionManager *)self clientCAPSet];
  [v55 addObject:v36];

LABEL_46:
  v46 = v58;
  [(ClientHearingAccessProfile *)v36 addAcceptorToSet:v58];

LABEL_47:
LABEL_48:
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 name];
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ failed to connect: %@", &v12, 0x16u);
  }

  [(ConnectionManager *)self cleanupPeripheral:v7];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 name];
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is now disconnected: %@", &v12, 0x16u);
  }

  [(ConnectionManager *)self cleanupPeripheral:v7];
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v46 = a3;
  v10 = a4;
  v47 = a5;
  v11 = a6;
  v12 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = [v10 name];
    v15 = [v47 objectForKeyedSubscript:CBCoordinatedSetRSIAdv];
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Discovered Peripheral %@ : %@", buf, 0x16u);
  }

  v16 = [v10 customProperty:@"SirkInDevCache"];
  v45 = v11;
  if (v16)
  {
    v17 = 0;
    *buf = 0;
    *&buf[8] = 0;
    v18 = buf;
    do
    {
      sscanf([v16 UTF8String] + v17, "%02x", v18);
      v17 += 2;
      ++v18;
    }

    while (v17 != 32);
    v19 = [[NSData alloc] initWithBytes:buf length:16];
  }

  else
  {
    v19 = 0;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v44 = self;
  v20 = [(ConnectionManager *)self clientCAPSet];
  v21 = [v20 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v21)
  {
    v22 = *v49;
    while (2)
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v49 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v48 + 1) + 8 * i);
        v25 = [v10 identifier];
        v26 = [v24 isPeripheralConnected:v25];

        if (v26)
        {
          v36 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v36;
            v38 = [v10 name];
            *buf = 138412546;
            *&buf[4] = v38;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Connected Peripheral %@ : %@", buf, 0x16u);
          }

          v21 = v24;
          goto LABEL_24;
        }

        v27 = [v24 getSIRK];
        v28 = [v27 isEqual:v19];

        v29 = qword_1000A9FE0;
        v30 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          v39 = v46;
          if (v30)
          {
            *buf = 138412290;
            *&buf[4] = v24;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Found Matching cap set with stored Sirk %@", buf, 0xCu);
          }

          v21 = v24;
          v40 = [v10 identifier];
          [v21 resolvePeripheral:v40 withAdv:0];

          goto LABEL_29;
        }

        if (v30)
        {
          v31 = v29;
          v32 = [v10 name];
          *buf = 138412546;
          *&buf[4] = v32;
          *&buf[12] = 2112;
          *&buf[14] = v24;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "New Peripheral - If it resolved then should be added to aligned cap %@ : %@", buf, 0x16u);
        }

        v33 = [v10 identifier];
        [v24 resolvePeripheral:v33 withAdv:v47];

        v34 = [v10 identifier];
        v35 = [v24 isPeripheralResolvable:v34];

        if (v35)
        {
          v21 = 0;
          v39 = v46;
LABEL_29:

          v41 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            v42 = v41;
            v43 = [v10 identifier];
            *buf = 138412290;
            *&buf[4] = v43;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "New Peripheral - Connecting %@", buf, 0xCu);
          }

          [(ConnectionManager *)v44 connectPeripheral:v10];
          goto LABEL_32;
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
  v39 = v46;

LABEL_32:
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ConnectionManager *)self peripheralManagerStateString];
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PeripheralManager state is now %@", &v20, 0xCu);
  }

  if ([v4 state] == 5)
  {
    v8 = +[TBSService sharedInstance];

    if (v8)
    {
      peripheralManager = self->_peripheralManager;
      v10 = +[TBSService sharedInstance];
      v11 = [v10 service];
      [(CBPeripheralManager *)peripheralManager addService:v11];
    }

    else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005DCC0();
    }

    v18 = +[MCSService sharedInstance];

    if (v18)
    {
      v19 = self->_peripheralManager;
      v16 = +[MCSService sharedInstance];
      v17 = [v16 service];
      [(CBPeripheralManager *)v19 addService:v17];
      goto LABEL_13;
    }

    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005DD40();
    }
  }

  else if ([v4 state] == 1 || objc_msgSend(v4, "state") == 4)
  {
    v12 = self->_peripheralManager;
    v13 = +[TBSService sharedInstance];
    v14 = [v13 service];
    [(CBPeripheralManager *)v12 removeService:v14];

    v15 = self->_peripheralManager;
    v16 = +[MCSService sharedInstance];
    v17 = [v16 service];
    [(CBPeripheralManager *)v15 removeService:v17];
LABEL_13:
  }
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v5 = a4;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Added service %@", &v7, 0xCu);
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000A9FE0;
  if (v9)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(ConnectionManager *)self nameForCentral:v9];
      v14 = +[TBSService sharedInstance];
      v15 = [v14 service];
      [v15 characteristics];
      v34 = v8;
      v17 = v16 = self;
      if ([v17 containsObject:v10])
      {
        v18 = @"TBS";
      }

      else
      {
        v18 = @"MCS";
      }

      v19 = [v10 UUID];
      *buf = 136315906;
      v36 = "[ConnectionManager peripheralManager:central:didSubscribeToCharacteristic:]";
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v18;
      v41 = 2112;
      v42 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : Central %@ is attempting to subscribte to %@ characteristic %@", buf, 0x2Au);

      self = v16;
      v8 = v34;
    }

    v20 = +[TBSService sharedInstance];
    v21 = [v20 service];
    v22 = [v21 characteristics];
    v23 = [v22 containsObject:v10];

    if (v23)
    {
      v24 = TBSService;
LABEL_13:
      v29 = [(__objc2_class *)v24 sharedInstance];
      [v29 peripheralManager:v8 central:v9 didSubscribeToCharacteristic:v10];

      goto LABEL_14;
    }

    v25 = +[MCSService sharedInstance];
    v26 = [v25 service];
    v27 = [v26 characteristics];
    v28 = [v27 containsObject:v10];

    if (v28)
    {
      v24 = MCSService;
      goto LABEL_13;
    }

    v30 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [(ConnectionManager *)self nameForCentral:v9];
      v33 = [v10 UUID];
      *buf = 136315650;
      v36 = "[ConnectionManager peripheralManager:central:didSubscribeToCharacteristic:]";
      v37 = 2112;
      v38 = v32;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s : Central %@ tried to subscribe to an unsupported characteristic %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005DDC0();
  }

LABEL_14:
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000A9FE0;
  if (v9)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(ConnectionManager *)self nameForCentral:v9];
      v14 = +[TBSService sharedInstance];
      v15 = [v14 service];
      [v15 characteristics];
      v34 = v8;
      v17 = v16 = self;
      if ([v17 containsObject:v10])
      {
        v18 = @"TBS";
      }

      else
      {
        v18 = @"MCS";
      }

      v19 = [v10 UUID];
      *buf = 136315906;
      v36 = "[ConnectionManager peripheralManager:central:didUnsubscribeFromCharacteristic:]";
      v37 = 2112;
      v38 = v13;
      v39 = 2112;
      v40 = v18;
      v41 = 2112;
      v42 = v19;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : Central %@ is attempting to unsubscribe to %@ characteristic %@", buf, 0x2Au);

      self = v16;
      v8 = v34;
    }

    v20 = +[TBSService sharedInstance];
    v21 = [v20 service];
    v22 = [v21 characteristics];
    v23 = [v22 containsObject:v10];

    if (v23)
    {
      v24 = TBSService;
LABEL_13:
      v29 = [(__objc2_class *)v24 sharedInstance];
      [v29 peripheralManager:v8 central:v9 didUnsubscribeFromCharacteristic:v10];

      goto LABEL_14;
    }

    v25 = +[MCSService sharedInstance];
    v26 = [v25 service];
    v27 = [v26 characteristics];
    v28 = [v27 containsObject:v10];

    if (v28)
    {
      v24 = MCSService;
      goto LABEL_13;
    }

    v30 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [(ConnectionManager *)self nameForCentral:v9];
      v33 = [v10 UUID];
      *buf = 136315650;
      v36 = "[ConnectionManager peripheralManager:central:didUnsubscribeFromCharacteristic:]";
      v37 = 2112;
      v38 = v32;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%s : Central %@ was not subscribed to characteristic %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005DE40();
  }

LABEL_14:
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 characteristic];
  v9 = [v8 service];
  v10 = +[TBSService sharedInstance];
  v11 = [v10 service];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    v13 = TBSService;
LABEL_5:
    v19 = [(__objc2_class *)v13 sharedInstance];
    [v19 peripheralManager:v6 didReceiveReadRequest:v7];

    goto LABEL_9;
  }

  v14 = [v7 characteristic];
  v15 = [v14 service];
  v16 = +[MCSService sharedInstance];
  v17 = [v16 service];
  v18 = [v15 isEqual:v17];

  if (v18)
  {
    v13 = MCSService;
    goto LABEL_5;
  }

  v20 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005DEC0(v20);
  }

  [(CBPeripheralManager *)self->_peripheralManager respondToRequest:v7 withResult:10];
LABEL_9:
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 firstObject];
  v9 = [v8 characteristic];
  v10 = [v9 service];
  v11 = +[TBSService sharedInstance];
  v12 = [v11 service];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    v14 = TBSService;
LABEL_5:
    v20 = [(__objc2_class *)v14 sharedInstance];
    [v20 peripheralManager:v6 didReceiveWriteRequests:v7];

    goto LABEL_9;
  }

  v15 = [v8 characteristic];
  v16 = [v15 service];
  v17 = +[MCSService sharedInstance];
  v18 = [v17 service];
  v19 = [v16 isEqual:v18];

  if (v19)
  {
    v14 = MCSService;
    goto LABEL_5;
  }

  v21 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005DF7C(v21);
  }

  [(CBPeripheralManager *)self->_peripheralManager respondToRequest:v8 withResult:10];
LABEL_9:
}

- (void)respondToRequest:(id)a3 withResult:(int64_t)a4
{
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 characteristic];
    v10 = [v9 UUID];
    v11 = [v6 value];
    v12 = 136315906;
    v13 = "[ConnectionManager respondToRequest:withResult:]";
    v14 = 2048;
    v15 = a4;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s : Responding with result %ld to request on characteristic %@: %@", &v12, 0x2Au);
  }

  [(CBPeripheralManager *)self->_peripheralManager respondToRequest:v6 withResult:a4];
}

- (void)startStreamingForSession:(id)a3
{
  v4 = a3;
  if (self->_testMode)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E038();
    }

    v5 = +[LEAudioXPCListener instance];
    [v5 notifyCAPProcedureComplete:v4 withInfo:&off_10009B408];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [(ConnectionManager *)self clientCAPSet];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [v10 sessionID];
          v12 = [v11 compare:v4];

          if (!v12)
          {
            v13 = [v10 getConnectedPeripherals];
            v14 = [v13 allKeys];

            v15 = +[NSMutableArray array];
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v16 = v14;
            v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v24;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v24 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = [*(*(&v23 + 1) + 8 * j) identifier];
                  [v15 addObject:v21];
                }

                v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
              }

              while (v18);
            }

            v22 = [v10 getAudioConfigList];
            [v10 CAPUnicastAudioStart:v15 withAudioChanConfig:v22];

            goto LABEL_22;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_22:
}

- (void)stopStreamingForSession:(id)a3
{
  v4 = a3;
  if (self->_testMode)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E074();
    }

    v5 = +[LEAudioXPCListener instance];
    [v5 notifyCAPProcedureComplete:v4 withInfo:&off_10009B430];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [(ConnectionManager *)self clientCAPSet];
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [v10 sessionID];
          v12 = [v11 compare:v4];

          if (!v12)
          {
            v13 = [v10 getConnectedPeripherals];
            v14 = [v13 allKeys];

            v15 = +[NSMutableArray array];
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v16 = v14;
            v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v23;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v23 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = [*(*(&v22 + 1) + 8 * j) identifier];
                  [v15 addObject:v21];
                }

                v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
              }

              while (v18);
            }

            [v10 CAPUnicastAudioStopRelease:v15];
            goto LABEL_22;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_22:
}

- (void)updateCodecConfigForSession:(id)a3 withCodecConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_testMode)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E0B0();
    }
  }

  else
  {
    v24 = v6;
    v9 = [v7 valueForKey:@"kCodecConfigID"];
    v10 = [v8 valueForKey:@"kRequiresInput"];
    v11 = [v8 valueForKey:@"kContentType"];
    v12 = +[NSMutableDictionary dictionary];
    v13 = [(ConnectionManager *)self clientCAPSet];
    v14 = [v13 allObjects];
    v15 = [v14 firstObject];

    v16 = [v15 getAudioConfigIndex:{objc_msgSend(v10, "BOOLValue")}];
    [v15 setRequiresInput:{objc_msgSend(v10, "BOOLValue")}];
    v17 = [NSNumber numberWithUnsignedInt:v16];
    [v12 setValue:v17 forKey:@"AudioConfigIndex"];

    v25 = v9;
    [v12 setValue:v9 forKey:@"CodecIndex"];
    [v12 setValue:&off_10009B2E0 forKey:@"TargetLatency"];
    [v12 setValue:&off_10009B2F8 forKey:@"TargetPhy"];
    [v12 setValue:@"LC3" forKey:@"CodecID"];
    v18 = [v11 intValue];
    if (v18 == 1)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2 * ([v11 intValue] == 2);
    }

    v20 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v21 = "Converstion";
      *buf = 136316418;
      v27 = "[ConnectionManager updateCodecConfigForSession:withCodecConfig:]";
      v28 = 2080;
      if (v18 == 1)
      {
        v21 = "Media";
      }

      v29 = v21;
      v30 = 2112;
      v31 = v25;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v11;
      v36 = 1024;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s : Codec Config Updates Applied: ContextType is of type %s. codecConfigInfo %@, requiresInput %@, audioContentType %@, audioConfigIndex %d", buf, 0x3Au);
    }

    v22 = [NSNumber numberWithInt:v19];
    [v12 setValue:v22 forKey:@"SinkContextType"];

    v23 = [NSNumber numberWithInt:v19];
    [v12 setValue:v23 forKey:@"SourceContextType"];

    v6 = v24;
    [(ConnectionManager *)self setAudioConfiguration:v12 forSession:v24];
  }
}

- (void)updateVolumeForSession:(id)a3 withVolume:(float)a4
{
  v6 = a3;
  if (self->_testMode)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005E0EC();
    }
  }

  else
  {
    v7 = [(ConnectionManager *)self clientCAPSet];
    v8 = [v7 allObjects];
    v9 = [v8 firstObject];

    v10 = [v9 getConnectedPeripherals];
    v11 = [v10 allKeys];

    v12 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v20;
      do
      {
        v17 = 0;
        do
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v19 + 1) + 8 * v17) identifier];
          [v12 addObject:v18];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v15);
    }

    [v9 CAPCommanderChangeVolume:v12 withVolume:(a4 * 255.0)];
  }
}

- (void)setupCIG:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting up CIG for %@", &v10, 0xCu);
  }

  v9 = [(ConnectionManager *)self centralManager];
  [v9 setupCIG:v6 completion:v7];
}

- (void)tearDownCIG:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Tearing down CIG for %@", buf, 0xCu);
  }

  v9 = [(ConnectionManager *)self centralManager];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10003CC30;
  v15 = &unk_100095708;
  v16 = self;
  v17 = v7;
  v10 = v7;
  [v9 removeCIG:v6 completion:&v12];

  v11 = [v6 objectForKeyedSubscript:{@"kCBLEAudioArgCigId", v12, v13, v14, v15, v16}];
  [(NSMutableDictionary *)self->_cisConnectionEventDict removeObjectForKey:v11];
  [(NSMutableDictionary *)self->_cisDisconnectionEventDict removeObjectForKey:v11];
}

- (void)connectCIS:(id)a3 withConnectionCompletion:(id)a4 withDisconnectionCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Connecting to CIS with %@", &v18, 0xCu);
  }

  v12 = [v8 objectForKeyedSubscript:@"kCBLEAudioArgCigId"];
  cisConnectionEventDict = self->_cisConnectionEventDict;
  v14 = [v9 copy];
  [(NSMutableDictionary *)cisConnectionEventDict setObject:v14 forKey:v12];

  cisDisconnectionEventDict = self->_cisDisconnectionEventDict;
  v16 = [v10 copy];
  [(NSMutableDictionary *)cisDisconnectionEventDict setObject:v16 forKey:v12];

  v17 = [(ConnectionManager *)self centralManager];
  [v17 connectCIS:v8];
}

- (void)disconnectCIS:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disconnecting from CIS with %@", &v7, 0xCu);
  }

  v6 = [(ConnectionManager *)self centralManager];
  [v6 disconnectCIS:v4];
}

- (id)handleHapUnicastRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"ControlOperations"];
  v6 = +[NSMutableDictionary dictionary];
  v7 = v6;
  if (self->_testMode)
  {
    v86 = v6;
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = [(ConnectionManager *)self clientCAPSet];
    v91 = [obj countByEnumeratingWithState:&v117 objects:v126 count:16];
    if (!v91)
    {
      goto LABEL_73;
    }

    v89 = v5;
    v90 = *v118;
    v8 = &MGGetBoolAnswer_ptr;
    v87 = v4;
    while (1)
    {
      for (i = 0; i != v91; i = i + 1)
      {
        if (*v118 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v117 + 1) + 8 * i);
        if ([v5 isEqual:@"readPresetsRequest"])
        {
          v11 = objc_alloc(v8[241]);
          v12 = [v4 valueForKey:@"DeviceUUID"];
          v13 = [v11 initWithUUIDString:v12];

          v14 = [v4 valueForKey:@"StartIndex"];
          v15 = [v14 unsignedIntValue];

          v16 = [v4 valueForKey:@"NumPresets"];
          v17 = [v16 unsignedIntValue];

          if (v13)
          {
            [v10 HAPReadPresetsRequest:v13 withStartIndex:v15 withNumPresets:v17];
          }

          else
          {
            v92 = v10;
            v18 = [v10 getConnectedPeripherals];
            v19 = [v18 allKeys];

            v20 = +[NSMutableArray array];
            v113 = 0u;
            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v21 = v19;
            v22 = [v21 countByEnumeratingWithState:&v113 objects:v125 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v114;
              do
              {
                for (j = 0; j != v23; j = j + 1)
                {
                  if (*v114 != v24)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v26 = [*(*(&v113 + 1) + 8 * j) identifier];
                  [v20 addObject:v26];
                }

                v23 = [v21 countByEnumeratingWithState:&v113 objects:v125 count:16];
              }

              while (v23);
            }

            v10 = v92;
            [v92 HAPSendReadPresetsRequest:v20 withStartIndex:v15 withNumPresets:v17];

            v4 = v87;
            v5 = v89;
            v8 = &MGGetBoolAnswer_ptr;
          }
        }

        if ([v5 isEqual:@"writePresetName"])
        {
          v27 = objc_alloc(v8[241]);
          v28 = [v4 valueForKey:@"DeviceUUID"];
          v29 = [v27 initWithUUIDString:v28];

          v30 = [v4 valueForKey:@"Index"];
          v31 = [v30 unsignedIntValue];

          v32 = [v4 valueForKey:@"Name"];
          if (v29)
          {
            [v10 HAPWritePresetName:v29 withIndex:v31 withName:v32];
          }

          else
          {
            v93 = v10;
            v39 = [v10 getConnectedPeripherals];
            v40 = [v39 allKeys];

            v41 = +[NSMutableArray array];
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            v42 = v40;
            v43 = [v42 countByEnumeratingWithState:&v109 objects:v124 count:16];
            if (v43)
            {
              v44 = v43;
              v45 = *v110;
              do
              {
                for (k = 0; k != v44; k = k + 1)
                {
                  if (*v110 != v45)
                  {
                    objc_enumerationMutation(v42);
                  }

                  v47 = [*(*(&v109 + 1) + 8 * k) identifier];
                  [v41 addObject:v47];
                }

                v44 = [v42 countByEnumeratingWithState:&v109 objects:v124 count:16];
              }

              while (v44);
            }

            [v93 HAPSendWritePresetName:v41 withIndex:v31 withName:v32];
            v4 = v87;
            v5 = v89;
            v8 = &MGGetBoolAnswer_ptr;
          }

          goto LABEL_70;
        }

        if ([v5 isEqual:@"setActPreset"])
        {
          v33 = objc_alloc(v8[241]);
          v34 = [v4 valueForKey:@"DeviceUUID"];
          v29 = [v33 initWithUUIDString:v34];

          v35 = [v4 valueForKey:@"Index"];
          v36 = [v35 unsignedIntValue];

          if (!v29)
          {
            v94 = v10;
            v50 = [v10 getConnectedPeripherals];
            v51 = [v50 allKeys];

            v52 = +[NSMutableArray array];
            v53 = [v4 valueForKey:@"SyncLocally"];
            v54 = [v53 BOOLValue];

            v107 = 0u;
            v108 = 0u;
            v105 = 0u;
            v106 = 0u;
            v55 = v51;
            v56 = [v55 countByEnumeratingWithState:&v105 objects:v123 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v106;
              do
              {
                for (m = 0; m != v57; m = m + 1)
                {
                  if (*v106 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v60 = [*(*(&v105 + 1) + 8 * m) identifier];
                  [v52 addObject:v60];
                }

                v57 = [v55 countByEnumeratingWithState:&v105 objects:v123 count:16];
              }

              while (v57);
            }

            [v94 HAPSendSetActivePreset:v52 withIndex:v36 syncLocally:v54];
            v4 = v87;
            goto LABEL_69;
          }

          [v10 HAPSetActivePreset:v29 withIndex:v36];
        }

        else if ([v5 isEqual:@"setNextPreset"])
        {
          v37 = objc_alloc(v8[241]);
          v38 = [v4 valueForKey:@"DeviceUUID"];
          v29 = [v37 initWithUUIDString:v38];

          if (!v29)
          {
            v95 = v10;
            v63 = [v10 getConnectedPeripherals];
            v64 = [v63 allKeys];

            v65 = +[NSMutableArray array];
            v66 = [v4 valueForKey:@"SyncLocally"];
            v67 = [v66 BOOLValue];

            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v68 = v64;
            v69 = [v68 countByEnumeratingWithState:&v101 objects:v122 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v102;
              do
              {
                for (n = 0; n != v70; n = n + 1)
                {
                  if (*v102 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v73 = [*(*(&v101 + 1) + 8 * n) identifier];
                  [v65 addObject:v73];
                }

                v70 = [v68 countByEnumeratingWithState:&v101 objects:v122 count:16];
              }

              while (v70);
            }

            [v95 HAPSendSetNextPreset:v65 syncLocally:v67];
            goto LABEL_68;
          }

          [v10 HAPSetNextPreset:v29];
        }

        else if ([v5 isEqual:@"setPrevPreset"])
        {
          v48 = objc_alloc(v8[241]);
          v49 = [v4 valueForKey:@"DeviceUUID"];
          v29 = [v48 initWithUUIDString:v49];

          if (!v29)
          {
            v96 = v10;
            v76 = [v10 getConnectedPeripherals];
            v77 = [v76 allKeys];

            v65 = +[NSMutableArray array];
            v78 = [v4 valueForKey:@"SyncLocally"];
            v79 = [v78 BOOLValue];

            v99 = 0u;
            v100 = 0u;
            v97 = 0u;
            v98 = 0u;
            v68 = v77;
            v80 = [v68 countByEnumeratingWithState:&v97 objects:v121 count:16];
            if (v80)
            {
              v81 = v80;
              v82 = *v98;
              do
              {
                for (ii = 0; ii != v81; ii = ii + 1)
                {
                  if (*v98 != v82)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v84 = [*(*(&v97 + 1) + 8 * ii) identifier];
                  [v65 addObject:v84];
                }

                v81 = [v68 countByEnumeratingWithState:&v97 objects:v121 count:16];
              }

              while (v81);
            }

            [v96 HAPSendSetPreviousPreset:v65 syncLocally:v79];
LABEL_68:

LABEL_69:
            v5 = v89;
            v8 = &MGGetBoolAnswer_ptr;
            goto LABEL_70;
          }

          [v10 HAPSetPreviousPreset:v29];
        }

        else if ([v5 isEqual:@"readActPresetIndex"])
        {
          v61 = objc_alloc(v8[241]);
          v62 = [v4 valueForKey:@"DeviceUUID"];
          v29 = [v61 initWithUUIDString:v62];

          [v10 HAPReadActivePresetIndex:v29];
        }

        else
        {
          if (![v5 isEqual:@"readHAFeatures"])
          {
            continue;
          }

          v74 = objc_alloc(v8[241]);
          v75 = [v4 valueForKey:@"DeviceUUID"];
          v29 = [v74 initWithUUIDString:v75];

          [v10 HAPReadHearingAidFeatures:v29];
        }

LABEL_70:
      }

      v91 = [obj countByEnumeratingWithState:&v117 objects:v126 count:16];
      if (!v91)
      {
LABEL_73:

        v7 = v86;
        goto LABEL_77;
      }
    }
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005E128();
  }

  [v7 setObject:@"Can't run HAP Unicast Commands while not in test mode." forKey:@"errorMsg"];
LABEL_77:

  return v7;
}

- (id)handleCapUnicastRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = v5;
  if (!self->_testMode)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E164();
    }

    [v6 setObject:@"Can't run CAP Unicast Commands while not in test mode." forKey:@"errorMsg"];
    v91 = v6;
    goto LABEL_91;
  }

  v94 = v5;
  v7 = [v4 objectForKeyedSubscript:@"CAPUnicastProcedure"];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v101 = self;
  obj = [(ConnectionManager *)self clientCAPSet];
  v105 = [obj countByEnumeratingWithState:&v136 objects:v148 count:16];
  if (!v105)
  {
LABEL_83:

    v6 = v94;
    v90 = v94;
    goto LABEL_90;
  }

  v104 = *v137;
  v8 = &MGGetBoolAnswer_ptr;
  v102 = v4;
  v97 = v7;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v137 != v104)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(*(&v136 + 1) + 8 * v9);
    if (([v10 isHALPublished] & 1) == 0 && !v101->_testMode)
    {
      break;
    }

    if ([v7 isEqual:@"start"])
    {
      v11 = v9;
      v12 = v10;
      v13 = [v10 getConnectedPeripherals];
      v14 = [v13 allKeys];

      v15 = [v8[266] array];
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v132 objects:v147 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v133;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v133 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(*(&v132 + 1) + 8 * i) identifier];
            [v15 addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v132 objects:v147 count:16];
        }

        while (v18);
      }

      v10 = v12;
      v22 = [v12 getAudioConfigList];
      [v12 CAPUnicastAudioStart:v15 withAudioChanConfig:v22];

      v8 = &MGGetBoolAnswer_ptr;
      v9 = v11;
    }

    if ([v7 isEqual:@"join"])
    {
      v23 = [v8[266] array];
      v24 = [NSUUID alloc];
      v25 = [v4 valueForKey:@"DeviceUUID"];
      v26 = [v24 initWithUUIDString:v25];

      v27 = [v4 valueForKey:@"CigID"];
      v28 = [v27 unsignedIntValue];

      v29 = [v10 getAudioConfigList];
      v30 = [v29 count];

      if (v30 <= 1)
      {
        v31 = [v10 getAudioConfigList];
        memset(v131, 0, sizeof(v131));
        if ([v31 countByEnumeratingWithState:v131 objects:v146 count:16])
        {
          v32 = v10;
          v99 = v9;
          v33 = **(&v131[0] + 1);
          v34 = objc_alloc_init(AudioConfig);
          -[AudioConfig setCodecID:](v34, "setCodecID:", [v33 codecID]);
          [(AudioConfig *)v34 setSinkAudioLocMask:0];
          [(AudioConfig *)v34 setSourceAudioLocMask:0];
          [(AudioConfig *)v34 setSinkAudioChanPerAse:0];
          [(AudioConfig *)v34 setSourceAudioChanPerAse:0];
          memset(v130, 0, sizeof(v130));
          v35 = [v33 audioChanConfigArray];
          if ([v35 countByEnumeratingWithState:v130 objects:v145 count:16])
          {
            v36 = **(&v130[0] + 1);
            v37 = [**(&v130[0] + 1) codecIndex];
            v38 = v26;
            v39 = [v36 contextTypes];
            v40 = [v36 isSink];
            v41 = v37;
            v7 = v97;
            v42 = v39;
            v26 = v38;
            v4 = v102;
            [(AudioConfig *)v34 addChannelConfigWithCodecIndex:v41 withContextType:v42 withCCID:&__NSArray0__struct withDirection:v40];
          }

          v10 = v32;
          [v32 setUnicastAudioConfig:v34];

          v9 = v99;
        }
      }

      [v23 addObject:v26];
      [v10 CAPUnicastAudioJoin:v23 withCigID:v28];
      v8 = &MGGetBoolAnswer_ptr;
      goto LABEL_45;
    }

    if ([v7 isEqual:@"stopDis"])
    {
      v43 = v10;
      v44 = [v10 getConnectedPeripherals];
      v45 = [v44 allKeys];

      v46 = v8;
      v26 = [v8[266] array];
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v129 = 0u;
      v23 = v45;
      v47 = [v23 countByEnumeratingWithState:&v126 objects:v144 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v127;
        do
        {
          for (j = 0; j != v48; j = j + 1)
          {
            if (*v127 != v49)
            {
              objc_enumerationMutation(v23);
            }

            v51 = [*(*(&v126 + 1) + 8 * j) identifier];
            [v26 addObject:v51];
          }

          v48 = [v23 countByEnumeratingWithState:&v126 objects:v144 count:16];
        }

        while (v48);
      }

      [v43 CAPUnicastAudioStopDisable:v26];
      goto LABEL_44;
    }

    if ([v7 isEqual:@"stopRel"])
    {
      v52 = v10;
      v53 = [v10 getConnectedPeripherals];
      v54 = [v53 allKeys];

      v46 = v8;
      v26 = [v8[266] array];
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v23 = v54;
      v55 = [v23 countByEnumeratingWithState:&v122 objects:v143 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v123;
        do
        {
          for (k = 0; k != v56; k = k + 1)
          {
            if (*v123 != v57)
            {
              objc_enumerationMutation(v23);
            }

            v59 = [*(*(&v122 + 1) + 8 * k) identifier];
            [v26 addObject:v59];
          }

          v56 = [v23 countByEnumeratingWithState:&v122 objects:v143 count:16];
        }

        while (v56);
      }

      [v52 CAPUnicastAudioStopRelease:v26];
LABEL_44:
      v8 = v46;
      v4 = v102;
LABEL_45:

      goto LABEL_46;
    }

    if ([v7 isEqual:@"update"])
    {
      v98 = v10;
      v100 = v9;
      v60 = [v10 getConnectedPeripherals];
      v61 = [v60 allKeys];

      v62 = [v8[266] array];
      v63 = [v4 valueForKey:@"SinkContextType"];
      v64 = [v63 unsignedIntValue];

      v65 = [v4 valueForKey:@"SourceContextType"];
      v66 = [v65 unsignedIntValue];

      v67 = [v4 valueForKey:@"ContentCtrlID"];
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      v68 = v61;
      v69 = [v68 countByEnumeratingWithState:&v118 objects:v142 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v119;
        do
        {
          for (m = 0; m != v70; m = m + 1)
          {
            if (*v119 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = [*(*(&v118 + 1) + 8 * m) identifier];
            [v62 addObject:v73];
          }

          v70 = [v68 countByEnumeratingWithState:&v118 objects:v142 count:16];
        }

        while (v70);
      }

      v95 = v68;
      v96 = v62;

      v74 = [v98 getAudioConfigList];
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v106 = v74;
      v108 = [v74 countByEnumeratingWithState:&v114 objects:v141 count:16];
      if (!v108)
      {
LABEL_81:
        v26 = v96;
        [v98 CAPUnicastAudioUpdate:v96 withAudioChanConfig:v106];

        v4 = v102;
        v7 = v97;
        v8 = &MGGetBoolAnswer_ptr;
        v9 = v100;
        v23 = v95;
        goto LABEL_45;
      }

      v107 = *v115;
LABEL_58:
      v75 = 0;
      while (1)
      {
        if (*v115 != v107)
        {
          objc_enumerationMutation(v106);
        }

        v109 = v75;
        v76 = *(*(&v114 + 1) + 8 * v75);
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v77 = [v76 audioChanConfigArray];
        v78 = [v77 countByEnumeratingWithState:&v110 objects:v140 count:16];
        if (v78)
        {
          break;
        }

LABEL_79:

        v75 = v109 + 1;
        if ((v109 + 1) == v108)
        {
          v108 = [v106 countByEnumeratingWithState:&v114 objects:v141 count:16];
          if (!v108)
          {
            goto LABEL_81;
          }

          goto LABEL_58;
        }
      }

      v79 = v78;
      v80 = *v111;
      while (2)
      {
        v81 = 0;
LABEL_64:
        if (*v111 != v80)
        {
          objc_enumerationMutation(v77);
        }

        v82 = *(*(&v110 + 1) + 8 * v81);
        if ([v82 isSink])
        {
          v83 = v64;
        }

        else
        {
          v83 = v66;
        }

        [v82 setExcludeFromProcedure:1];
        if (v83)
        {
          [v82 setContextTypes:v83];
          [v82 setExcludeFromProcedure:0];
        }

        if ([v67 count])
        {
          v84 = [v67 indexOfObjectIdenticalTo:&off_10009B2B0];
          v85 = [v82 ccid];
          v86 = v85;
          if (v84 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v85 removeAllObjects];

            v87 = [v82 ccid];
            [v87 addObjectsFromArray:v67];
            goto LABEL_76;
          }

          v88 = [v85 count];

          if (v88)
          {
            v87 = [v82 ccid];
            [v87 removeAllObjects];
LABEL_76:

            [v82 setExcludeFromProcedure:0];
          }
        }

        if (v79 == ++v81)
        {
          v79 = [v77 countByEnumeratingWithState:&v110 objects:v140 count:16];
          if (!v79)
          {
            goto LABEL_79;
          }

          continue;
        }

        goto LABEL_64;
      }
    }

LABEL_46:
    if (++v9 == v105)
    {
      v89 = [obj countByEnumeratingWithState:&v136 objects:v148 count:16];
      v105 = v89;
      if (!v89)
      {
        goto LABEL_83;
      }

      goto LABEL_4;
    }
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005E1A0();
  }

  v6 = v94;
  [v94 setObject:@"Can't run CAP Unicast Commands when HAL Device is not published." forKey:@"errorMsg"];
  v92 = v94;

LABEL_90:
LABEL_91:

  return v6;
}

- (id)handleBapUnicastRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = v5;
  if (self->_testMode)
  {
    v61 = v5;
    v7 = [v4 objectForKeyedSubscript:@"ControlOperations"];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v8 = [(ConnectionManager *)self clientCAPSet];
    v9 = [v8 countByEnumeratingWithState:&v75 objects:v81 count:16];
    if (!v9)
    {
      goto LABEL_62;
    }

    v10 = v9;
    v11 = @"CodecConfig";
    v12 = @"QoSConfig";
    v13 = *v76;
    v62 = v7;
LABEL_4:
    v14 = 0;
    while (1)
    {
      if (*v76 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v75 + 1) + 8 * v14);
      if (([v15 isHALPublished] & 1) == 0 && !self->_testMode)
      {
        break;
      }

      if ([v7 isEqual:v11])
      {
        [v15 sendCodecConfigRequestForSession];
        goto LABEL_60;
      }

      if ([v7 isEqual:v12])
      {
        [v15 sendQoSConfigRequest];
        goto LABEL_60;
      }

      if ([v7 isEqual:@"Enable"])
      {
        [v4 valueForKey:@"SinkAseID"];
        v16 = v10;
        v17 = v11;
        v18 = self;
        v19 = v12;
        v21 = v20 = v8;
        v22 = [v4 valueForKey:@"SourceAseID"];
        v23 = v15;
        v24 = v4;
        v25 = v14;
        v26 = v13;
        v27 = v22;
        [v23 sendEnableRequestWithSnkAseID:v21 withSrcAseID:v22];

        v13 = v26;
        v14 = v25;
        v4 = v24;

        v8 = v20;
        v12 = v19;
        self = v18;
        v11 = v17;
        v10 = v16;
        v7 = v62;
        goto LABEL_60;
      }

      if ([v7 isEqual:@"ReceiverStartReady"])
      {
        [v15 sendReceiverStartReadyRequest];
        goto LABEL_60;
      }

      if ([v7 isEqual:@"ReceiverStopReady"])
      {
        [v15 sendReceiverStopReadyRequest];
        goto LABEL_60;
      }

      if ([v7 isEqual:@"UpdateMetadata"])
      {
        v55 = v14;
        v56 = v13;
        v57 = v10;
        v58 = v8;
        v59 = self;
        v28 = [v4 valueForKey:@"SinkContextType"];
        v29 = [v28 unsignedIntValue];

        v30 = [v4 valueForKey:@"SourceContextType"];
        v31 = [v30 unsignedIntValue];

        v60 = v4;
        v32 = [v4 valueForKey:@"ContentCtrlID"];
        v54 = v15;
        v33 = [v15 getAudioConfigList];
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        obj = v33;
        v65 = [v33 countByEnumeratingWithState:&v71 objects:v80 count:16];
        if (!v65)
        {
          goto LABEL_45;
        }

        v64 = *v72;
        while (1)
        {
          v34 = 0;
          do
          {
            if (*v72 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v66 = v34;
            v35 = *(*(&v71 + 1) + 8 * v34);
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v36 = [v35 audioChanConfigArray];
            v37 = [v36 countByEnumeratingWithState:&v67 objects:v79 count:16];
            if (v37)
            {
              v38 = v37;
              v39 = *v68;
              do
              {
                for (i = 0; i != v38; i = i + 1)
                {
                  if (*v68 != v39)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v41 = *(*(&v67 + 1) + 8 * i);
                  if ([v41 isSink])
                  {
                    v42 = v29;
                  }

                  else
                  {
                    v42 = v31;
                  }

                  [v41 setExcludeFromProcedure:1];
                  if (v42)
                  {
                    [v41 setContextTypes:v42];
                    [v41 setExcludeFromProcedure:0];
                  }

                  if ([v32 count])
                  {
                    v43 = [v32 indexOfObjectIdenticalTo:&off_10009B2B0];
                    v44 = [v41 ccid];
                    v45 = v44;
                    if (v43 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      [v44 removeAllObjects];

                      v46 = [v41 ccid];
                      [v46 addObjectsFromArray:v32];
                    }

                    else
                    {
                      v47 = [v44 count];

                      if (!v47)
                      {
                        continue;
                      }

                      v46 = [v41 ccid];
                      [v46 removeAllObjects];
                    }

                    [v41 setExcludeFromProcedure:0];
                  }
                }

                v38 = [v36 countByEnumeratingWithState:&v67 objects:v79 count:16];
              }

              while (v38);
            }

            v34 = v66 + 1;
          }

          while ((v66 + 1) != v65);
          v65 = [obj countByEnumeratingWithState:&v71 objects:v80 count:16];
          if (!v65)
          {
LABEL_45:
            [v54 sendUpdateMetadataRequest];

            self = v59;
            v4 = v60;
            v7 = v62;
            v10 = v57;
            v8 = v58;
            v11 = @"CodecConfig";
            v12 = @"QoSConfig";
            v14 = v55;
            v13 = v56;
            goto LABEL_60;
          }
        }
      }

      if ([v7 isEqual:@"Disable"])
      {
        [v15 sendDisableRequest];
      }

      else if ([v7 isEqual:@"Release"])
      {
        [v15 sendReleaseRequest];
      }

      else if ([v7 isEqual:@"setupCIG"])
      {
        [v15 setupCIGRequestHandlerForSession];
      }

      else if ([v7 isEqual:@"removeCIG"])
      {
        [v15 removeCIGRequestHandler];
      }

      else if ([v7 isEqual:@"connectCIS"])
      {
        [v15 connectCISRequestHandler];
      }

      else if ([v7 isEqual:@"disconnectCIS"])
      {
        [v15 disconnectCISRequestHandler];
      }

      else if ([v7 isEqual:@"matchDevice"])
      {
        +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v15 matchAudioDevicesHandler]);
        v49 = v48 = v8;
        [v61 setObject:v49 forKey:@"matchStatus"];

        v8 = v48;
      }

LABEL_60:
      if (++v14 == v10)
      {
        v10 = [v8 countByEnumeratingWithState:&v75 objects:v81 count:16];
        if (!v10)
        {
LABEL_62:

          v6 = v61;
          v50 = v61;
          goto LABEL_69;
        }

        goto LABEL_4;
      }
    }

    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E218();
    }

    v6 = v61;
    [v61 setObject:@"Can't run BAP Unicast Commands when HAL Device is not published." forKey:@"errorMsg"];
    v52 = v61;

LABEL_69:
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E1DC();
    }

    [v6 setObject:@"Can't run BAP Unicast Commands while not in test mode." forKey:@"errorMsg"];
    v51 = v6;
  }

  return v6;
}

- (id)handleCapCommanderRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = v5;
  if (self->_testMode)
  {
    v69 = v5;
    v7 = [v4 objectForKeyedSubscript:@"CAPCommanderProcedure"];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v72 = self;
    obj = [(ConnectionManager *)self clientCAPSet];
    v77 = [obj countByEnumeratingWithState:&v98 objects:v107 count:16];
    if (v77)
    {
      v75 = v4;
      v76 = *v99;
      v74 = v7;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v99 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v98 + 1) + 8 * v8);
        if (([v9 isHALPublished] & 1) == 0 && !v72->_testMode)
        {
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
          {
            sub_10005E290();
          }

          v6 = v69;
          [v69 setObject:@"Can't run CAP Commander Commands when HAL Device isn't published." forKey:@"errorMsg"];
          v67 = v69;

          goto LABEL_70;
        }

        if ([v7 isEqual:@"changeVol"])
        {
          break;
        }

        if ([v7 isEqual:@"changeVolOffset"])
        {
          v21 = [v4 valueForKey:@"VolumeOffset"];
          v70 = [v21 shortValue];

          v22 = [v4 valueForKey:@"AudioLocation"];
          v23 = [v22 unsignedIntValue];

          v12 = +[NSMutableArray array];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v24 = [v9 coordinatedSet];
          v25 = [v24 allValues];

          v26 = [v25 countByEnumeratingWithState:&v90 objects:v105 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v91;
            do
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v91 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = [*(*(&v90 + 1) + 8 * i) peripheral];
                v31 = [v30 identifier];
                [v12 addObject:v31];
              }

              v27 = [v25 countByEnumeratingWithState:&v90 objects:v105 count:16];
            }

            while (v27);
          }

          [v9 CAPCommanderChangeVolumeOffset:v12 withOffset:v70 forAudioLocation:v23];
          goto LABEL_60;
        }

        if ([v7 isEqual:@"changeVolMuteState"])
        {
          v32 = [v4 valueForKey:@"Mute"];
          v33 = [v32 unsignedIntValue];

          v12 = +[NSMutableArray array];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v34 = [v9 coordinatedSet];
          v35 = [v34 allValues];

          v36 = [v35 countByEnumeratingWithState:&v86 objects:v104 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v87;
            do
            {
              for (j = 0; j != v37; j = j + 1)
              {
                if (*v87 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = [*(*(&v86 + 1) + 8 * j) peripheral];
                v41 = [v40 identifier];
                [v12 addObject:v41];
              }

              v37 = [v35 countByEnumeratingWithState:&v86 objects:v104 count:16];
            }

            while (v37);
          }

          [v9 CAPCommanderChangeVolumeMuteState:v12 withMute:v33 != 0];
          goto LABEL_60;
        }

        if ([v7 isEqual:@"micMuteState"])
        {
          v42 = [v4 valueForKey:@"Mute"];
          v43 = [v42 unsignedIntValue];

          v12 = +[NSMutableArray array];
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v44 = [v9 coordinatedSet];
          v45 = [v44 allValues];

          v46 = [v45 countByEnumeratingWithState:&v82 objects:v103 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v83;
            do
            {
              for (k = 0; k != v47; k = k + 1)
              {
                if (*v83 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = [*(*(&v82 + 1) + 8 * k) peripheral];
                v51 = [v50 identifier];
                [v12 addObject:v51];
              }

              v47 = [v45 countByEnumeratingWithState:&v82 objects:v103 count:16];
            }

            while (v47);
          }

          if (v43 == 1)
          {
            v52 = 1;
          }

          else
          {
            v52 = 2;
          }

          if (v43)
          {
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          [v9 CAPCommanderMicrophoneMuteState:v12 withMute:v53];
          goto LABEL_60;
        }

        if ([v7 isEqual:@"changeMicGainSetting"])
        {
          v54 = [v4 valueForKey:@"GainSetting"];
          v71 = [v54 charValue];

          v55 = [v4 valueForKey:@"AudioInputType"];
          v56 = [v55 unsignedCharValue];

          v12 = +[NSMutableArray array];
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v57 = [v9 coordinatedSet];
          v58 = [v57 allValues];

          v59 = [v58 countByEnumeratingWithState:&v78 objects:v102 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v79;
            do
            {
              for (m = 0; m != v60; m = m + 1)
              {
                if (*v79 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = [*(*(&v78 + 1) + 8 * m) peripheral];
                v64 = [v63 identifier];
                [v12 addObject:v64];
              }

              v60 = [v58 countByEnumeratingWithState:&v78 objects:v102 count:16];
            }

            while (v60);
          }

          [v9 CAPCommanderChangeMicrophoneGainSetting:v12 withGainSetting:v71 forInputType:v56];
          goto LABEL_60;
        }

LABEL_61:
        if (++v8 == v77)
        {
          v77 = [obj countByEnumeratingWithState:&v98 objects:v107 count:16];
          if (v77)
          {
            goto LABEL_4;
          }

          goto LABEL_63;
        }
      }

      v10 = [v4 valueForKey:@"Volume"];
      v11 = [v10 unsignedIntValue];

      v12 = +[NSMutableArray array];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v13 = [v9 coordinatedSet];
      v14 = [v13 allValues];

      v15 = [v14 countByEnumeratingWithState:&v94 objects:v106 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v95;
        do
        {
          for (n = 0; n != v16; n = n + 1)
          {
            if (*v95 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [*(*(&v94 + 1) + 8 * n) peripheral];
            v20 = [v19 identifier];
            [v12 addObject:v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v94 objects:v106 count:16];
        }

        while (v16);
      }

      [v9 CAPCommanderChangeVolume:v12 withVolume:v11];
LABEL_60:
      v7 = v74;
      v4 = v75;

      goto LABEL_61;
    }

LABEL_63:

    v6 = v69;
    v65 = v69;
LABEL_70:
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E254();
    }

    [v6 setObject:@"Can't run CAP Commander Commands while not in test mode." forKey:@"errorMsg"];
    v66 = v6;
  }

  return v6;
}

- (id)handleCaptureRenderingControl:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"captureRenderingControl"];
  v5 = +[NSMutableDictionary dictionary];
  if (!self->_testMode)
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E2CC();
    }

    [v5 setObject:@"Can't run  Capture and Rendering Commands while not in test mode." forKey:@"errorMsg"];
    goto LABEL_49;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(ConnectionManager *)self clientCAPSet];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    goto LABEL_45;
  }

  v8 = v7;
  v9 = *v27;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      if (([v11 isHALPublished] & 1) == 0 && !self->_testMode)
      {
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005E308();
        }

        [v5 setObject:@"Can't run  Capture and Rendering Commands when HAL Device isn't published." forKey:@"errorMsg"];
        v24 = v5;

        goto LABEL_53;
      }

      if ([v4 isEqual:@"volumeUp"])
      {
        [v11 sendRelativeVolumeUpRequest];
        goto LABEL_25;
      }

      if ([v4 isEqual:@"volumeDown"])
      {
        [v11 sendRelativeVolumeDownRequest];
        goto LABEL_25;
      }

      if ([v4 isEqual:@"volumeMute"])
      {
        v12 = v11;
        v13 = 1;
LABEL_17:
        [v12 sendVolumeMuteRequest:v13];
        goto LABEL_25;
      }

      if ([v4 isEqual:@"volumeUnmute"])
      {
        v12 = v11;
        v13 = 0;
        goto LABEL_17;
      }

      if ([v4 isEqual:@"volumeMiddle"])
      {
        v14 = v11;
        v15 = 127;
LABEL_24:
        [v14 sendAbsoluteVolumeRequest:v15];
        goto LABEL_25;
      }

      if ([v4 isEqual:@"volumeMin"])
      {
        v14 = v11;
        v15 = 0;
        goto LABEL_24;
      }

      if ([v4 isEqual:@"volumeMax"])
      {
        v14 = v11;
        v15 = 255;
        goto LABEL_24;
      }

      if ([v4 isEqual:@"microphoneMute"])
      {
        v16 = v11;
        v17 = 1;
LABEL_33:
        [v16 sendMicrophoneMuteRequest:v17];
        goto LABEL_25;
      }

      if ([v4 isEqual:@"microphoneUnmute"])
      {
        v16 = v11;
        v17 = 0;
        goto LABEL_33;
      }

      if ([v4 isEqual:@"microphoneDisabled"])
      {
        v16 = v11;
        v17 = 2;
        goto LABEL_33;
      }

      if ([v4 isEqual:@"volumeOffsetPos"])
      {
        [v11 sendVolumeOffsetRequest:20 audioLocation:1];
        v18 = v11;
        v19 = 20;
LABEL_38:
        [v18 sendVolumeOffsetRequest:v19 audioLocation:2];
        goto LABEL_25;
      }

      if ([v4 isEqual:@"volumeOffsetNeg"])
      {
        [v11 sendVolumeOffsetRequest:4294967276 audioLocation:1];
        v18 = v11;
        v19 = 4294967276;
        goto LABEL_38;
      }

      if ([v4 isEqual:@"gainSettingPos"])
      {
        v20 = v11;
        v21 = 10;
      }

      else
      {
        if (![v4 isEqual:@"gainSettingNeg"])
        {
          goto LABEL_25;
        }

        v20 = v11;
        v21 = 4294967286;
      }

      [v20 sendMicrophoneGainSettingRequest:v21 inputType:7];
LABEL_25:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v22 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    v8 = v22;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_45:

LABEL_49:
  v23 = v5;
LABEL_53:

  return v5;
}

- (id)handleAcceptorInterfaceRequest:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  if (self->_testMode)
  {
    v6 = [NSUUID alloc];
    v7 = [v4 valueForKey:@"DeviceUUID"];
    v8 = [v6 initWithUUIDString:v7];

    v9 = [(ConnectionManager *)self getCAPWithDevice:v8];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 coordinatedSet];
      v12 = [v11 objectForKey:v8];

      if (v12)
      {
        v13 = [v4 objectForKeyedSubscript:@"interfaceRequest"];
        v14 = [v4 valueForKey:@"CharIndex"];
        v15 = [v14 unsignedIntValue];

        if ([v13 isEqual:@"readSinkASE"])
        {
          [v12 sendReadSinkASE:v15];
        }

        else if ([v13 isEqual:@"readSourceASE"])
        {
          [v12 sendReadSourceASE:v15];
        }

        else if ([v13 isEqual:@"writeASEControlPoint"])
        {
          [v12 sendWriteASEControlPoint];
        }

        else if ([v13 isEqual:@"readSinkAudioLocations"])
        {
          [v12 sendReadSinkAudioLocations];
        }

        else if ([v13 isEqual:@"writeSinkAudioLocations"])
        {
          [v12 sendWriteSinkAudioLocations];
        }

        else if ([v13 isEqual:@"readSourceAudioLocations"])
        {
          [v12 sendReadSourceAudioLocations];
        }

        else if ([v13 isEqual:@"writeSourceAudioLocations"])
        {
          [v12 sendWriteSourceAudioLocations];
        }

        else if ([v13 isEqual:@"readAvailableContexts"])
        {
          [v12 sendReadAvailableContexts];
        }

        else if ([v13 isEqual:@"readSupportedContexts"])
        {
          [v12 sendReadSupportedContexts];
        }

        v19 = v5;
      }

      else
      {
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005E380();
        }

        [v5 setObject:@"Can't run Acceptor Interface Requests when AcceptorInterface not found." forKey:@"errorMsg"];
        v18 = v5;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
      {
        sub_10005E3F0();
      }

      [v5 setObject:@"Can't run Acceptor Interface Requests when CAP not found." forKey:@"errorMsg"];
      v17 = v5;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E344();
    }

    [v5 setObject:@"Can't run Acceptor Interface Requests while not in test mode." forKey:@"errorMsg"];
    v16 = v5;
  }

  return v5;
}

- (void)setAudioConfiguration:(id)a3 forSession:(id)a4
{
  v4 = a3;
  v5 = [v4 valueForKey:@"AudioConfigIndex"];
  v6 = [v4 valueForKey:@"CodecIndex"];
  v7 = [v4 valueForKey:@"TargetLatency"];
  v8 = [v4 valueForKey:@"TargetPhy"];
  v9 = [v4 valueForKey:@"SinkContextType"];
  v10 = [v4 valueForKey:@"SourceContextType"];
  v73 = [v4 valueForKey:@"ContentCtrlID"];
  v68 = [v4 valueForKey:@"CodecID"];
  v11 = [v4 valueForKey:@"PublishHAL"];
  v62 = [v11 BOOLValue];

  v12 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316930;
    *&buf[4] = "[ConnectionManager setAudioConfiguration:forSession:]";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    *&buf[22] = 2112;
    *&buf[24] = v6;
    *&buf[32] = 2112;
    *&buf[34] = v7;
    *&buf[42] = 2112;
    v97 = v8;
    v98 = 2112;
    v99 = v9;
    v100 = 2112;
    v101 = v10;
    v102 = 2112;
    v103 = v68;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s : AudioConfigIndex: %@, CodecIndex: %@, TargetLatency: %@, TargetPhy: %@, SinkContextType: %@, SourceContextType: %@, CodecID: %@", buf, 0x52u);
  }

  v13 = v7;
  v14 = (&unk_100070330 + 44 * [v5 unsignedIntValue]);
  v15 = v14[1];
  *buf = *v14;
  *&buf[16] = v15;
  *&buf[28] = *(v14 + 28);
  v16 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v94 = 67109120;
    *&v94[4] = buf[1];
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "setAudioConfiguration - numOfServers: %d", v94, 8u);
  }

  v17 = [(ConnectionManager *)self clientCAPSet];
  v18 = [v17 allObjects];
  v19 = [v18 firstObject];

  v20 = v19;
  v67 = v13;
  if (v19)
  {
    if ([v5 unsignedIntValue])
    {
      if ([v5 unsignedIntValue] != 3 && objc_msgSend(v5, "unsignedIntValue") != 5 && objc_msgSend(v5, "unsignedIntValue") != 6)
      {
        [v19 setRequiresInput:1];
        v21 = qword_1000A9FE0;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Custom Audio Config Setting requires input", v94, 2u);
        }
      }
    }

    v71 = v10;
    v72 = v9;
    v64 = v8;
    v65 = v5;
    v70 = v6;
    v63 = v4;
    v81 = v19;
    [v19 clearAudioConfigList];
    v69 = buf[1];
    if (buf[1])
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      do
      {
        v79 = v23;
        v25 = &buf[20 * v22 + 4];
        *v94 = *v25;
        v95 = *(v25 + 4);
        v26 = objc_alloc_init(AudioConfig);
        v27 = qword_1000A9FE0;
        v28 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT);
        v29 = v94[0];
        if (v28)
        {
          *v90 = 67109376;
          v91 = v22;
          v92 = 1024;
          v93 = v94[0];
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Audio config serverConfig %d numOfChannels %d", v90, 0xEu);
        }

        [(AudioConfig *)v26 setCodecID:6];
        v77 = *&v94[4];
        [(AudioConfig *)v26 setSinkAudioLocMask:?];
        v75 = *&v94[8];
        [(AudioConfig *)v26 setSourceAudioLocMask:?];
        [(AudioConfig *)v26 setSinkAudioChanPerAse:v94[12]];
        v74 = v94[13];
        [(AudioConfig *)v26 setSourceAudioChanPerAse:?];
        if (v29)
        {
          v30 = &v94[14];
          do
          {
            v32 = *v30++;
            v31 = v32;
            if (v32)
            {
              v33 = v72;
            }

            else
            {
              v33 = v71;
            }

            -[AudioConfig addChannelConfigWithCodecIndex:withContextType:withCCID:withDirection:](v26, "addChannelConfigWithCodecIndex:withContextType:withCCID:withDirection:", [v6 unsignedIntValue], objc_msgSend(v33, "unsignedIntValue"), v73, v31);
            --v29;
          }

          while (v29);
        }

        [v19 setUnicastAudioConfig:v26];
        v23 = v77 | v79;
        if (v75 | v24)
        {
          v34 = 1;
        }

        else
        {
          v34 = v74 == 0;
        }

        if (v34)
        {
          v24 |= v75;
        }

        else
        {
          v24 = 1;
        }

        ++v22;
      }

      while (v22 != v69);
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    v35 = v64;
    v20 = v81;
    [v81 setTargetPhy:{objc_msgSend(v64, "unsignedIntValue")}];
    [v81 setTargetLatency:{objc_msgSend(v13, "unsignedIntValue")}];
    v5 = v65;
    v4 = v63;
    v10 = v71;
    v9 = v72;
    v36 = v73;
    if (self->_testMode)
    {
      v37 = v71;
      v38 = v64;
      v80 = v23;
      v39 = [v81 getConnectedPeripherals];
      v40 = [v39 allKeys];

      v76 = [v40 firstObject];
      if (v40)
      {
        v78 = v24;
        v41 = v64;
        if ([v81 isHALPublished])
        {
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v42 = v40;
          v43 = [v42 countByEnumeratingWithState:&v82 objects:v89 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v83;
            do
            {
              for (i = 0; i != v44; i = i + 1)
              {
                if (*v83 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v82 + 1) + 8 * i);
                v48 = +[LEAudioXPCListener instance];
                v49 = [v47 identifier];
                v50 = [v81 sessionID];
                [v48 removeDevice:v49 fromSession:v50];
              }

              v44 = [v42 countByEnumeratingWithState:&v82 objects:v89 count:16];
            }

            while (v44);
          }

          [v81 setIsHALPublished:0];
          v6 = v70;
          v41 = v64;
        }

        v51 = +[NSMutableDictionary dictionary];
        v88 = v6;
        v52 = [NSArray arrayWithObjects:&v88 count:1];
        [v51 setValue:v52 forKey:@"kSinkCodecConfigArray"];

        v87 = v6;
        v53 = [NSArray arrayWithObjects:&v87 count:1];
        [v51 setValue:v53 forKey:@"kSourceCodecConfigArray"];

        v54 = [NSNumber numberWithUnsignedInt:v80];
        [v51 setValue:v54 forKey:@"kSinkAudioLocations"];

        v55 = [NSNumber numberWithUnsignedInt:v78];
        [v51 setValue:v55 forKey:@"kSourceAudioLocations"];

        v86 = v68;
        v56 = [NSArray arrayWithObjects:&v86 count:1];
        [v51 setValue:v56 forKey:@"kCodecIDArray"];

        v57 = [NSNumber numberWithUnsignedChar:v69];
        [v51 setValue:v57 forKey:@"kCoordinatedSetSize"];

        v58 = v76;
        v59 = [v76 name];
        [v51 setValue:v59 forKey:@"kDeviceName"];

        v37 = v71;
        v36 = v73;
        if (v62)
        {
          v60 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
          {
            *v94 = 138412290;
            *&v94[4] = v51;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Sending Audio Device Publish Request %@", v94, 0xCu);
          }

          [v81 publishHALDevice:v51];
        }

        v38 = v41;

        v20 = v81;
      }

      else
      {
        v61 = qword_1000A9FE0;
        v36 = v73;
        v58 = v76;
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005E460(v61);
        }
      }

      v9 = v72;
      v35 = v38;
      v10 = v37;
      v5 = v65;
    }
  }

  else
  {
    v35 = v8;
    v36 = v73;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E4F8();
    }
  }
}

- (id)handleMediaControlCommands:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 objectForKeyedSubscript:@"MCSCommand"];
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing MCS Command %@", &v10, 0xCu);
  }

  if (self->_launchedAsServer)
  {
    v8 = +[ServerCommonAudioProfile instance];
    [v8 handleMediaControlRequest:v4];
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E534();
    }

    [v5 setObject:@"bluetoothaudiod is not running as a LE Audio Server" forKeyedSubscript:@"errorMsg"];
  }

  return v5;
}

- (id)handleTelephonyControlCommands:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [v4 objectForKeyedSubscript:@"TBSCommand"];
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[ConnectionManager handleTelephonyControlCommands:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s : Command %@", &v10, 0x16u);
  }

  if (self->_launchedAsServer)
  {
    v8 = +[ServerCommonAudioProfile instance];
    [v8 handleTelephonyControlRequest:v4];
  }

  else
  {
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E5B4();
    }

    [v5 setObject:@"bluetoothaudiod is not running as a LE Audio Server" forKeyedSubscript:@"errorMsg"];
  }

  return v5;
}

- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ConnectionManager *)self pendingUpdates];
  if ([v11 count])
  {

    goto LABEL_6;
  }

  v12 = [(ConnectionManager *)self peripheralManager];
  v13 = [v12 updateValue:v8 forCharacteristic:v9 onSubscribedCentrals:v10];

  if ((v13 & 1) == 0)
  {
LABEL_6:
    v17 = [(ConnectionManager *)self pendingUpdates];
    v18 = [ATTUpdate updateWithValue:v8 characteristic:v9 centrals:v10];
    [v17 addObject:v18];

    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v9 UUID];
      v22 = [(ConnectionManager *)self pendingUpdates];
      v23 = 136315906;
      v24 = "[ConnectionManager updateValue:forCharacteristic:onSubscribedCentrals:]";
      v25 = 2112;
      v26 = v21;
      v27 = 2112;
      v28 = v8;
      v29 = 2048;
      v30 = [v22 count];
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s : Queued update on characteristic %@, NSData value: %@, %lu pending updates", &v23, 0x2Au);
    }

    goto LABEL_8;
  }

  v14 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    v16 = [v9 UUID];
    v23 = 136315906;
    v24 = "[ConnectionManager updateValue:forCharacteristic:onSubscribedCentrals:]";
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s : update sent immediately for characteristic %@, to Centrals %@, NSData value: %@", &v23, 0x2Au);
  }

LABEL_8:
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = [(ConnectionManager *)self pendingUpdates];
  v5 = [v4 copy];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 136315906;
    v24 = v7;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v26 + 1) + 8 * v10);
      v12 = [(ConnectionManager *)self peripheralManager];
      v13 = [v11 value];
      v14 = [v11 characteristic];
      v15 = [v11 centrals];
      v16 = [v12 updateValue:v13 forCharacteristic:v14 onSubscribedCentrals:v15];

      if (!v16)
      {
        break;
      }

      v17 = qword_1000A9FE0;
      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v11 centrals];
        v20 = [v11 characteristic];
        v21 = [v20 UUID];
        v22 = [v11 value];
        *buf = v24;
        v31 = "[ConnectionManager peripheralManagerIsReadyToUpdateSubscribers:]";
        v32 = 2112;
        v33 = v19;
        v34 = 2112;
        v35 = v21;
        v36 = 2112;
        v37 = v22;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s : Serviced a pending update and updated subscriber centrals %@, on characteristic %@, NSData value: %@", buf, 0x2Au);
      }

      v23 = [(ConnectionManager *)self pendingUpdates];
      [v23 removeObject:v11];

      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)retrieveCapSessionsAndPeripherals
{
  v23 = objc_alloc_init(NSMutableDictionary);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(ConnectionManager *)self clientCAPSet];
  v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v3 = 0;
    v22 = *v31;
    do
    {
      v4 = 0;
      v5 = v3;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * v4);
        v3 = objc_alloc_init(NSMutableDictionary);

        v25 = v6;
        v7 = [v6 getConnectedPeripherals];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v27;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v27 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v26 + 1) + 8 * i);
              v13 = [v7 objectForKey:v12];
              v14 = [v13 mutableCopy];

              v15 = [v12 name];
              [v14 setValue:v15 forKey:@"peripheralName"];

              v16 = [v12 identifier];
              v17 = [v16 UUIDString];
              [v3 setValue:v14 forKey:v17];
            }

            v9 = [v7 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v9);
        }

        v18 = [v25 sessionID];
        v19 = [v18 UUIDString];
        [v23 setValue:v3 forKey:v19];

        v4 = v4 + 1;
        v5 = v3;
      }

      while (v4 != v24);
      v24 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  return v23;
}

- (id)retrievePairingInfo:(id)a3
{
  v4 = a3;
  v5 = [(ConnectionManager *)self centralManager];
  v6 = [v5 retrievePairingInfoForPeripheral:v4];

  return v6;
}

- (void)scanPeripherals:(BOOL)a3
{
  v3 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    if (v3)
    {
      v6 = @"start";
    }

    else
    {
      v6 = @"stop";
    }

    v7 = v5;
    v8 = [(ConnectionManager *)self centralManager];
    *buf = 138412546;
    v18 = v6;
    v19 = 1024;
    v20 = [v8 isScanning];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "scanPeripherals %@, scanning:%d", buf, 0x12u);
  }

  v9 = [(ConnectionManager *)self centralManager];
  v10 = v9;
  if (v3)
  {
    v11 = [v9 isScanning];

    if (v11)
    {
      return;
    }

    v10 = [(ConnectionManager *)self centralManager];
    v12 = [CBUUID UUIDWithString:CBUUIDCommonAudioServiceString];
    v13 = [CBUUID UUIDWithString:CBUUIDAudioStreamControlServiceString];
    v14 = [CBUUID UUIDWithString:CBUUIDTelephonyMediaAudioServiceString];
    v15 = [CBUUID UUIDWithString:CBUUIDHearingAccessServiceString];
    v16 = [NSArray arrayWithObjects:v12, v13, v14, v15, 0];
    [v10 scanForPeripheralsWithServices:v16 options:0];
  }

  else
  {
    [v9 stopScan];
  }
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
    return off_100095728[(v3 - 1)];
  }
}

- (id)peripheralManagerStateString
{
  v2 = [(CBPeripheralManager *)self->_peripheralManager state];
  if ((v2 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return off_100095728[(v2 - 1)];
  }
}

- (id)nameForCentral:(id)a3
{
  v3 = [a3 identifier];
  v4 = +[ConnectionManager instance];
  v5 = [v4 peripheralForIdentifier:v3];

  if (v5)
  {
    [v5 name];
  }

  else
  {
    [v3 UUIDString];
  }
  v6 = ;

  return v6;
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "peerDidCompletePairing", v5, 2u);
  }
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "peerDidFailToCompletePairing", v6, 2u);
  }
}

- (void)pairingAgent:(id)a3 peerDidUnpair:(id)a4
{
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "peerDidUnpair", v5, 2u);
  }
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = a5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "peerDidRequestPairing : %ld", buf, 0xCu);
  }

  if (a5 == 4 || a5 == 1)
  {
    pairingAgent = self->_pairingAgent;
    v16 = CBPairingAgentPairingDataPasskeyKey;
    v17 = v12;
    v15 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [(CBPairingAgent *)pairingAgent respondToPairingRequest:v11 type:a5 accept:1 data:v15];
  }

  else
  {
    [(CBPairingAgent *)self->_pairingAgent respondToPairingRequest:v11 type:a5 accept:1 data:0];
  }
}

- (BOOL)matchingCapSetWithSirk:(id)a3 withSirk:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 peripheral];
    v12 = [v11 identifier];
    *buf = 138412290;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "matchingCapSetWithSirk %@", buf, 0xCu);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v13 = [(ConnectionManager *)self clientCAPSet];
  v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
LABEL_5:
    v17 = 0;
    while (1)
    {
      if (*v33 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v32 + 1) + 8 * v17);
      v19 = [v18 getSIRK];
      if ([v19 isEqual:v7])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    v21 = v18;
    v22 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found Matching Cap matchingCapSetWithSirk %@", buf, 0xCu);
    }

    v20 = 1;
    if (v21)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_11:

    v20 = 0;
  }

  v23 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = [v8 peripheral];
    v26 = [v25 name];
    *buf = 138412290;
    v38 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is new. Creating new set", buf, 0xCu);
  }

  v21 = objc_alloc_init(ClientCommonAudioProfile);
  [(ClientCommonAudioProfile *)v21 setTestMode:self->_testMode];
  [(ClientCommonAudioProfile *)v21 setUseCSIPOrderedAccess:self->_useCSIPOrderedAccess];
  [(ClientCommonAudioProfile *)v21 setUseCSIPOrderedAccessWithCaptureRendering:self->_useCSIPOrderedAccessWithCaptureRendering];
  v27 = [(ConnectionManager *)self clientCAPSet];
  [v27 addObject:v21];

LABEL_18:
  [(ClientCommonAudioProfile *)v21 addAcceptorToSet:v8];
  [v8 setParentCap:v21];
  v28 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v28;
    v30 = [v8 getParentCap];
    *buf = 138412290;
    v38 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "matchingCapSetWithSirk %@", buf, 0xCu);
  }

  return v20;
}

- (id)getCAPWithDevice:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(ConnectionManager *)self clientCAPSet];
  v21 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v21)
  {
    v6 = *v28;
    v22 = v5;
    v20 = *v28;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v9 = [v8 getConnectedPeripherals];
        v10 = [v9 allKeys];
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          while (2)
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v23 + 1) + 8 * j) identifier];
              v17 = [v16 isEqual:v4];

              if (v17)
              {
                v18 = v8;

                v5 = v22;
                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v5 = v22;
        v6 = v20;
      }

      v18 = 0;
      v21 = [v22 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v21);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (void)changeVolumeMute:(id)a3 withMute:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(ConnectionManager *)self getCAPWithDevice:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 coordinatedSet];
    v10 = [v9 objectForKey:v6];

    if (v10)
    {
      [v10 setVolumeMute:v4 != 0];
    }

    else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005E380();
    }
  }

  else if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005E3F0();
  }
}

@end