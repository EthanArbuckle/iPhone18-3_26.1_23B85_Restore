@interface ClientServiceManager
+ (void)initialize;
- (ClientServiceManager)initWithPeripheral:(id)a3;
- (id)clientServiceForUUID:(id)a3;
- (void)analyzeError:(id)a3;
- (void)clientService:(id)a3 desiresConnectionParameters:(id)a4;
- (void)clientServiceDidStart:(id)a3;
- (void)dealloc;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didModifyServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5;
- (void)startClientServices;
@end

@implementation ClientServiceManager

- (ClientServiceManager)initWithPeripheral:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ClientServiceManager;
  v6 = [(ClientServiceManager *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_peripheral, a3);
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

- (id)clientServiceForUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003C8A8;
  v16 = sub_10003C8B8;
  v17 = 0;
  v5 = [(ClientServiceManager *)self clientServiceMap];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003C8C0;
  v9[3] = &unk_1000BDEA8;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clientServiceDidStart:(id)a3
{
  v4 = a3;
  v5 = [(ClientServiceManager *)self startingClientServices];
  [v5 removeObject:v4];

  [(ClientServiceManager *)self startClientServices];
}

- (void)clientService:(id)a3 desiresConnectionParameters:(id)a4
{
  if (a4)
  {
    v5 = a4;
    v7 = +[BTLEXpcServer instance];
    v6 = [(ClientServiceManager *)self peripheral];
    [v7 sendSetConnectionParametersMsg:v5 forPeer:v6];
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = qword_1000DDAE8;
    qword_1000DDAE8 = &off_1000C4120;
  }
}

- (void)dealloc
{
  v3 = [(ClientServiceManager *)self clientServiceMap];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_1000BDEE8];

  v4.receiver = self;
  v4.super_class = ClientServiceManager;
  [(ClientServiceManager *)&v4 dealloc];
}

- (void)startClientServices
{
  v3 = [(ClientServiceManager *)self startingClientServices];
  v4 = [v3 count];

  if (!v4)
  {
    while (1)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      v5 = [(ClientServiceManager *)self clientServiceMap];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10003CC7C;
      v8[3] = &unk_1000BDEA8;
      v8[4] = self;
      v8[5] = &v9;
      [v5 enumerateKeysAndObjectsUsingBlock:v8];

      if (*(v10 + 24) != 1)
      {
        break;
      }

      [(ClientServiceManager *)self setStartPriority:[(ClientServiceManager *)self startPriority]+ 1];
      _Block_object_dispose(&v9, 8);
      v6 = [(ClientServiceManager *)self startingClientServices];
      v7 = [v6 count];

      if (v7)
      {
        return;
      }
    }

    _Block_object_dispose(&v9, 8);
  }
}

- (void)analyzeError:(id)a3
{
  v8 = a3;
  v4 = [v8 domain];
  v5 = [v4 isEqualToString:CBATTErrorDomain];

  if (v5 && [v8 code] == 15)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v7 = [(ClientServiceManager *)self peripheral];
    [v6 postNotificationName:@"PeripheralPairingDidFailNotification" object:v7];
  }
}

- (void)peripheral:(id)a3 didModifyServices:(id)a4
{
  v27 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = a4;
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
        v12 = [(ClientServiceManager *)self clientServiceMap];
        v13 = [v12 objectForKey:v11];

        if (v13)
        {
          v14 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v14;
            v16 = [v27 name];
            v17 = [v11 UUID];
            *buf = v26;
            v34 = v16;
            v35 = 2112;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Peripheral %@ invalidated service %@", buf, 0x16u);
          }

          v18 = [v11 UUID];
          v19 = [CBUUID UUIDWithString:@"8341F2B4-C013-4F04-8197-C4CDB42E26DC"];
          v20 = [v18 isEqual:v19];

          if (v20)
          {
            v21 = [(ClientServiceManager *)self clientServiceMap];
            [v21 enumerateKeysAndObjectsUsingBlock:&stru_1000BDF08];

            v22 = [(ClientServiceManager *)self startingClientServices];
            [v22 removeAllObjects];

            v23 = [(ClientServiceManager *)self clientServiceMap];
            [v23 removeAllObjects];
          }

          else
          {
            [v13 stop];
            v24 = [(ClientServiceManager *)self startingClientServices];
            [v24 removeObject:v13];

            v23 = [(ClientServiceManager *)self clientServiceMap];
            [v23 removeObjectForKey:v11];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v8);
  }

  v25 = [(ClientServiceManager *)self peripheral];
  [v25 discoverServices:0];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v39 = a3;
  v34 = a4;
  v6 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v39 name];
    v9 = [v39 services];
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didDiscoverServices for %@, %@...", buf, 0x16u);
  }

  if (v34)
  {
    v10 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100075DE0(v10, v39, v34);
    }

    [(ClientServiceManager *)self analyzeError:v34];
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [v39 services];
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
          v14 = [(ClientServiceManager *)self clientServiceMap];
          v15 = [v14 objectForKey:v13];
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
                    v22 = [v13 UUID];
                    v23 = [(objc_class *)v21 UUID];
                    v24 = [v22 isEqual:v23];

                    if (v24)
                    {
                      v25 = [[v21 alloc] initWithManager:self peripheral:v39 service:v13];
                      v26 = qword_1000DDBC8;
                      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
                      {
                        v27 = v26;
                        v28 = [v39 name];
                        v29 = [v13 UUID];
                        *buf = 138412546;
                        *&buf[4] = v28;
                        *&buf[12] = 2114;
                        *&buf[14] = v29;
                        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Peripheral %@ supports service %{public}@", buf, 0x16u);
                      }

                      v30 = [(ClientServiceManager *)self clientServiceMap];
                      [v30 setObject:v25 forKey:v13];
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
    v31 = [(ClientServiceManager *)self clientServiceMap];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10003D700;
    v40[3] = &unk_1000BDF30;
    v40[4] = buf;
    [v31 enumerateKeysAndObjectsUsingBlock:v40];

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
        v33 = [v39 name];
        *v49 = 138412290;
        v50 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Didn't find any primary service on peripheral %@", v49, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ClientServiceManager *)self clientServiceMap];
  v12 = [v11 objectForKey:v9];

  if (v12)
  {
    if (v10)
    {
      v13 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = [v9 UUID];
        v16 = [v8 name];
        v17 = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v10;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Error discovering characteristics for service %@ on peripheral %@: %@", &v17, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v12 peripheral:v8 didDiscoverCharacteristicsForService:v9 error:v10];
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ClientServiceManager *)self clientServiceMap];
  v12 = [v9 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    if (v10)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v9 UUID];
        v17 = [v8 name];
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = v17;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error updating value for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:v8 didUpdateValueForCharacteristic:v9 error:v10];
    }
  }
}

- (void)peripheral:(id)a3 didWriteValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ClientServiceManager *)self clientServiceMap];
  v12 = [v9 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    if (v10)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v9 UUID];
        v17 = [v8 name];
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = v17;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error writing value for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:v8 didWriteValueForCharacteristic:v9 error:v10];
    }
  }
}

- (void)peripheral:(id)a3 didUpdateNotificationStateForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ClientServiceManager *)self clientServiceMap];
  v12 = [v9 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    if (v10)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v9 UUID];
        v17 = [v8 name];
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = v17;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error updating notifications for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:v8 didUpdateNotificationStateForCharacteristic:v9 error:v10];
    }
  }
}

- (void)peripheral:(id)a3 didDiscoverDescriptorsForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ClientServiceManager *)self clientServiceMap];
  v12 = [v9 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    if (v10)
    {
      v14 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v9 UUID];
        v17 = [v8 name];
        v18 = 138412802;
        v19 = v16;
        v20 = 2112;
        v21 = v17;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error discovering descriptors for characteristic %@ on peripheral %@: %@", &v18, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v13 peripheral:v8 didDiscoverDescriptorsForCharacteristic:v9 error:v10];
    }
  }
}

- (void)peripheral:(id)a3 didUpdateValueForDescriptor:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ClientServiceManager *)self clientServiceMap];
  v12 = [v9 characteristic];
  v13 = [v12 service];
  v14 = [v11 objectForKey:v13];

  if (v14)
  {
    if (v10)
    {
      v15 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v16 = v15;
        v17 = [v9 UUID];
        v18 = [v8 name];
        v19 = 138412802;
        v20 = v17;
        v21 = 2112;
        v22 = v18;
        v23 = 2112;
        v24 = v10;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error updating value for descriptor %@ on peripheral %@: %@", &v19, 0x20u);
      }

      [(ClientServiceManager *)self analyzeError:v10];
    }

    if (objc_opt_respondsToSelector())
    {
      [v14 peripheral:v8 didUpdateValueForDescriptor:v9 error:v10];
    }
  }
}

@end