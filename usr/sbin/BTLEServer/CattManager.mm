@interface CattManager
+ (id)instance;
- (CattManager)init;
- (id)centralManagerStateString;
- (void)batteryServiceDeviceConnected:(id)connected;
- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)connectPeripheral:(id)peripheral;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)registerServices;
- (void)removeOpportunisticConnection:(id)connection;
- (void)setOpportunisticConnection:(id)connection;
@end

@implementation CattManager

+ (id)instance
{
  if (qword_1000DDAA8 != -1)
  {
    sub_1000742E0();
  }

  v3 = qword_1000DDAA0;

  return v3;
}

- (void)registerServices
{
  centralManager = [(CattManager *)self centralManager];
  if (centralManager)
  {
    v4 = centralManager;
    centralManager2 = [(CattManager *)self centralManager];
    state = [centralManager2 state];

    if (state == 5)
    {
      v7 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Register service for CATT", v10, 2u);
      }

      centralManager3 = [(CattManager *)self centralManager];
      options = [(CattManager *)self options];
      [centralManager3 registerForConnectionEventsWithOptions:options];
    }
  }
}

- (void)batteryServiceDeviceConnected:(id)connected
{
  connectedCopy = connected;
  if (_os_feature_enabled_impl())
  {
    centralManager = [(CattManager *)self centralManager];
    v9 = connectedCopy;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000287CC;
    v7[3] = &unk_1000BDA48;
    v8 = connectedCopy;
    [centralManager retrievePeripheralsWithIdentifiers:v6 completion:v7];
  }
}

- (void)setOpportunisticConnection:(id)connection
{
  connectionCopy = connection;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    name = [connectionCopy name];
    *buf = 138412290;
    v13 = name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating connection option for %@ to be opportunistic", buf, 0xCu);
  }

  centralManager = [(CattManager *)self centralManager];
  v10 = CBConnectPeripheralOptionOpportunistic;
  v11 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [centralManager updatePeripheral:connectionCopy options:v9];
}

- (void)removeOpportunisticConnection:(id)connection
{
  connectionCopy = connection;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    name = [connectionCopy name];
    *buf = 138412290;
    v14 = name;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing opportunistic connection option for %@. Setting low connection latency", buf, 0xCu);
  }

  centralManager = [(CattManager *)self centralManager];
  [centralManager setDesiredConnectionLatency:0 forPeripheral:connectionCopy];

  centralManager2 = [(CattManager *)self centralManager];
  v11 = CBConnectPeripheralOptionOpportunistic;
  v12 = &__kCFBooleanFalse;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [centralManager2 updatePeripheral:connectionCopy options:v10];
}

- (CattManager)init
{
  v22.receiver = self;
  v22.super_class = CattManager;
  v2 = [(CattManager *)&v22 init];
  if (v2)
  {
    v3 = [CBCentralManager alloc];
    v23[0] = CBCentralManagerOptionReceiveSystemEvents;
    v23[1] = CBManagerNeedsRestrictedStateOperation;
    v24[0] = &__kCFBooleanTrue;
    v24[1] = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v5 = [v3 initWithDelegate:v2 queue:&_dispatch_main_q options:v4];
    centralManager = v2->_centralManager;
    v2->_centralManager = v5;

    v7 = objc_alloc_init(NSMutableArray);
    cattPeripheral = v2->_cattPeripheral;
    v2->_cattPeripheral = v7;

    v9 = objc_alloc_init(NSMutableArray);
    services = v2->_services;
    v2->_services = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    clientServiceManagerMap = v2->_clientServiceManagerMap;
    v2->_clientServiceManagerMap = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    options = v2->_options;
    v2->_options = v13;

    v15 = v2->_services;
    v16 = [CBUUID UUIDWithString:CBUUIDDoAPServiceString];
    [(NSMutableArray *)v15 addObject:v16];

    if (_os_feature_enabled_impl())
    {
      v17 = v2->_services;
      v18 = [CBUUID UUIDWithString:CBUUIDBatteryServiceString];
      [(NSMutableArray *)v17 addObject:v18];
    }

    v19 = v2->_services;
    v20 = [CBUUID UUIDWithString:CBUUIDUnifiedAccessoryRestoreProtocolServiceString];
    [(NSMutableArray *)v19 addObject:v20];

    [(NSMutableDictionary *)v2->_options setObject:v2->_services forKeyedSubscript:CBConnectionEventMatchingOptionServiceUUIDs];
  }

  return v2;
}

- (void)connectPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  centralManager = [(CattManager *)self centralManager];
  state = [centralManager state];

  if (state == 5)
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      name = [peripheralCopy name];
      v11 = 138412290;
      v12 = name;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connecting CATT peripheral %@...", &v11, 0xCu);
    }

    centralManager2 = [(CattManager *)self centralManager];
    [centralManager2 connectPeripheral:peripheralCopy options:0];
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    centralManagerStateString = [(CattManager *)self centralManagerStateString];
    v15 = 138412290;
    v16 = centralManagerStateString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CentralManager state is now %@", &v15, 0xCu);
  }

  centralManager = [(CattManager *)self centralManager];
  state = [centralManager state];

  if (state != 5)
  {
    centralManager2 = [(CattManager *)self centralManager];
    if ([centralManager2 state] == 4)
    {
    }

    else
    {
      centralManager3 = [(CattManager *)self centralManager];
      state2 = [centralManager3 state];

      if (state2 != 1)
      {
        goto LABEL_9;
      }
    }

    cattPeripheral = [(CattManager *)self cattPeripheral];
    [cattPeripheral removeAllObjects];

    clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
    [clientServiceManagerMap removeAllObjects];

    goto LABEL_9;
  }

  [(CattManager *)self registerServices];
LABEL_9:
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
    v19 = 138412290;
    v20 = name;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CATT Peripheral %@ is now connected", &v19, 0xCu);
  }

  cattPeripheral = [(CattManager *)self cattPeripheral];
  v12 = [cattPeripheral containsObject:peripheralCopy];

  if (v12)
  {
    [peripheralCopy setDelegate:self];
    if ([peripheralCopy hasTag:@"FitnessClassic"] && (objc_msgSend(peripheralCopy, "hasTag:", @"BlockCATTHRM") & 1) == 0)
    {
      v13 = [peripheralCopy customProperty:@"Fitness"];

      if (!v13)
      {
        [peripheralCopy setCustomProperty:@"Fitness" value:@"1"];
      }

      v14 = [peripheralCopy customProperty:@"UpdateHealth"];

      if (!v14)
      {
        [peripheralCopy setCustomProperty:@"UpdateHealth" value:@"1"];
      }
    }

    clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
    v16 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

    if (!v16)
    {
      v17 = [[ClientServiceManager alloc] initWithPeripheral:peripheralCopy];
      clientServiceManagerMap2 = [(CattManager *)self clientServiceManagerMap];
      [clientServiceManagerMap2 setObject:v17 forKeyedSubscript:peripheralCopy];
    }
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    name = [peripheralCopy name];
    v13 = 138412546;
    v14 = name;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ failed to connect: %@", &v13, 0x16u);
  }

  cattPeripheral = [(CattManager *)self cattPeripheral];
  [cattPeripheral removeObject:peripheralCopy];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    name = [peripheralCopy name];
    v14 = 138412546;
    v15 = name;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is now disconnected: %@", &v14, 0x16u);
  }

  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  [clientServiceManagerMap removeObjectForKey:peripheralCopy];

  cattPeripheral = [(CattManager *)self cattPeripheral];
  [cattPeripheral removeObject:peripheralCopy];
}

- (void)centralManager:(id)manager connectionEventDidOccur:(int64_t)occur forPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  if (_os_feature_enabled_impl())
  {
    getTags = [peripheralCopy getTags];
    if (([getTags containsObject:@"_CATT_"] & 1) == 0 && !objc_msgSend(getTags, "containsObject:", @"_UARP_"))
    {

      goto LABEL_11;
    }
  }

  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    name = [peripheralCopy name];
    v15 = 138412546;
    v16 = name;
    v17 = 2048;
    occurCopy = occur;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ connection event:%tu", &v15, 0x16u);
  }

  if (occur == 1)
  {
    cattPeripheral = [(CattManager *)self cattPeripheral];
    [cattPeripheral addObject:peripheralCopy];

    [(CattManager *)self connectPeripheral:peripheralCopy];
  }

  else
  {
    clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
    [clientServiceManagerMap removeObjectForKey:peripheralCopy];

    cattPeripheral2 = [(CattManager *)self cattPeripheral];
    [cattPeripheral2 removeObject:peripheralCopy];
  }

LABEL_11:
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  servicesCopy = services;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v9 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v9 peripheral:peripheralCopy didModifyServices:servicesCopy];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  servicesCopy = services;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v9 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v9 peripheral:peripheralCopy didDiscoverServices:servicesCopy];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  errorCopy = error;
  serviceCopy = service;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didDiscoverCharacteristicsForService:serviceCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didUpdateValueForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didWriteValueForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didUpdateNotificationStateForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  errorCopy = error;
  characteristicCopy = characteristic;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didDiscoverDescriptorsForCharacteristic:characteristicCopy error:errorCopy];
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  errorCopy = error;
  descriptorCopy = descriptor;
  peripheralCopy = peripheral;
  clientServiceManagerMap = [(CattManager *)self clientServiceManagerMap];
  v12 = [clientServiceManagerMap objectForKeyedSubscript:peripheralCopy];

  [v12 peripheral:peripheralCopy didUpdateValueForDescriptor:descriptorCopy error:errorCopy];
}

- (id)centralManagerStateString
{
  centralManager = [(CattManager *)self centralManager];
  state = [centralManager state];

  if ((state - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000BDA68 + (state - 1));
  }
}

@end