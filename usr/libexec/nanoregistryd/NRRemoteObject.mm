@interface NRRemoteObject
+ (id)trafficClassQueue;
- (BOOL)_updateDPDAndReturnYESIfChangeWithDevice:(id)device;
- (BOOL)hasAccounts;
- (BOOL)isAlwaysConnected;
- (BOOL)isDisconnected;
- (BOOL)isIDSConnected;
- (BOOL)isIDSConnectedNotification;
- (BOOL)isIDSNearby;
- (NRImmutableIDSDevice)defaultPairedDevice;
- (NRRemoteObject)initWithServiceName:(id)name;
- (NRRemoteObject)initWithServiceName:(id)name isAlwaysConnected:(BOOL)connected andClientQueue:(id)queue andDelegate:(id)delegate;
- (NRRemoteObjectDelegate)delegate;
- (NSPointerArray)connectivityObservers;
- (NSSet)deviceUniqueIdentifiers;
- (id)_areAccountsAndDevicesPresent:(id)present andDevices:(id)devices;
- (id)_lookupDestinations:(id)destinations;
- (id)_rawDefaultPairedDevice;
- (id)deprecatedIDSDeviceIdentifierForBTUUID:(id)d;
- (id)idsDeviceIdentifierForBTUUID:(id)d;
- (void)_fireIDSAvailableDelegateIfNeededWithIDSDevice:(id)device;
- (void)_generateNearbyConnectedDelegateCalls;
- (void)_messageResponseTimeout:(id)timeout;
- (void)_queueSendMessage:(id)message type:(unsigned __int16)type requestUUID:(id)d withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)self0 toIDSBTUUID:(id)self1 didSend:(id)self2 andResponse:(id)self3;
- (void)_resumeMessageDeliveryQueue;
- (void)_sendCloudMessage:(id)message type:(unsigned __int16)type responseToRequest:(id)request withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)self0 toDestinations:(id)self1 skipLookup:(BOOL)self2 didSend:(id)self3 andResponse:(id)self4;
- (void)_sendMessage:(id)message type:(unsigned __int16)type requestUUID:(id)d withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)self0 toIDSBTUUID:(id)self1 didSend:(id)self2 andResponse:(id)self3;
- (void)_suspendMessageDeliveryQueue;
- (void)_updateIDSDeviceUniqueIdentifiers;
- (void)_updateTrafficClassesWithClasses:(id)classes;
- (void)addConnectivityObserver:(id)observer;
- (void)dealloc;
- (void)handleIncomingMessage:(id)message;
- (void)invalidate;
- (void)removeConnectivityObserver:(id)observer;
- (void)sendResponse:(id)response type:(unsigned __int16)type withRequest:(id)request withTimeout:(id)timeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)priority didSend:(id)self0;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service connectedDevicesChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block;
- (void)setConnectivityObservers:(id)observers;
- (void)setDefaultPairedDevice:(id)device;
- (void)setDelegate:(id)delegate;
- (void)setDeviceUniqueIdentifiers:(id)identifiers;
- (void)setDisconnected:(BOOL)disconnected;
- (void)setHasAccounts:(BOOL)accounts;
- (void)setIDSConnected:(BOOL)connected;
- (void)setIDSNearby:(BOOL)nearby;
- (void)setIsAlwaysConnected:(BOOL)connected;
- (void)setIsIDSConnectedNotification:(BOOL)notification;
- (void)updateTrafficClassesWithClasses:(id)classes;
@end

@implementation NRRemoteObject

- (NRRemoteObjectDelegate)delegate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C2E98;
  v10 = sub_1000C2EA8;
  v11 = 0;
  delegateQueue = self->_delegateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002EA0;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(delegateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)hasAccounts
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000031A0;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NRImmutableIDSDevice)defaultPairedDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C2E98;
  v10 = sub_1000C2EA8;
  v11 = 0;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000312C;
  v5[3] = &unk_100176950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isDisconnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100003260;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isIDSConnectedNotification
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C25BC;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsIDSConnectedNotification:(BOOL)notification
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2648;
  v4[3] = &unk_100176198;
  v4[4] = self;
  notificationCopy = notification;
  dispatch_async(defaultPairedDeviceQueue, v4);
}

- (BOOL)isIDSNearby
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C2704;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isIDSConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C27D8;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIDSNearby:(BOOL)nearby
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2878;
  v4[3] = &unk_100176198;
  v4[4] = self;
  nearbyCopy = nearby;
  dispatch_async(defaultPairedDeviceQueue, v4);
}

- (void)setIDSConnected:(BOOL)connected
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2900;
  v4[3] = &unk_100176198;
  v4[4] = self;
  connectedCopy = connected;
  dispatch_async(defaultPairedDeviceQueue, v4);
}

- (void)_generateNearbyConnectedDelegateCalls
{
  if (self->_disconnected)
  {
    isIDSNearby = 0;
    isIDSConnected = 0;
  }

  else
  {
    isIDSNearby = self->_isIDSNearby;
    isIDSConnected = self->_isIDSConnected;
  }

  if (self->_wasIDSNearby != isIDSNearby)
  {
    v25 = isIDSConnected;
    self->_wasIDSNearby = isIDSNearby;
    delegate = [(NRRemoteObject *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C2CD8;
      block[3] = &unk_100176198;
      block[4] = self;
      v41 = isIDSNearby;
      dispatch_async(clientQueue, block);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    connectivityObservers = [(NRRemoteObject *)self connectivityObservers];
    v9 = [connectivityObservers countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(connectivityObservers);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v14 = self->_clientQueue;
            v34[0] = _NSConcreteStackBlock;
            v34[1] = 3221225472;
            v34[2] = sub_1000C2D30;
            v34[3] = &unk_100177C58;
            v34[4] = v13;
            v34[5] = self;
            v35 = isIDSNearby;
            dispatch_async(v14, v34);
          }
        }

        v10 = [connectivityObservers countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v10);
    }

    isIDSConnected = v25;
  }

  if (self->_wasIDSConnected != isIDSConnected)
  {
    self->_wasIDSConnected = isIDSConnected;
    delegate2 = [(NRRemoteObject *)self delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      v17 = self->_clientQueue;
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000C2D40;
      v32[3] = &unk_100176198;
      v32[4] = self;
      v33 = isIDSConnected;
      dispatch_async(v17, v32);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    connectivityObservers2 = [(NRRemoteObject *)self connectivityObservers];
    v19 = [connectivityObservers2 countByEnumeratingWithState:&v28 objects:v42 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v29 != v21)
          {
            objc_enumerationMutation(connectivityObservers2);
          }

          v23 = *(*(&v28 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            v24 = self->_clientQueue;
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_1000C2D98;
            v26[3] = &unk_100177C58;
            v26[4] = v23;
            v26[5] = self;
            v27 = isIDSConnected;
            dispatch_async(v24, v26);
          }
        }

        v20 = [connectivityObservers2 countByEnumeratingWithState:&v28 objects:v42 count:16];
      }

      while (v20);
    }
  }
}

- (NSSet)deviceUniqueIdentifiers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C2E98;
  v10 = sub_1000C2EA8;
  v11 = 0;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C2EB0;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDeviceUniqueIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C2F5C;
  v7[3] = &unk_100175598;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(defaultPairedDeviceQueue, v7);
}

- (void)setHasAccounts:(BOOL)accounts
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C3124;
  v4[3] = &unk_100176198;
  v4[4] = self;
  accountsCopy = accounts;
  dispatch_async(defaultPairedDeviceQueue, v4);
}

- (void)setDisconnected:(BOOL)disconnected
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C31B8;
  v4[3] = &unk_100176198;
  disconnectedCopy = disconnected;
  v4[4] = self;
  dispatch_async(defaultPairedDeviceQueue, v4);
}

- (BOOL)isAlwaysConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  idsQueue = self->_idsQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C3758;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(idsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setIsAlwaysConnected:(BOOL)connected
{
  idsQueue = self->_idsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C37E4;
  v4[3] = &unk_100176198;
  v4[4] = self;
  connectedCopy = connected;
  dispatch_async(idsQueue, v4);
}

- (id)_rawDefaultPairedDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C2E98;
  v10 = sub_1000C2EA8;
  v11 = 0;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C38F8;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(defaultPairedDeviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setDefaultPairedDevice:(id)device
{
  deviceCopy = device;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C39A4;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(defaultPairedDeviceQueue, v7);
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3A9C;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)addConnectivityObserver:(id)observer
{
  observerCopy = observer;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3B40;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(delegateQueue, v7);
}

- (void)removeConnectivityObserver:(id)observer
{
  observerCopy = observer;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3C1C;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(delegateQueue, v7);
}

- (NSPointerArray)connectivityObservers
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000C2E98;
  v10 = sub_1000C2EA8;
  v11 = 0;
  delegateQueue = self->_delegateQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C3DA4;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(delegateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setConnectivityObservers:(id)observers
{
  observersCopy = observers;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3E8C;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = observersCopy;
  v6 = observersCopy;
  dispatch_async(delegateQueue, v7);
}

- (NRRemoteObject)initWithServiceName:(id)name
{
  nameCopy = name;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = nameCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Init NRRemoteObject: %@", &v10, 0xCu);
    }
  }

  v8 = [(NRRemoteObject *)self initWithServiceName:nameCopy andClientQueue:0];

  return v8;
}

- (NRRemoteObject)initWithServiceName:(id)name isAlwaysConnected:(BOOL)connected andClientQueue:(id)queue andDelegate:(id)delegate
{
  connectedCopy = connected;
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  v64.receiver = self;
  v64.super_class = NRRemoteObject;
  v13 = [(NRRemoteObject *)&v64 init];
  if (v13)
  {
    v14 = nr_daemon_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (connectedCopy)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v66 = nameCopy;
        v67 = 2112;
        v68 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Init NRRemoteObject (name: %@, alwaysConnected: %@)", buf, 0x16u);
      }
    }

    *(v13 + 85) = connectedCopy;
    v18 = [nameCopy copy];
    v19 = *(v13 + 4);
    *(v13 + 4) = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = *(v13 + 1);
    *(v13 + 1) = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = *(v13 + 2);
    *(v13 + 2) = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = *(v13 + 3);
    *(v13 + 3) = v24;

    v26 = +[NSPointerArray weakObjectsPointerArray];
    v27 = *(v13 + 14);
    *(v13 + 14) = v26;

    v28 = +[NSMapTable weakToStrongObjectsMapTable];
    v29 = *(v13 + 18);
    *(v13 + 18) = v28;

    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_create([nameCopy UTF8String], v30);
    v32 = *(v13 + 5);
    *(v13 + 5) = v31;

    if (queueCopy)
    {
      v33 = queueCopy;
      v34 = *(v13 + 15);
      *(v13 + 15) = v33;
    }

    else
    {
      v34 = [nameCopy stringByAppendingString:@".client"];
      v35 = dispatch_queue_create([v34 UTF8String], v30);
      v36 = *(v13 + 15);
      *(v13 + 15) = v35;
    }

    v37 = [nameCopy stringByAppendingString:@".incomingDeliveryQueue"];
    v38 = dispatch_queue_create_with_target_V2([v37 UTF8String], v30, *(v13 + 15));
    v39 = *(v13 + 17);
    *(v13 + 17) = v38;

    v40 = [nameCopy stringByAppendingString:@".delegate"];
    v41 = dispatch_queue_create([v40 UTF8String], v30);
    v42 = *(v13 + 6);
    *(v13 + 6) = v41;

    v58 = delegateCopy;
    objc_storeWeak(v13 + 13, delegateCopy);
    v43 = *(v13 + 5);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C4490;
    block[3] = &unk_100175660;
    v44 = v13;
    v63 = v44;
    dispatch_sync(v43, block);
    v45 = [nameCopy stringByAppendingString:@".DPD"];
    v46 = dispatch_queue_create([v45 UTF8String], v30);
    v47 = v44[7];
    v44[7] = v46;

    v48 = [[IDSService alloc] initWithService:*(v13 + 4)];
    v49 = v44[16];
    v44[16] = v48;

    v50 = objc_alloc_init(NSMutableDictionary);
    v51 = v44[9];
    v44[9] = v50;

    [v44 registerProtobufHandlers];
    [v44[16] addDelegate:v44 queue:*(v13 + 5)];
    [v44 setDisconnected:1];
    defaultPairedDevice = [v44 defaultPairedDevice];
    v53 = *(v13 + 5);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000C44A4;
    v59[3] = &unk_100175598;
    v60 = v44;
    v61 = defaultPairedDevice;
    v54 = defaultPairedDevice;
    dispatch_async(v53, v59);
    v55 = nr_daemon_log();
    LODWORD(defaultPairedDevice) = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

    if (defaultPairedDevice)
    {
      v56 = nr_daemon_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = nameCopy;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Created IDS service %@", buf, 0xCu);
      }
    }

    delegateCopy = v58;
  }

  return v13;
}

- (void)_suspendMessageDeliveryQueue
{
  if (!self->_isIncomingMessageDeliveryQueueSuspended)
  {
    self->_isIncomingMessageDeliveryQueueSuspended = 1;
    dispatch_suspend(self->_incomingMessageDeliveryQueue);
  }
}

- (void)_resumeMessageDeliveryQueue
{
  if (self->_isIncomingMessageDeliveryQueueSuspended)
  {
    self->_isIncomingMessageDeliveryQueueSuspended = 0;
    dispatch_resume(self->_incomingMessageDeliveryQueue);
  }
}

- (void)dealloc
{
  if (self->_isIncomingMessageDeliveryQueueSuspended)
  {
    dispatch_resume(self->_incomingMessageDeliveryQueue);
  }

  v3.receiver = self;
  v3.super_class = NRRemoteObject;
  [(NRRemoteObject *)&v3 dealloc];
}

- (void)invalidate
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      *buf = 138412290;
      v14 = serviceName;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating NRRemoteObject service %@", buf, 0xCu);
    }
  }

  [(NRRemoteObject *)self setDefaultPairedDevice:0];
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4814;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(idsQueue, block);
  [(NRRemoteObject *)self setDelegate:0];
  [(NRRemoteObject *)self setConnectivityObservers:0];
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_serviceName;
      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalidating NRRemoteObject service %@- complete", buf, 0xCu);
    }
  }
}

- (void)handleIncomingMessage:(id)message
{
  messageCopy = message;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      type = [messageCopy type];
      data = [messageCopy data];
      v11 = [data length];
      isResponse = [messageCopy isResponse];
      v13 = &__kCFBooleanFalse;
      if (isResponse)
      {
        v13 = &__kCFBooleanTrue;
      }

      *buf = 138413058;
      v74 = serviceName;
      v75 = 2048;
      v76 = type;
      v77 = 2048;
      v78 = v11;
      v79 = 2112;
      v80 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "(%@): IDS message received type=%ld length=%ld response=%@", buf, 0x2Au);
    }
  }

  if (![objc_opt_class() messagesShouldHaveValidSender])
  {
    goto LABEL_9;
  }

  service = self->_service;
  context = [messageCopy context];
  fromID = [context fromID];
  v17 = [(IDSService *)service linkedDeviceForFromID:fromID withRelationship:3];

  if (v17)
  {
LABEL_9:
    context2 = [messageCopy context];
    incomingResponseIdentifier = [context2 incomingResponseIdentifier];

    if (![messageCopy isResponse] || !incomingResponseIdentifier)
    {
      goto LABEL_21;
    }

    v20 = [(NSMutableDictionary *)self->_idsSendIDToTimer objectForKeyedSubscript:incomingResponseIdentifier];
    [v20 invalidate];
    [(NSMutableDictionary *)self->_idsSendIDToTimer removeObjectForKey:incomingResponseIdentifier];
    v21 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:incomingResponseIdentifier];
    v22 = nr_daemon_log();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      if (v23)
      {
        v24 = nr_daemon_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = self->_serviceName;
          *buf = 138412546;
          v74 = v25;
          v75 = 2114;
          v76 = incomingResponseIdentifier;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "(%@): matched response %{public}@, executing block", buf, 0x16u);
        }
      }

      [(NSMutableDictionary *)self->_idsSendIDToResponseHandler removeObjectForKey:incomingResponseIdentifier];
      v26 = [(NSMapTable *)self->_shortcutMessages objectForKey:messageCopy];
      bOOLValue = [v26 BOOLValue];
      v28 = 136;
      if (bOOLValue)
      {
        v28 = 120;
      }

      v29 = *(&self->super.isa + v28);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C55F8;
      block[3] = &unk_100176A18;
      v72 = v21;
      v70 = messageCopy;
      selfCopy = self;
      dispatch_async(v29, block);

      v30 = v72;
    }

    else
    {
      if (!v23)
      {
        goto LABEL_20;
      }

      v30 = nr_daemon_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v58 = self->_serviceName;
        *buf = 138412546;
        v74 = v58;
        v75 = 2114;
        v76 = incomingResponseIdentifier;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "(%@): no ack block found for response %{public}@, ignoring", buf, 0x16u);
      }
    }

LABEL_20:
LABEL_21:
    if ([messageCopy isResponse])
    {
      v31 = 0x10000;
    }

    else
    {
      v31 = 0;
    }

    v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v31 | [messageCopy type]);
    v33 = [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector objectForKeyedSubscript:v32];
    v34 = v33;
    if (v33)
    {
      method = [v33 method];
      v36 = nr_daemon_log();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

      if (method)
      {
        if (v37)
        {
          v38 = nr_daemon_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = self->_serviceName;
            v62 = NSStringFromSelector([v34 selector]);
            type2 = [messageCopy type];
            data2 = [messageCopy data];
            v60 = [data2 length];
            isResponse2 = [messageCopy isResponse];
            v41 = &__kCFBooleanFalse;
            if (isResponse2)
            {
              v41 = &__kCFBooleanTrue;
            }

            v59 = v41;
            context3 = [messageCopy context];
            fromID2 = [context3 fromID];
            *buf = 138413570;
            v74 = v39;
            v75 = 2114;
            v76 = v62;
            v77 = 2048;
            v78 = type2;
            v79 = 2048;
            v80 = v60;
            v81 = 2112;
            v82 = v59;
            v83 = 2114;
            v84 = fromID2;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "(%@): Calling selector %{public}@ for type=%ld length=%ld response=%@ messageSource=%{public}@", buf, 0x3Eu);
          }
        }

        if (([v34 connected] & 1) == 0)
        {
          [(NSMapTable *)self->_shortcutMessages setObject:&__kCFBooleanTrue forKey:messageCopy];
        }

        connected = [v34 connected];
        v44 = 120;
        if (connected)
        {
          v44 = 136;
        }

        v45 = *(&self->super.isa + v44);
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_1000C56D8;
        v65[3] = &unk_100178570;
        v68 = method;
        v65[4] = self;
        v66 = v34;
        v67 = messageCopy;
        dispatch_async(v45, v65);

        goto LABEL_48;
      }

      if (v37)
      {
        v48 = nr_daemon_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = self->_serviceName;
          type3 = [messageCopy type];
          data3 = [messageCopy data];
          v52 = [data3 length];
          isResponse3 = [messageCopy isResponse];
          v54 = &__kCFBooleanFalse;
          if (isResponse3)
          {
            v54 = &__kCFBooleanTrue;
          }

LABEL_46:
          *buf = 138413058;
          v74 = v49;
          v75 = 2048;
          v76 = type3;
          v77 = 2048;
          v78 = v52;
          v79 = 2112;
          v80 = v54;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "(%@): No selector found for type=%ld length=%ld response=%@", buf, 0x2Au);

          goto LABEL_47;
        }

        goto LABEL_47;
      }
    }

    else
    {
      v46 = nr_daemon_log();
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);

      if (v47)
      {
        v48 = nr_daemon_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = self->_serviceName;
          type3 = [messageCopy type];
          data3 = [messageCopy data];
          v52 = [data3 length];
          isResponse4 = [messageCopy isResponse];
          v54 = &__kCFBooleanFalse;
          if (isResponse4)
          {
            v54 = &__kCFBooleanTrue;
          }

          goto LABEL_46;
        }

LABEL_47:
      }
    }

LABEL_48:

    goto LABEL_49;
  }

  v56 = nr_daemon_log();
  v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);

  if (!v57)
  {
    goto LABEL_50;
  }

  incomingResponseIdentifier = nr_daemon_log();
  if (os_log_type_enabled(incomingResponseIdentifier, OS_LOG_TYPE_ERROR))
  {
    sub_100103238(self, messageCopy);
  }

LABEL_49:

LABEL_50:
}

- (void)sendResponse:(id)response type:(unsigned __int16)type withRequest:(id)request withTimeout:(id)timeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)priority didSend:(id)self0
{
  typeCopy = type;
  sendCopy = send;
  forCopy = for;
  descriptionCopy = description;
  timeoutCopy = timeout;
  requestCopy = request;
  responseCopy = response;
  v21 = [NSUUID alloc];
  protobuf = [requestCopy protobuf];
  context = [protobuf context];
  outgoingResponseIdentifier = [context outgoingResponseIdentifier];
  v24 = [v21 initWithUUIDString:outgoingResponseIdentifier];
  idsBTUUID = [requestCopy idsBTUUID];

  [(NRRemoteObject *)self _sendMessage:responseCopy type:typeCopy requestUUID:v24 withTimeout:timeoutCopy withResponseTimeout:0 withDescription:descriptionCopy onlyOneFor:forCopy priority:priority toIDSBTUUID:idsBTUUID didSend:sendCopy andResponse:0];
}

- (void)_sendMessage:(id)message type:(unsigned __int16)type requestUUID:(id)d withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)self0 toIDSBTUUID:(id)self1 didSend:(id)self2 andResponse:(id)self3
{
  messageCopy = message;
  dCopy = d;
  timeoutCopy = timeout;
  responseTimeoutCopy = responseTimeout;
  descriptionCopy = description;
  forCopy = for;
  iDCopy = iD;
  sendCopy = send;
  responseCopy = response;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  queue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5F68;
  block[3] = &unk_100179368;
  block[4] = self;
  v39 = messageCopy;
  typeCopy = type;
  v40 = dCopy;
  v41 = timeoutCopy;
  v42 = responseTimeoutCopy;
  v43 = descriptionCopy;
  v47 = responseCopy;
  priorityCopy = priority;
  v44 = forCopy;
  v45 = iDCopy;
  v46 = sendCopy;
  v25 = responseCopy;
  v26 = sendCopy;
  v27 = iDCopy;
  v28 = forCopy;
  v29 = descriptionCopy;
  v30 = responseTimeoutCopy;
  v31 = timeoutCopy;
  v32 = dCopy;
  v33 = messageCopy;
  dispatch_async(queue, block);
}

- (void)_sendCloudMessage:(id)message type:(unsigned __int16)type responseToRequest:(id)request withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)self0 toDestinations:(id)self1 skipLookup:(BOOL)self2 didSend:(id)self3 andResponse:(id)self4
{
  messageCopy = message;
  requestCopy = request;
  timeoutCopy = timeout;
  responseTimeoutCopy = responseTimeout;
  descriptionCopy = description;
  forCopy = for;
  destinationsCopy = destinations;
  sendCopy = send;
  responseCopy = response;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  queue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C62D8;
  block[3] = &unk_100179390;
  block[4] = self;
  v40 = messageCopy;
  typeCopy = type;
  v41 = requestCopy;
  v42 = timeoutCopy;
  v43 = responseTimeoutCopy;
  v44 = descriptionCopy;
  v48 = responseCopy;
  priorityCopy = priority;
  v45 = forCopy;
  v46 = destinationsCopy;
  lookupCopy = lookup;
  v47 = sendCopy;
  v26 = responseCopy;
  v27 = sendCopy;
  v28 = destinationsCopy;
  v29 = forCopy;
  v30 = descriptionCopy;
  v31 = responseTimeoutCopy;
  v32 = timeoutCopy;
  v33 = requestCopy;
  v34 = messageCopy;
  dispatch_async(queue, block);
}

- (void)_messageResponseTimeout:(id)timeout
{
  timeoutCopy = timeout;
  idsQueue = self->_idsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C63C4;
  v7[3] = &unk_100175598;
  v8 = timeoutCopy;
  selfCopy = self;
  v6 = timeoutCopy;
  dispatch_async(idsQueue, v7);
}

- (void)_queueSendMessage:(id)message type:(unsigned __int16)type requestUUID:(id)d withTimeout:(id)timeout withResponseTimeout:(id)responseTimeout withDescription:(id)description onlyOneFor:(id)for priority:(int64_t)self0 toIDSBTUUID:(id)self1 didSend:(id)self2 andResponse:(id)self3
{
  typeCopy = type;
  messageCopy = message;
  dCopy = d;
  timeoutCopy = timeout;
  responseTimeoutCopy = responseTimeout;
  descriptionCopy = description;
  forCopy = for;
  sendCopy = send;
  responseCopy = response;
  v20 = "request";
  if (dCopy)
  {
    v20 = "response";
  }

  v92 = v20;
  idsQueue = self->_idsQueue;
  iDCopy = iD;
  dispatch_assert_queue_V2(idsQueue);
  v23 = [(IDSService *)self->_service devicesForBTUUID:iDCopy];

  anyObject = [v23 anyObject];

  v99 = anyObject;
  if (anyObject)
  {
    v25 = +[NSMutableDictionary dictionary];
    v26 = v25;
    v86 = timeoutCopy;
    if (timeoutCopy)
    {
      [v25 setObject:timeoutCopy forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
      [timeoutCopy doubleValue];
      v28 = messageCopy;
      v29 = forCopy;
      if (v27 + -10.0 >= 0.00000011920929)
      {
        LODWORD(timeoutCopy) = 0;
      }

      else
      {
        [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
        LODWORD(timeoutCopy) = 1;
      }
    }

    else
    {
      v47 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      [v26 setObject:v47 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

      v28 = messageCopy;
      v29 = forCopy;
    }

    [v26 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    if (v29)
    {
      [v26 setObject:v29 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    }

    if (dCopy)
    {
      uUIDString = [dCopy UUIDString];
      [v26 setObject:uUIDString forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
    }

    v88 = dCopy;
    v49 = [IDSProtobuf alloc];
    data = [v28 data];
    v51 = [v49 initWithProtobufData:data type:typeCopy isResponse:dCopy != 0];

    service = [(NRRemoteObject *)self service];
    v53 = IDSCopyIDForDevice();
    v54 = [NSSet setWithObject:v53];
    v112 = 0;
    v113 = 0;
    v91 = v51;
    v55 = [service sendProtobuf:v51 toDestinations:v54 priority:priority options:v26 identifier:&v113 error:&v112];
    v46 = v113;
    v30 = v112;

    if (!v55 || v30)
    {
      if (v30)
      {
        v66 = 1;
      }

      else
      {
        v66 = v55;
      }

      if ((v66 & 1) == 0)
      {
        v30 = [NSError errorWithDomain:@"com.apple.nanoregistry.ids.failnoerror" code:1 userInfo:0];
      }

      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      nr_safeDescription = [v30 nr_safeDescription];
      v59 = [NSString stringWithFormat:@"Error sending %s %@ - %@", v92, v68, nr_safeDescription];

      v70 = nr_daemon_log();
      LODWORD(nr_safeDescription) = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);

      dCopy = v88;
      if (nr_safeDescription)
      {
        v71 = nr_daemon_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v115 = v59;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v33 = sendCopy;
      if (sendCopy)
      {
        clientQueue = self->_clientQueue;
        v109[0] = _NSConcreteStackBlock;
        v109[1] = 3221225472;
        v109[2] = sub_1000C6FA8;
        v109[3] = &unk_100175688;
        v111 = sendCopy;
        v110 = v30;
        dispatch_async(clientQueue, v109);
      }

      if (responseCopy)
      {
        v73 = self->_clientQueue;
        v107[0] = _NSConcreteStackBlock;
        v107[1] = 3221225472;
        v107[2] = sub_1000C6FBC;
        v107[3] = &unk_100175D58;
        v108 = responseCopy;
        dispatch_async(v73, v107);
      }
    }

    else
    {
      v33 = sendCopy;
      if (sendCopy)
      {
        v56 = objc_retainBlock(sendCopy);
        [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler setObject:v56 forKeyedSubscript:v46];
      }

      dCopy = v88;
      if (!responseCopy || (v57 = objc_retainBlock(responseCopy), [(NSMutableDictionary *)self->_idsSendIDToResponseHandler setObject:v57 forKeyedSubscript:v46], v57, !responseTimeoutCopy))
      {
        v30 = 0;
        goto LABEL_47;
      }

      v58 = [NSString stringWithFormat:@"com.apple.%s.%@", v92, v46];
      v59 = [v58 stringByReplacingOccurrencesOfString:@" " withString:@"-"];

      [responseTimeoutCopy doubleValue];
      v61 = v60;
      v62 = self->_idsQueue;
      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_1000C6FD0;
      v105[3] = &unk_100175598;
      v105[4] = self;
      v63 = v46;
      v106 = v63;
      v64 = [TimerFactory timerWithIdentifier:v59 delay:1 gracePeriod:v62 waking:v105 handlerQueue:v61 handlerBlock:0.0];
      v65 = v63;
      v33 = sendCopy;
      [(NSMutableDictionary *)self->_idsSendIDToTimer setObject:v64 forKeyedSubscript:v65];

      v30 = 0;
    }

LABEL_47:
    v74 = nr_daemon_log();
    v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);

    if (v75)
    {
      v76 = nr_daemon_log();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v85 = v46;
        v77 = descriptionCopy;
        if (!descriptionCopy)
        {
          v78 = objc_opt_class();
          v77 = NSStringFromClass(v78);
        }

        data2 = [v28 data];
        v80 = [data2 length];
        nsuuid = [v99 nsuuid];
        uUIDString2 = [nsuuid UUIDString];
        v83 = uUIDString2;
        *buf = 136316418;
        v84 = "";
        v115 = v92;
        v116 = 2114;
        if (timeoutCopy)
        {
          v84 = "fireAndForget is ON";
        }

        v117 = v77;
        v118 = 2048;
        v119 = v80;
        v120 = 2114;
        v121 = uUIDString2;
        v122 = 2114;
        v123 = v85;
        v124 = 2080;
        v125 = v84;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Sent IDS %s %{public}@ bytes=%ld to %{public}@ got identifier: %{public}@ %s", buf, 0x3Eu);

        if (!descriptionCopy)
        {
        }

        v28 = messageCopy;
        v33 = sendCopy;
        dCopy = v88;
        v46 = v85;
      }
    }

    timeoutCopy = v86;
    v34 = descriptionCopy;
    v44 = responseTimeoutCopy;
    v35 = responseCopy;
    goto LABEL_58;
  }

  v30 = [NSError errorWithDomain:@"com.apple.nanoregistry.ids.nodefaultpaireddevice" code:2 userInfo:0];
  v31 = nr_daemon_log();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

  v28 = messageCopy;
  v33 = sendCopy;
  v34 = descriptionCopy;
  v35 = responseCopy;
  if (v32)
  {
    v36 = nr_daemon_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v87 = dCopy;
      v90 = descriptionCopy;
      if (!descriptionCopy)
      {
        v37 = objc_opt_class();
        v90 = NSStringFromClass(v37);
      }

      data3 = [messageCopy data];
      v39 = [data3 length];
      nsuuid2 = [0 nsuuid];
      uUIDString3 = [nsuuid2 UUIDString];
      nr_safeDescription2 = [v30 nr_safeDescription];
      *buf = 136316162;
      v115 = v92;
      v116 = 2114;
      v117 = v90;
      v118 = 2048;
      v119 = v39;
      v120 = 2114;
      v121 = uUIDString3;
      v122 = 2114;
      v123 = nr_safeDescription2;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Failed to send IDS %s %{public}@ bytes=%ld to %{public}@ because of %{public}@", buf, 0x34u);

      v34 = descriptionCopy;
      if (!descriptionCopy)
      {
      }

      v28 = messageCopy;
      v33 = sendCopy;
      dCopy = v87;
      v35 = responseCopy;
    }
  }

  if (v33)
  {
    v43 = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C6FDC;
    block[3] = &unk_100175688;
    v104 = v33;
    v103 = v30;
    dispatch_async(v43, block);
  }

  v44 = responseTimeoutCopy;
  if (v35)
  {
    v45 = self->_clientQueue;
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_1000C6FF0;
    v100[3] = &unk_100175D58;
    v101 = v35;
    dispatch_async(v45, v100);
    v46 = v101;
LABEL_58:
  }
}

- (id)_lookupDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = destinationsCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Looking up cloud destinations %@", buf, 0xCu);
    }
  }

  nr_mineTinkerDevices = [(IDSService *)self->_service nr_mineTinkerDevices];
  v9 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = nr_mineTinkerDevices;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v29;
    *&v12 = 138412546;
    v27 = v12;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = nr_daemon_log();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

        if (v18)
        {
          v19 = nr_daemon_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            uniqueIDOverride = [v16 uniqueIDOverride];
            *buf = v27;
            v33 = v16;
            v34 = 2112;
            v35 = uniqueIDOverride;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Lookup: IDSDevice %@ uniqueIDOverride=%@", buf, 0x16u);
          }
        }

        uniqueIDOverride2 = [v16 uniqueIDOverride];
        v22 = [destinationsCopy containsObject:uniqueIDOverride2];

        if (v22)
        {
          v23 = IDSCopyIDForDevice();
          if (v9)
          {
            [v9 addObject:v23];
          }
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v13);
  }

  v24 = [v9 count];
  if (v24 == [destinationsCopy count])
  {
    v25 = v9;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)deprecatedIDSDeviceIdentifierForBTUUID:(id)d
{
  v3 = [(IDSService *)self->_service devicesForBTUUID:d];
  anyObject = [v3 anyObject];

  if (anyObject)
  {
    v5 = IDSCopyIDForDevice();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)idsDeviceIdentifierForBTUUID:(id)d
{
  v3 = [(IDSService *)self->_service devicesForBTUUID:d];
  anyObject = [v3 anyObject];

  if (anyObject)
  {
    uniqueIDOverride = [anyObject uniqueIDOverride];
  }

  else
  {
    uniqueIDOverride = 0;
  }

  return uniqueIDOverride;
}

- (id)_areAccountsAndDevicesPresent:(id)present andDevices:(id)devices
{
  devicesCopy = devices;
  v7 = [present count];
  [(NRRemoteObject *)self setHasAccounts:v7 != 0];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = devicesCopy;
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v48 + 1) + 8 * i);
        if ([v13 isDefaultPairedDevice])
        {
          if (self->_alwaysConnected || [v13 pairingProtocolVersion] != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v7)
            {
              goto LABEL_43;
            }
          }

          else
          {
            maxCompatibilityVersion = [v13 maxCompatibilityVersion];
            if (v7 && maxCompatibilityVersion != 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_43:
              defaultPairedDevice = [[NRImmutableIDSDevice alloc] initWithIDSDevice:v13];
              nr_mineTinkerDevices = v8;
              goto LABEL_44;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v48 objects:v56 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  defaultPairedDevice = [(NRRemoteObject *)self defaultPairedDevice];

  if (defaultPairedDevice)
  {
    v16 = nr_daemon_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

    if (v17)
    {
      v18 = nr_daemon_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001032DC(v18);
      }
    }

    v39 = v8;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    accounts = [(IDSService *)self->_service accounts];
    v20 = [accounts countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(accounts);
          }

          v24 = *(*(&v44 + 1) + 8 * j);
          v25 = nr_daemon_log();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

          if (v26)
          {
            v27 = nr_daemon_log();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v24;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "IDSAccount: %@", buf, 0xCu);
            }
          }
        }

        v21 = [accounts countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v21);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    nr_mineTinkerDevices = [*(v38 + 128) nr_mineTinkerDevices];
    v29 = [nr_mineTinkerDevices countByEnumeratingWithState:&v40 objects:v52 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v41;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(nr_mineTinkerDevices);
          }

          v33 = *(*(&v40 + 1) + 8 * k);
          v34 = nr_daemon_log();
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

          if (v35)
          {
            v36 = nr_daemon_log();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v33;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "IDSDevice: %@", buf, 0xCu);
            }
          }
        }

        v30 = [nr_mineTinkerDevices countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v30);
    }

    defaultPairedDevice = 0;
    v8 = v39;
LABEL_44:
  }

  return defaultPairedDevice;
}

- (void)_updateTrafficClassesWithClasses:(id)classes
{
  classesCopy = classes;
  _rawDefaultPairedDevice = [(NRRemoteObject *)self _rawDefaultPairedDevice];
  if (_rawDefaultPairedDevice)
  {
    trafficClassQueue = [objc_opt_class() trafficClassQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C83D4;
    block[3] = &unk_1001758F8;
    v7 = classesCopy;
    v14 = v7;
    v8 = _rawDefaultPairedDevice;
    v15 = v8;
    selfCopy = self;
    dispatch_async(trafficClassQueue, block);

    if ([v7 shouldDropUnmatchingTraffic])
    {
      trafficClassQueue2 = [objc_opt_class() trafficClassQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C8614;
      v10[3] = &unk_100175598;
      v11 = v8;
      selfCopy2 = self;
      dispatch_async(trafficClassQueue2, v10);
    }
  }
}

- (void)updateTrafficClassesWithClasses:(id)classes
{
  classesCopy = classes;
  idsQueue = self->_idsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C8854;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = classesCopy;
  v6 = classesCopy;
  dispatch_async(idsQueue, v7);
}

- (BOOL)_updateDPDAndReturnYESIfChangeWithDevice:(id)device
{
  deviceCopy = device;
  _rawDefaultPairedDevice = [(NRRemoteObject *)self _rawDefaultPairedDevice];

  if (deviceCopy || !_rawDefaultPairedDevice)
  {
    _rawDefaultPairedDevice2 = [(NRRemoteObject *)self _rawDefaultPairedDevice];

    if ((!deviceCopy || _rawDefaultPairedDevice2) && !deviceCopy)
    {
      v9 = 0;
      goto LABEL_9;
    }

    selfCopy2 = self;
    v7 = deviceCopy;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0;
  }

  [(NRRemoteObject *)selfCopy2 setDefaultPairedDevice:v7];
  v9 = 1;
LABEL_9:

  return v9;
}

- (void)_updateIDSDeviceUniqueIdentifiers
{
  dispatch_assert_queue_V2(self->_idsQueue);
  v3 = +[NSMutableSet set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  nr_mineTinkerDevices = [(IDSService *)self->_service nr_mineTinkerDevices];
  v5 = [nr_mineTinkerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(nr_mineTinkerDevices);
        }

        uniqueIDOverride = [*(*(&v10 + 1) + 8 * v8) uniqueIDOverride];
        if (uniqueIDOverride)
        {
          [v3 addObject:uniqueIDOverride];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [nr_mineTinkerDevices countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NRRemoteObject *)self setDeviceUniqueIdentifiers:v3];
}

- (void)_fireIDSAvailableDelegateIfNeededWithIDSDevice:(id)device
{
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_idsQueue);
  [(NRRemoteObject *)self setDefaultPairedDevice:deviceCopy];
  nsuuid = [deviceCopy nsuuid];
  if (nsuuid)
  {
    nsuuid2 = [deviceCopy nsuuid];
    _rawDefaultPairedDevice = [(NRRemoteObject *)self _rawDefaultPairedDevice];
    nsuuid3 = [_rawDefaultPairedDevice nsuuid];
    v9 = [nsuuid2 isEqual:nsuuid3] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NRRemoteObject *)self _updateDPDAndReturnYESIfChangeWithDevice:deviceCopy];
  defaultPairedDevice = [(NRRemoteObject *)self defaultPairedDevice];
  if ([(NRRemoteObject *)self isDisconnected])
  {
    if (![(NRRemoteObject *)self isIDSConnectedNotification])
    {
      goto LABEL_50;
    }

    [(NRRemoteObject *)self setIsIDSConnectedNotification:0];
    if (!self->_alwaysConnected)
    {
      [(NRRemoteObject *)self _suspendMessageDeliveryQueue];
    }

    v47 = v9;
    v48 = defaultPairedDevice;
    v46 = deviceCopy;
    delegate = [(NRRemoteObject *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C9144;
      block[3] = &unk_100175660;
      block[4] = self;
      dispatch_async(clientQueue, block);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    connectivityObservers = [(NRRemoteObject *)self connectivityObservers];
    v16 = [connectivityObservers countByEnumeratingWithState:&v66 objects:v75 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v67;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v67 != v18)
          {
            objc_enumerationMutation(connectivityObservers);
          }

          v20 = *(*(&v66 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v21 = self->_clientQueue;
            v65[0] = _NSConcreteStackBlock;
            v65[1] = 3221225472;
            v65[2] = sub_1000C9198;
            v65[3] = &unk_100175598;
            v65[4] = v20;
            v65[5] = self;
            dispatch_async(v21, v65);
          }
        }

        v17 = [connectivityObservers countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v17);
    }

    goto LABEL_48;
  }

  if ((v10 & 1) != 0 || (((defaultPairedDevice == 0) ^ [(NRRemoteObject *)self isIDSConnectedNotification]) & 1) == 0)
  {
    isIDSConnectedNotification = [(NRRemoteObject *)self isIDSConnectedNotification];
    v48 = defaultPairedDevice;
    v47 = v9;
    if (defaultPairedDevice)
    {
      [(NRRemoteObject *)self setIsIDSConnectedNotification:1];
      delegate2 = [(NRRemoteObject *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = isIDSConnectedNotification ^ 1;
        v26 = self->_clientQueue;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_1000C91A4;
        v62[3] = &unk_100177C58;
        v64 = v25;
        v62[4] = self;
        v63 = deviceCopy;
        dispatch_async(v26, v62);
      }

      v27 = deviceCopy;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      connectivityObservers2 = [(NRRemoteObject *)self connectivityObservers];
      v29 = [connectivityObservers2 countByEnumeratingWithState:&v58 objects:v74 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v59;
        do
        {
          for (j = 0; j != v30; j = j + 1)
          {
            if (*v59 != v31)
            {
              objc_enumerationMutation(connectivityObservers2);
            }

            v33 = *(*(&v58 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              v34 = self->_clientQueue;
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v56[2] = sub_1000C91F8;
              v56[3] = &unk_1001758F8;
              v56[4] = v33;
              v56[5] = self;
              v57 = v27;
              dispatch_async(v34, v56);
            }
          }

          v30 = [connectivityObservers2 countByEnumeratingWithState:&v58 objects:v74 count:16];
        }

        while (v30);
      }

      [(NRRemoteObject *)self _resumeMessageDeliveryQueue];
      deviceCopy = v27;
      goto LABEL_49;
    }

    [(NRRemoteObject *)self setIsIDSConnectedNotification:0];
    if (!self->_alwaysConnected)
    {
      [(NRRemoteObject *)self _suspendMessageDeliveryQueue];
    }

    v46 = deviceCopy;
    delegate3 = [(NRRemoteObject *)self delegate];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = self->_clientQueue;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1000C9208;
      v54[3] = &unk_100176198;
      v55 = isIDSConnectedNotification;
      v54[4] = self;
      dispatch_async(v37, v54);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    connectivityObservers = [(NRRemoteObject *)self connectivityObservers];
    v38 = [connectivityObservers countByEnumeratingWithState:&v50 objects:v73 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v51;
      do
      {
        for (k = 0; k != v39; k = k + 1)
        {
          if (*v51 != v40)
          {
            objc_enumerationMutation(connectivityObservers);
          }

          v42 = *(*(&v50 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            v43 = self->_clientQueue;
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 3221225472;
            v49[2] = sub_1000C925C;
            v49[3] = &unk_100175598;
            v49[4] = v42;
            v49[5] = self;
            dispatch_async(v43, v49);
          }
        }

        v39 = [connectivityObservers countByEnumeratingWithState:&v50 objects:v73 count:16];
      }

      while (v39);
    }

LABEL_48:

    deviceCopy = v46;
LABEL_49:
    defaultPairedDevice = v48;
    v9 = v47;
  }

LABEL_50:
  if (v9)
  {
    if ([defaultPairedDevice isNearby])
    {
      v72 = defaultPairedDevice;
      v44 = [NSArray arrayWithObjects:&v72 count:1];
    }

    else
    {
      v44 = &__NSArray0__struct;
    }

    [(NRRemoteObject *)self service:self->_service linkedDevicesChanged:v44];
    if ([defaultPairedDevice isConnected])
    {
      v71 = defaultPairedDevice;
      v45 = [NSArray arrayWithObjects:&v71 count:1];
    }

    else
    {
      v45 = &__NSArray0__struct;
    }

    [(NRRemoteObject *)self service:self->_service connectedDevicesChanged:v45];
  }
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  if (self->_service == service)
  {
    changedCopy = changed;
    nr_mineTinkerDevices = [service nr_mineTinkerDevices];
    v9 = [(NRRemoteObject *)self _areAccountsAndDevicesPresent:changedCopy andDevices:nr_mineTinkerDevices];

    [(NRRemoteObject *)self _fireIDSAvailableDelegateIfNeededWithIDSDevice:v9];
  }
}

- (void)service:(id)service devicesChanged:(id)changed
{
  serviceCopy = service;
  nr_mineTinkerDevices = [(IDSService *)serviceCopy nr_mineTinkerDevices];
  if (self->_service == serviceCopy)
  {
    selfCopy = self;
    v24 = serviceCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = nr_mineTinkerDevices;
    obj = nr_mineTinkerDevices;
    v34 = [obj countByEnumeratingWithState:&v35 objects:v65 count:16];
    if (v34)
    {
      v7 = *v36;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          v10 = nr_daemon_log();
          v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

          if (v11)
          {
            v12 = nr_daemon_log();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              nsuuid = [v9 nsuuid];
              uUIDString = [nsuuid UUIDString];
              uniqueIDOverride = [v9 uniqueIDOverride];
              service = [v9 service];
              name = [v9 name];
              productBuildVersion = [v9 productBuildVersion];
              minCompatibilityVersion = [v9 minCompatibilityVersion];
              maxCompatibilityVersion = [v9 maxCompatibilityVersion];
              pairingProtocolVersion = [v9 pairingProtocolVersion];
              if ([v9 isDefaultPairedDevice])
              {
                v15 = @"YES";
              }

              else
              {
                v15 = @"NO";
              }

              v25 = v15;
              if ([v9 isActive])
              {
                v16 = @"YES";
              }

              else
              {
                v16 = @"NO";
              }

              if ([v9 isNearby])
              {
                v17 = @"YES";
              }

              else
              {
                v17 = @"NO";
              }

              isConnected = [v9 isConnected];
              *buf = 138546434;
              if (isConnected)
              {
                v19 = @"YES";
              }

              else
              {
                v19 = @"NO";
              }

              v40 = uUIDString;
              v41 = 2114;
              v42 = uniqueIDOverride;
              v43 = 2048;
              v44 = v9;
              v45 = 2114;
              v46 = service;
              v47 = 2114;
              v48 = name;
              v49 = 2114;
              v50 = productBuildVersion;
              v51 = 2048;
              v52 = minCompatibilityVersion;
              v53 = 2048;
              v54 = maxCompatibilityVersion;
              v55 = 2048;
              v56 = pairingProtocolVersion;
              v57 = 2112;
              v58 = v25;
              v59 = 2112;
              v60 = v16;
              v61 = 2112;
              v62 = v17;
              v63 = 2112;
              v64 = v19;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "IDSDevice[%{public}@/%{public}@] %p: %{public}@: name: %{public}@ build: %{public}@ ppv: %lld-%lld (%lld) isDpd: %@ isActive: %@ nearby: %@ connected: %@", buf, 0x84u);
            }
          }
        }

        v34 = [obj countByEnumeratingWithState:&v35 objects:v65 count:16];
      }

      while (v34);
    }

    serviceCopy = v24;
    accounts = [(IDSService *)v24 accounts];
    v21 = [(NRRemoteObject *)selfCopy _areAccountsAndDevicesPresent:accounts andDevices:obj];

    [(NRRemoteObject *)selfCopy _fireIDSAvailableDelegateIfNeededWithIDSDevice:v21];
    [(NRRemoteObject *)selfCopy _updateIDSDeviceUniqueIdentifiers];

    nr_mineTinkerDevices = v22;
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12 = [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler objectForKeyedSubscript:identifierCopy];
  if (v12)
  {
    [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler removeObjectForKey:identifierCopy];
    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C99BC;
    block[3] = &unk_100175688;
    v33 = v12;
    v32 = errorCopy;
    dispatch_async(clientQueue, block);
  }

  if (errorCopy || !success)
  {
    v17 = IDSErrorDomain;
    domain = [errorCopy domain];
    if ([v17 isEqual:domain])
    {
      code = [errorCopy code];

      if (code == 24)
      {
        v20 = nr_daemon_log();
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

        if (!v21)
        {
          goto LABEL_18;
        }

        v22 = nr_daemon_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v35 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "IDS message %{public}@ was replaced by another message", buf, 0xCu);
        }

        goto LABEL_17;
      }
    }

    else
    {
    }

    v23 = nr_daemon_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

    if (!v24)
    {
      goto LABEL_18;
    }

    v22 = nr_daemon_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100103320(errorCopy);
    }

LABEL_17:

LABEL_18:
    v25 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:identifierCopy];
    v16 = v25;
    if (v25)
    {
      idsSendIDToResponseHandler = self->_idsSendIDToResponseHandler;
      v27 = objc_retainBlock(v25);
      [(NSMutableDictionary *)idsSendIDToResponseHandler removeObjectForKey:v27];

      v28 = self->_clientQueue;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000C99D0;
      v29[3] = &unk_100175D58;
      v16 = v16;
      v30 = v16;
      dispatch_async(v28, v29);
    }

    goto LABEL_20;
  }

  v14 = nr_daemon_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v16 = nr_daemon_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDS success sending request: %{public}@", buf, 0xCu);
    }

LABEL_20:
  }
}

- (void)service:(id)service didSwitchActivePairedDevice:(id)device acknowledgementBlock:(id)block
{
  deviceCopy = device;
  blockCopy = block;
  if (self->_service == service)
  {
    v10 = nr_daemon_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = nr_daemon_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "executing IDS acknowledgementBlock", buf, 2u);
      }
    }

    v25 = blockCopy;
    blockCopy[2](blockCopy);
    delegate = [(NRRemoteObject *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C9D18;
      block[3] = &unk_100175598;
      block[4] = self;
      v35 = deviceCopy;
      dispatch_async(clientQueue, block);
    }

    v16 = deviceCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    connectivityObservers = [(NRRemoteObject *)self connectivityObservers];
    v18 = [connectivityObservers countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        v21 = 0;
        do
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(connectivityObservers);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          if (objc_opt_respondsToSelector())
          {
            v23 = self->_clientQueue;
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = sub_1000C9D94;
            v28[3] = &unk_1001758F8;
            v28[4] = v22;
            v28[5] = self;
            v29 = v16;
            dispatch_async(v23, v28);
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [connectivityObservers countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v19);
    }

    idsQueue = self->_idsQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000C9E04;
    v26[3] = &unk_100175598;
    v26[4] = self;
    deviceCopy = v16;
    v27 = v16;
    dispatch_async(idsQueue, v26);

    blockCopy = v25;
  }
}

- (void)service:(id)service connectedDevicesChanged:(id)changed
{
  serviceCopy = service;
  accounts = [serviceCopy accounts];
  nr_mineTinkerDevices = [serviceCopy nr_mineTinkerDevices];

  v8 = [(NRRemoteObject *)self _areAccountsAndDevicesPresent:accounts andDevices:nr_mineTinkerDevices];

  [(NRRemoteObject *)self setDefaultPairedDevice:v8];
}

+ (id)trafficClassQueue
{
  if (qword_1001B3A50 != -1)
  {
    sub_1001033C0();
  }

  v3 = qword_1001B3A58;

  return v3;
}

@end