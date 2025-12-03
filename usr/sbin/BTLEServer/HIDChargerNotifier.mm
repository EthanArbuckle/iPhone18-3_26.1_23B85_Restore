@interface HIDChargerNotifier
+ (id)stateToStr:(unsigned __int8)str;
- (HIDChargerNotifier)initWithQueue:(id)queue;
- (HIDChargerNotifierDelegate)delegate;
- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types;
- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d;
- (void)blePairing:(id)pairing pairingFinished:(id)finished blePairingUUID:(id)d;
- (void)blePairingNoAccessories:(id)accessories;
- (void)changeState:(unsigned __int8)state;
- (void)setPairingData:(id)data;
- (void)start;
- (void)stop;
@end

@implementation HIDChargerNotifier

+ (id)stateToStr:(unsigned __int8)str
{
  if (str > 3u)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_1000BE098 + str);
  }
}

- (HIDChargerNotifier)initWithQueue:(id)queue
{
  queueCopy = queue;
  v38.receiver = self;
  v38.super_class = HIDChargerNotifier;
  v6 = [(HIDChargerNotifier *)&v38 init];
  v7 = v6;
  v8 = 0;
  if (queueCopy && v6)
  {
    v9 = objc_opt_new();
    lock = v7->_lock;
    v7->_lock = v9;

    if (v7->_lock)
    {
      objc_storeStrong(&v7->_queue, queue);
      v11 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/AccessoryBLEPairing.framework"];
      pairingProviderBundle = v7->_pairingProviderBundle;
      v7->_pairingProviderBundle = v11;

      v13 = [(NSBundle *)v7->_pairingProviderBundle classNamed:@"ACCBLEPairingProvider"];
      ACCBLEPairingProvider = v7->_ACCBLEPairingProvider;
      v7->_ACCBLEPairingProvider = v13;

      if (v7->_ACCBLEPairingProvider)
      {
        v15 = +[ACCTransportClient sharedClient];
        v16 = [v15 createConnectionWithType:2 andIdentifier:@"chargerNotifier"];
        accConnIdentifier = v7->_accConnIdentifier;
        v7->_accConnIdentifier = v16;

        if (v7->_accConnIdentifier)
        {
          v18 = +[ACCTransportClient sharedClient];
          v19 = kACCProperties_Connection_HideFromUI;
          v20 = +[NSNull null];
          [v18 setProperty:v19 value:v20 forEndpointWithUUID:v7->_accConnIdentifier];

          v8 = v7;
          goto LABEL_12;
        }

        v29 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100076A04(v29, v30, v31, v32, v33, v34, v35, v36);
        }
      }

      else
      {
        v21 = qword_1000DDBC8;
        if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
        {
          sub_100076A3C(v21, v22, v23, v24, v25, v26, v27, v28);
        }
      }
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (void)start
{
  v3 = [objc_alloc(self->_ACCBLEPairingProvider) initWithDelegate:self];
  pairingProvider = self->_pairingProvider;
  self->_pairingProvider = v3;

  if (!self->_pairingProvider)
  {
    v5 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100076A74(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)stop
{
  if (self->_accConnIdentifier)
  {
    v3 = +[ACCTransportClient sharedClient];
    [v3 destroyConnectionWithUUID:self->_accConnIdentifier];
  }
}

- (void)changeState:(unsigned __int8)state
{
  [(NSLock *)self->_lock lock];
  self->_state = state;
  self->_pending = 1;
  [(NSLock *)self->_lock unlock];
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043214;
  block[3] = &unk_1000BD370;
  objc_copyWeak(&v7, &location);
  block[4] = self;
  dispatch_async(queue, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setPairingData:(id)data
{
  dataCopy = data;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting pairing data", v7, 2u);
  }

  v6 = +[ACCTransportClient sharedClient];
  [v6 setProperty:kACCProperties_Endpoint_OOBPairingData value:dataCopy forConnectionWithUUID:self->_accConnIdentifier];
}

- (void)blePairing:(id)pairing accessoryAttached:(id)attached blePairingUUID:(id)d accInfoDict:(id)dict supportedPairTypes:(id)types
{
  attachedCopy = attached;
  v9 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = attachedCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accessory %@ attached to charger", &v10, 0xCu);
  }

  [(HIDChargerNotifier *)self changeState:1];
}

- (void)blePairing:(id)pairing accessoryDetached:(id)detached blePairingUUID:(id)d
{
  detachedCopy = detached;
  v7 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = detachedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Accessory %@ detached from charger", &v8, 0xCu);
  }

  [(HIDChargerNotifier *)self changeState:0];
}

- (void)blePairingNoAccessories:(id)accessories
{
  v4 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "No accessories on charger", v5, 2u);
  }

  [(HIDChargerNotifier *)self changeState:3];
}

- (void)blePairing:(id)pairing pairingFinished:(id)finished blePairingUUID:(id)d
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100043728;
  block[3] = &unk_1000BD398;
  block[4] = self;
  dispatch_async(queue, block);
}

- (HIDChargerNotifierDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end