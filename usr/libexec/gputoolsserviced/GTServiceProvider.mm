@interface GTServiceProvider
- (BOOL)waitForService:(id)service error:(id *)error;
- (GTServiceProvider)init;
- (void)_registerService:(id)service forProcess:(id)process forPort:(unint64_t)port;
- (void)deregisterService:(unint64_t)service;
- (void)disconnectServicePorts:(id)ports;
- (void)notifyServiceListChanged:(id)changed;
- (void)waitForService:(id)service completionHandler:(id)handler;
@end

@implementation GTServiceProvider

- (GTServiceProvider)init
{
  v10.receiver = self;
  v10.super_class = GTServiceProvider;
  v2 = [(GTServiceProvider *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    services = v2->_services;
    v2->_services = v3;

    v2->_nextServiceID = 1;
    v5 = objc_alloc_init(NSMutableDictionary);
    waiting = v2->_waiting;
    v2->_waiting = v5;

    v7 = objc_opt_new();
    observers = v2->_observers;
    v2->_observers = v7;
  }

  return v2;
}

- (void)_registerService:(id)service forProcess:(id)process forPort:(unint64_t)port
{
  serviceCopy = service;
  processCopy = process;
  deviceUDID = [serviceCopy deviceUDID];

  if (!deviceUDID)
  {
    v11 = +[GTDeviceProperties uniqueDeviceID];
    [serviceCopy setDeviceUDID:v11];
  }

  [serviceCopy setServicePort:port];
  v12 = [[GTProcessService alloc] initWithService:serviceCopy processInfo:processCopy];
  services = self->_services;
  v14 = [NSNumber numberWithUnsignedInteger:port];
  [(NSMutableDictionary *)services setObject:v12 forKeyedSubscript:v14];

  if (GTCoreLogUseOsLog())
  {
    protocolName = gt_tagged_log(0x10u);
    if (os_log_type_enabled(protocolName, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A3F0(serviceCopy, port, protocolName);
    }
  }

  else
  {
    v16 = __stdoutp;
    protocolName = [serviceCopy protocolName];
    uTF8String = [protocolName UTF8String];
    deviceUDID2 = [serviceCopy deviceUDID];
    v19 = [NSString stringWithFormat:@"Service Registered name:%s port:%lu udid:%@", uTF8String, port, deviceUDID2];
    fprintf(v16, "%s\n", [v19 UTF8String]);
  }

  allValues = [(NSMutableDictionary *)self->_services allValues];
  [(GTServiceProvider *)self notifyServiceListChanged:allValues];

  waiting = self->_waiting;
  protocolName2 = [serviceCopy protocolName];
  v23 = [(NSMutableDictionary *)waiting objectForKeyedSubscript:protocolName2];

  if (v23)
  {
    v24 = self->_waiting;
    protocolName3 = [serviceCopy protocolName];
    [(NSMutableDictionary *)v24 removeObjectForKey:protocolName3];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v23;
    v27 = [v26 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v32;
      do
      {
        v30 = 0;
        do
        {
          if (*v32 != v29)
          {
            objc_enumerationMutation(v26);
          }

          (*(*(*(&v31 + 1) + 8 * v30) + 16))();
          v30 = v30 + 1;
        }

        while (v28 != v30);
        v28 = [v26 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v28);
    }
  }
}

- (void)waitForService:(id)service completionHandler:(id)handler
{
  serviceCopy = service;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (serviceCopy)
  {
    v24 = handlerCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = self->_services;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v13)];
          serviceProperties = [v14 serviceProperties];
          protocolName = [serviceProperties protocolName];
          v17 = [protocolName isEqualToString:serviceCopy];

          if (v17)
          {
            v8 = v24;
            v24[2](v24, 0);
            goto LABEL_15;
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v18 = [(NSMutableDictionary *)self->_waiting objectForKeyedSubscript:serviceCopy];

    if (!v18)
    {
      v19 = objc_alloc_init(NSMutableArray);
      [(NSMutableDictionary *)self->_waiting setObject:v19 forKeyedSubscript:serviceCopy];
    }

    v9 = [(NSMutableDictionary *)self->_waiting objectForKeyedSubscript:serviceCopy];
    v8 = v24;
    v20 = [v24 copy];
    v21 = objc_retainBlock(v20);
    [(NSMutableDictionary *)v9 addObject:v21];
  }

  else
  {
    v30 = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithFormat:@"Invalid protocol name"];
    v31 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v9 = [NSError errorWithDomain:@"com.apple.gputools.serviceprovider" code:0 userInfo:v23];

    (v8)[2](v8, v9);
  }

LABEL_15:
}

- (BOOL)waitForService:(id)service error:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100008870;
  v17 = sub_100008880;
  v18 = 0;
  serviceCopy = service;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008888;
  v10[3] = &unk_100040B48;
  v11 = dispatch_semaphore_create(0);
  v12 = &v13;
  v7 = v11;
  [(GTServiceProvider *)self waitForService:serviceCopy completionHandler:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)deregisterService:(unint64_t)service
{
  v4 = [NSNumber numberWithUnsignedLongLong:service];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(GTServiceProvider *)self disconnectServicePorts:v5];
}

- (void)disconnectServicePorts:(id)ports
{
  portsCopy = ports;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [portsCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(portsCopy);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v9];
        serviceProperties = [v10 serviceProperties];
        protocolName = [serviceProperties protocolName];
        uTF8String = [protocolName UTF8String];

        if (GTCoreLogUseOsLog())
        {
          v14 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            if (uTF8String)
            {
              v15 = uTF8String;
            }

            else
            {
              v15 = "";
            }

            unsignedLongValue = [v9 unsignedLongValue];
            *buf = 136315394;
            v25 = v15;
            v26 = 2048;
            v27 = unsignedLongValue;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Service Unregistered name:%s port:%lu", buf, 0x16u);
          }
        }

        else
        {
          v17 = __stdoutp;
          if (uTF8String)
          {
            v18 = uTF8String;
          }

          else
          {
            v18 = "";
          }

          v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Service Unregistered name:%s port:%lu", v18, [v9 unsignedLongValue]);
          fprintf(v17, "%s\n", [v14 UTF8String]);
        }
      }

      v6 = [portsCopy countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_services removeObjectsForKeys:portsCopy];
  allValues = [(NSMutableDictionary *)self->_services allValues];
  [(GTServiceProvider *)self notifyServiceListChanged:allValues];
}

- (void)notifyServiceListChanged:(id)changed
{
  changedCopy = changed;
  observers = self->_observers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008C94;
  v7[3] = &unk_100040B70;
  v8 = changedCopy;
  v6 = changedCopy;
  [(GTObservableService *)observers notifyAll:v7];
}

@end