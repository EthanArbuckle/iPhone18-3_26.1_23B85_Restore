@interface CattManager
+ (id)instance;
- (CattManager)init;
- (id)centralManagerStateString;
- (void)batteryServiceDeviceConnected:(id)a3;
- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)connectPeripheral:(id)a3;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)registerServices;
- (void)removeOpportunisticConnection:(id)a3;
- (void)setOpportunisticConnection:(id)a3;
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
  v3 = [(CattManager *)self centralManager];
  if (v3)
  {
    v4 = v3;
    v5 = [(CattManager *)self centralManager];
    v6 = [v5 state];

    if (v6 == 5)
    {
      v7 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Register service for CATT", v10, 2u);
      }

      v8 = [(CattManager *)self centralManager];
      v9 = [(CattManager *)self options];
      [v8 registerForConnectionEventsWithOptions:v9];
    }
  }
}

- (void)batteryServiceDeviceConnected:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(CattManager *)self centralManager];
    v9 = v4;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000287CC;
    v7[3] = &unk_1000BDA48;
    v8 = v4;
    [v5 retrievePeripheralsWithIdentifiers:v6 completion:v7];
  }
}

- (void)setOpportunisticConnection:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating connection option for %@ to be opportunistic", buf, 0xCu);
  }

  v8 = [(CattManager *)self centralManager];
  v10 = CBConnectPeripheralOptionOpportunistic;
  v11 = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v8 updatePeripheral:v4 options:v9];
}

- (void)removeOpportunisticConnection:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing opportunistic connection option for %@. Setting low connection latency", buf, 0xCu);
  }

  v8 = [(CattManager *)self centralManager];
  [v8 setDesiredConnectionLatency:0 forPeripheral:v4];

  v9 = [(CattManager *)self centralManager];
  v11 = CBConnectPeripheralOptionOpportunistic;
  v12 = &__kCFBooleanFalse;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v9 updatePeripheral:v4 options:v10];
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

- (void)connectPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(CattManager *)self centralManager];
  v6 = [v5 state];

  if (v6 == 5)
  {
    v7 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 name];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Connecting CATT peripheral %@...", &v11, 0xCu);
    }

    v10 = [(CattManager *)self centralManager];
    [v10 connectPeripheral:v4 options:0];
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CattManager *)self centralManagerStateString];
    v15 = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CentralManager state is now %@", &v15, 0xCu);
  }

  v8 = [(CattManager *)self centralManager];
  v9 = [v8 state];

  if (v9 != 5)
  {
    v10 = [(CattManager *)self centralManager];
    if ([v10 state] == 4)
    {
    }

    else
    {
      v11 = [(CattManager *)self centralManager];
      v12 = [v11 state];

      if (v12 != 1)
      {
        goto LABEL_9;
      }
    }

    v13 = [(CattManager *)self cattPeripheral];
    [v13 removeAllObjects];

    v14 = [(CattManager *)self clientServiceManagerMap];
    [v14 removeAllObjects];

    goto LABEL_9;
  }

  [(CattManager *)self registerServices];
LABEL_9:
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
    v19 = 138412290;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CATT Peripheral %@ is now connected", &v19, 0xCu);
  }

  v11 = [(CattManager *)self cattPeripheral];
  v12 = [v11 containsObject:v7];

  if (v12)
  {
    [v7 setDelegate:self];
    if ([v7 hasTag:@"FitnessClassic"] && (objc_msgSend(v7, "hasTag:", @"BlockCATTHRM") & 1) == 0)
    {
      v13 = [v7 customProperty:@"Fitness"];

      if (!v13)
      {
        [v7 setCustomProperty:@"Fitness" value:@"1"];
      }

      v14 = [v7 customProperty:@"UpdateHealth"];

      if (!v14)
      {
        [v7 setCustomProperty:@"UpdateHealth" value:@"1"];
      }
    }

    v15 = [(CattManager *)self clientServiceManagerMap];
    v16 = [v15 objectForKeyedSubscript:v7];

    if (!v16)
    {
      v17 = [[ClientServiceManager alloc] initWithPeripheral:v7];
      v18 = [(CattManager *)self clientServiceManagerMap];
      [v18 setObject:v17 forKeyedSubscript:v7];
    }
  }
}

- (void)centralManager:(id)a3 didFailToConnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 name];
    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ failed to connect: %@", &v13, 0x16u);
  }

  v12 = [(CattManager *)self cattPeripheral];
  [v12 removeObject:v7];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 name];
    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ is now disconnected: %@", &v14, 0x16u);
  }

  v12 = [(CattManager *)self clientServiceManagerMap];
  [v12 removeObjectForKey:v7];

  v13 = [(CattManager *)self cattPeripheral];
  [v13 removeObject:v7];
}

- (void)centralManager:(id)a3 connectionEventDidOccur:(int64_t)a4 forPeripheral:(id)a5
{
  v7 = a5;
  if (_os_feature_enabled_impl())
  {
    v8 = [v7 getTags];
    if (([v8 containsObject:@"_CATT_"] & 1) == 0 && !objc_msgSend(v8, "containsObject:", @"_UARP_"))
    {

      goto LABEL_11;
    }
  }

  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v7 name];
    v15 = 138412546;
    v16 = v11;
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Peripheral %@ connection event:%tu", &v15, 0x16u);
  }

  if (a4 == 1)
  {
    v12 = [(CattManager *)self cattPeripheral];
    [v12 addObject:v7];

    [(CattManager *)self connectPeripheral:v7];
  }

  else
  {
    v13 = [(CattManager *)self clientServiceManagerMap];
    [v13 removeObjectForKey:v7];

    v14 = [(CattManager *)self cattPeripheral];
    [v14 removeObject:v7];
  }

LABEL_11:
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CattManager *)self clientServiceManagerMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  [v9 peripheral:v7 didModifyServices:v6];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CattManager *)self clientServiceManagerMap];
  v9 = [v8 objectForKeyedSubscript:v7];

  [v9 peripheral:v7 didDiscoverServices:v6];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CattManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didDiscoverCharacteristicsForService:v9 error:v8];
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CattManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didUpdateValueForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CattManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didWriteValueForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CattManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didUpdateNotificationStateForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CattManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didDiscoverDescriptorsForCharacteristic:v9 error:v8];
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(CattManager *)self clientServiceManagerMap];
  v12 = [v11 objectForKeyedSubscript:v10];

  [v12 peripheral:v10 didUpdateValueForDescriptor:v9 error:v8];
}

- (id)centralManagerStateString
{
  v2 = [(CattManager *)self centralManager];
  v3 = [v2 state];

  if ((v3 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000BDA68 + (v3 - 1));
  }
}

@end