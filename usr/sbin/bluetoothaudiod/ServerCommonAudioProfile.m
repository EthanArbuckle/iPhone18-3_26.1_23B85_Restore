@interface ServerCommonAudioProfile
+ (id)instance;
+ (void)initialize;
- (ServerCommonAudioProfile)init;
- (id)nameForCentral:(id)a3;
- (id)peripheralManagerStateString;
- (void)addService:(id)a3;
- (void)advertiseAudioService;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)createServices;
- (void)destroyServices;
- (void)handleMediaControlRequest:(id)a3;
- (void)handleServiceEvent:(unsigned __int8)a3 withEventObj:(id)a4;
- (void)handleTelephonyControlRequest:(id)a3;
- (void)initializeCISPeripheral;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3;
- (void)removeService:(id)a3;
- (void)respondToRequest:(id)a3 withResult:(int64_t)a4;
- (void)sendStreamingNotification;
- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5;
@end

@implementation ServerCommonAudioProfile

+ (id)instance
{
  if (qword_1000AA038 != -1)
  {
    sub_10005D3F8();
  }

  v3 = qword_1000AA030;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = qword_1000AA020;
    qword_1000AA020 = &off_10009B1C0;

    v3 = qword_1000AA028;
    qword_1000AA028 = &off_10009B1D8;
  }
}

- (ServerCommonAudioProfile)init
{
  v13.receiver = self;
  v13.super_class = ServerCommonAudioProfile;
  v2 = [(ServerCommonAudioProfile *)&v13 init];
  if (v2)
  {
    v14[0] = CBCentralManagerOptionReceiveSystemEvents;
    v14[1] = CBManagerNeedsRestrictedStateOperation;
    v15[0] = &__kCFBooleanTrue;
    v15[1] = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v4 = [[CBPeripheralManager alloc] initWithDelegate:v2 queue:&_dispatch_main_q options:v3];
    peripheralManager = v2->_peripheralManager;
    v2->_peripheralManager = v4;

    v6 = +[NSMapTable strongToStrongObjectsMapTable];
    serverServiceMap = v2->_serverServiceMap;
    v2->_serverServiceMap = v6;

    v8 = objc_alloc_init(NSMutableArray);
    pendingUpdates = v2->_pendingUpdates;
    v2->_pendingUpdates = v8;

    mcsInterface = v2->_mcsInterface;
    v2->_mcsInterface = 0;

    tbsInterface = v2->_tbsInterface;
    v2->_tbsInterface = 0;
  }

  return v2;
}

- (void)createServices
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = qword_1000AA020;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = NSClassFromString(*(*(&v12 + 1) + 8 * v7));
        if (v8)
        {
          v9 = objc_alloc_init(v8);
          [v9 setServiceEventHandler:{&stru_100095620, v12}];
          v10 = [(ServerCommonAudioProfile *)self serverServiceMap];
          v11 = [v9 service];
          [v10 setObject:v9 forKey:v11];

          [v9 start];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)advertiseAudioService
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting to advertise CAS", v9, 2u);
  }

  v4 = [CBUUID UUIDWithString:CBUUIDCommonAudioServiceString];
  v11[0] = CBAdvertisementDataServiceUUIDsKey;
  v5 = [v4 data];
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v12[0] = v6;
  v12[1] = &__kCFBooleanTrue;
  v11[1] = CBAdvertisementDataIsConnectable;
  v11[2] = CBManagerIsPrivilegedDaemonKey;
  v12[2] = &off_10009B298;
  v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  v8 = [(ServerCommonAudioProfile *)self peripheralManager];
  [v8 startAdvertising:v7];
}

- (void)initializeCISPeripheral
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing CIS Peripheral", buf, 2u);
  }

  v4 = [(ServerCommonAudioProfile *)self peripheralManager];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003638C;
  v5[3] = &unk_100095648;
  v5[4] = self;
  [v4 initCISPeripheral:0 completion:v5];
}

- (void)destroyServices
{
  v2 = [(ServerCommonAudioProfile *)self serverServiceMap];
  [v2 removeAllObjects];
}

- (void)addService:(id)a3
{
  v4 = a3;
  v5 = [(ServerCommonAudioProfile *)self peripheralManager];
  [v5 addService:v4];
}

- (void)removeService:(id)a3
{
  v4 = a3;
  v5 = [(ServerCommonAudioProfile *)self peripheralManager];
  [v5 removeService:v4];
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ServerCommonAudioProfile *)self peripheralManagerStateString];
    v8 = 136315394;
    v9 = "[ServerCommonAudioProfile peripheralManagerDidUpdateState:]";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s : PeripheralManager state is now %@", &v8, 0x16u);
  }

  if ([v4 state] == 5)
  {
    [(ServerCommonAudioProfile *)self createServices];
    [(ServerCommonAudioProfile *)self advertiseAudioService];
    [(ServerCommonAudioProfile *)self initializeCISPeripheral];
  }

  else
  {
    [(ServerCommonAudioProfile *)self destroyServices];
  }
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ServerCommonAudioProfile *)self serverServiceMap];
  v11 = [v10 objectForKey:v8];

  if (v11)
  {
    [v11 peripheralManager:v12 didAddService:v8 error:v9];
  }
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ServerCommonAudioProfile *)self serverServiceMap];
  v9 = [v7 characteristic];
  v10 = [v9 service];
  v11 = [v8 objectForKey:v10];

  if (v11)
  {
    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005D40C(v12, v7, self);
    }

    [v11 peripheralManager:v6 didReceiveReadRequest:v7];
  }

  else
  {
    v13 = [(ServerCommonAudioProfile *)self peripheralManager];
    [v13 respondToRequest:v7 withResult:10];
  }
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 firstObject];
  v9 = [(ServerCommonAudioProfile *)self serverServiceMap];
  v10 = [v8 characteristic];
  v11 = [v10 service];
  v12 = [v9 objectForKey:v11];

  if (v12)
  {
    v26 = v12;
    v27 = v8;
    v28 = v6;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = v7;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      v29 = self;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = qword_1000A9FE0;
          if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(*(&v31 + 1) + 8 * v17);
            v20 = v18;
            v30 = [v19 central];
            v21 = [(ServerCommonAudioProfile *)self nameForCentral:v30];
            v22 = [v19 characteristic];
            v23 = [v22 UUID];
            v24 = [v19 value];
            *buf = 136315906;
            v36 = "[ServerCommonAudioProfile peripheralManager:didReceiveWriteRequests:]";
            v37 = 2112;
            v38 = v21;
            v39 = 2112;
            v40 = v23;
            v41 = 2112;
            v42 = v24;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s : Central %@ sent a write request on characteristic %@: %@", buf, 0x2Au);

            self = v29;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v15);
    }

    v12 = v26;
    v6 = v28;
    [v26 peripheralManager:v28 didReceiveWriteRequests:v13];
    v8 = v27;
  }

  else
  {
    v25 = [(ServerCommonAudioProfile *)self peripheralManager];
    [v25 respondToRequest:v8 withResult:10];
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005D504(v7, v6);
    }
  }
}

- (void)respondToRequest:(id)a3 withResult:(int64_t)a4
{
  v6 = a3;
  v7 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
  {
    sub_10005D5DC(v7, v6);
  }

  v8 = [(ServerCommonAudioProfile *)self peripheralManager];
  [v8 respondToRequest:v6 withResult:a4];
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ServerCommonAudioProfile *)self serverServiceMap];
  v12 = [v10 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ServerCommonAudioProfile *)self nameForCentral:v9];
      v17 = [v10 UUID];
      v23 = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Central %@ is now subscribed to characteristic %@", &v23, 0x16u);
    }

    [v13 peripheralManager:v8 central:v9 didSubscribeToCharacteristic:v10];
  }

  if (!self->_peer)
  {
    v18 = +[ConnectionManager instance];
    v19 = [v9 identifier];
    v20 = [v18 peripheralForIdentifier:v19];
    peer = self->_peer;
    self->_peer = v20;

    v22 = +[ConnectionManager instance];
    [v22 connectPeripheral:self->_peer];
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ServerCommonAudioProfile *)self serverServiceMap];
  v12 = [v10 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ServerCommonAudioProfile *)self nameForCentral:v9];
      v17 = [v10 UUID];
      v21 = 138412546;
      v22 = v16;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Central %@ is now unsubscribed from characteristic %@", &v21, 0x16u);
    }

    [v13 peripheralManager:v8 central:v9 didUnsubscribeFromCharacteristic:v10];
  }

  if (self->_peer)
  {
    [(MCSInterface *)self->_mcsInterface stop];
    mcsInterface = self->_mcsInterface;
    self->_mcsInterface = 0;

    [(TBSInterface *)self->_tbsInterface stop];
    tbsInterface = self->_tbsInterface;
    self->_tbsInterface = 0;

    peer = self->_peer;
    self->_peer = 0;
  }
}

- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ServerCommonAudioProfile *)self pendingUpdates];
  if ([v11 count])
  {

    goto LABEL_6;
  }

  v12 = [(ServerCommonAudioProfile *)self peripheralManager];
  v13 = [v12 updateValue:v8 forCharacteristic:v9 onSubscribedCentrals:v10];

  if ((v13 & 1) == 0)
  {
LABEL_6:
    v17 = [(ServerCommonAudioProfile *)self pendingUpdates];
    v18 = [ATTUpdate updateWithValue:v8 characteristic:v9 centrals:v10];
    [v17 addObject:v18];

    v19 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [v9 UUID];
      v22 = [(ServerCommonAudioProfile *)self pendingUpdates];
      v23 = 136315906;
      v24 = "[ServerCommonAudioProfile updateValue:forCharacteristic:onSubscribedCentrals:]";
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
    v23 = 136315650;
    v24 = "[ServerCommonAudioProfile updateValue:forCharacteristic:onSubscribedCentrals:]";
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s : update sent immediately for characteristic %@, NSData value: %@", &v23, 0x20u);
  }

LABEL_8:
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3
{
  v24 = a3;
  v4 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(ServerCommonAudioProfile *)self pendingUpdates];
    *buf = 136315394;
    v26 = "[ServerCommonAudioProfile peripheralManagerIsReadyToUpdateSubscribers:]";
    v27 = 2048;
    v28 = [v6 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s : Ready to send updates, %lu pending", buf, 0x16u);
  }

  v7 = [(ServerCommonAudioProfile *)self pendingUpdates];
  v8 = [v7 count];

  if (v8)
  {
    while (1)
    {
      v9 = [(ServerCommonAudioProfile *)self pendingUpdates];
      v10 = [v9 firstObject];

      v11 = [(ServerCommonAudioProfile *)self peripheralManager];
      v12 = [v10 value];
      v13 = [v10 characteristic];
      v14 = [v10 centrals];
      v15 = [v11 updateValue:v12 forCharacteristic:v13 onSubscribedCentrals:v14];

      v16 = qword_1000A9FE0;
      if (!v15)
      {
        break;
      }

      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v10 characteristic];
        v19 = [v18 UUID];
        v20 = [v10 value];
        *buf = 136315650;
        v26 = "[ServerCommonAudioProfile peripheralManagerIsReadyToUpdateSubscribers:]";
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s : Serviced a pending update and updated subscribers on characteristic %@, NSData value: %@", buf, 0x20u);
      }

      v21 = [(ServerCommonAudioProfile *)self pendingUpdates];
      [v21 removeObject:v10];

      v22 = [(ServerCommonAudioProfile *)self pendingUpdates];
      v23 = [v22 count];

      if (!v23)
      {
        goto LABEL_12;
      }
    }

    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEBUG))
    {
      sub_10005D6C4(v16);
    }
  }

LABEL_12:
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = a4;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Server Connected to Client device %@", buf, 0xCu);
  }

  peer = self->_peer;
  self->_peer = v5;
  v8 = v5;

  [(CBPeripheral *)self->_peer setDelegate:self];
  v9 = [CBUUID UUIDWithString:CBUUIDGenericTelephoneBearerServiceString];
  v10 = [CBUUID UUIDWithString:CBUUIDGenericMediaControlServiceString, v9];
  v12[1] = v10;
  v11 = [NSArray arrayWithObjects:v12 count:2];

  [(CBPeripheral *)self->_peer discoverServices:v11];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  if (!a4)
  {
    v27 = self;
    v28 = v6;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [v6 services];
    v25 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v25)
    {
      v24 = *v35;
      do
      {
        v7 = 0;
        do
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v7;
          v8 = *(*(&v34 + 1) + 8 * v7);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v9 = qword_1000AA028;
          v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v31;
            do
            {
              for (i = 0; i != v11; i = i + 1)
              {
                if (*v31 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v30 + 1) + 8 * i);
                v15 = NSClassFromString(v14);
                if (v15)
                {
                  v16 = v15;
                  v17 = [v8 UUID];
                  v18 = [(objc_class *)v16 UUID];
                  v19 = [v17 isEqual:v18];

                  if (v19)
                  {
                    v20 = [[v16 alloc] initWithPeripheral:v28 service:v8];
                    if ([(NSString *)v14 containsString:@"MCS"])
                    {
                      v21 = qword_1000A9FE0;
                      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Found MCS Service on LE Audio Client", buf, 2u);
                      }

                      objc_storeStrong(&v27->_mcsInterface, v20);
                    }

                    if ([(NSString *)v14 containsString:@"TBS"])
                    {
                      v22 = qword_1000A9FE0;
                      if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Found TBS Service on LE Audio Client", buf, 2u);
                      }

                      objc_storeStrong(&v27->_tbsInterface, v20);
                    }

                    [v20 start];
                  }
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
            }

            while (v11);
          }

          v7 = v26 + 1;
        }

        while ((v26 + 1) != v25);
        v25 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v25);
    }

    v6 = v28;
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v9 UUID];
      v14 = [v8 name];
      v21 = 138412802;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      v25 = 2112;
      v26 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error discovering characteristics for service %@ on peripheral %@: %@", &v21, 0x20u);
    }
  }

  else
  {
    v15 = [v9 UUID];
    v16 = +[MCSInterface UUID];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      [(MCSInterface *)self->_mcsInterface peripheral:v8 didDiscoverCharacteristicsForService:v9 error:0];
    }

    v18 = [v9 UUID];
    v19 = +[TBSInterface UUID];
    v20 = [v18 isEqual:v19];

    if (v20)
    {
      [(TBSInterface *)self->_tbsInterface peripheral:v8 didDiscoverCharacteristicsForService:v9 error:0];
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v11 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      v12 = v11;
      v13 = [v9 service];
      v14 = [v13 UUID];
      v15 = [v8 name];
      v24 = 138412802;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = v10;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error discovering characteristics for service %@ on peripheral %@: %@", &v24, 0x20u);
    }
  }

  else
  {
    v16 = [v9 service];
    v17 = [v16 UUID];
    v18 = +[MCSInterface UUID];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      [(MCSInterface *)self->_mcsInterface peripheral:v8 didUpdateValueForCharacteristic:v9 error:0];
    }

    v20 = [v9 service];
    v21 = [v20 UUID];
    v22 = +[TBSInterface UUID];
    v23 = [v21 isEqual:v22];

    if (v23)
    {
      [(TBSInterface *)self->_tbsInterface peripheral:v8 didUpdateValueForCharacteristic:v9 error:0];
    }
  }
}

- (void)handleMediaControlRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mcsInterface)
  {
    v6 = [v4 objectForKeyedSubscript:@"MCSCommand"];
    if ([v6 isEqualToString:@"play"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 1;
    }

    else if ([v6 isEqualToString:@"pause"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 2;
    }

    else if ([v6 isEqualToString:@"fastRewind"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 3;
    }

    else if ([v6 isEqualToString:@"fastForward"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 4;
    }

    else if ([v6 isEqualToString:@"stop"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 5;
    }

    else if ([v6 isEqualToString:@"moveRelative"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 16;
    }

    else if ([v6 isEqualToString:@"prevSegment"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 32;
    }

    else if ([v6 isEqualToString:@"nextSegment"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 33;
    }

    else if ([v6 isEqualToString:@"firstSegment"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 34;
    }

    else if ([v6 isEqualToString:@"lastSegment"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 35;
    }

    else if ([v6 isEqualToString:@"gotoSegment"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 36;
    }

    else if ([v6 isEqualToString:@"prev"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 48;
    }

    else if ([v6 isEqualToString:@"next"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 49;
    }

    else if ([v6 isEqualToString:@"firstTrack"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 50;
    }

    else if ([v6 isEqualToString:@"lastTrack"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 51;
    }

    else if ([v6 isEqualToString:@"gotoTrack"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 52;
    }

    else if ([v6 isEqualToString:@"prevGroup"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 64;
    }

    else if ([v6 isEqualToString:@"nextGroup"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 65;
    }

    else if ([v6 isEqualToString:@"firstGroup"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 66;
    }

    else if ([v6 isEqualToString:@"lastGroup"])
    {
      mcsInterface = self->_mcsInterface;
      v8 = 67;
    }

    else
    {
      if (![v6 isEqualToString:@"gotoGroup"])
      {
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005D748();
        }

        goto LABEL_47;
      }

      mcsInterface = self->_mcsInterface;
      v8 = 68;
    }

    [(MCSInterface *)mcsInterface didRequestMediaControlPointWrite:v8];
LABEL_47:

    goto LABEL_48;
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005D7BC();
  }

LABEL_48:
}

- (void)handleTelephonyControlRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_tbsInterface)
  {
    v6 = [v4 objectForKeyedSubscript:@"TBSCommand"];
    v7 = +[NSMutableArray array];
    [v7 addObject:0];
    if ([v6 isEqualToString:@"accept"])
    {
      tbsInterface = self->_tbsInterface;
      v9 = 0;
    }

    else
    {
      if (![v6 isEqualToString:@"terminate"])
      {
        if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
        {
          sub_10005D7FC();
        }

        goto LABEL_11;
      }

      tbsInterface = self->_tbsInterface;
      v9 = 1;
    }

    [(TBSInterface *)tbsInterface didRequestCallControlPointWrite:v9 parameter:v7];
LABEL_11:

    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005D87C();
  }

LABEL_12:
}

- (void)sendStreamingNotification
{
  v3 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[ServerCommonAudioProfile sendStreamingNotification]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = self;
  v4 = [(ServerCommonAudioProfile *)self serverServiceMap];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = CBUUIDAudioStreamControlServiceString;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 UUID];
        v12 = [CBUUID UUIDWithString:v8];
        v13 = [v11 isEqual:v12];

        if (v13)
        {
          v14 = [(ServerCommonAudioProfile *)v16 serverServiceMap];
          v15 = [v14 objectForKey:v10];

          [v15 receiveObjectMessage:1 withEventObject:v10];
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)handleServiceEvent:(unsigned __int8)a3 withEventObj:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = qword_1000A9FE0;
  if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[ServerCommonAudioProfile handleServiceEvent:withEventObj:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s event", &v7, 0xCu);
  }

  if (v4 != 1 && os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
  {
    sub_10005D8FC();
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

- (id)peripheralManagerStateString
{
  v2 = [(ServerCommonAudioProfile *)self peripheralManager];
  v3 = [v2 state];

  if ((v3 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_100095668 + (v3 - 1));
  }
}

@end