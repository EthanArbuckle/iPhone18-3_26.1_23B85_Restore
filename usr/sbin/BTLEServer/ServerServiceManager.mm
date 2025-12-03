@interface ServerServiceManager
+ (id)instance;
+ (void)initialize;
- (ServerServiceManager)init;
- (id)nameForCentral:(id)central;
- (id)peripheralManagerStateString;
- (void)addService:(id)service;
- (void)createServices;
- (void)destroyServices;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUpdateANCSAuthorization:(BOOL)authorization;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers;
- (void)refreshPersistanceAssertion;
- (void)removeService:(id)service;
- (void)respondToRequest:(id)request withResult:(int64_t)result;
- (void)updateValue:(id)value forCharacteristic:(id)characteristic onSubscribedCentrals:(id)centrals;
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
  if (objc_opt_class() == self)
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
          serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
          service = [v9 service];
          [serverServiceMap setObject:v9 forKey:service];

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
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  [serverServiceMap enumerateKeysAndObjectsUsingBlock:&stru_1000BE0F8];

  serverServiceMap2 = [(ServerServiceManager *)self serverServiceMap];
  [serverServiceMap2 removeAllObjects];

  pendingUpdates = [(ServerServiceManager *)self pendingUpdates];
  [pendingUpdates removeAllObjects];
}

- (void)refreshPersistanceAssertion
{
  peripheralManager = [(ServerServiceManager *)self peripheralManager];
  if ([peripheralManager state] == 4)
  {

LABEL_6:

    [(ServerServiceManager *)self setPersistanceAssertion:0];
    return;
  }

  shouldPersist = [(ServerServiceManager *)self shouldPersist];

  if (!shouldPersist)
  {
    goto LABEL_6;
  }

  persistanceAssertion = [(ServerServiceManager *)self persistanceAssertion];

  if (!persistanceAssertion)
  {
    v8 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    v6 = v8;
    [v8 UTF8String];
    v7 = os_transaction_create();
    [(ServerServiceManager *)self setPersistanceAssertion:v7];
  }
}

- (void)addService:(id)service
{
  serviceCopy = service;
  peripheralManager = [(ServerServiceManager *)self peripheralManager];
  [peripheralManager addService:serviceCopy];
}

- (void)removeService:(id)service
{
  serviceCopy = service;
  peripheralManager = [(ServerServiceManager *)self peripheralManager];
  [peripheralManager removeService:serviceCopy];
}

- (void)respondToRequest:(id)request withResult:(int64_t)result
{
  requestCopy = request;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100077EA4(v7, requestCopy);
  }

  peripheralManager = [(ServerServiceManager *)self peripheralManager];
  [peripheralManager respondToRequest:requestCopy withResult:result];
}

- (void)updateValue:(id)value forCharacteristic:(id)characteristic onSubscribedCentrals:(id)centrals
{
  valueCopy = value;
  characteristicCopy = characteristic;
  centralsCopy = centrals;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100077F8C(v11, characteristicCopy, valueCopy);
  }

  pendingUpdates = [(ServerServiceManager *)self pendingUpdates];
  if ([pendingUpdates count])
  {
  }

  else
  {
    peripheralManager = [(ServerServiceManager *)self peripheralManager];
    v14 = [peripheralManager updateValue:valueCopy forCharacteristic:characteristicCopy onSubscribedCentrals:centralsCopy];

    if (v14)
    {
      goto LABEL_8;
    }
  }

  pendingUpdates2 = [(ServerServiceManager *)self pendingUpdates];
  v16 = [ATTUpdate updateWithValue:valueCopy characteristic:characteristicCopy centrals:centralsCopy];
  [pendingUpdates2 addObject:v16];

  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007804C(v17, self);
  }

LABEL_8:
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    peripheralManagerStateString = [(ServerServiceManager *)self peripheralManagerStateString];
    *buf = 138412290;
    v13 = peripheralManagerStateString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PeripheralManager state is now %@", buf, 0xCu);
  }

  [(ServerServiceManager *)self refreshPersistanceAssertion];
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004ADFC;
  v10[3] = &unk_1000BE120;
  v9 = stateCopy;
  v11 = v9;
  [serverServiceMap enumerateKeysAndObjectsUsingBlock:v10];

  if ([v9 state] == 5)
  {
    [(ServerServiceManager *)self createServices];
  }

  else
  {
    [(ServerServiceManager *)self destroyServices];
  }
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  managerCopy = manager;
  serviceCopy = service;
  errorCopy = error;
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  v11 = [serverServiceMap objectForKey:serviceCopy];

  if (v11)
  {
    [v11 peripheralManager:managerCopy didAddService:serviceCopy error:errorCopy];
  }
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  characteristic = [requestCopy characteristic];
  service = [characteristic service];
  v11 = [serverServiceMap objectForKey:service];

  if (v11)
  {
    v12 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000780E8(v12, requestCopy, self);
    }

    [v11 peripheralManager:managerCopy didReceiveReadRequest:requestCopy];
  }

  else
  {
    peripheralManager = [(ServerServiceManager *)self peripheralManager];
    [peripheralManager respondToRequest:requestCopy withResult:10];
  }
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  managerCopy = manager;
  requestsCopy = requests;
  firstObject = [requestsCopy firstObject];
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  characteristic = [firstObject characteristic];
  service = [characteristic service];
  v12 = [serverServiceMap objectForKey:service];

  if (v12)
  {
    v26 = v12;
    v27 = firstObject;
    v28 = managerCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = requestsCopy;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      selfCopy = self;
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
            central = [v19 central];
            v21 = [(ServerServiceManager *)self nameForCentral:central];
            characteristic2 = [v19 characteristic];
            uUID = [characteristic2 UUID];
            value = [v19 value];
            *buf = 138412802;
            v36 = v21;
            v37 = 2112;
            v38 = uUID;
            v39 = 2112;
            v40 = value;
            _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Central %@ sent a write request on characteristic %@: %@", buf, 0x20u);

            self = selfCopy;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v15);
    }

    v12 = v26;
    managerCopy = v28;
    [v26 peripheralManager:v28 didReceiveWriteRequests:v13];
    firstObject = v27;
  }

  else
  {
    peripheralManager = [(ServerServiceManager *)self peripheralManager];
    [peripheralManager respondToRequest:firstObject withResult:10];
  }
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  service = [characteristicCopy service];
  v13 = [serverServiceMap objectForKey:service];

  if (v13)
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ServerServiceManager *)self nameForCentral:centralCopy];
      uUID = [characteristicCopy UUID];
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = uUID;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Central %@ is now subscribed to characteristic %@", &v18, 0x16u);
    }

    [v13 peripheralManager:managerCopy central:centralCopy didSubscribeToCharacteristic:characteristicCopy];
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  service = [characteristicCopy service];
  v13 = [serverServiceMap objectForKey:service];

  if (v13)
  {
    v14 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [(ServerServiceManager *)self nameForCentral:centralCopy];
      uUID = [characteristicCopy UUID];
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = uUID;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Central %@ is now unsubscribed from characteristic %@", &v18, 0x16u);
    }

    [v13 peripheralManager:managerCopy central:centralCopy didUnsubscribeFromCharacteristic:characteristicCopy];
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers
{
  subscribersCopy = subscribers;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000781E0(v5, self);
  }

  while (1)
  {
    pendingUpdates = [(ServerServiceManager *)self pendingUpdates];
    v7 = [pendingUpdates count];

    if (!v7)
    {
      break;
    }

    pendingUpdates2 = [(ServerServiceManager *)self pendingUpdates];
    firstObject = [pendingUpdates2 firstObject];

    peripheralManager = [(ServerServiceManager *)self peripheralManager];
    value = [firstObject value];
    characteristic = [firstObject characteristic];
    centrals = [firstObject centrals];
    v14 = [peripheralManager updateValue:value forCharacteristic:characteristic onSubscribedCentrals:centrals];

    if ((v14 & 1) == 0)
    {

      break;
    }

    pendingUpdates3 = [(ServerServiceManager *)self pendingUpdates];
    [pendingUpdates3 removeObjectAtIndex:0];
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUpdateANCSAuthorization:(BOOL)authorization
{
  managerCopy = manager;
  centralCopy = central;
  serverServiceMap = [(ServerServiceManager *)self serverServiceMap];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10004B79C;
  v13[3] = &unk_1000BE148;
  v14 = managerCopy;
  v15 = centralCopy;
  authorizationCopy = authorization;
  v11 = centralCopy;
  v12 = managerCopy;
  [serverServiceMap enumerateKeysAndObjectsUsingBlock:v13];
}

- (id)nameForCentral:(id)central
{
  identifier = [central identifier];
  v4 = +[ConnectionManager instance];
  v5 = [v4 peripheralForIdentifier:identifier];

  if (v5)
  {
    [v5 name];
  }

  else
  {
    [identifier UUIDString];
  }
  v6 = ;

  return v6;
}

- (id)peripheralManagerStateString
{
  peripheralManager = [(ServerServiceManager *)self peripheralManager];
  state = [peripheralManager state];

  if ((state - 1) > 9)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000BE168 + (state - 1));
  }
}

@end