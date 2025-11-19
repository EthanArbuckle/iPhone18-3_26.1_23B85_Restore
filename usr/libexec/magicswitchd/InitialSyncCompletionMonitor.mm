@interface InitialSyncCompletionMonitor
- (BOOL)hasCachedInitialSyncCompletionStateForDevice:(id)a3 state:(BOOL *)a4;
- (InitialSyncCompletionMonitor)init;
- (void)dealloc;
- (void)forgetPairingID:(id)a3;
- (void)handleNanoRegistryNotificationDeviceDidUnpair:(id)a3;
- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4;
- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)a3;
- (void)notifyObserversInitialSyncDidCompleteForPairingID:(id)a3;
- (void)registerObserver:(id)a3 device:(id)a4;
- (void)requestInitialSyncStateForPairingID:(id)a3;
- (void)retryPendingRequests;
- (void)unregisterObserver:(id)a3 device:(id)a4;
@end

@implementation InitialSyncCompletionMonitor

- (InitialSyncCompletionMonitor)init
{
  v25.receiver = self;
  v25.super_class = InitialSyncCompletionMonitor;
  v20 = [(InitialSyncCompletionMonitor *)&v25 init];
  if (v20)
  {
    v2 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v29 = v20;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "InitialSyncCompletionMonitor --- Initializing (%p)", buf, 0xCu);
    }

    v3 = objc_opt_new();
    pendingRequests = v20->_pendingRequests;
    v20->_pendingRequests = v3;

    v5 = +[NSMapTable weakToStrongObjectsMapTable];
    observers = v20->_observers;
    v20->_observers = v5;

    v7 = objc_opt_new();
    cachedInitialSyncStateByPairingID = v20->_cachedInitialSyncStateByPairingID;
    v20->_cachedInitialSyncStateByPairingID = v7;

    v9 = [[PSYInitialSyncStateObserver alloc] initWithDelegate:v20];
    initialSyncCompletionObserver = v20->_initialSyncCompletionObserver;
    v20->_initialSyncCompletionObserver = v9;

    v27[0] = NRPairedDeviceRegistryDeviceDidUnpairNotification;
    v27[1] = NRPairedDeviceRegistryDeviceDidFailToPairNotification;
    [NSArray arrayWithObjects:v27 count:2];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v24 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * v15);
          v17 = +[NSNotificationCenter defaultCenter];
          v18 = +[NRPairedDeviceRegistry sharedInstance];
          [v17 addObserver:v20 selector:"handleNanoRegistryNotificationDeviceDidUnpair:" name:v16 object:v18];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }
  }

  return v20;
}

- (void)dealloc
{
  v3 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "InitialSyncCompletionMonitor --- Deallocating (%p)", buf, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = InitialSyncCompletionMonitor;
  [(InitialSyncCompletionMonitor *)&v5 dealloc];
}

- (void)registerObserver:(id)a3 device:(id)a4
{
  v8 = a3;
  v6 = [a4 valueForProperty:NRDevicePropertyPairingID];
  if (v6)
  {
    v7 = [(NSMapTable *)self->_observers objectForKey:v8];
    if (!v7)
    {
      v7 = [[NSMutableSet alloc] initWithCapacity:1];
      [(NSMapTable *)self->_observers setObject:v7 forKey:v8];
    }

    [v7 addObject:v6];
    [(InitialSyncCompletionMonitor *)self requestInitialSyncStateForPairingID:v6];
  }
}

- (void)unregisterObserver:(id)a3 device:(id)a4
{
  v9 = a3;
  v6 = [a4 valueForProperty:NRDevicePropertyPairingID];
  if (v6)
  {
    v7 = [(NSMapTable *)self->_observers objectForKey:v9];
    v8 = v7;
    if (v7)
    {
      [v7 removeObject:v6];
      if (![v8 count])
      {
        [(NSMapTable *)self->_observers removeObjectForKey:v9];
      }
    }
  }
}

- (BOOL)hasCachedInitialSyncCompletionStateForDevice:(id)a3 state:(BOOL *)a4
{
  v6 = [a3 valueForProperty:NRDevicePropertyPairingID];
  if (v6 && ([(NSMutableDictionary *)self->_cachedInitialSyncStateByPairingID objectForKey:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    if (a4)
    {
      *a4 = [v7 BOOLValue];
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)requestInitialSyncStateForPairingID:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_pendingRequests containsObject:v4]& 1) == 0)
  {
    [(NSMutableSet *)self->_pendingRequests addObject:v4];
    v5 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "InitialSyncCompletionMonitor --- Requesting initial sync state for pairingID: (%@)", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    initialSyncCompletionObserver = self->_initialSyncCompletionObserver;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000056D4;
    v7[3] = &unk_1000185D8;
    objc_copyWeak(&v9, buf);
    v8 = v4;
    [(PSYInitialSyncStateObserver *)initialSyncCompletionObserver requestInitialNonMigrationSyncStateForPairingIdentifier:v8 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

- (void)retryPendingRequests
{
  if ([(NSMutableSet *)self->_pendingRequests count])
  {
    v3 = qword_100021420;
    if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "InitialSyncCompletionMonitor --- Retrying pending Initial Sync completion requests", buf, 2u);
    }

    v4 = [(NSMutableSet *)self->_pendingRequests copy];
    [(NSMutableSet *)self->_pendingRequests removeAllObjects];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(InitialSyncCompletionMonitor *)self requestInitialSyncStateForPairingID:*(*(&v10 + 1) + 8 * v9), v10];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)notifyObserversInitialSyncDidCompleteForPairingID:(id)a3
{
  v4 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = [(NSMapTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_observers objectForKey:v10];
        if ([v11 containsObject:v4])
        {
          [v11 removeObject:v4];
          v12 = +[NRPairedDeviceRegistry sharedInstance];
          v13 = [v12 deviceForPairingID:v4];

          if (v13)
          {
            [v10 initialSyncDidCompleteForDevice:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v14 = +[NSMapTable weakToStrongObjectsMapTable];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_observers;
  v16 = [(NSMapTable *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        v21 = [(NSMapTable *)self->_observers objectForKey:v20, v23];
        if ([v21 count])
        {
          [(NSMapTable *)v14 setObject:v21 forKey:v20];
        }
      }

      v17 = [(NSMapTable *)v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  observers = self->_observers;
  self->_observers = v14;
}

- (void)forgetPairingID:(id)a3
{
  v4 = a3;
  [(NSMutableSet *)self->_pendingRequests removeObject:v4];
  [(NSMutableDictionary *)self->_cachedInitialSyncStateByPairingID removeObjectForKey:v4];
  v5 = +[NSMapTable weakToStrongObjectsMapTable];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_observers;
  v7 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_observers objectForKey:v11, v14];
        if ([v12 containsObject:v4])
        {
          [v12 removeObject:v4];
          if ([v12 count])
          {
            [(NSMapTable *)v5 setObject:v12 forKey:v11];
          }
        }
      }

      v8 = [(NSMapTable *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  observers = self->_observers;
  self->_observers = v5;
}

- (void)handleNanoRegistryNotificationDeviceDidUnpair:(id)a3
{
  v4 = a3;
  v5 = qword_100021420;
  if (os_log_type_enabled(qword_100021420, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "InitialSyncCompletionMonitor --- Received notification: %@", buf, 0xCu);
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKeyedSubscript:NRPairedDeviceRegistryDevice];
  v10 = [v9 valueForProperty:NRDevicePropertyPairingID];
  if (v10)
  {
    v11 = +[MagicSwitchEnabler sharedInstance];
    v12 = [v11 workQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100006014;
    v13[3] = &unk_100018600;
    v13[4] = self;
    v14 = v10;
    dispatch_async(v12, v13);
  }
}

- (void)initialSyncStateObserver:(id)a3 initialSyncDidCompleteForPairingIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = +[MagicSwitchEnabler sharedInstance];
  v9 = [v8 workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000613C;
  block[3] = &unk_100018628;
  objc_copyWeak(&v13, &location);
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, block);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)initialSyncStateObserverClientCanRetryFailedRequests:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[MagicSwitchEnabler sharedInstance];
  v6 = [v5 workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100006320;
  v7[3] = &unk_1000184D0;
  objc_copyWeak(&v8, &location);
  dispatch_async(v6, v7);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end