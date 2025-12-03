@interface ClientServiceManager
+ (void)initialize;
- (ClientServiceManager)initWithPeripheral:(id)peripheral;
- (id)clientServiceForUUID:(id)d;
- (void)analyzeError:(id)error;
- (void)clientService:(id)service desiresConnectionParameters:(id)parameters;
- (void)clientServiceDidStart:(id)start;
- (void)dealloc;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)startClientServices;
@end

@implementation ClientServiceManager

- (ClientServiceManager)initWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v13.receiver = self;
  v13.super_class = ClientServiceManager;
  v6 = [(ClientServiceManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripheral, peripheral);
    v8 = +[NSMapTable strongToStrongObjectsMapTable];
    clientServiceMap = v7->_clientServiceMap;
    v7->_clientServiceMap = v8;

    v7->_startPriority = 0;
    v10 = objc_alloc_init(NSMutableSet);
    startingClientServices = v7->_startingClientServices;
    v7->_startingClientServices = v10;

    [(CBPeripheral *)v7->_peripheral discoverServices:0];
  }

  return v7;
}

- (id)clientServiceForUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003C8A8;
  v16 = sub_10003C8B8;
  v17 = 0;
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003C8C0;
  v9[3] = &unk_1000BDEA8;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [clientServiceMap enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clientServiceDidStart:(id)start
{
  startCopy = start;
  startingClientServices = [(ClientServiceManager *)self startingClientServices];
  [startingClientServices removeObject:startCopy];

  [(ClientServiceManager *)self startClientServices];
}

- (void)clientService:(id)service desiresConnectionParameters:(id)parameters
{
  if (parameters)
  {
    parametersCopy = parameters;
    v7 = +[BTLEXpcServer instance];
    peripheral = [(ClientServiceManager *)self peripheral];
    [v7 sendSetConnectionParametersMsg:parametersCopy forPeer:peripheral];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = qword_1000DDAE8;
    qword_1000DDAE8 = &off_1000C4120;
  }
}

- (void)dealloc
{
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  [clientServiceMap enumerateKeysAndObjectsUsingBlock:&stru_1000BDEE8];

  v4.receiver = self;
  v4.super_class = ClientServiceManager;
  [(ClientServiceManager *)&v4 dealloc];
}

- (void)startClientServices
{
  startingClientServices = [(ClientServiceManager *)self startingClientServices];
  v4 = [startingClientServices count];

  if (!v4)
  {
    while (1)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10003CC7C;
      v8[3] = &unk_1000BDEA8;
      v8[4] = self;
      v8[5] = &v9;
      [clientServiceMap enumerateKeysAndObjectsUsingBlock:v8];

      if (*(v10 + 24) != 1)
      {
        break;
      }

      [(ClientServiceManager *)self setStartPriority:[(ClientServiceManager *)self startPriority]+ 1];
      _Block_object_dispose(&v9, 8);
      startingClientServices2 = [(ClientServiceManager *)self startingClientServices];
      v7 = [startingClientServices2 count];

      if (v7)
      {
        return;
      }
    }

    _Block_object_dispose(&v9, 8);
  }
}

- (void)analyzeError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:CBATTErrorDomain];

  if (v5 && [errorCopy code] == 15)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    peripheral = [(ClientServiceManager *)self peripheral];
    [v6 postNotificationName:@"PeripheralPairingDidFailNotification" object:peripheral];
  }
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  peripheralCopy = peripheral;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = services;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    *&v7 = 138412546;
    v26 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
        v13 = [clientServiceMap objectForKey:v11];

        if (v13)
        {
          v14 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            name = [peripheralCopy name];
            uUID = [v11 UUID];
            *buf = v26;
            v34 = name;
            v35 = 2112;
            v36 = uUID;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Peripheral %@ invalidated service %@", buf, 0x16u);
          }

          uUID2 = [v11 UUID];
          v19 = [CBUUID UUIDWithString:@"8341F2B4-C013-4F04-8197-C4CDB42E26DC"];
          v20 = [uUID2 isEqual:v19];

          if (v20)
          {
            clientServiceMap2 = [(ClientServiceManager *)self clientServiceMap];
            [clientServiceMap2 enumerateKeysAndObjectsUsingBlock:&stru_1000BDF08];

            startingClientServices = [(ClientServiceManager *)self startingClientServices];
            [startingClientServices removeAllObjects];

            clientServiceMap3 = [(ClientServiceManager *)self clientServiceMap];
            [clientServiceMap3 removeAllObjects];
          }

          else
          {
            [v13 stop];
            startingClientServices2 = [(ClientServiceManager *)self startingClientServices];
            [startingClientServices2 removeObject:v13];

            clientServiceMap3 = [(ClientServiceManager *)self clientServiceMap];
            [clientServiceMap3 removeObjectForKey:v11];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  peripheral = [(ClientServiceManager *)self peripheral];
  [peripheral discoverServices:0];
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    name = [peripheralCopy name];
    services = [peripheralCopy services];
    *buf = 138412546;
    *&buf[4] = name;
    *&buf[12] = 2112;
    *&buf[14] = services;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didDiscoverServices for %@, %@...", buf, 0x16u);
  }

  if (servicesCopy)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075DE0(v10, peripheralCopy, servicesCopy);
    }

    [(ClientServiceManager *)self analyzeError:servicesCopy];
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [peripheralCopy services];
    v37 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v37)
    {
      v36 = *v46;
      do
      {
        v11 = 0;
        do
        {
          if (*v46 != v36)
          {
            v12 = v11;
            objc_enumerationMutation(obj);
            v11 = v12;
          }

          v38 = v11;
          v13 = *(*(&v45 + 1) + 8 * v11);
          clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
          v15 = [clientServiceMap objectForKey:v13];
          v16 = v15 == 0;

          if (v16)
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v17 = qword_1000DDAE8;
            v18 = [v17 countByEnumeratingWithState:&v41 objects:v53 count:16];
            if (v18)
            {
              v19 = *v42;
              do
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v42 != v19)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v21 = NSClassFromString(*(*(&v41 + 1) + 8 * i));
                  if (v21)
                  {
                    uUID = [v13 UUID];
                    uUID2 = [(objc_class *)v21 UUID];
                    v24 = [uUID isEqual:uUID2];

                    if (v24)
                    {
                      v25 = [[v21 alloc] initWithManager:self peripheral:peripheralCopy service:v13];
                      v26 = qword_1000DDBC8;
                      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
                      {
                        v27 = v26;
                        name2 = [peripheralCopy name];
                        uUID3 = [v13 UUID];
                        *buf = 138412546;
                        *&buf[4] = name2;
                        *&buf[12] = 2114;
                        *&buf[14] = uUID3;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Peripheral %@ supports service %{public}@", buf, 0x16u);
                      }

                      clientServiceMap2 = [(ClientServiceManager *)self clientServiceMap];
                      [clientServiceMap2 setObject:v25 forKey:v13];
                    }
                  }
                }

                v18 = [v17 countByEnumeratingWithState:&v41 objects:v53 count:16];
              }

              while (v18);
            }
          }

          v11 = v38 + 1;
        }

        while ((v38 + 1) != v37);
        v37 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v37);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v52 = 0;
    clientServiceMap3 = [(ClientServiceManager *)self clientServiceMap];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10003D700;
    v40[3] = &unk_1000BDF30;
    v40[4] = buf;
    [clientServiceMap3 enumerateKeysAndObjectsUsingBlock:v40];

    if (*(*&buf[8] + 24) == 1)
    {
      [(ClientServiceManager *)self setStartPriority:0];
      [(ClientServiceManager *)self startClientServices];
    }

    else
    {
      v32 = qword_1000DDBC8;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        name3 = [peripheralCopy name];
        *v49 = 138412290;
        v50 = name3;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Didn't find any primary service on peripheral %@", v49, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  v12 = [clientServiceMap objectForKey:serviceCopy];

  if (v12)
  {
    if (errorCopy)
    {
      v13 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        uUID = [serviceCopy UUID];
        name = [peripheralCopy name];
        v17 = 138412802;
        v18 = uUID;
        v19 = 2112;
        v20 = name;
        v21 = 2112;
        v22 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error discovering characteristics for service %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:errorCopy];
    }

    if (objc_opt_respondsToSelector())
    {
      [v12 peripheral:peripheralCopy didDiscoverCharacteristicsForService:serviceCopy error:errorCopy];
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  service = [characteristicCopy service];
  v13 = [clientServiceMap objectForKey:service];

  if (v13)
  {
    if (errorCopy)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v18 = 138412802;
        v19 = uUID;
        v20 = 2112;
        v21 = name;
        v22 = 2112;
        v23 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error updating value for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:errorCopy];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:peripheralCopy didUpdateValueForCharacteristic:characteristicCopy error:errorCopy];
    }
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  service = [characteristicCopy service];
  v13 = [clientServiceMap objectForKey:service];

  if (v13)
  {
    if (errorCopy)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v18 = 138412802;
        v19 = uUID;
        v20 = 2112;
        v21 = name;
        v22 = 2112;
        v23 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error writing value for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:errorCopy];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:peripheralCopy didWriteValueForCharacteristic:characteristicCopy error:errorCopy];
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateNotificationStateForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  service = [characteristicCopy service];
  v13 = [clientServiceMap objectForKey:service];

  if (v13)
  {
    if (errorCopy)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v18 = 138412802;
        v19 = uUID;
        v20 = 2112;
        v21 = name;
        v22 = 2112;
        v23 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error updating notifications for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:errorCopy];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:peripheralCopy didUpdateNotificationStateForCharacteristic:characteristicCopy error:errorCopy];
    }
  }
}

- (void)peripheral:(id)peripheral didDiscoverDescriptorsForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  service = [characteristicCopy service];
  v13 = [clientServiceMap objectForKey:service];

  if (v13)
  {
    if (errorCopy)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        uUID = [characteristicCopy UUID];
        name = [peripheralCopy name];
        v18 = 138412802;
        v19 = uUID;
        v20 = 2112;
        v21 = name;
        v22 = 2112;
        v23 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error discovering descriptors for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:errorCopy];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:peripheralCopy didDiscoverDescriptorsForCharacteristic:characteristicCopy error:errorCopy];
    }
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForDescriptor:(id)descriptor error:(id)error
{
  peripheralCopy = peripheral;
  descriptorCopy = descriptor;
  errorCopy = error;
  clientServiceMap = [(ClientServiceManager *)self clientServiceMap];
  characteristic = [descriptorCopy characteristic];
  service = [characteristic service];
  v14 = [clientServiceMap objectForKey:service];

  if (v14)
  {
    if (errorCopy)
    {
      v15 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        uUID = [descriptorCopy UUID];
        name = [peripheralCopy name];
        v19 = 138412802;
        v20 = uUID;
        v21 = 2112;
        v22 = name;
        v23 = 2112;
        v24 = errorCopy;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error updating value for descriptor %@ on peripheral %@: %@", &v19, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:errorCopy];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 peripheral:peripheralCopy didUpdateValueForDescriptor:descriptorCopy error:errorCopy];
    }
  }
}

@end