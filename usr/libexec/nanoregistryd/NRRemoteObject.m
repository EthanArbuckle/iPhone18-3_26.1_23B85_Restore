@interface NRRemoteObject
+ (id)trafficClassQueue;
- (BOOL)_updateDPDAndReturnYESIfChangeWithDevice:(id)a3;
- (BOOL)hasAccounts;
- (BOOL)isAlwaysConnected;
- (BOOL)isDisconnected;
- (BOOL)isIDSConnected;
- (BOOL)isIDSConnectedNotification;
- (BOOL)isIDSNearby;
- (NRImmutableIDSDevice)defaultPairedDevice;
- (NRRemoteObject)initWithServiceName:(id)a3;
- (NRRemoteObject)initWithServiceName:(id)a3 isAlwaysConnected:(BOOL)a4 andClientQueue:(id)a5 andDelegate:(id)a6;
- (NRRemoteObjectDelegate)delegate;
- (NSPointerArray)connectivityObservers;
- (NSSet)deviceUniqueIdentifiers;
- (id)_areAccountsAndDevicesPresent:(id)a3 andDevices:(id)a4;
- (id)_lookupDestinations:(id)a3;
- (id)_rawDefaultPairedDevice;
- (id)deprecatedIDSDeviceIdentifierForBTUUID:(id)a3;
- (id)idsDeviceIdentifierForBTUUID:(id)a3;
- (void)_fireIDSAvailableDelegateIfNeededWithIDSDevice:(id)a3;
- (void)_generateNearbyConnectedDelegateCalls;
- (void)_messageResponseTimeout:(id)a3;
- (void)_queueSendMessage:(id)a3 type:(unsigned __int16)a4 requestUUID:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 priority:(int64_t)a10 toIDSBTUUID:(id)a11 didSend:(id)a12 andResponse:(id)a13;
- (void)_resumeMessageDeliveryQueue;
- (void)_sendCloudMessage:(id)a3 type:(unsigned __int16)a4 responseToRequest:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 priority:(int64_t)a10 toDestinations:(id)a11 skipLookup:(BOOL)a12 didSend:(id)a13 andResponse:(id)a14;
- (void)_sendMessage:(id)a3 type:(unsigned __int16)a4 requestUUID:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 priority:(int64_t)a10 toIDSBTUUID:(id)a11 didSend:(id)a12 andResponse:(id)a13;
- (void)_suspendMessageDeliveryQueue;
- (void)_updateIDSDeviceUniqueIdentifiers;
- (void)_updateTrafficClassesWithClasses:(id)a3;
- (void)addConnectivityObserver:(id)a3;
- (void)dealloc;
- (void)handleIncomingMessage:(id)a3;
- (void)invalidate;
- (void)removeConnectivityObserver:(id)a3;
- (void)sendResponse:(id)a3 type:(unsigned __int16)a4 withRequest:(id)a5 withTimeout:(id)a6 withDescription:(id)a7 onlyOneFor:(id)a8 priority:(int64_t)a9 didSend:(id)a10;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 connectedDevicesChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5;
- (void)setConnectivityObservers:(id)a3;
- (void)setDefaultPairedDevice:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDeviceUniqueIdentifiers:(id)a3;
- (void)setDisconnected:(BOOL)a3;
- (void)setHasAccounts:(BOOL)a3;
- (void)setIDSConnected:(BOOL)a3;
- (void)setIDSNearby:(BOOL)a3;
- (void)setIsAlwaysConnected:(BOOL)a3;
- (void)setIsIDSConnectedNotification:(BOOL)a3;
- (void)updateTrafficClassesWithClasses:(id)a3;
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

- (void)setIsIDSConnectedNotification:(BOOL)a3
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2648;
  v4[3] = &unk_100176198;
  v4[4] = self;
  v5 = a3;
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

- (void)setIDSNearby:(BOOL)a3
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2878;
  v4[3] = &unk_100176198;
  v4[4] = self;
  v5 = a3;
  dispatch_async(defaultPairedDeviceQueue, v4);
}

- (void)setIDSConnected:(BOOL)a3
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C2900;
  v4[3] = &unk_100176198;
  v4[4] = self;
  v5 = a3;
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
    v5 = [(NRRemoteObject *)self delegate];
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
    v8 = [(NRRemoteObject *)self connectivityObservers];
    v9 = [v8 countByEnumeratingWithState:&v36 objects:v43 count:16];
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
            objc_enumerationMutation(v8);
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

        v10 = [v8 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v10);
    }

    isIDSConnected = v25;
  }

  if (self->_wasIDSConnected != isIDSConnected)
  {
    self->_wasIDSConnected = isIDSConnected;
    v15 = [(NRRemoteObject *)self delegate];
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
    v18 = [(NRRemoteObject *)self connectivityObservers];
    v19 = [v18 countByEnumeratingWithState:&v28 objects:v42 count:16];
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
            objc_enumerationMutation(v18);
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

        v20 = [v18 countByEnumeratingWithState:&v28 objects:v42 count:16];
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

- (void)setDeviceUniqueIdentifiers:(id)a3
{
  v4 = a3;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C2F5C;
  v7[3] = &unk_100175598;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(defaultPairedDeviceQueue, v7);
}

- (void)setHasAccounts:(BOOL)a3
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C3124;
  v4[3] = &unk_100176198;
  v4[4] = self;
  v5 = a3;
  dispatch_async(defaultPairedDeviceQueue, v4);
}

- (void)setDisconnected:(BOOL)a3
{
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C31B8;
  v4[3] = &unk_100176198;
  v5 = a3;
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

- (void)setIsAlwaysConnected:(BOOL)a3
{
  idsQueue = self->_idsQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C37E4;
  v4[3] = &unk_100176198;
  v4[4] = self;
  v5 = a3;
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

- (void)setDefaultPairedDevice:(id)a3
{
  v4 = a3;
  defaultPairedDeviceQueue = self->_defaultPairedDeviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C39A4;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(defaultPairedDeviceQueue, v7);
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3A9C;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, v7);
}

- (void)addConnectivityObserver:(id)a3
{
  v4 = a3;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3B40;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, v7);
}

- (void)removeConnectivityObserver:(id)a3
{
  v4 = a3;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3C1C;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setConnectivityObservers:(id)a3
{
  v4 = a3;
  delegateQueue = self->_delegateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C3E8C;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(delegateQueue, v7);
}

- (NRRemoteObject)initWithServiceName:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Init NRRemoteObject: %@", &v10, 0xCu);
    }
  }

  v8 = [(NRRemoteObject *)self initWithServiceName:v4 andClientQueue:0];

  return v8;
}

- (NRRemoteObject)initWithServiceName:(id)a3 isAlwaysConnected:(BOOL)a4 andClientQueue:(id)a5 andDelegate:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
        if (v8)
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v66 = v10;
        v67 = 2112;
        v68 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Init NRRemoteObject (name: %@, alwaysConnected: %@)", buf, 0x16u);
      }
    }

    *(v13 + 85) = v8;
    v18 = [v10 copy];
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
    v31 = dispatch_queue_create([v10 UTF8String], v30);
    v32 = *(v13 + 5);
    *(v13 + 5) = v31;

    if (v11)
    {
      v33 = v11;
      v34 = *(v13 + 15);
      *(v13 + 15) = v33;
    }

    else
    {
      v34 = [v10 stringByAppendingString:@".client"];
      v35 = dispatch_queue_create([v34 UTF8String], v30);
      v36 = *(v13 + 15);
      *(v13 + 15) = v35;
    }

    v37 = [v10 stringByAppendingString:@".incomingDeliveryQueue"];
    v38 = dispatch_queue_create_with_target_V2([v37 UTF8String], v30, *(v13 + 15));
    v39 = *(v13 + 17);
    *(v13 + 17) = v38;

    v40 = [v10 stringByAppendingString:@".delegate"];
    v41 = dispatch_queue_create([v40 UTF8String], v30);
    v42 = *(v13 + 6);
    *(v13 + 6) = v41;

    v58 = v12;
    objc_storeWeak(v13 + 13, v12);
    v43 = *(v13 + 5);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C4490;
    block[3] = &unk_100175660;
    v44 = v13;
    v63 = v44;
    dispatch_sync(v43, block);
    v45 = [v10 stringByAppendingString:@".DPD"];
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
    v52 = [v44 defaultPairedDevice];
    v53 = *(v13 + 5);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_1000C44A4;
    v59[3] = &unk_100175598;
    v60 = v44;
    v61 = v52;
    v54 = v52;
    dispatch_async(v53, v59);
    v55 = nr_daemon_log();
    LODWORD(v52) = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

    if (v52)
    {
      v56 = nr_daemon_log();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = v10;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Created IDS service %@", buf, 0xCu);
      }
    }

    v12 = v58;
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

- (void)handleIncomingMessage:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = self->_serviceName;
      v9 = [v4 type];
      v10 = [v4 data];
      v11 = [v10 length];
      v12 = [v4 isResponse];
      v13 = &__kCFBooleanFalse;
      if (v12)
      {
        v13 = &__kCFBooleanTrue;
      }

      *buf = 138413058;
      v74 = serviceName;
      v75 = 2048;
      v76 = v9;
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
  v15 = [v4 context];
  v16 = [v15 fromID];
  v17 = [(IDSService *)service linkedDeviceForFromID:v16 withRelationship:3];

  if (v17)
  {
LABEL_9:
    v18 = [v4 context];
    v19 = [v18 incomingResponseIdentifier];

    if (![v4 isResponse] || !v19)
    {
      goto LABEL_21;
    }

    v20 = [(NSMutableDictionary *)self->_idsSendIDToTimer objectForKeyedSubscript:v19];
    [v20 invalidate];
    [(NSMutableDictionary *)self->_idsSendIDToTimer removeObjectForKey:v19];
    v21 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:v19];
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
          v76 = v19;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "(%@): matched response %{public}@, executing block", buf, 0x16u);
        }
      }

      [(NSMutableDictionary *)self->_idsSendIDToResponseHandler removeObjectForKey:v19];
      v26 = [(NSMapTable *)self->_shortcutMessages objectForKey:v4];
      v27 = [v26 BOOLValue];
      v28 = 136;
      if (v27)
      {
        v28 = 120;
      }

      v29 = *(&self->super.isa + v28);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C55F8;
      block[3] = &unk_100176A18;
      v72 = v21;
      v70 = v4;
      v71 = self;
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
        v76 = v19;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "(%@): no ack block found for response %{public}@, ignoring", buf, 0x16u);
      }
    }

LABEL_20:
LABEL_21:
    if ([v4 isResponse])
    {
      v31 = 0x10000;
    }

    else
    {
      v31 = 0;
    }

    v32 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v31 | [v4 type]);
    v33 = [(NSMutableDictionary *)self->_idsRequestMessageTypeToSelector objectForKeyedSubscript:v32];
    v34 = v33;
    if (v33)
    {
      v35 = [v33 method];
      v36 = nr_daemon_log();
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);

      if (v35)
      {
        if (v37)
        {
          v38 = nr_daemon_log();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v39 = self->_serviceName;
            v62 = NSStringFromSelector([v34 selector]);
            v61 = [v4 type];
            v64 = [v4 data];
            v60 = [v64 length];
            v40 = [v4 isResponse];
            v41 = &__kCFBooleanFalse;
            if (v40)
            {
              v41 = &__kCFBooleanTrue;
            }

            v59 = v41;
            v63 = [v4 context];
            v42 = [v63 fromID];
            *buf = 138413570;
            v74 = v39;
            v75 = 2114;
            v76 = v62;
            v77 = 2048;
            v78 = v61;
            v79 = 2048;
            v80 = v60;
            v81 = 2112;
            v82 = v59;
            v83 = 2114;
            v84 = v42;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "(%@): Calling selector %{public}@ for type=%ld length=%ld response=%@ messageSource=%{public}@", buf, 0x3Eu);
          }
        }

        if (([v34 connected] & 1) == 0)
        {
          [(NSMapTable *)self->_shortcutMessages setObject:&__kCFBooleanTrue forKey:v4];
        }

        v43 = [v34 connected];
        v44 = 120;
        if (v43)
        {
          v44 = 136;
        }

        v45 = *(&self->super.isa + v44);
        v65[0] = _NSConcreteStackBlock;
        v65[1] = 3221225472;
        v65[2] = sub_1000C56D8;
        v65[3] = &unk_100178570;
        v68 = v35;
        v65[4] = self;
        v66 = v34;
        v67 = v4;
        dispatch_async(v45, v65);

        goto LABEL_48;
      }

      if (v37)
      {
        v48 = nr_daemon_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = self->_serviceName;
          v50 = [v4 type];
          v51 = [v4 data];
          v52 = [v51 length];
          v55 = [v4 isResponse];
          v54 = &__kCFBooleanFalse;
          if (v55)
          {
            v54 = &__kCFBooleanTrue;
          }

LABEL_46:
          *buf = 138413058;
          v74 = v49;
          v75 = 2048;
          v76 = v50;
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
          v50 = [v4 type];
          v51 = [v4 data];
          v52 = [v51 length];
          v53 = [v4 isResponse];
          v54 = &__kCFBooleanFalse;
          if (v53)
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

  v19 = nr_daemon_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_100103238(self, v4);
  }

LABEL_49:

LABEL_50:
}

- (void)sendResponse:(id)a3 type:(unsigned __int16)a4 withRequest:(id)a5 withTimeout:(id)a6 withDescription:(id)a7 onlyOneFor:(id)a8 priority:(int64_t)a9 didSend:(id)a10
{
  v28 = a4;
  v15 = a10;
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a3;
  v21 = [NSUUID alloc];
  v26 = [v19 protobuf];
  v22 = [v26 context];
  v23 = [v22 outgoingResponseIdentifier];
  v24 = [v21 initWithUUIDString:v23];
  v25 = [v19 idsBTUUID];

  [(NRRemoteObject *)self _sendMessage:v20 type:v28 requestUUID:v24 withTimeout:v18 withResponseTimeout:0 withDescription:v17 onlyOneFor:v16 priority:a9 toIDSBTUUID:v25 didSend:v15 andResponse:0];
}

- (void)_sendMessage:(id)a3 type:(unsigned __int16)a4 requestUUID:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 priority:(int64_t)a10 toIDSBTUUID:(id)a11 didSend:(id)a12 andResponse:(id)a13
{
  v35 = a3;
  v34 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  queue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5F68;
  block[3] = &unk_100179368;
  block[4] = self;
  v39 = v35;
  v49 = a4;
  v40 = v34;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v47 = v24;
  v48 = a10;
  v44 = v21;
  v45 = v22;
  v46 = v23;
  v25 = v24;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  v30 = v19;
  v31 = v18;
  v32 = v34;
  v33 = v35;
  dispatch_async(queue, block);
}

- (void)_sendCloudMessage:(id)a3 type:(unsigned __int16)a4 responseToRequest:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 priority:(int64_t)a10 toDestinations:(id)a11 skipLookup:(BOOL)a12 didSend:(id)a13 andResponse:(id)a14
{
  v36 = a3;
  v35 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a11;
  v24 = a13;
  v25 = a14;
  dispatch_assert_queue_not_V2(self->_idsQueue);
  queue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C62D8;
  block[3] = &unk_100179390;
  block[4] = self;
  v40 = v36;
  v50 = a4;
  v41 = v35;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v48 = v25;
  v49 = a10;
  v45 = v22;
  v46 = v23;
  v51 = a12;
  v47 = v24;
  v26 = v25;
  v27 = v24;
  v28 = v23;
  v29 = v22;
  v30 = v21;
  v31 = v20;
  v32 = v19;
  v33 = v35;
  v34 = v36;
  dispatch_async(queue, block);
}

- (void)_messageResponseTimeout:(id)a3
{
  v4 = a3;
  idsQueue = self->_idsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C63C4;
  v7[3] = &unk_100175598;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(idsQueue, v7);
}

- (void)_queueSendMessage:(id)a3 type:(unsigned __int16)a4 requestUUID:(id)a5 withTimeout:(id)a6 withResponseTimeout:(id)a7 withDescription:(id)a8 onlyOneFor:(id)a9 priority:(int64_t)a10 toIDSBTUUID:(id)a11 didSend:(id)a12 andResponse:(id)a13
{
  v89 = a4;
  v95 = a3;
  v18 = a5;
  v19 = a6;
  v94 = a7;
  v93 = a8;
  v97 = a9;
  v96 = a12;
  v98 = a13;
  v20 = "request";
  if (v18)
  {
    v20 = "response";
  }

  v92 = v20;
  idsQueue = self->_idsQueue;
  v22 = a11;
  dispatch_assert_queue_V2(idsQueue);
  v23 = [(IDSService *)self->_service devicesForBTUUID:v22];

  v24 = [v23 anyObject];

  v99 = v24;
  if (v24)
  {
    v25 = +[NSMutableDictionary dictionary];
    v26 = v25;
    v86 = v19;
    if (v19)
    {
      [v25 setObject:v19 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
      [v19 doubleValue];
      v28 = v95;
      v29 = v97;
      if (v27 + -10.0 >= 0.00000011920929)
      {
        LODWORD(v19) = 0;
      }

      else
      {
        [v26 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
        LODWORD(v19) = 1;
      }
    }

    else
    {
      v47 = [NSNumber numberWithDouble:IDSMaxMessageTimeout];
      [v26 setObject:v47 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

      v28 = v95;
      v29 = v97;
    }

    [v26 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionEnforceRemoteTimeoutsKey];
    if (v29)
    {
      [v26 setObject:v29 forKeyedSubscript:IDSSendMessageOptionQueueOneIdentifierKey];
    }

    if (v18)
    {
      v48 = [v18 UUIDString];
      [v26 setObject:v48 forKeyedSubscript:IDSSendMessageOptionPeerResponseIdentifierKey];
    }

    v88 = v18;
    v49 = [IDSProtobuf alloc];
    v50 = [v28 data];
    v51 = [v49 initWithProtobufData:v50 type:v89 isResponse:v18 != 0];

    v52 = [(NRRemoteObject *)self service];
    v53 = IDSCopyIDForDevice();
    v54 = [NSSet setWithObject:v53];
    v112 = 0;
    v113 = 0;
    v91 = v51;
    v55 = [v52 sendProtobuf:v51 toDestinations:v54 priority:a10 options:v26 identifier:&v113 error:&v112];
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
      v69 = [v30 nr_safeDescription];
      v59 = [NSString stringWithFormat:@"Error sending %s %@ - %@", v92, v68, v69];

      v70 = nr_daemon_log();
      LODWORD(v69) = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);

      v18 = v88;
      if (v69)
      {
        v71 = nr_daemon_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v115 = v59;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v33 = v96;
      if (v96)
      {
        clientQueue = self->_clientQueue;
        v109[0] = _NSConcreteStackBlock;
        v109[1] = 3221225472;
        v109[2] = sub_1000C6FA8;
        v109[3] = &unk_100175688;
        v111 = v96;
        v110 = v30;
        dispatch_async(clientQueue, v109);
      }

      if (v98)
      {
        v73 = self->_clientQueue;
        v107[0] = _NSConcreteStackBlock;
        v107[1] = 3221225472;
        v107[2] = sub_1000C6FBC;
        v107[3] = &unk_100175D58;
        v108 = v98;
        dispatch_async(v73, v107);
      }
    }

    else
    {
      v33 = v96;
      if (v96)
      {
        v56 = objc_retainBlock(v96);
        [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler setObject:v56 forKeyedSubscript:v46];
      }

      v18 = v88;
      if (!v98 || (v57 = objc_retainBlock(v98), [(NSMutableDictionary *)self->_idsSendIDToResponseHandler setObject:v57 forKeyedSubscript:v46], v57, !v94))
      {
        v30 = 0;
        goto LABEL_47;
      }

      v58 = [NSString stringWithFormat:@"com.apple.%s.%@", v92, v46];
      v59 = [v58 stringByReplacingOccurrencesOfString:@" " withString:@"-"];

      [v94 doubleValue];
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
      v33 = v96;
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
        v77 = v93;
        if (!v93)
        {
          v78 = objc_opt_class();
          v77 = NSStringFromClass(v78);
        }

        v79 = [v28 data];
        v80 = [v79 length];
        v81 = [v99 nsuuid];
        v82 = [v81 UUIDString];
        v83 = v82;
        *buf = 136316418;
        v84 = "";
        v115 = v92;
        v116 = 2114;
        if (v19)
        {
          v84 = "fireAndForget is ON";
        }

        v117 = v77;
        v118 = 2048;
        v119 = v80;
        v120 = 2114;
        v121 = v82;
        v122 = 2114;
        v123 = v85;
        v124 = 2080;
        v125 = v84;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Sent IDS %s %{public}@ bytes=%ld to %{public}@ got identifier: %{public}@ %s", buf, 0x3Eu);

        if (!v93)
        {
        }

        v28 = v95;
        v33 = v96;
        v18 = v88;
        v46 = v85;
      }
    }

    v19 = v86;
    v34 = v93;
    v44 = v94;
    v35 = v98;
    goto LABEL_58;
  }

  v30 = [NSError errorWithDomain:@"com.apple.nanoregistry.ids.nodefaultpaireddevice" code:2 userInfo:0];
  v31 = nr_daemon_log();
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);

  v28 = v95;
  v33 = v96;
  v34 = v93;
  v35 = v98;
  if (v32)
  {
    v36 = nr_daemon_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v87 = v18;
      v90 = v93;
      if (!v93)
      {
        v37 = objc_opt_class();
        v90 = NSStringFromClass(v37);
      }

      v38 = [v95 data];
      v39 = [v38 length];
      v40 = [0 nsuuid];
      v41 = [v40 UUIDString];
      v42 = [v30 nr_safeDescription];
      *buf = 136316162;
      v115 = v92;
      v116 = 2114;
      v117 = v90;
      v118 = 2048;
      v119 = v39;
      v120 = 2114;
      v121 = v41;
      v122 = 2114;
      v123 = v42;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Failed to send IDS %s %{public}@ bytes=%ld to %{public}@ because of %{public}@", buf, 0x34u);

      v34 = v93;
      if (!v93)
      {
      }

      v28 = v95;
      v33 = v96;
      v18 = v87;
      v35 = v98;
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

  v44 = v94;
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

- (id)_lookupDestinations:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Looking up cloud destinations %@", buf, 0xCu);
    }
  }

  v8 = [(IDSService *)self->_service nr_mineTinkerDevices];
  v9 = +[NSMutableSet set];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
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
            v20 = [v16 uniqueIDOverride];
            *buf = v27;
            v33 = v16;
            v34 = 2112;
            v35 = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Lookup: IDSDevice %@ uniqueIDOverride=%@", buf, 0x16u);
          }
        }

        v21 = [v16 uniqueIDOverride];
        v22 = [v4 containsObject:v21];

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
  if (v24 == [v4 count])
  {
    v25 = v9;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)deprecatedIDSDeviceIdentifierForBTUUID:(id)a3
{
  v3 = [(IDSService *)self->_service devicesForBTUUID:a3];
  v4 = [v3 anyObject];

  if (v4)
  {
    v5 = IDSCopyIDForDevice();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)idsDeviceIdentifierForBTUUID:(id)a3
{
  v3 = [(IDSService *)self->_service devicesForBTUUID:a3];
  v4 = [v3 anyObject];

  if (v4)
  {
    v5 = [v4 uniqueIDOverride];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_areAccountsAndDevicesPresent:(id)a3 andDevices:(id)a4
{
  v6 = a4;
  v7 = [a3 count];
  [(NRRemoteObject *)self setHasAccounts:v7 != 0];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v8 = v6;
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
            v14 = [v13 maxCompatibilityVersion];
            if (v7 && v14 != 0x7FFFFFFFFFFFFFFFLL)
            {
LABEL_43:
              v15 = [[NRImmutableIDSDevice alloc] initWithIDSDevice:v13];
              v28 = v8;
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

  v15 = [(NRRemoteObject *)self defaultPairedDevice];

  if (v15)
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
    v19 = [(IDSService *)self->_service accounts];
    v20 = [v19 countByEnumeratingWithState:&v44 objects:v55 count:16];
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
            objc_enumerationMutation(v19);
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

        v21 = [v19 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v21);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v28 = [*(v38 + 128) nr_mineTinkerDevices];
    v29 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
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
            objc_enumerationMutation(v28);
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

        v30 = [v28 countByEnumeratingWithState:&v40 objects:v52 count:16];
      }

      while (v30);
    }

    v15 = 0;
    v8 = v39;
LABEL_44:
  }

  return v15;
}

- (void)_updateTrafficClassesWithClasses:(id)a3
{
  v4 = a3;
  v5 = [(NRRemoteObject *)self _rawDefaultPairedDevice];
  if (v5)
  {
    v6 = [objc_opt_class() trafficClassQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C83D4;
    block[3] = &unk_1001758F8;
    v7 = v4;
    v14 = v7;
    v8 = v5;
    v15 = v8;
    v16 = self;
    dispatch_async(v6, block);

    if ([v7 shouldDropUnmatchingTraffic])
    {
      v9 = [objc_opt_class() trafficClassQueue];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000C8614;
      v10[3] = &unk_100175598;
      v11 = v8;
      v12 = self;
      dispatch_async(v9, v10);
    }
  }
}

- (void)updateTrafficClassesWithClasses:(id)a3
{
  v4 = a3;
  idsQueue = self->_idsQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C8854;
  v7[3] = &unk_100175598;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(idsQueue, v7);
}

- (BOOL)_updateDPDAndReturnYESIfChangeWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(NRRemoteObject *)self _rawDefaultPairedDevice];

  if (v4 || !v5)
  {
    v8 = [(NRRemoteObject *)self _rawDefaultPairedDevice];

    if ((!v4 || v8) && !v4)
    {
      v9 = 0;
      goto LABEL_9;
    }

    v6 = self;
    v7 = v4;
  }

  else
  {
    v6 = self;
    v7 = 0;
  }

  [(NRRemoteObject *)v6 setDefaultPairedDevice:v7];
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
  v4 = [(IDSService *)self->_service nr_mineTinkerDevices];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) uniqueIDOverride];
        if (v9)
        {
          [v3 addObject:v9];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NRRemoteObject *)self setDeviceUniqueIdentifiers:v3];
}

- (void)_fireIDSAvailableDelegateIfNeededWithIDSDevice:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_idsQueue);
  [(NRRemoteObject *)self setDefaultPairedDevice:v4];
  v5 = [v4 nsuuid];
  if (v5)
  {
    v6 = [v4 nsuuid];
    v7 = [(NRRemoteObject *)self _rawDefaultPairedDevice];
    v8 = [v7 nsuuid];
    v9 = [v6 isEqual:v8] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NRRemoteObject *)self _updateDPDAndReturnYESIfChangeWithDevice:v4];
  v11 = [(NRRemoteObject *)self defaultPairedDevice];
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
    v48 = v11;
    v46 = v4;
    v12 = [(NRRemoteObject *)self delegate];
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
    v15 = [(NRRemoteObject *)self connectivityObservers];
    v16 = [v15 countByEnumeratingWithState:&v66 objects:v75 count:16];
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
            objc_enumerationMutation(v15);
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

        v17 = [v15 countByEnumeratingWithState:&v66 objects:v75 count:16];
      }

      while (v17);
    }

    goto LABEL_48;
  }

  if ((v10 & 1) != 0 || (((v11 == 0) ^ [(NRRemoteObject *)self isIDSConnectedNotification]) & 1) == 0)
  {
    v22 = [(NRRemoteObject *)self isIDSConnectedNotification];
    v48 = v11;
    v47 = v9;
    if (v11)
    {
      [(NRRemoteObject *)self setIsIDSConnectedNotification:1];
      v23 = [(NRRemoteObject *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = v22 ^ 1;
        v26 = self->_clientQueue;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_1000C91A4;
        v62[3] = &unk_100177C58;
        v64 = v25;
        v62[4] = self;
        v63 = v4;
        dispatch_async(v26, v62);
      }

      v27 = v4;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v28 = [(NRRemoteObject *)self connectivityObservers];
      v29 = [v28 countByEnumeratingWithState:&v58 objects:v74 count:16];
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
              objc_enumerationMutation(v28);
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

          v30 = [v28 countByEnumeratingWithState:&v58 objects:v74 count:16];
        }

        while (v30);
      }

      [(NRRemoteObject *)self _resumeMessageDeliveryQueue];
      v4 = v27;
      goto LABEL_49;
    }

    [(NRRemoteObject *)self setIsIDSConnectedNotification:0];
    if (!self->_alwaysConnected)
    {
      [(NRRemoteObject *)self _suspendMessageDeliveryQueue];
    }

    v46 = v4;
    v35 = [(NRRemoteObject *)self delegate];
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = self->_clientQueue;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_1000C9208;
      v54[3] = &unk_100176198;
      v55 = v22;
      v54[4] = self;
      dispatch_async(v37, v54);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = [(NRRemoteObject *)self connectivityObservers];
    v38 = [v15 countByEnumeratingWithState:&v50 objects:v73 count:16];
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
            objc_enumerationMutation(v15);
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

        v39 = [v15 countByEnumeratingWithState:&v50 objects:v73 count:16];
      }

      while (v39);
    }

LABEL_48:

    v4 = v46;
LABEL_49:
    v11 = v48;
    v9 = v47;
  }

LABEL_50:
  if (v9)
  {
    if ([v11 isNearby])
    {
      v72 = v11;
      v44 = [NSArray arrayWithObjects:&v72 count:1];
    }

    else
    {
      v44 = &__NSArray0__struct;
    }

    [(NRRemoteObject *)self service:self->_service linkedDevicesChanged:v44];
    if ([v11 isConnected])
    {
      v71 = v11;
      v45 = [NSArray arrayWithObjects:&v71 count:1];
    }

    else
    {
      v45 = &__NSArray0__struct;
    }

    [(NRRemoteObject *)self service:self->_service connectedDevicesChanged:v45];
  }
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  if (self->_service == a3)
  {
    v7 = a4;
    v8 = [a3 nr_mineTinkerDevices];
    v9 = [(NRRemoteObject *)self _areAccountsAndDevicesPresent:v7 andDevices:v8];

    [(NRRemoteObject *)self _fireIDSAvailableDelegateIfNeededWithIDSDevice:v9];
  }
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v5 = a3;
  v6 = [(IDSService *)v5 nr_mineTinkerDevices];
  if (self->_service == v5)
  {
    v23 = self;
    v24 = v5;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v22 = v6;
    obj = v6;
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
              v32 = [v9 nsuuid];
              v13 = [v32 UUIDString];
              v14 = [v9 uniqueIDOverride];
              v31 = [v9 service];
              v30 = [v9 name];
              v29 = [v9 productBuildVersion];
              v28 = [v9 minCompatibilityVersion];
              v27 = [v9 maxCompatibilityVersion];
              v26 = [v9 pairingProtocolVersion];
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

              v18 = [v9 isConnected];
              *buf = 138546434;
              if (v18)
              {
                v19 = @"YES";
              }

              else
              {
                v19 = @"NO";
              }

              v40 = v13;
              v41 = 2114;
              v42 = v14;
              v43 = 2048;
              v44 = v9;
              v45 = 2114;
              v46 = v31;
              v47 = 2114;
              v48 = v30;
              v49 = 2114;
              v50 = v29;
              v51 = 2048;
              v52 = v28;
              v53 = 2048;
              v54 = v27;
              v55 = 2048;
              v56 = v26;
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

    v5 = v24;
    v20 = [(IDSService *)v24 accounts];
    v21 = [(NRRemoteObject *)v23 _areAccountsAndDevicesPresent:v20 andDevices:obj];

    [(NRRemoteObject *)v23 _fireIDSAvailableDelegateIfNeededWithIDSDevice:v21];
    [(NRRemoteObject *)v23 _updateIDSDeviceUniqueIdentifiers];

    v6 = v22;
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v10 = a5;
  v11 = a7;
  v12 = [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler objectForKeyedSubscript:v10];
  if (v12)
  {
    [(NSMutableDictionary *)self->_idsSendIDToCompletionHandler removeObjectForKey:v10];
    clientQueue = self->_clientQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C99BC;
    block[3] = &unk_100175688;
    v33 = v12;
    v32 = v11;
    dispatch_async(clientQueue, block);
  }

  if (v11 || !a6)
  {
    v17 = IDSErrorDomain;
    v18 = [v11 domain];
    if ([v17 isEqual:v18])
    {
      v19 = [v11 code];

      if (v19 == 24)
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
          v35 = v10;
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
      sub_100103320(v11);
    }

LABEL_17:

LABEL_18:
    v25 = [(NSMutableDictionary *)self->_idsSendIDToResponseHandler objectForKeyedSubscript:v10];
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
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDS success sending request: %{public}@", buf, 0xCu);
    }

LABEL_20:
  }
}

- (void)service:(id)a3 didSwitchActivePairedDevice:(id)a4 acknowledgementBlock:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (self->_service == a3)
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

    v25 = v9;
    v9[2](v9);
    v13 = [(NRRemoteObject *)self delegate];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      clientQueue = self->_clientQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C9D18;
      block[3] = &unk_100175598;
      block[4] = self;
      v35 = v8;
      dispatch_async(clientQueue, block);
    }

    v16 = v8;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(NRRemoteObject *)self connectivityObservers];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v37 count:16];
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
            objc_enumerationMutation(v17);
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
        v19 = [v17 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v19);
    }

    idsQueue = self->_idsQueue;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000C9E04;
    v26[3] = &unk_100175598;
    v26[4] = self;
    v8 = v16;
    v27 = v16;
    dispatch_async(idsQueue, v26);

    v9 = v25;
  }
}

- (void)service:(id)a3 connectedDevicesChanged:(id)a4
{
  v5 = a3;
  v6 = [v5 accounts];
  v7 = [v5 nr_mineTinkerDevices];

  v8 = [(NRRemoteObject *)self _areAccountsAndDevicesPresent:v6 andDevices:v7];

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