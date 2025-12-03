@interface ServiceScanner
+ (id)sharedInstance;
- (BOOL)isValidUUID:(id)d;
- (ServiceScanner)init;
- (id)fetchingDeviceIDWithParingCode:(id)code;
- (id)getParingCode;
- (void)allocatePeripheralsArray;
- (void)cancelFetchingDeviceID;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectPeripheral:(id)peripheral;
- (void)disconnectAllPeripherals;
- (void)disconnectPeripheral:(id)peripheral;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)registerServiceDetectCallback:(id)callback;
- (void)setParingCode:(id)code;
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

- (void)centralManagerDidUpdateState:(id)state
{
  if ([state state] == 5)
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is ON."];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v7, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v4 = [NSString stringWithFormat:@"Bluetooth is OFF or unavailable."];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100012CD8();
    }

    v6 = 0;
  }

  self->_bluetoothOn = v6;
}

- (void)registerServiceDetectCallback:(id)callback
{
  callbackCopy = callback;
  [(ServiceScanner *)self unregisterServiceDetectCallback];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_retainBlock(callbackCopy);

  detectCallback = selfCopy->_detectCallback;
  selfCopy->_detectCallback = v6;

  selfCopy->_paringVersion = 0;
  objc_sync_exit(selfCopy);

  [(ServiceScanner *)selfCopy startScanning];
  v8 = [NSString stringWithFormat:@"Store Paring Service detect callback is registered!"];
  logger = [(MDRBaseObject *)selfCopy logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }
}

- (void)unregisterServiceDetectCallback
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  detectCallback = selfCopy->_detectCallback;
  if (detectCallback)
  {
    selfCopy->_detectCallback = 0;

    v4 = [NSString stringWithFormat:@"Store Paring Service detect callback is unregistered"];
    logger = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
    }
  }

  objc_sync_exit(selfCopy);

  [(ServiceScanner *)selfCopy stopScanning];
}

- (void)setParingCode:(id)code
{
  codeCopy = code;
  obj = self;
  objc_sync_enter(obj);
  paringCode = obj->_paringCode;
  obj->_paringCode = codeCopy;

  objc_sync_exit(obj);
}

- (id)getParingCode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_paringCode;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)startScanning
{
  v3 = [NSString stringWithFormat:@"Start scanning Store Paring Service"];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
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

- (void)connectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  connectionQ = self->_connectionQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002BE4;
  v7[3] = &unk_100020918;
  v7[4] = self;
  v8 = peripheralCopy;
  v6 = peripheralCopy;
  dispatch_sync(connectionQ, v7);
}

- (void)disconnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  connectionQ = self->_connectionQ;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002DD8;
  v7[3] = &unk_100020918;
  v8 = peripheralCopy;
  selfCopy = self;
  v6 = peripheralCopy;
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

- (id)fetchingDeviceIDWithParingCode:(id)code
{
  codeCopy = code;
  codeCopy = [NSString stringWithFormat:@"Start fetching deviceID with paring code: %@", codeCopy];
  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = codeCopy;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  deviceID = self->_deviceID;
  self->_deviceID = 0;

  v8 = dispatch_semaphore_create(0);
  pairingSem = self->_pairingSem;
  self->_pairingSem = v8;

  [(ServiceScanner *)self setParingCode:codeCopy];
  [(ServiceScanner *)self startScanning];
  dispatch_semaphore_wait(self->_pairingSem, 0xFFFFFFFFFFFFFFFFLL);
  v10 = self->_deviceID;

  return v10;
}

- (void)cancelFetchingDeviceID
{
  getParingCode = [(ServiceScanner *)self getParingCode];
  v4 = [NSString stringWithFormat:@"Stop fetching deviceID with paring code: %@", getParingCode];

  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [(ServiceScanner *)self stopScanning];
  dispatch_semaphore_signal(self->_pairingSem);
}

- (BOOL)isValidUUID:(id)d
{
  dCopy = d;
  if ([dCopy length] == 12)
  {
    v4 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789ABCDEF"];
    invertedSet = [v4 invertedSet];
    v6 = [dCopy rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  peripheralCopy = peripheral;
  dataCopy = data;
  if (self->_paringVersion)
  {
    [(ServiceScanner *)self connectPeripheral:peripheralCopy];
    goto LABEL_27;
  }

  identifier = [peripheralCopy identifier];
  name = [peripheralCopy name];
  v12 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Detected Store Paring Service", identifier, name];

  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v14 = [dataCopy objectForKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
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
  v34 = dataCopy;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v37 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v36 + 1) + 8 * i);
      uUIDString = [v20 UUIDString];
      v22 = [uUIDString isEqualToString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA92"];

      if (v22)
      {
        identifier2 = [peripheralCopy identifier];
        name2 = [peripheralCopy name];
        v27 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Paring Version 2", identifier2, name2];

        logger2 = [(MDRBaseObject *)self logger];
        dataCopy = v34;
        if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v29 = 2;
        goto LABEL_23;
      }

      uUIDString2 = [v20 UUIDString];
      v24 = [uUIDString2 isEqualToString:@"C1C46849-CFBD-4949-A1A5-1E693FA4BA91"];

      if (v24)
      {
        identifier3 = [peripheralCopy identifier];
        name3 = [peripheralCopy name];
        v27 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Paring Version 1", identifier3, name3];

        logger2 = [(MDRBaseObject *)self logger];
        if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v27;
          _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        v29 = 1;
        dataCopy = v34;
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
    dataCopy = v34;
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

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  [peripheralCopy setDelegate:self];
  identifier = [peripheralCopy identifier];
  name = [peripheralCopy name];
  v8 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Connected", identifier, name];

  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [peripheralCopy discoverServices:self->_serviceUUIDs];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  if (servicesCopy)
  {
    identifier = [peripheralCopy identifier];
    name = [peripheralCopy name];
    servicesCopy = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error didDiscoverServices: %@", identifier, name, servicesCopy];

    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100012D4C();
    }

    [(ServiceScanner *)self disconnectPeripheral:peripheralCopy];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    services = [peripheralCopy services];
    v13 = [services countByEnumeratingWithState:&v26 objects:v33 count:16];
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
            objc_enumerationMutation(services);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          serviceUUIDs = self->_serviceUUIDs;
          uUID = [v17 UUID];
          LODWORD(serviceUUIDs) = [(NSArray *)serviceUUIDs containsObject:uUID];

          if (serviceUUIDs)
          {
            identifier2 = [peripheralCopy identifier];
            name2 = [peripheralCopy name];
            v22 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Found Store Paring Service", identifier2, name2];

            logger2 = [(MDRBaseObject *)self logger];
            if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v32 = v22;
              _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            v24 = [CBUUID UUIDWithString:@"EC34D91F-F95E-4B2C-A33C-5C973F4B1255"];
            v30 = v24;
            v25 = [NSArray arrayWithObjects:&v30 count:1];
            [peripheralCopy discoverCharacteristics:v25 forService:v17];

            goto LABEL_17;
          }
        }

        v14 = [services countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    servicesCopy = 0;
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  if (errorCopy)
  {
    identifier = [peripheralCopy identifier];
    name = [peripheralCopy name];
    errorCopy = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error didDiscoverCharacteristicsForService: %@", identifier, name, errorCopy];

    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100012DC0();
    }

    [(ServiceScanner *)self disconnectPeripheral:peripheralCopy];
  }

  else
  {
    selfCopy = self;
    v30 = peripheralCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    characteristics = [service characteristics];
    v15 = [characteristics countByEnumeratingWithState:&v31 objects:v37 count:16];
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
            objc_enumerationMutation(characteristics);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          uUID = [v19 UUID];
          v21 = [CBUUID UUIDWithString:@"EC34D91F-F95E-4B2C-A33C-5C973F4B1255"];
          v22 = [uUID isEqual:v21];

          if (v22)
          {
            peripheralCopy = v30;
            identifier2 = [v30 identifier];
            name2 = [v30 name];
            v25 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Found Store Paring Characteristic", identifier2, name2];

            logger2 = [(MDRBaseObject *)selfCopy logger];
            if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v36 = v25;
              _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }

            [v30 setNotifyValue:1 forCharacteristic:v19];
            getParingCode = [(ServiceScanner *)selfCopy getParingCode];
            v28 = [getParingCode dataUsingEncoding:4];
            [v30 writeValue:v28 forCharacteristic:v19 type:0];

            goto LABEL_17;
          }
        }

        v16 = [characteristics countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    peripheralCopy = v30;
LABEL_17:
    errorCopy = 0;
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  identifier = [peripheralCopy identifier];
  name = [peripheralCopy name];
  v11 = name;
  if (errorCopy)
  {
    localizedDescription = [errorCopy localizedDescription];
    v13 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error writing: %@ Perhaps Paring Code not match", identifier, v11, localizedDescription];

    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100012E34();
    }

    [(ServiceScanner *)self disconnectPeripheral:peripheralCopy];
  }

  else
  {
    v15 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | responded with CBATTErrorSuccess", identifier, name];

    logger2 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  if (errorCopy)
  {
    identifier = [peripheralCopy identifier];
    name = [peripheralCopy name];
    errorCopy = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Error didUpdateValueForCharacteristic: %@", identifier, name, errorCopy];

    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100012EA8();
    }

    [(ServiceScanner *)self disconnectPeripheral:peripheralCopy];
  }

  else
  {
    uUID = [characteristicCopy UUID];
    v16 = [CBUUID UUIDWithString:@"EC34D91F-F95E-4B2C-A33C-5C973F4B1255"];
    v17 = [uUID isEqual:v16];

    if (v17)
    {
      v18 = [NSString alloc];
      value = [characteristicCopy value];
      v20 = [v18 initWithData:value encoding:4];

      identifier2 = [peripheralCopy identifier];
      name2 = [peripheralCopy name];
      v23 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Received Device ID: %@", identifier2, name2, v20];

      logger2 = [(MDRBaseObject *)self logger];
      if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v23;
        _os_log_impl(&_mh_execute_header, logger2, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      if ([(ServiceScanner *)self isValidUUID:v20])
      {
        objc_storeStrong(&self->_deviceID, v20);
        dispatch_semaphore_signal(self->_pairingSem);
      }

      else
      {
        v25 = [NSString stringWithFormat:@"Received Invalid Device ID: %@", v20];
        logger3 = [(MDRBaseObject *)self logger];
        if (os_log_type_enabled(logger3, OS_LOG_TYPE_ERROR))
        {
          sub_100012EA8();
        }

        [(ServiceScanner *)self disconnectPeripheral:peripheralCopy];
      }
    }
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  identifier = [peripheralCopy identifier];
  name = [peripheralCopy name];

  v9 = [NSString stringWithFormat:@"Peripheral: %@ (%@) | Disconnected", identifier, name];

  logger = [(MDRBaseObject *)self logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

@end