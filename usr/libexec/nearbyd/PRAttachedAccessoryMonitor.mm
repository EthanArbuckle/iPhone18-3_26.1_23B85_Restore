@interface PRAttachedAccessoryMonitor
- (BOOL)startMonitoring;
- (PRAttachedAccessoryMonitor)initWithQueue:(id)queue;
- (id).cxx_construct;
- (void)accessoryConnected:(id)connected;
- (void)accessoryConnectionDetached:(id)detached;
- (void)accessoryDisconnected:(id)disconnected;
- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection;
- (void)initAccessoryListener;
@end

@implementation PRAttachedAccessoryMonitor

- (PRAttachedAccessoryMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PRAttachedAccessoryMonitor.mm" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v13.receiver = self;
  v13.super_class = PRAttachedAccessoryMonitor;
  v7 = [(PRAttachedAccessoryMonitor *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_queue, queue);
    v8->_monitoring = 0;
    v9 = objc_opt_new();
    fConnectedACCAccessoryUUIDs = v8->fConnectedACCAccessoryUUIDs;
    v8->fConnectedACCAccessoryUUIDs = v9;
  }

  return v8;
}

- (BOOL)startMonitoring
{
  if (!self->_monitoring)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100368B88;
    block[3] = &unk_10098BD28;
    block[4] = self;
    dispatch_async(queue, block);
    self->_monitoring = 1;
  }

  return 1;
}

- (void)initAccessoryListener
{
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  fAccessoryManager = self->fAccessoryManager;
  self->fAccessoryManager = v3;

  [(EAAccessoryManager *)self->fAccessoryManager registerForLocalNotifications];
  v5 = +[NSNotificationCenter defaultCenter];
  fNotificationCenter = self->fNotificationCenter;
  self->fNotificationCenter = v5;

  connectedAccessories = [(EAAccessoryManager *)self->fAccessoryManager connectedAccessories];
  v8 = qword_1009F7408;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v20 = [connectedAccessories count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "examining %lu connected accessories", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = connectedAccessories;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(PRAttachedAccessoryMonitor *)self accessoryNotify:*(*(&v14 + 1) + 8 * v12) isAttached:1, v14];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(NSNotificationCenter *)self->fNotificationCenter addObserver:self selector:"accessoryConnected:" name:EAAccessoryDidConnectNotification object:0];
  [(NSNotificationCenter *)self->fNotificationCenter addObserver:self selector:"accessoryDisconnected:" name:EAAccessoryDidDisconnectNotification object:0];
  v13 = +[ACCConnectionInfo sharedInstance];
  [v13 registerDelegate:self];
}

- (void)accessoryConnected:(id)connected
{
  connectedCopy = connected;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100369284;
  v7[3] = &unk_10098A2E8;
  v8 = connectedCopy;
  selfCopy = self;
  v6 = connectedCopy;
  dispatch_async(queue, v7);
}

- (void)accessoryDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100369434;
  v7[3] = &unk_10098A2E8;
  v8 = disconnectedCopy;
  selfCopy = self;
  v6 = disconnectedCopy;
  dispatch_async(queue, v7);
}

- (void)accessoryEndpointAttached:(id)attached transportType:(int)type protocol:(int)protocol properties:(id)properties forConnection:(id)connection
{
  attachedCopy = attached;
  propertiesCopy = properties;
  connectionCopy = connection;
  v14 = [propertiesCopy objectForKey:kACCProperties_Endpoint_NFC_Type];
  if (!v14)
  {
    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_39;
  }

  intValue = [v14 intValue];
  if (intValue <= 0x4B)
  {
    if (intValue <= 65)
    {
      if (!intValue)
      {
        goto LABEL_39;
      }

      if (intValue == 57)
      {
        v16 = 9;
        goto LABEL_28;
      }
    }

    else
    {
      switch(intValue)
      {
        case 'B':
          v16 = 8;
          goto LABEL_28;
        case 'C':
          v16 = 6;
          goto LABEL_28;
        case 'D':
          v16 = 13;
          goto LABEL_28;
      }
    }
  }

  else if (intValue > 83)
  {
    switch(intValue)
    {
      case 'T':
        v16 = 11;
        goto LABEL_28;
      case 'V':
        v16 = 10;
        goto LABEL_28;
      case 'W':
        v16 = 7;
        goto LABEL_28;
    }
  }

  else
  {
    switch(intValue)
    {
      case 'L':
        v16 = 5;
        goto LABEL_28;
      case 'M':
        v16 = 12;
        goto LABEL_28;
      case 'S':
        v16 = 4;
        goto LABEL_28;
    }
  }

  v16 = 999;
LABEL_28:
  if (connectionCopy)
  {
    [(NSMutableSet *)self->fConnectedACCAccessoryUUIDs addObject:connectionCopy];
    sub_100004A08(v23, [connectionCopy UTF8String]);
    *buf = v23;
    *(sub_100369B40(&self->fConnectedACCAccessoryTypes.__table_.__bucket_list_.__ptr_, v23) + 10) = v16;
    v17 = qword_1009F7408;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = kACCEndpoint_TransportType_Strings[type];
      sub_10041C9CC();
      v19 = v22 >= 0 ? &__p : __p;
      *buf = 138412802;
      *&buf[4] = propertiesCopy;
      v26 = 2080;
      v27 = v18;
      v28 = 2080;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "regulatory,acc,Accessory attached: %@ type: %s, accessory_type: %s.", buf, 0x20u);
      if (v22 < 0)
      {
        operator delete(__p);
      }
    }

    stateChangedHandler = self->_stateChangedHandler;
    if (stateChangedHandler)
    {
      stateChangedHandler[2](stateChangedHandler, 1, 0, v16);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }
  }

LABEL_39:
}

- (void)accessoryConnectionDetached:(id)detached
{
  detachedCopy = detached;
  v5 = [(NSMutableSet *)self->fConnectedACCAccessoryUUIDs member:detachedCopy];
  v6 = v5;
  if (detachedCopy)
  {
    if (v5)
    {
      [(NSMutableSet *)self->fConnectedACCAccessoryUUIDs removeObject:detachedCopy];
      sub_100004A08(v15, [detachedCopy UTF8String]);
      v7 = sub_100021998(&self->fConnectedACCAccessoryTypes.__table_.__bucket_list_.__ptr_, v15);
      if (v7)
      {
        v8 = *(v7 + 10);
        sub_100021A94(&self->fConnectedACCAccessoryTypes.__table_.__bucket_list_.__ptr_, v7);
      }

      else
      {
        v8 = 998;
      }

      v10 = qword_1009F7408;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_10041C9CC();
        v11 = v14 >= 0 ? &__p : __p;
        *buf = 138412546;
        v18 = detachedCopy;
        v19 = 2080;
        v20 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "regulatory,acc,Accessory detached: UUID: %@, accessory_type: %s.", buf, 0x16u);
        if (v14 < 0)
        {
          operator delete(__p);
        }
      }

      stateChangedHandler = self->_stateChangedHandler;
      if (stateChangedHandler)
      {
        (*(stateChangedHandler + 2))(stateChangedHandler, 0, 0, v8);
      }

      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }

    else
    {
      v9 = qword_1009F7408;
      if (os_log_type_enabled(qword_1009F7408, OS_LOG_TYPE_ERROR))
      {
        sub_1004C3DA8(detachedCopy, v9);
      }
    }
  }
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 18) = 1065353216;
  return self;
}

@end