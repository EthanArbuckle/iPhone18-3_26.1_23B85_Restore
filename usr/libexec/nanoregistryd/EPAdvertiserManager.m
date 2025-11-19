@interface EPAdvertiserManager
- (EPAdvertiserManager)init;
- (id)newAdvertiserWithDelegate:(id)a3;
- (void)collection:(id)a3 deviceDidAppear:(id)a4;
- (void)collection:(id)a3 deviceDidDisappear:(id)a4;
- (void)collection:(id)a3 deviceInfoDidDealloc:(id)a4;
- (void)createResource;
- (void)destroyResource;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)removeCharacteristic:(id)a3;
- (void)setAdvertisingRate:(unint64_t)a3;
- (void)setDontAdvertiseWithServiceUUID:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setNotAvailableToPair:(BOOL)a3;
- (void)update;
@end

@implementation EPAdvertiserManager

- (void)removeCharacteristic:(id)a3
{
  characteristics = self->_characteristics;
  v5 = a3;
  v8 = [(NSMutableDictionary *)characteristics objectForKeyedSubscript:v5];
  [(NSMutableDictionary *)self->_characteristics removeObjectForKey:v5];

  v6 = [(EPResourceManager *)self referenceCounter];
  v7 = v8;
  if (v6 && v8)
  {
    self->_shouldUpdateCharacteristics = 1;
    v6 = [(EPAdvertiserManager *)self update];
    v7 = v8;
  }

  _objc_release_x1(v6, v7);
}

- (EPAdvertiserManager)init
{
  v3 = +[EPFactory queue];
  v13.receiver = self;
  v13.super_class = EPAdvertiserManager;
  v4 = [(EPResourceManager *)&v13 initWithQueue:v3];

  if (v4)
  {
    v5 = [[EPDeviceCollection alloc] initWithDelegate:v4];
    deviceCollection = v4->_deviceCollection;
    v4->_deviceCollection = v5;

    v7 = +[NSMutableDictionary dictionary];
    characteristics = v4->_characteristics;
    v4->_characteristics = v7;

    v4->_advertisingRate = 1;
    v9 = +[EPFactory queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000869E4;
    block[3] = &unk_100175660;
    v12 = v4;
    dispatch_async(v9, block);
  }

  return v4;
}

- (void)createResource
{
  v11.receiver = self;
  v11.super_class = EPAdvertiserManager;
  [(EPResourceManager *)&v11 createResource];
  v3 = sub_1000A98C0();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A98C0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "EPAdvertiserManager: Create peripheral", v10, 2u);
    }
  }

  v6 = +[EPFactory sharedFactory];
  v7 = [v6 agentManager];
  v8 = [v7 newPeripheralManagerWithDelegate:self];
  peripheral = self->_peripheral;
  self->_peripheral = v8;

  [(EPAdvertiserManager *)self update];
}

- (void)destroyResource
{
  v14.receiver = self;
  v14.super_class = EPAdvertiserManager;
  [(EPResourceManager *)&v14 destroyResource];
  if (self->_isAdvertising)
  {
    self->_isAdvertising = 0;
  }

  if ([(EPResource *)self->_peripheral availability]== 1)
  {
    v3 = sub_1000A98C0();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = sub_1000A98C0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager stopAdvertising (resource not needed)", v13, 2u);
      }
    }

    v6 = [(EPPeripheralManager *)self->_peripheral manager];
    [v6 stopAdvertising];
  }

  v7 = sub_1000A98C0();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = sub_1000A98C0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "EPAdvertiserManager: Destroy peripheral", v13, 2u);
    }
  }

  peripheral = self->_peripheral;
  self->_peripheral = 0;

  agent = self->_agent;
  self->_agent = 0;

  self->_waitingForServiceToBeAdded = 0;
  self->_serviceAdded = 0;
  key = self->_key;
  self->_key = 0;

  self->_waitingForAdvertisingToStart = 0;
  [(EPAdvertiserManager *)self update];
}

- (id)newAdvertiserWithDelegate:(id)a3
{
  v4 = [(EPResourceManager *)self newResourceWithDelegate:a3];
  v5 = +[EPFactory queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100086D78;
  v10[3] = &unk_100175598;
  v10[4] = self;
  v6 = v4;
  v11 = v6;
  dispatch_async(v5, v10);

  v7 = v11;
  v8 = v6;

  return v8;
}

- (void)setName:(id)a3
{
  v5 = a3;
  name = self->_name;
  if (name != v5)
  {
    v7 = v5;
    name = [(NSString *)name isEqualToString:v5];
    v5 = v7;
    if ((name & 1) == 0)
    {
      objc_storeStrong(&self->_name, a3);
      name = [(EPAdvertiserManager *)self update];
      v5 = v7;
    }
  }

  _objc_release_x1(name, v5);
}

- (void)setAdvertisingRate:(unint64_t)a3
{
  if (self->_advertisingRate != a3)
  {
    self->_advertisingRate = a3;
    [(EPAdvertiserManager *)self update];
  }
}

- (void)setNotAvailableToPair:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1000A98C0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = sub_1000A98C0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set not available to pair to: %{BOOL}d", buf, 8u);
    }
  }

  self->_notAvailableToPair = v3;
  v8 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000870A4;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)setDontAdvertiseWithServiceUUID:(BOOL)a3
{
  self->_dontAdvertiseWithServiceUUID = a3;
  v4 = +[EPFactory queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100087148;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)update
{
  if (self->_shouldUpdateCharacteristics)
  {
    self->_shouldUpdateCharacteristics = 0;
    self->_waitingForServiceToBeAdded = 0;
    self->_serviceAdded = 0;
    [(EPResourceManager *)self setAvailability:0 withError:0];
    v3 = sub_1000A98C0();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = sub_1000A98C0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager removeAllServices", buf, 2u);
      }
    }

    v6 = [(EPPeripheralManager *)self->_peripheral manager];
    [v6 removeAllServices];
  }

  activeAdvertisingName = self->_activeAdvertisingName;
  name = self->_name;
  if (activeAdvertisingName)
  {
    if (![(NSString *)activeAdvertisingName isEqual:name])
    {
      goto LABEL_13;
    }

LABEL_11:
    if (self->_advertisingRate == self->_activeAdvertisingRate && self->_dontAdvertiseWithServiceUUID == self->_activeDontAdvertiseWithServiceUUID)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (!name)
  {
    goto LABEL_11;
  }

LABEL_13:
  objc_storeStrong(&self->_activeAdvertisingName, self->_name);
  self->_activeAdvertisingRate = self->_advertisingRate;
  self->_activeDontAdvertiseWithServiceUUID = self->_dontAdvertiseWithServiceUUID;
  if (self->_isAdvertising)
  {
    self->_isAdvertising = 0;
    self->_waitingForAdvertisingToStart = 0;
    if ([(EPResource *)self->_peripheral availability]== 1)
    {
      v9 = sub_1000A98C0();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

      if (v10)
      {
        v11 = sub_1000A98C0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager stopAdvertising (changing advertised name or advertising interval)", buf, 2u);
        }
      }

      [(EPResourceManager *)self setAvailability:0 withError:0];
      v12 = [(EPPeripheralManager *)self->_peripheral manager];
      [v12 stopAdvertising];
    }
  }

LABEL_20:
  if (!self->_peripheral || self->_notAvailableToPair)
  {
    v13 = sub_1000A98C0();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = sub_1000A98C0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      notAvailableToPair = self->_notAvailableToPair;
      peripheral = self->_peripheral;
      *buf = 67109378;
      *v68 = notAvailableToPair;
      *&v68[4] = 2112;
      *&v68[6] = peripheral;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "EPAdvertiser: Skipping creation of new agent. _notAvailableToPair = %{BOOL}d _peripheral = %@", buf, 0x12u);
    }

    goto LABEL_33;
  }

  if (!self->_agent)
  {
    v20 = +[EPFactory sharedFactory];
    v21 = [v20 agentManager];
    v22 = [v21 newAgentWithDelegate:self fromCentral:0];
    agent = self->_agent;
    self->_agent = v22;

LABEL_30:
    goto LABEL_31;
  }

  v18 = sub_1000A98C0();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = sub_1000A98C0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EPAdvertiser: Agent already created, skipping creating a new one", buf, 2u);
    }

    goto LABEL_30;
  }

LABEL_31:
  if (self->_key)
  {
    goto LABEL_34;
  }

  v15 = +[EPFactory sharedFactory];
  v24 = [v15 keyGeneratorManager];
  v25 = [v24 newGeneratorWithDelegate:self];
  key = self->_key;
  self->_key = v25;

LABEL_33:
LABEL_34:
  if ([(EPResource *)self->_peripheral availability]!= 1)
  {
    self->_waitingForAdvertisingToStart = 0;
    self->_isAdvertising = 0;
    self->_waitingForServiceToBeAdded = 0;
    self->_serviceAdded = 0;
    [(EPResourceManager *)self setAvailability:0 withError:0];
    return;
  }

  if (self->_notAvailableToPair || [(EPResource *)self->_agent availability]== 1 && (self->_notAvailableToPair || [(EPResource *)self->_key availability]== 1))
  {
    if (self->_serviceAdded)
    {
      goto LABEL_38;
    }

    if (!self->_waitingForServiceToBeAdded)
    {
      self->_waitingForServiceToBeAdded = 1;
      v34 = +[NSMutableArray array];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v35 = [(NSMutableDictionary *)self->_characteristics allValues];
      v36 = [v35 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v62;
        do
        {
          for (i = 0; i != v37; i = i + 1)
          {
            if (*v62 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = [*(*(&v61 + 1) + 8 * i) characteristic];
            if (v40)
            {
              [v34 addObject:v40];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v37);
      }

      if (!self->_notAvailableToPair)
      {
        v41 = [CBMutableCharacteristic alloc];
        v42 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
        v43 = [v41 initWithType:v42 properties:26 value:0 permissions:3];

        [v34 addObject:v43];
      }

      v44 = [CBMutableService alloc];
      v45 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
      v46 = [v44 initWithType:v45 primary:1];

      [v46 setCharacteristics:v34];
      v47 = sub_1000A98C0();
      v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

      if (v48)
      {
        v49 = sub_1000A98C0();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v68 = v46;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager addService with %@", buf, 0xCu);
        }
      }

      v50 = [(EPPeripheralManager *)self->_peripheral manager];
      [v50 addService:v46];

      if (self->_serviceAdded)
      {
LABEL_38:
        if (!self->_isAdvertising && !self->_waitingForAdvertisingToStart)
        {
          self->_waitingForAdvertisingToStart = 1;
          v27 = [(EPAdvertiserManager *)self name];
          v28 = +[NSMutableDictionary dictionary];
          v29 = v28;
          if (v27)
          {
            [v28 setObject:v27 forKeyedSubscript:CBAdvertisementDataLocalNameKey];
          }

          if (!self->_notAvailableToPair && !self->_dontAdvertiseWithServiceUUID)
          {
            v30 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
            v65 = v30;
            v31 = [NSArray arrayWithObjects:&v65 count:1];
            [v29 setObject:v31 forKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
          }

          advertisingRate = self->_advertisingRate;
          if (advertisingRate == 3)
          {
            v33 = &off_100186EB0;
          }

          else
          {
            if (advertisingRate != 2)
            {
LABEL_72:
              v51 = sub_1000A98C0();
              v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);

              if (v52)
              {
                v53 = sub_1000A98C0();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager stopAdvertising", buf, 2u);
                }
              }

              v54 = [(EPPeripheralManager *)self->_peripheral manager];
              [v54 stopAdvertising];

              v55 = sub_1000A98C0();
              v56 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

              if (v56)
              {
                v57 = sub_1000A98C0();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v68 = v29;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager startAdvertising with parameters %@", buf, 0xCu);
                }
              }

              v58 = [(EPPeripheralManager *)self->_peripheral manager];
              [v58 startAdvertising:v29];

              goto LABEL_81;
            }

            v33 = &off_100186EC8;
          }

          [v29 setObject:v33 forKeyedSubscript:CBPeripheralManagerAdvertisingInterval];
          goto LABEL_72;
        }
      }
    }
  }

LABEL_81:
  if (self->_notAvailableToPair)
  {
    v59 = self->_agent;
    self->_agent = 0;

    v60 = self->_key;
    self->_key = 0;
  }
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v38 = a3;
  v6 = a4;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v45;
    v35 = v40;
    *&v8 = 138543618;
    v34 = v8;
    v36 = *v45;
    v37 = v6;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        v13 = [v12 characteristic];
        v14 = [v13 UUID];
        v15 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
        v16 = [v14 isEqual:v15];

        if (v16)
        {
          v43[0] = _NSConcreteStackBlock;
          v43[1] = 3221225472;
          v43[2] = sub_100087F28;
          v43[3] = &unk_100175998;
          v43[4] = self;
          v43[5] = v12;
          [(EPResourceManager *)self enumerateResourcesWithBlock:v43];
          v17 = sub_1000A98C0();
          v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

          if (v18)
          {
            v19 = sub_1000A98C0();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Calling CoreBluetooth CBPeripheralManager respondToRequest:withResult:", buf, 2u);
            }
          }

          [v38 respondToRequest:v12 withResult:0];
        }

        else
        {
          characteristics = self->_characteristics;
          v21 = [v12 characteristic];
          v22 = [v21 UUID];
          v23 = [(NSMutableDictionary *)characteristics objectForKeyedSubscript:v22];

          if (v23)
          {
            v24 = [v23 writeHandler];

            if (v24)
            {
              v25 = sub_1000A98C0();
              v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

              if (v26)
              {
                v27 = sub_1000A98C0();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  v28 = [v23 characteristicUUID];
                  v29 = [v28 UUIDString];
                  v30 = [v12 value];
                  v31 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v30 length]);
                  *buf = v34;
                  v49 = v29;
                  v50 = 2114;
                  v51 = v31;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Calling writeHandler block for characteristic %{public}@ data.length=%{public}@", buf, 0x16u);
                }
              }

              v32 = [v23 writeHandler];
              v33 = [v12 value];
              v39[0] = _NSConcreteStackBlock;
              v39[1] = 3221225472;
              v40[0] = sub_100087FE4;
              v40[1] = &unk_100177410;
              v41 = v38;
              v42 = v12;
              (v32)[2](v32, v33, v39);

              v10 = v36;
              v6 = v37;
            }
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v9);
  }
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 characteristic];
  v9 = [v8 UUID];
  v10 = [CBUUID UUIDWithString:@"5F6C6A23-8AC8-400E-810B-017134943460"];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    v12 = self->_switchModeData;
    if (v12)
    {
      v13 = -[NSData subdataWithRange:](v12, "subdataWithRange:", [v7 offset], -[NSData length](v12, "length") - objc_msgSend(v7, "offset"));
      [v7 setValue:v13];

      v14 = 0;
    }

    else
    {
      v14 = 6;
    }

    [v6 respondToRequest:v7 withResult:v14];
  }

  else
  {
    characteristics = self->_characteristics;
    v16 = [v7 characteristic];
    v17 = [v16 UUID];
    v12 = [(NSMutableDictionary *)characteristics objectForKeyedSubscript:v17];

    if (v12)
    {
      v18 = [(NSData *)v12 readHandler];

      if (v18)
      {
        v19 = sub_1000A98C0();
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

        if (v20)
        {
          v21 = sub_1000A98C0();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [(NSData *)v12 characteristicUUID];
            v23 = [v22 UUIDString];
            *buf = 138543362;
            v29 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Calling readHandler block for characteristic %{public}@", buf, 0xCu);
          }
        }

        v24 = [(NSData *)v12 readHandler];
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000883C0;
        v25[3] = &unk_100178598;
        v26 = v7;
        v27 = v6;
        (v24)[2](v24, v25);
      }
    }
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v5 = a4;
  v6 = sub_1000A98C0();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = sub_1000A98C0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CoreBluetooth sent peripheralManagerDidStartAdvertising notification", v14, 2u);
    }
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v9 = [v5 domain];
  if (([v9 isEqualToString:CBErrorDomain] & 1) == 0)
  {

    goto LABEL_10;
  }

  v10 = [v5 code];

  if (v10 != 9)
  {
LABEL_10:
    v11 = self;
    v12 = 2;
    v13 = v5;
    goto LABEL_11;
  }

LABEL_8:
  self->_isAdvertising = 1;
  self->_waitingForAdvertisingToStart = 0;
  v11 = self;
  v12 = 1;
  v13 = 0;
LABEL_11:
  [(EPResourceManager *)v11 setAvailability:v12 withError:v13];
  [(EPAdvertiserManager *)self update];
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 UUID];
  v10 = [CBUUID UUIDWithString:@"9AA4730F-B25C-4CC3-B821-C931559FC196"];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    if (v8)
    {
      v12 = sub_1000A98C0();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v13)
      {
        v14 = sub_1000A98C0();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_1001015E4(v7, v8, v14);
        }
      }
    }

    else
    {
      self->_serviceAdded = 1;
      self->_waitingForServiceToBeAdded = 0;
      [(EPAdvertiserManager *)self update];
    }
  }
}

- (void)collection:(id)a3 deviceDidAppear:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008881C;
  v8[3] = &unk_100175998;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)collection:(id)a3 deviceDidDisappear:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000888E4;
  v8[3] = &unk_100175998;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)collection:(id)a3 deviceInfoDidDealloc:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000889AC;
  v8[3] = &unk_100175998;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v11 identifier];
  v14 = [(EPAdvertiserManager *)self devicesDictionary];
  v15 = [v14 objectForKeyedSubscript:v13];

  if (!v15)
  {
    v15 = [(EPDeviceCollection *)self->_deviceCollection newDeviceWithPeer:v11];
    v16 = sub_1000A98C0();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v18 = sub_1000A98C0();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [EPDevice stringFromCBPairingType:a5];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v23 = @"CBCentral";
        *buf = 138413570;
        v30 = 2048;
        v29 = v20;
        if (isKindOfClass)
        {
          v23 = @"CBPeripheral";
        }

        v31 = v15;
        v32 = 2112;
        v33 = v11;
        v34 = 2112;
        v35 = v21;
        v36 = 2112;
        v37 = v12;
        v38 = 2112;
        v39 = v23;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "EPAdvertiserManager Calling pairingAgent:peerDidRequestPairing:type:passkey: on %@[%p] with peer %@ type=%@ passkey=%@ peer=%@ on newly created device", buf, 0x3Eu);
      }
    }
  }

  [v15 pairingAgent:v10 peerDidRequestPairing:v11 type:a5 passkey:v12];
  v24 = +[EPFactory queue];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100088C4C;
  v26[3] = &unk_100175598;
  v26[4] = self;
  v27 = v15;
  v25 = v15;
  dispatch_async(v24, v26);
}

@end