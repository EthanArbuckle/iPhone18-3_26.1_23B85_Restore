@interface ServerServiceManager
+ (id)instance;
+ (void)initialize;
- (ServerServiceManager)init;
- (id)nameForCentral:(id)a3;
- (id)peripheralManagerStateString;
- (void)addService:(id)a3;
- (void)createServices;
- (void)destroyServices;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUpdateANCSAuthorization:(BOOL)a5;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3;
- (void)refreshPersistanceAssertion;
- (void)removeService:(id)a3;
- (void)respondToRequest:(id)a3 withResult:(int64_t)a4;
- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5;
@end

@implementation ServerServiceManager

+ (id)instance
{
  if (qword_1000DDB20 != -1)
  {
    sub_100077E90();
  }

  v3 = qword_1000DDB18;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = qword_1000DDB10;
    qword_1000DDB10 = &off_1000C4138;
  }
}

- (ServerServiceManager)init
{
  v13.receiver = self;
  v13.super_class = ServerServiceManager;
  v2 = [(ServerServiceManager *)&v13 init];
  if (v2)
  {
    v3 = [CBPeripheralManager alloc];
    v14[0] = CBCentralManagerOptionReceiveSystemEvents;
    v14[1] = CBManagerNeedsRestrictedStateOperation;
    v15[0] = &__kCFBooleanTrue;
    v15[1] = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
    v5 = [v3 initWithDelegate:v2 queue:&_dispatch_main_q options:v4];
    peripheralManager = v2->_peripheralManager;
    v2->_peripheralManager = v5;

    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    serverServiceMap = v2->_serverServiceMap;
    v2->_serverServiceMap = v7;

    v2->_shouldPersist = 0;
    persistanceAssertion = v2->_persistanceAssertion;
    v2->_persistanceAssertion = 0;

    v10 = objc_alloc_init(NSMutableArray);
    pendingUpdates = v2->_pendingUpdates;
    v2->_pendingUpdates = v10;
  }

  return v2;
}

- (void)createServices
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = qword_1000DDB10;
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
          v10 = [(ServerServiceManager *)self serverServiceMap];
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

- (void)destroyServices
{
  v3 = [(ServerServiceManager *)self serverServiceMap];
  [v3 enumerateKeysAndObjectsUsingBlock:&stru_1000BE0F8];

  v4 = [(ServerServiceManager *)self serverServiceMap];
  [v4 removeAllObjects];

  v5 = [(ServerServiceManager *)self pendingUpdates];
  [v5 removeAllObjects];
}

- (void)refreshPersistanceAssertion
{
  v3 = [(ServerServiceManager *)self peripheralManager];
  if ([v3 state] == 4)
  {

LABEL_6:

    [(ServerServiceManager *)self setPersistanceAssertion:0];
    return;
  }

  v4 = [(ServerServiceManager *)self shouldPersist];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(ServerServiceManager *)self persistanceAssertion];

  if (!v5)
  {
    v8 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    v6 = v8;
    [v8 UTF8String];
    v7 = os_transaction_create();
    [(ServerServiceManager *)self setPersistanceAssertion:v7];
  }
}

- (void)addService:(id)a3
{
  v4 = a3;
  v5 = [(ServerServiceManager *)self peripheralManager];
  [v5 addService:v4];
}

- (void)removeService:(id)a3
{
  v4 = a3;
  v5 = [(ServerServiceManager *)self peripheralManager];
  [v5 removeService:v4];
}

- (void)respondToRequest:(id)a3 withResult:(int64_t)a4
{
  v6 = a3;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100077EA4(v7, v6);
  }

  v8 = [(ServerServiceManager *)self peripheralManager];
  [v8 respondToRequest:v6 withResult:a4];
}

- (void)updateValue:(id)a3 forCharacteristic:(id)a4 onSubscribedCentrals:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100077F8C(v11, v9, v8);
  }

  v12 = [(ServerServiceManager *)self pendingUpdates];
  if ([v12 count])
  {
  }

  else
  {
    v13 = [(ServerServiceManager *)self peripheralManager];
    v14 = [v13 updateValue:v8 forCharacteristic:v9 onSubscribedCentrals:v10];

    if (v14)
    {
      goto LABEL_8;
    }
  }

  v15 = [(ServerServiceManager *)self pendingUpdates];
  v16 = [ATTUpdate updateWithValue:v8 characteristic:v9 centrals:v10];
  [v15 addObject:v16];

  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007804C(v17, self);
  }

LABEL_8:
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(ServerServiceManager *)self peripheralManagerStateString];
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PeripheralManager state is now %@", buf, 0xCu);
  }

  [(ServerServiceManager *)self refreshPersistanceAssertion];
  v8 = [(ServerServiceManager *)self serverServiceMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004ADFC;
  v10[3] = &unk_1000BE120;
  v9 = v4;
  v11 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];

  if ([v9 state] == 5)
  {
    [(ServerServiceManager *)self createServices];
  }

  else
  {
    [(ServerServiceManager *)self destroyServices];
  }
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ServerServiceManager *)self serverServiceMap];
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
  v8 = [(ServerServiceManager *)self serverServiceMap];
  v9 = [v7 characteristic];
  v10 = [v9 service];
  v11 = [v8 objectForKey:v10];

  if (v11)
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000780E8(v12, v7, self);
    }

    [v11 peripheralManager:v6 didReceiveReadRequest:v7];
  }

  else
  {
    v13 = [(ServerServiceManager *)self peripheralManager];
    [v13 respondToRequest:v7 withResult:10];
  }
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 firstObject];
  v9 = [(ServerServiceManager *)self serverServiceMap];
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
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
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

          v18 = qword_1000DDBC8;
          if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
          {
            v19 = *(*(&v31 + 1) + 8 * v17);
            v20 = v18;
            v30 = [v19 central];
            v21 = [(ServerServiceManager *)self nameForCentral:v30];
            v22 = [v19 characteristic];
            v23 = [v22 UUID];
            v24 = [v19 value];
            *buf = 138412802;
            v36 = v21;
            v37 = 2112;
            v38 = v23;
            v39 = 2112;
            v40 = v24;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Central %@ sent a write request on characteristic %@: %@", buf, 0x20u);

            self = v29;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
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
    v25 = [(ServerServiceManager *)self peripheralManager];
    [v25 respondToRequest:v8 withResult:10];
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ServerServiceManager *)self serverServiceMap];
  v12 = [v10 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ServerServiceManager *)self nameForCentral:v9];
      v17 = [v10 UUID];
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Central %@ is now subscribed to characteristic %@", &v18, 0x16u);
    }

    [v13 peripheralManager:v8 central:v9 didSubscribeToCharacteristic:v10];
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ServerServiceManager *)self serverServiceMap];
  v12 = [v10 service];
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ServerServiceManager *)self nameForCentral:v9];
      v17 = [v10 UUID];
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Central %@ is now unsubscribed from characteristic %@", &v18, 0x16u);
    }

    [v13 peripheralManager:v8 central:v9 didUnsubscribeFromCharacteristic:v10];
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000781E0(v5, self);
  }

  while (1)
  {
    v6 = [(ServerServiceManager *)self pendingUpdates];
    v7 = [v6 count];

    if (!v7)
    {
      break;
    }

    v8 = [(ServerServiceManager *)self pendingUpdates];
    v9 = [v8 firstObject];

    v10 = [(ServerServiceManager *)self peripheralManager];
    v11 = [v9 value];
    v12 = [v9 characteristic];
    v13 = [v9 centrals];
    v14 = [v10 updateValue:v11 forCharacteristic:v12 onSubscribedCentrals:v13];

    if ((v14 & 1) == 0)
    {

      break;
    }

    v15 = [(ServerServiceManager *)self pendingUpdates];
    [v15 removeObjectAtIndex:0];
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUpdateANCSAuthorization:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ServerServiceManager *)self serverServiceMap];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004B79C;
  v13[3] = &unk_1000BE148;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [v10 enumerateKeysAndObjectsUsingBlock:v13];
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
  v2 = [(ServerServiceManager *)self peripheralManager];
  v3 = [v2 state];

  if ((v3 - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000BE168 + (v3 - 1));
  }
}

@end