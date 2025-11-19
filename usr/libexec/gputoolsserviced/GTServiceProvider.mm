@interface GTServiceProvider
- (BOOL)waitForService:(id)a3 error:(id *)a4;
- (GTServiceProvider)init;
- (void)_registerService:(id)a3 forProcess:(id)a4 forPort:(unint64_t)a5;
- (void)deregisterService:(unint64_t)a3;
- (void)disconnectServicePorts:(id)a3;
- (void)notifyServiceListChanged:(id)a3;
- (void)waitForService:(id)a3 completionHandler:(id)a4;
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

- (void)_registerService:(id)a3 forProcess:(id)a4 forPort:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 deviceUDID];

  if (!v10)
  {
    v11 = +[GTDeviceProperties uniqueDeviceID];
    [v8 setDeviceUDID:v11];
  }

  [v8 setServicePort:a5];
  v12 = [[GTProcessService alloc] initWithService:v8 processInfo:v9];
  services = self->_services;
  v14 = [NSNumber numberWithUnsignedInteger:a5];
  [(NSMutableDictionary *)services setObject:v12 forKeyedSubscript:v14];

  if (GTCoreLogUseOsLog())
  {
    v15 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A3F0(v8, a5, v15);
    }
  }

  else
  {
    v16 = __stdoutp;
    v15 = [v8 protocolName];
    v17 = [v15 UTF8String];
    v18 = [v8 deviceUDID];
    v19 = [NSString stringWithFormat:@"Service Registered name:%s port:%lu udid:%@", v17, a5, v18];
    fprintf(v16, "%s\n", [v19 UTF8String]);
  }

  v20 = [(NSMutableDictionary *)self->_services allValues];
  [(GTServiceProvider *)self notifyServiceListChanged:v20];

  waiting = self->_waiting;
  v22 = [v8 protocolName];
  v23 = [(NSMutableDictionary *)waiting objectForKeyedSubscript:v22];

  if (v23)
  {
    v24 = self->_waiting;
    v25 = [v8 protocolName];
    [(NSMutableDictionary *)v24 removeObjectForKey:v25];

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

- (void)waitForService:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v24 = v7;
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
          v15 = [v14 serviceProperties];
          v16 = [v15 protocolName];
          v17 = [v16 isEqualToString:v6];

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

    v18 = [(NSMutableDictionary *)self->_waiting objectForKeyedSubscript:v6];

    if (!v18)
    {
      v19 = objc_alloc_init(NSMutableArray);
      [(NSMutableDictionary *)self->_waiting setObject:v19 forKeyedSubscript:v6];
    }

    v9 = [(NSMutableDictionary *)self->_waiting objectForKeyedSubscript:v6];
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

- (BOOL)waitForService:(id)a3 error:(id *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100008870;
  v17 = sub_100008880;
  v18 = 0;
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100008888;
  v10[3] = &unk_100040B48;
  v11 = dispatch_semaphore_create(0);
  v12 = &v13;
  v7 = v11;
  [(GTServiceProvider *)self waitForService:v6 completionHandler:v10];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (a4)
  {
    *a4 = v14[5];
  }

  v8 = v14[5] == 0;

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (void)deregisterService:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [(GTServiceProvider *)self disconnectServicePorts:v5];
}

- (void)disconnectServicePorts:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_services objectForKeyedSubscript:v9];
        v11 = [v10 serviceProperties];
        v12 = [v11 protocolName];
        v13 = [v12 UTF8String];

        if (GTCoreLogUseOsLog())
        {
          v14 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            if (v13)
            {
              v15 = v13;
            }

            else
            {
              v15 = "";
            }

            v16 = [v9 unsignedLongValue];
            *buf = 136315394;
            v25 = v15;
            v26 = 2048;
            v27 = v16;
            _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Service Unregistered name:%s port:%lu", buf, 0x16u);
          }
        }

        else
        {
          v17 = __stdoutp;
          if (v13)
          {
            v18 = v13;
          }

          else
          {
            v18 = "";
          }

          v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Service Unregistered name:%s port:%lu", v18, [v9 unsignedLongValue]);
          fprintf(v17, "%s\n", [v14 UTF8String]);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_services removeObjectsForKeys:v4];
  v19 = [(NSMutableDictionary *)self->_services allValues];
  [(GTServiceProvider *)self notifyServiceListChanged:v19];
}

- (void)notifyServiceListChanged:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100008C94;
  v7[3] = &unk_100040B70;
  v8 = v4;
  v6 = v4;
  [(GTObservableService *)observers notifyAll:v7];
}

@end