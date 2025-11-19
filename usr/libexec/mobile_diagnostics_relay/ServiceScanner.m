@interface ServiceScanner
+ (id)sharedInstance;
- (BOOL)isValidUUID:(id)a3;
- (ServiceScanner)init;
- (id)fetchingDeviceIDWithParingCode:(id)a3;
- (id)getParingCode;
- (void)allocatePeripheralsArray;
- (void)cancelFetchingDeviceID;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connectPeripheral:(id)a3;
- (void)disconnectAllPeripherals;
- (void)disconnectPeripheral:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)registerServiceDetectCallback:(id)a3;
- (void)setParingCode:(id)a3;
- (void)startScanning;
- (void)stopScanning;
- (void)unregisterServiceDetectCallback;
@end

@implementation ServiceScanner

- (ServiceScanner)init
{
  v17.receiver = self;
  v17.super_class = ServiceScanner;
  v2 = [(MDRBaseObject *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.MDR.btscanQ", v3);
    scanQ = v2->_scanQ;
    v2->_scanQ = v4;

    v6 = dispatch_queue_create("com.apple.MDR.btconnectionQ", v3);
    connectionQ = v2->_connectionQ;
    v2->_connectionQ = v6;

    connectedPeripherals = v2->_connectedPeripherals;
    v2->_connectedPeripherals = 0;

    v2->_bluetoothOn = 0;
    detectCallback = v2->_detectCallback;
    v2->_detectCallback = 0;

    serviceUUIDs = v2->_serviceUUIDs;
    v2->_serviceUUIDs = 0;

    v2->_paringVersion = 0;
    paringCode = v2->_paringCode;
    v2->_paringCode = 0;

    v12 = dispatch_semaphore_create(0);
    pairingSem = v2->_pairingSem;
    v2->_pairingSem = v12;

    deviceID = v2->_deviceID;
    v2->_deviceID = 0;

    v15 = [[CBCentralManager alloc] initWithDelegate:v2 queue:0];
    [(ServiceScanner *)v2 setCentralManager:v15];
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_1000264B0 != -1)
  {
    sub_100012CC4();
  }

  v3 = qword_1000264A8;

  return v3;
}

- (void)centralManagerDidUpdateState:(id)a3
{
  if ([a3 state] == 5)
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is ON."];
    v5 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is OFF or unavailable."];
    v5 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100012CD8();
    }

    v6 = 0;
  }

  self->_bluetoothOn = v6;
}

- (void)registerServiceDetectCallback:(id)a3
{
  v4 = a3;
  [(ServiceScanner *)self unregisterServiceDetectCallback];
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_retainBlock(v4);

  detectCallback = v5->_detectCallback;
  v5->_detectCallback = v6;

  v5->_paringVersion = 0;
  objc_sync_exit(v5);

  [(ServiceScanner *)v5 startScanning];
  v8 = [NSString stringWithFormat:@"Store Paring Service detect callback is registered!"];
  v9 = [(MDRBaseObject *)v5 logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }
}

- (void)unregisterServiceDetectCallback
{
  v2 = self;
  objc_sync_enter(v2);
  detectCallback = v2->_detectCallback;
  if (detectCallback)
  {
    v2->_detectCallback = 0;

    v4 = [NSString stringWithFormat:@"Store Paring Service detect callback is unregistered"];
    v5 = [(MDRBaseObject *)v2 logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
    }
  }

  objc_sync_exit(v2);

  [(ServiceScanner *)v2 stopScanning];
}

- (void)setParingCode:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  paringCode = obj->_paringCode;
  obj->_paringCode = v4;

  objc_sync_exit(obj);
}

- (id)getParingCode
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_paringCode;
  objc_sync_exit(v2);

  return v3;
}

- (void)startScanning
{
  v3 = [NSString stringWithFormat:@"Start scanning Store Paring Service"];
  v4 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  scanQ = self->_scanQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000273C;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(scanQ, block);
}

- (void)stopScanning
{
  scanQ = self->_scanQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002964;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_async(scanQ, block);
}

- (void)allocatePeripheralsArray
{
  connectionQ = self->_connectionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002AF0;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_sync(connectionQ, block);
}

- (void)connectPeripheral:(id)a3
{
  v4 = a3;
  connectionQ = self->_connectionQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002BE4;
  v7[3] = &unk_100020918;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(connectionQ, v7);
}

- (void)disconnectPeripheral:(id)a3
{
  v4 = a3;
  connectionQ = self->_connectionQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002DD8;
  v7[3] = &unk_100020918;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(connectionQ, v7);
}

- (void)disconnectAllPeripherals
{
  connectionQ = self->_connectionQ;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002F80;
  block[3] = &unk_1000208A8;
  block[4] = self;
  dispatch_sync(connectionQ, block);
}

- (id)fetchingDeviceIDWithParingCode:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"Start fetching deviceID with paring code: %@", v4];
  v6 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  deviceID = self->_deviceID;
  self->_deviceID = 0;

  v8 = dispatch_semaphore_create(0);
  pairingSem = self->_pairingSem;
  self->_pairingSem = v8;

  [(ServiceScanner *)self setParingCode:v4];
  [(ServiceScanner *)self startScanning];
  dispatch_semaphore_wait(self->_pairingSem, 0xFFFFFFFFFFFFFFFFLL);
  v10 = self->_deviceID;

  return v10;
}

- (void)cancelFetchingDeviceID
{
  v3 = [(ServiceScanner *)self getParingCode];
  v4 = [NSString stringWithFormat:@"Stop fetching deviceID with paring code: %@", v3];

  v5 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [(ServiceScanner *)self stopScanning];
  dispatch_semaphore_signal(self->_pairingSem);
}

- (BOOL)isValidUUID:(id)a3
{
  v3 = a3;
  if ([v3 length] == 12)
  {
    v4 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEF"];
    v5 = [v4 invertedSet];
    v6 = [v3 rangeOfCharacterFromSet:v5] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v8 = a4;
  v9 = a5;
  if (self->_paringVersion)
  {
    [(ServiceScanner *)self connectPeripheral:v8];
    goto LABEL_27;
  }

  v10 = [v8 identifier];
  v11 = [v8 name];
  v12 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Detected Store Paring Service", v10, v11];

  v13 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v14 = [v9 objectForKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
  v15 = v14;
  if (!v14 || ![v14 count])
  {
    goto LABEL_26;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = v16;
  v18 = *v37;
  v33 = v15;
  v34 = v9;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v37 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v36 + 1) + 8 * i);
      v21 = [v20 UUIDString];
      v22 = [v21 isEqualToString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA92"];

      if (v22)
      {
        v25 = [v8 identifier];
        v26 = [v8 name];
        v27 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Paring Version 2", v25, v26];

        v28 = [(MDRBaseObject *)self logger];
        v9 = v34;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v29 = 2;
        goto LABEL_23;
      }

      v23 = [v20 UUIDString];
      v24 = [v23 isEqualToString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA91"];

      if (v24)
      {
        v30 = [v8 identifier];
        v31 = [v8 name];
        v27 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Paring Version 1", v30, v31];

        v28 = [(MDRBaseObject *)self logger];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v29 = 1;
        v9 = v34;
LABEL_23:
        v15 = v33;

        self->_paringVersion = v29;
        detectCallback = self->_detectCallback;
        if (detectCallback)
        {
          detectCallback[2](detectCallback, 1, self->_paringVersion);
        }

        [(ServiceScanner *)self stopScanning];
        goto LABEL_26;
      }
    }

    v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    v15 = v33;
    v9 = v34;
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_16:

LABEL_26:
LABEL_27:
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v5 = a4;
  [v5 setDelegate:self];
  v6 = [v5 identifier];
  v7 = [v5 name];
  v8 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Connected", v6, v7];

  v9 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [v5 discoverServices:self->_serviceUUIDs];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 identifier];
    v9 = [v6 name];
    v10 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error didDiscoverServices: %@", v8, v9, v7];

    v11 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100012D4C();
    }

    [(ServiceScanner *)self disconnectPeripheral:v6];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = [v6 services];
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          serviceUUIDs = self->_serviceUUIDs;
          v19 = [v17 UUID];
          LODWORD(serviceUUIDs) = [(NSArray *)serviceUUIDs containsObject:v19];

          if (serviceUUIDs)
          {
            v20 = [v6 identifier];
            v21 = [v6 name];
            v22 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Found Store Paring Service", v20, v21];

            v23 = [(MDRBaseObject *)self logger];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v32 = v22;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            v24 = [CBUUID UUIDWithString:@"EC34D91F-F95E-4B2C-A33C-5C973F4B1255"];
            v30 = v24;
            v25 = [NSArray arrayWithObjects:&v30 count:1];
            [v6 discoverCharacteristics:v25 forService:v17];

            goto LABEL_17;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v7 = 0;
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10 = [v8 identifier];
    v11 = [v8 name];
    v12 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error didDiscoverCharacteristicsForService: %@", v10, v11, v9];

    v13 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100012DC0();
    }

    [(ServiceScanner *)self disconnectPeripheral:v8];
  }

  else
  {
    v29 = self;
    v30 = v8;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [a4 characteristics];
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      while (2)
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          v20 = [v19 UUID];
          v21 = [CBUUID UUIDWithString:@"EC34D91F-F95E-4B2C-A33C-5C973F4B1255"];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            v8 = v30;
            v23 = [v30 identifier];
            v24 = [v30 name];
            v25 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Found Store Paring Characteristic", v23, v24];

            v26 = [(MDRBaseObject *)v29 logger];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v36 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            [v30 setNotifyValue:1 forCharacteristic:v19];
            v27 = [(ServiceScanner *)v29 getParingCode];
            v28 = [v27 dataUsingEncoding:4];
            [v30 writeValue:v28 forCharacteristic:v19 type:0];

            goto LABEL_17;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v8 = v30;
LABEL_17:
    v9 = 0;
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 identifier];
  v10 = [v7 name];
  v11 = v10;
  if (v8)
  {
    v12 = [v8 localizedDescription];
    v13 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error writing: %@ Perhaps Paring Code not match", v9, v11, v12];

    v14 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100012E34();
    }

    [(ServiceScanner *)self disconnectPeripheral:v7];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | responded with CBATTErrorSuccess", v9, v10];

    v16 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
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
    v11 = [v8 identifier];
    v12 = [v8 name];
    v13 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error didUpdateValueForCharacteristic: %@", v11, v12, v10];

    v14 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100012EA8();
    }

    [(ServiceScanner *)self disconnectPeripheral:v8];
  }

  else
  {
    v15 = [v9 UUID];
    v16 = [CBUUID UUIDWithString:@"EC34D91F-F95E-4B2C-A33C-5C973F4B1255"];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      v18 = [NSString alloc];
      v19 = [v9 value];
      v20 = [v18 initWithData:v19 encoding:4];

      v21 = [v8 identifier];
      v22 = [v8 name];
      v23 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Received Device ID: %@", v21, v22, v20];

      v24 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if ([(ServiceScanner *)self isValidUUID:v20])
      {
        objc_storeStrong(&self->_deviceID, v20);
        dispatch_semaphore_signal(self->_pairingSem);
      }

      else
      {
        v25 = [NSString stringWithFormat:@"Received Invalid Device ID: %@", v20];
        v26 = [(MDRBaseObject *)self logger];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_100012EA8();
        }

        [(ServiceScanner *)self disconnectPeripheral:v8];
      }
    }
  }
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = [v6 identifier];
  v8 = [v6 name];

  v9 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Disconnected", v7, v8];

  v10 = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

@end