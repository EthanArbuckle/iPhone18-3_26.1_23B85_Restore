@interface NRXPCServer
- (BOOL)hasEntitlement:(id)entitlement withBitmask:(unsigned int)bitmask;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NRXPCServer)initWithProxyClass:(Class)class xpcListenerClass:(Class)listenerClass serverDelegate:(id)delegate xpcTarget:(id)target services:(id)services;
- (id)_currentAppsPredicates;
- (unsigned)scanForEntitlementsWithConnection:(id)connection;
- (void)_addAppToMonitorWithProxy:(id)proxy;
- (void)_proxyDidDisconnect:(id)disconnect;
- (void)_removeAppFromMonitorWithProxy:(id)proxy;
- (void)_resume;
- (void)_suspend;
- (void)_updatedFromMonitor:(id)monitor forProcess:(id)process withUpdate:(id)update;
- (void)enumerateClientProxies:(id)proxies;
- (void)invalidate;
- (void)resume;
- (void)shouldMonitorProxy:(id)proxy forSuspension:(BOOL)suspension;
- (void)suspend;
@end

@implementation NRXPCServer

- (NRXPCServer)initWithProxyClass:(Class)class xpcListenerClass:(Class)listenerClass serverDelegate:(id)delegate xpcTarget:(id)target services:(id)services
{
  delegateCopy = delegate;
  targetCopy = target;
  servicesCopy = services;
  v52.receiver = self;
  v52.super_class = NRXPCServer;
  v16 = [(NRXPCServer *)&v52 init];
  v17 = v16;
  if (v16)
  {
    listenerClassCopy = listenerClass;
    v45 = servicesCopy;
    v46 = targetCopy;
    v47 = delegateCopy;
    v16->_proxyClass = class;
    objc_storeStrong(&v16->_serverDelegate, delegate);
    objc_storeStrong(&v17->_xpcTarget, target);
    objc_storeStrong(&v17->_services, services);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);

    v20 = dispatch_queue_create("com.apple.nanoregistry.nrxpcserver.managementqueue", v19);
    managementQueue = v17->_managementQueue;
    v17->_managementQueue = v20;

    v41 = v19;
    v22 = dispatch_queue_create("com.apple.nanoregistry.nrxpcserver.incomingmessagequeue", v19);
    xpcIncomingMessageQueue = v17->_xpcIncomingMessageQueue;
    v17->_xpcIncomingMessageQueue = v22;

    machServiceName = [(objc_class *)class machServiceName];
    machServiceName = v17->_machServiceName;
    v17->_machServiceName = machServiceName;

    classCopy = class;
    entitlements = [(objc_class *)class entitlements];
    v27 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [entitlements count]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v28 = entitlements;
    v29 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      v32 = *v49;
      do
      {
        v33 = 0;
        do
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v28);
          }

          v34 = *(*(&v48 + 1) + 8 * v33);
          v35 = [NSNumber numberWithInteger:v31, v41];
          ++v31;
          [v27 setObject:v35 forKeyedSubscript:v34];

          v33 = v33 + 1;
        }

        while (v30 != v33);
        v30 = [v28 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v30);
    }

    if ([v27 count])
    {
      objc_storeStrong(&v17->_entitlements, v27);
    }

    v17->_entitlementRequired = [(objc_class *)classCopy requireAnEntitlement];
    v36 = +[NSMutableArray array];
    proxies = v17->_proxies;
    v17->_proxies = v36;

    v38 = [[listenerClassCopy alloc] initWithMachServiceName:v17->_machServiceName];
    xpcListener = v17->_xpcListener;
    v17->_xpcListener = v38;

    [(NRNSXPCListenerProtocol *)v17->_xpcListener setDelegate:v17];
    v17->_listenerSuspended = 1;

    targetCopy = v46;
    delegateCopy = v47;
    servicesCopy = v45;
  }

  return v17;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C74;
  block[3] = &unk_100175570;
  block[4] = self;
  v10 = connectionCopy;
  v11 = &v12;
  v7 = connectionCopy;
  dispatch_sync(managementQueue, block);
  LOBYTE(managementQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return managementQueue;
}

- (unsigned)scanForEntitlementsWithConnection:(id)connection
{
  connectionCopy = connection;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_entitlements;
  v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:v10];
        integerValue = [v11 integerValue];
        v13 = [connectionCopy valueForEntitlement:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v13 BOOLValue])
        {
          v7 |= 1 << integerValue;
        }
      }

      v6 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasEntitlement:(id)entitlement withBitmask:(unsigned int)bitmask
{
  v5 = [(NSMutableDictionary *)self->_entitlements objectForKeyedSubscript:entitlement];
  v6 = v5;
  if (v5)
  {
    v7 = (bitmask >> [v5 integerValue]) & 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)shouldMonitorProxy:(id)proxy forSuspension:(BOOL)suspension
{
  suspensionCopy = suspension;
  proxyCopy = proxy;
  managementQueue = self->_managementQueue;
  if (suspensionCopy)
  {
    v8 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v9 = sub_100004410;
  }

  else
  {
    v8 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v9 = sub_10000441C;
  }

  v8[2] = v9;
  v8[3] = &unk_100175598;
  v8[4] = self;
  v10 = proxyCopy;
  v8[5] = v10;
  dispatch_sync(managementQueue, v8);
}

- (void)_addAppToMonitorWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = [proxyCopy pid];
  serverDelegate = self->_serverDelegate;
  if (objc_opt_respondsToSelector())
  {
    v7 = 0;
  }

  else
  {
    v8 = self->_serverDelegate;
    v7 = objc_opt_respondsToSelector() ^ 1;
  }

  processMonitor = self->_processMonitor;
  if (!processMonitor && (v7 & 1) == 0)
  {
    if (!self->_bundleIDToProxy)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
      bundleIDToProxy = self->_bundleIDToProxy;
      self->_bundleIDToProxy = v10;
    }

    v12 = +[RBSProcessStateDescriptor descriptor];
    [v12 setValues:1];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10000476C;
    v33[3] = &unk_1001755E8;
    v34 = v12;
    selfCopy = self;
    v13 = v12;
    v14 = [RBSProcessMonitor monitorWithConfiguration:v33];
    v15 = self->_processMonitor;
    self->_processMonitor = v14;

    processMonitor = self->_processMonitor;
  }

  if (processMonitor)
  {
    v16 = [RBSProcessIdentifier identifierWithPid:v5];
    if (v16)
    {
      v32 = 0;
      v17 = [RBSProcessHandle handleForIdentifier:v16 error:&v32];
      v18 = v32;
      bundle = [v17 bundle];
      identifier = [bundle identifier];

      if (identifier)
      {
        [(NSMutableDictionary *)self->_bundleIDToProxy setObject:proxyCopy forKeyedSubscript:identifier];
        v21 = nr_daemon_log();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);

        if (v22)
        {
          v23 = nr_daemon_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            machServiceName = self->_machServiceName;
            allKeys = [(NSMutableDictionary *)self->_bundleIDToProxy allKeys];
            v26 = [allKeys componentsJoinedByString:{@", "}];
            *buf = 138412802;
            v37 = machServiceName;
            v38 = 2112;
            v39 = identifier;
            v40 = 2112;
            v41 = v26;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "NRXPCServer: %@ starts monitoring %@; new monitoring bundle IDs: [%@]", buf, 0x20u);
          }
        }

        _currentAppsPredicates = [(NRXPCServer *)self _currentAppsPredicates];
        v28 = _currentAppsPredicates;
        if (_currentAppsPredicates)
        {
          v29 = self->_processMonitor;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_100004820;
          v30[3] = &unk_100175610;
          v31 = _currentAppsPredicates;
          [(RBSProcessMonitor *)v29 updateConfiguration:v30];
        }
      }
    }
  }
}

- (void)_removeAppFromMonitorWithProxy:(id)proxy
{
  proxyCopy = proxy;
  dispatch_assert_queue_V2(self->_managementQueue);
  bundleIDToProxy = self->_bundleIDToProxy;
  if (bundleIDToProxy && self->_processMonitor)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = bundleIDToProxy;
    v7 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_bundleIDToProxy objectForKeyedSubscript:v11];
          v13 = v12;
          if (v12 == proxyCopy)
          {
            v14 = nr_daemon_log();
            v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

            if (v15)
            {
              v16 = nr_daemon_log();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                machServiceName = self->_machServiceName;
                *buf = 138412802;
                v35 = machServiceName;
                v36 = 2112;
                v37 = v11;
                v38 = 2112;
                v39 = proxyCopy;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "NRXPCServer: %@ is no longer monitoring %@ (%@)", buf, 0x20u);
              }
            }

            [(NSMutableDictionary *)self->_bundleIDToProxy removeObjectForKey:v11];
            _currentAppsPredicates = [(NRXPCServer *)self _currentAppsPredicates];
            v19 = _currentAppsPredicates;
            if (_currentAppsPredicates)
            {
              processMonitor = self->_processMonitor;
              v28[0] = _NSConcreteStackBlock;
              v28[1] = 3221225472;
              v28[2] = sub_100004BAC;
              v28[3] = &unk_100175610;
              v29 = _currentAppsPredicates;
              [(RBSProcessMonitor *)processMonitor updateConfiguration:v28];
            }

            goto LABEL_19;
          }
        }

        v8 = [(NSMutableDictionary *)v6 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:

    v21 = self->_bundleIDToProxy;
    if (v21 && ![(NSMutableDictionary *)v21 count])
    {
      v22 = nr_daemon_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v24 = nr_daemon_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = self->_machServiceName;
          *buf = 138412290;
          v35 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "NRXPCServer: %@ is no longer monitoring any apps", buf, 0xCu);
        }
      }

      v26 = self->_bundleIDToProxy;
      self->_bundleIDToProxy = 0;

      [(RBSProcessMonitor *)self->_processMonitor invalidate];
      v27 = self->_processMonitor;
      self->_processMonitor = 0;
    }
  }
}

- (id)_currentAppsPredicates
{
  allKeys = [(NSMutableDictionary *)self->_bundleIDToProxy allKeys];
  v3 = [NSSet setWithArray:allKeys];

  if ([v3 count])
  {
    v4 = [RBSProcessPredicate predicateMatchingBundleIdentifiers:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updatedFromMonitor:(id)monitor forProcess:(id)process withUpdate:(id)update
{
  updateCopy = update;
  bundle = [process bundle];
  identifier = [bundle identifier];

  previousState = [updateCopy previousState];
  state = [updateCopy state];

  if (([previousState isEqual:state] & 1) == 0)
  {
    v12 = nr_daemon_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = nr_daemon_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v24 = identifier;
        v25 = 2112;
        v26 = previousState;
        v27 = 2112;
        v28 = state;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "NRXPCServer: updated from monitor for process %@ with update %@ -> %@", buf, 0x20u);
      }
    }

    if (state)
    {
      taskState = [state taskState];
    }

    else
    {
      taskState = 0;
    }

    v17 = taskState == 2 || taskState == 4;
    managementQueue = self->_managementQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100004EC0;
    block[3] = &unk_100175638;
    block[4] = self;
    v20 = identifier;
    v21 = v17;
    v22 = taskState;
    dispatch_async(managementQueue, block);
  }
}

- (void)enumerateClientProxies:(id)proxies
{
  proxiesCopy = proxies;
  dispatch_assert_queue_V2(self->_managementQueue);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_proxies;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        proxiesCopy[2](proxiesCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_proxyDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  dispatch_assert_queue_V2(self->_managementQueue);
  [disconnectCopy _invalidate];
  [(NSMutableArray *)self->_proxies removeObject:disconnectCopy];
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      machServiceName = self->_machServiceName;
      appPath = [disconnectCopy appPath];
      v11 = 138413058;
      v12 = machServiceName;
      v13 = 2114;
      v14 = appPath;
      v15 = 2048;
      v16 = [disconnectCopy pid];
      v17 = 2112;
      v18 = disconnectCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "NRXPCServer: %@ connection from %{public}@.%ld disconnected (%@)", &v11, 0x2Au);
    }
  }

  [(NRXPCServer *)self _removeAppFromMonitorWithProxy:disconnectCopy];
  v10 = self->_serverDelegate;
  if (objc_opt_respondsToSelector())
  {
    [(NRXPCServerDelegate *)v10 xpcServer:self proxyDidDisconnect:disconnectCopy];
  }
}

- (void)resume
{
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000053D4;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

- (void)suspend
{
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005450;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

- (void)_resume
{
  if (self->_listenerSuspended && !self->_listenerInvalidated)
  {
    self->_listenerSuspended = 0;
    [(NRNSXPCListenerProtocol *)self->_xpcListener resume];
  }
}

- (void)_suspend
{
  if (!self->_listenerSuspended && !self->_listenerInvalidated)
  {
    self->_listenerSuspended = 1;
    [(NRNSXPCListenerProtocol *)self->_xpcListener suspend];
  }
}

- (void)invalidate
{
  managementQueue = self->_managementQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005514;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_sync(managementQueue, block);
}

@end