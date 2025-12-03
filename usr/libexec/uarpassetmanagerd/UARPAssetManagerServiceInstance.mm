@interface UARPAssetManagerServiceInstance
- (BOOL)isSubscriptionSupported:(id)supported;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)queryIsBusy;
- (NSString)description;
- (UARPAssetManagerServiceDelegate)delegate;
- (UARPAssetManagerServiceInstance)initWithServiceName:(id)name delegate:(id)delegate;
- (id)assetManagerService;
- (id)checkCacheForPersonality:(id)personality;
- (id)checkCacheForSubscription:(id)subscription;
- (id)copyCache;
- (id)copySubscriptions;
- (id)encodedClasses;
- (void)assetAvailabilityUpdateForSubscription:(id)subscription cacheRecord:(id)record asyncUpdate:(BOOL)update;
- (void)checkAssetAvailabilityForDomain:(id)domain;
- (void)checkForUpdate;
- (void)clearAssetCacheForDomain:(id)domain;
- (void)dealloc;
- (void)initializeAssetManagerServiceConnection;
- (void)primeCache:(id)cache;
- (void)registerForSubscription:(id)subscription;
- (void)settingsChangedForSerialNumber:(id)number;
- (void)subscribeForPersonality:(id)personality;
- (void)updateReachabilityForPersonality:(id)personality reachable:(BOOL)reachable;
- (void)updateSettingsForPersonality:(id)personality;
@end

@implementation UARPAssetManagerServiceInstance

- (UARPAssetManagerServiceInstance)initWithServiceName:(id)name delegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  v19 = 0;
  objc_storeStrong(&v19, delegate);
  v4 = selfCopy;
  selfCopy = 0;
  v18.receiver = v4;
  v18.super_class = UARPAssetManagerServiceInstance;
  selfCopy = [(UARPAssetManagerServiceInstance *)&v18 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = os_log_create("com.apple.uarpassetmanager.uarp", "uarpAssetManager");
    log = selfCopy->_log;
    selfCopy->_log = v5;

    v7 = [location[0] copy];
    serviceName = selfCopy->_serviceName;
    selfCopy->_serviceName = v7;

    v9 = dispatch_queue_create([(NSString *)selfCopy->_serviceName UTF8String], 0);
    queue = selfCopy->_queue;
    selfCopy->_queue = v9;

    objc_storeWeak(&selfCopy->_delegate, v19);
    v11 = +[NSXPCListener anonymousListener];
    xpcListener = selfCopy->_xpcListener;
    selfCopy->_xpcListener = v11;

    [(NSXPCListener *)selfCopy->_xpcListener setDelegate:selfCopy];
    [(NSXPCListener *)selfCopy->_xpcListener resume];
    v13 = objc_opt_new();
    subscriptionToCacheRecords = selfCopy->_subscriptionToCacheRecords;
    selfCopy->_subscriptionToCacheRecords = v13;
  }

  v16 = selfCopy;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v16;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(UARPAssetManagerServiceInstance *)self releaseXPCConnection];
  [(NSXPCListener *)selfCopy->_xpcListener invalidate];
  v2.receiver = selfCopy;
  v2.super_class = UARPAssetManagerServiceInstance;
  [(UARPAssetManagerServiceInstance *)&v2 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, listener);
  v20 = 0;
  objc_storeStrong(&v20, connection);
  v15 = 0;
  v16 = &v15;
  v17 = 0x20000000;
  v18 = 32;
  v19 = 0;
  queue = selfCopy->_queue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = __70__UARPAssetManagerServiceInstance_listener_shouldAcceptNewConnection___block_invoke;
  v12 = &unk_100035D80;
  v13 = v20;
  v14[0] = selfCopy;
  v14[1] = &v15;
  dispatch_sync(queue, &v8);
  v7 = *(v16 + 24);
  objc_storeStrong(v14, 0);
  objc_storeStrong(&v13, 0);
  _Block_object_dispose(&v15, 8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

void __70__UARPAssetManagerServiceInstance_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v20 = a1;
  v19 = a1;
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAsyncAssetManagerDelegate];
  [*(a1 + 32) setExportedInterface:?];

  [*(a1 + 32) setExportedObject:*(a1 + 40)];
  v3 = [*(a1 + 32) exportedInterface];
  v2 = [*(a1 + 40) encodedClasses];
  [v3 setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v5 = [*(a1 + 32) exportedInterface];
  v4 = [*(a1 + 40) encodedClasses];
  [v5 setClasses:? forSelector:? argumentIndex:? ofReply:?];

  v18 = [*(a1 + 32) processIdentifier];
  v11 = _NSConcreteStackBlock;
  v12 = -1073741824;
  v13 = 0;
  v14 = __70__UARPAssetManagerServiceInstance_listener_shouldAcceptNewConnection___block_invoke_2;
  v15 = &unk_1000360D8;
  v16 = *(a1 + 40);
  v17 = v18;
  [*(a1 + 32) setInterruptionHandler:&v11];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __70__UARPAssetManagerServiceInstance_listener_shouldAcceptNewConnection___block_invoke_332;
  v8[3] = &unk_1000360D8;
  v9 = *(a1 + 40);
  v10 = v18;
  [*(a1 + 32) setInvalidationHandler:v8];
  [*(a1 + 32) _setQueue:*(*(a1 + 40) + 24)];
  [*(a1 + 32) resume];
  oslog = *(*(a1 + 40) + 32);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_4_0(v21, [*(a1 + 32) processIdentifier]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "New connection from PID %d", v21, 8u);
  }

  objc_storeStrong(&oslog, 0);
  *(*(*(a1 + 48) + 8) + 24) = 1;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v16, 0);
}

void __70__UARPAssetManagerServiceInstance_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_0_1_4_0(v3, *(a1 + 40));
    _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "Connection to PID %d interrupted", v3, 8u);
  }

  objc_storeStrong(oslog, 0);
}

void __70__UARPAssetManagerServiceInstance_listener_shouldAcceptNewConnection___block_invoke_332(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_4_0(v3, *(a1 + 40));
    _os_log_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_INFO, "Connection from PID %d invalidated", v3, 8u);
  }

  objc_storeStrong(oslog, 0);
}

- (void)initializeAssetManagerServiceConnection
{
  selfCopy = self;
  v9[1] = a2;
  if (!self->_xpcConnection)
  {
    v2 = [[NSXPCConnection alloc] initWithServiceName:selfCopy->_serviceName];
    xpcConnection = selfCopy->_xpcConnection;
    selfCopy->_xpcConnection = v2;

    v9[0] = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAssetManagerServiceProtocol];
    [(NSXPCConnection *)selfCopy->_xpcConnection setRemoteObjectInterface:v9[0]];
    remoteObjectInterface = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    encodedClasses = [(UARPAssetManagerServiceInstance *)selfCopy encodedClasses];
    [NSXPCInterface setClasses:remoteObjectInterface forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];

    remoteObjectInterface2 = [(NSXPCConnection *)selfCopy->_xpcConnection remoteObjectInterface];
    encodedClasses2 = [(UARPAssetManagerServiceInstance *)selfCopy encodedClasses];
    [NSXPCInterface setClasses:remoteObjectInterface2 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAsyncAssetManagerDelegate];
    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedInterface:?];

    [(NSXPCConnection *)selfCopy->_xpcConnection setExportedObject:selfCopy];
    [(NSXPCConnection *)selfCopy->_xpcConnection resume];
    objc_storeStrong(v9, 0);
  }
}

- (id)checkCacheForSubscription:(id)subscription
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subscription);
  v23 = [(UARPAssetManagerServiceInstance *)selfCopy isSubscriptionSupported:location[0]];
  if (v23)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 838860800;
    v16 = 48;
    v17 = __Block_byref_object_copy__1;
    v18 = __Block_byref_object_dispose__1;
    v19 = 0;
    queue = selfCopy->_queue;
    v6 = _NSConcreteStackBlock;
    v7 = -1073741824;
    v8 = 0;
    v9 = __61__UARPAssetManagerServiceInstance_checkCacheForSubscription___block_invoke;
    v10 = &unk_100035D80;
    v11 = selfCopy;
    v12[0] = location[0];
    v12[1] = &v13;
    dispatch_sync(queue, &v6);
    v26 = v14[5];
    v20 = 1;
    objc_storeStrong(v12, 0);
    objc_storeStrong(&v11, 0);
    _Block_object_dispose(&v13, 8);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v22 = selfCopy->_log;
    v21 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v27, selfCopy, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v22, v21, "%@ Current service does not support subscription: %@", v27, 0x16u);
    }

    objc_storeStrong(&v22, 0);
    v26 = 0;
    v20 = 1;
  }

  objc_storeStrong(location, 0);
  v3 = v26;

  return v3;
}

void __61__UARPAssetManagerServiceInstance_checkCacheForSubscription___block_invoke(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = *(a1[4] + 32);
  v35 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v40, a1[4], a1[5]);
    _os_log_impl(&_mh_execute_header, location[0], v35, "%@ Looking for cached asset for subscription:%@", v40, 0x16u);
  }

  objc_storeStrong(location, 0);
  v28 = 0;
  v29 = &v28;
  v30 = 838860800;
  v31 = 48;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  if (!v29[5])
  {
    [a1[4] initializeAssetManagerServiceConnection];
    v7 = *(a1[4] + 8);
    v21 = _NSConcreteStackBlock;
    v22 = -1073741824;
    v23 = 0;
    v24 = __61__UARPAssetManagerServiceInstance_checkCacheForSubscription___block_invoke_357;
    v25 = &unk_100036100;
    v26 = a1[4];
    v27 = [v7 synchronousRemoteObjectProxyWithErrorHandler:&v21];
    v1 = a1[5];
    oslog[1] = _NSConcreteStackBlock;
    v16 = -1073741824;
    v17 = 0;
    v18 = __61__UARPAssetManagerServiceInstance_checkCacheForSubscription___block_invoke_2;
    v19 = &unk_100036128;
    v20 = &v28;
    [v27 checkCacheForSubscription:v1 withReply:?];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
  }

  if (v29[5])
  {
    v12 = *(a1[4] + 32);
    v11 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_64_8_66_8_66(v38, a1[4], v29[5], a1[5]);
      _os_log_impl(&_mh_execute_header, v12, v11, "%@ Cache record available:%{public}@ for accessory:%{public}@", v38, 0x20u);
    }

    objc_storeStrong(&v12, 0);
    v5 = [v29[5] deploymentRules];
    v6 = isDeploymentAllowed(v5);

    v10 = v6;
    if (v6)
    {
      v2 = [v29[5] assetURL];
      v3 = *(a1[6] + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;

      v13 = 0;
    }

    else
    {
      v9 = *(a1[4] + 32);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_66(v37, a1[4], v29[5]);
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%@ Deployment not allowed for this asset:%{public}@", v37, 0x16u);
      }

      objc_storeStrong(&v9, 0);
      v13 = 1;
    }
  }

  else
  {
    oslog[0] = *(a1[4] + 32);
    v14 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_66(v39, a1[4], a1[5]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], v14, "%@ No cached record found for subscription:%{public}@", v39, 0x16u);
    }

    objc_storeStrong(oslog, 0);
    v13 = 1;
  }

  _Block_object_dispose(&v28, 8);
  objc_storeStrong(&v34, 0);
}

void __61__UARPAssetManagerServiceInstance_checkCacheForSubscription___block_invoke_357(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

void __61__UARPAssetManagerServiceInstance_checkCacheForSubscription___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong((*(a1[4] + 8) + 40), location[0]);
  objc_storeStrong(location, 0);
}

- (id)copyCache
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17[0] = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = __44__UARPAssetManagerServiceInstance_copyCache__block_invoke;
  v9 = &unk_100036178;
  v10[0] = self;
  v10[1] = &v11;
  dispatch_sync(queue, &v5);
  v4 = v12[5];
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);
  return v4;
}

void __44__UARPAssetManagerServiceInstance_copyCache__block_invoke(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = *(a1[4] + 32);
  v16 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v19, a1[4]);
    _os_log_impl(&_mh_execute_header, location[0], v16, "%@ copying entire cache for service", v19, 0xCu);
  }

  objc_storeStrong(location, 0);
  [a1[4] initializeAssetManagerServiceConnection];
  v1 = *(a1[4] + 8);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = __44__UARPAssetManagerServiceInstance_copyCache__block_invoke_360;
  v13 = &unk_100036100;
  v14 = a1[4];
  v15 = [v1 synchronousRemoteObjectProxyWithErrorHandler:&v9];
  oslog[1] = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = __44__UARPAssetManagerServiceInstance_copyCache__block_invoke_2;
  v7 = &unk_100036150;
  v8 = a1[5];
  [v15 copyCacheWithReply:?];
  if (![*(*(a1[5] + 8) + 40) count])
  {
    oslog[0] = *(a1[4] + 32);
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, a1[4]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "%@ No asset cache found for service", v18, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
}

void __44__UARPAssetManagerServiceInstance_copyCache__block_invoke_360(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

void __44__UARPAssetManagerServiceInstance_copyCache__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] copy];
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_storeStrong(location, 0);
}

- (id)copySubscriptions
{
  v17[2] = self;
  v17[1] = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 838860800;
  v14 = 48;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17[0] = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = __52__UARPAssetManagerServiceInstance_copySubscriptions__block_invoke;
  v9 = &unk_100036178;
  v10[0] = self;
  v10[1] = &v11;
  dispatch_sync(queue, &v5);
  v4 = v12[5];
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  objc_storeStrong(v17, 0);
  return v4;
}

void __52__UARPAssetManagerServiceInstance_copySubscriptions__block_invoke(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = *(a1[4] + 32);
  v16 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v19, a1[4]);
    _os_log_impl(&_mh_execute_header, location[0], v16, "%@ copying entire cache for service", v19, 0xCu);
  }

  objc_storeStrong(location, 0);
  [a1[4] initializeAssetManagerServiceConnection];
  v1 = *(a1[4] + 8);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = __52__UARPAssetManagerServiceInstance_copySubscriptions__block_invoke_362;
  v13 = &unk_100036100;
  v14 = a1[4];
  v15 = [v1 synchronousRemoteObjectProxyWithErrorHandler:&v9];
  oslog[1] = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = __52__UARPAssetManagerServiceInstance_copySubscriptions__block_invoke_2;
  v7 = &unk_1000361A0;
  v8 = a1[5];
  [v15 copySubscriptionsWithReply:?];
  if (![*(*(a1[5] + 8) + 40) count])
  {
    oslog[0] = *(a1[4] + 32);
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v18, a1[4]);
      _os_log_error_impl(&_mh_execute_header, oslog[0], OS_LOG_TYPE_ERROR, "%@ No subscriptions found for service", v18, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
}

void __52__UARPAssetManagerServiceInstance_copySubscriptions__block_invoke_362(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

void __52__UARPAssetManagerServiceInstance_copySubscriptions__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v2 = [location[0] copy];
  v3 = *(a1[4] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_storeStrong(location, 0);
}

- (void)registerForSubscription:(id)subscription
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subscription);
  v14 = [(UARPAssetManagerServiceInstance *)selfCopy isSubscriptionSupported:location[0]];
  if (v14)
  {
    queue = selfCopy->_queue;
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = __59__UARPAssetManagerServiceInstance_registerForSubscription___block_invoke;
    v8 = &unk_1000361C8;
    v9 = selfCopy;
    v10 = location[0];
    dispatch_async(queue, &v4);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    v11 = 0;
  }

  else
  {
    v13 = selfCopy->_log;
    v12 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v17, selfCopy, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v13, v12, "%@ Current service does not support subscription: %@", v17, 0x16u);
    }

    objc_storeStrong(&v13, 0);
    v11 = 1;
  }

  objc_storeStrong(location, 0);
}

void __59__UARPAssetManagerServiceInstance_registerForSubscription___block_invoke(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = *(a1[4] + 32);
  v10 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_66(v12, a1[4], a1[5]);
    _os_log_impl(&_mh_execute_header, location[0], v10, "%@ Registering for subscription:%{public}@", v12, 0x16u);
  }

  objc_storeStrong(location, 0);
  [a1[4] initializeAssetManagerServiceConnection];
  v1 = *(a1[4] + 8);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = __59__UARPAssetManagerServiceInstance_registerForSubscription___block_invoke_364;
  v7 = &unk_100036100;
  v8 = a1[4];
  v9 = [v1 remoteObjectProxyWithErrorHandler:&v3];
  [v9 subscribeForAsset:a1[5]];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

void __59__UARPAssetManagerServiceInstance_registerForSubscription___block_invoke_364(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

- (void)checkForUpdate
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_queue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = __49__UARPAssetManagerServiceInstance_checkForUpdate__block_invoke;
  v7 = &unk_1000361F0;
  v8[0] = self;
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

void __49__UARPAssetManagerServiceInstance_checkForUpdate__block_invoke(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = *(a1[4] + 32);
  v10 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v12, a1[4]);
    _os_log_impl(&_mh_execute_header, location[0], v10, "%@ check for asset updates", v12, 0xCu);
  }

  objc_storeStrong(location, 0);
  [a1[4] initializeAssetManagerServiceConnection];
  v1 = *(a1[4] + 8);
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = __49__UARPAssetManagerServiceInstance_checkForUpdate__block_invoke_365;
  v7 = &unk_100036100;
  v8 = a1[4];
  v9 = [v1 remoteObjectProxyWithErrorHandler:&v3];
  [v9 checkForUpdate];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

void __49__UARPAssetManagerServiceInstance_checkForUpdate__block_invoke_365(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

- (BOOL)queryIsBusy
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = self->_queue;
  v5 = _NSConcreteStackBlock;
  v6 = -1073741824;
  v7 = 0;
  v8 = __46__UARPAssetManagerServiceInstance_queryIsBusy__block_invoke;
  v9 = &unk_100036178;
  v10[0] = self;
  v10[1] = &v11;
  dispatch_sync(queue, &v5);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

void __46__UARPAssetManagerServiceInstance_queryIsBusy__block_invoke(uint64_t *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = *(a1[4] + 32);
  v16 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_64(v18, a1[4]);
    _os_log_impl(&_mh_execute_header, location[0], v16, "%@ check if asset manager service is busy", v18, 0xCu);
  }

  objc_storeStrong(location, 0);
  [a1[4] initializeAssetManagerServiceConnection];
  v1 = *(a1[4] + 8);
  v9 = _NSConcreteStackBlock;
  v10 = -1073741824;
  v11 = 0;
  v12 = __46__UARPAssetManagerServiceInstance_queryIsBusy__block_invoke_366;
  v13 = &unk_100036100;
  v14 = a1[4];
  v15 = [v1 synchronousRemoteObjectProxyWithErrorHandler:&v9];
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = __46__UARPAssetManagerServiceInstance_queryIsBusy__block_invoke_2;
  v7 = &unk_100036218;
  v8 = a1[5];
  [v15 getIsBusyStatusWithReply:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
}

void __46__UARPAssetManagerServiceInstance_queryIsBusy__block_invoke_366(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

- (NSString)description
{
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v5 = [NSString stringWithFormat:@"%@:", v4];

  return v5;
}

- (void)assetAvailabilityUpdateForSubscription:(id)subscription cacheRecord:(id)record asyncUpdate:(BOOL)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subscription);
  v19 = 0;
  objc_storeStrong(&v19, record);
  updateCopy = update;
  v17 = selfCopy->_log;
  v16 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_3_8_64_8_66_8_66(v22, selfCopy, v19, location[0]);
    _os_log_impl(&_mh_execute_header, v17, v16, "%@ Found asset=%{public}@ for subscription: %{public}@", v22, 0x20u);
  }

  objc_storeStrong(&v17, 0);
  queue = selfCopy->_queue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = __98__UARPAssetManagerServiceInstance_assetAvailabilityUpdateForSubscription_cacheRecord_asyncUpdate___block_invoke;
  v12 = &unk_100035D30;
  v13 = selfCopy;
  v14 = location[0];
  v15 = v19;
  dispatch_sync(queue, &v8);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (id)encodedClasses
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = self->_log;
  v8 = 16;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
  {
    log = v9[0];
    type = v8;
    v2 = objc_opt_class();
    v6 = NSStringFromClass(v2);
    v7 = v6;
    __os_log_helper_16_2_2_8_64_8_32(v10, v7, "[UARPAssetManagerServiceInstance encodedClasses]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v10, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v9, 0);
  return 0;
}

- (BOOL)isSubscriptionSupported:(id)supported
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, supported);
  v10 = selfCopy->_log;
  v9 = 16;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    log = v10;
    type = v9;
    v3 = objc_opt_class();
    v7 = NSStringFromClass(v3);
    v8 = v7;
    __os_log_helper_16_2_2_8_64_8_32(v13, v8, "[UARPAssetManagerServiceInstance isSubscriptionSupported:]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v13, 0x16u);

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)subscribeForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  v9 = selfCopy->_log;
  v8 = 16;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    log = v9;
    type = v8;
    v3 = objc_opt_class();
    v6 = NSStringFromClass(v3);
    v7 = v6;
    __os_log_helper_16_2_2_8_64_8_32(v12, v7, "[UARPAssetManagerServiceInstance subscribeForPersonality:]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v12, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)checkCacheForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  v10 = selfCopy->_log;
  v9 = 16;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    log = v10;
    type = v9;
    v3 = objc_opt_class();
    v7 = NSStringFromClass(v3);
    v8 = v7;
    __os_log_helper_16_2_2_8_64_8_32(v13, v8, "[UARPAssetManagerServiceInstance checkCacheForPersonality:]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v13, 0x16u);

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)checkAssetAvailabilityForDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  copyCache = [(UARPAssetManagerServiceInstance *)selfCopy copyCache];
  v3 = copyCache;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __67__UARPAssetManagerServiceInstance_checkAssetAvailabilityForDomain___block_invoke;
  v8 = &unk_100034450;
  v9 = location[0];
  v10 = selfCopy;
  [v3 enumerateKeysAndObjectsUsingBlock:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&copyCache, 0);
  objc_storeStrong(location, 0);
}

void __67__UARPAssetManagerServiceInstance_checkAssetAvailabilityForDomain___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12 = a4;
  v11 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = location[0];
    v4 = [v9 domain];
    v5 = [v4 isEqualToString:*(a1 + 32)];

    if (v5 == 1)
    {
      [*(a1 + 40) assetAvailabilityUpdateForSubscription:location[0] cacheRecord:v13 asyncUpdate:1];
    }

    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)clearAssetCacheForDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  queue = selfCopy->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __60__UARPAssetManagerServiceInstance_clearAssetCacheForDomain___block_invoke;
  v8 = &unk_1000361C8;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __60__UARPAssetManagerServiceInstance_clearAssetCacheForDomain___block_invoke(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = *(*(a1 + 32) + 32);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_66(v33, *(a1 + 32), *(a1 + 40));
    _os_log_impl(&_mh_execute_header, oslog[0], type, "%@ Clearing cache for domain:%{public}@", v33, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  [*(a1 + 32) initializeAssetManagerServiceConnection];
  v13 = *(*(a1 + 32) + 8);
  v22 = _NSConcreteStackBlock;
  v23 = -1073741824;
  v24 = 0;
  v25 = __60__UARPAssetManagerServiceInstance_clearAssetCacheForDomain___block_invoke_375;
  v26 = &unk_100036100;
  v27 = *(a1 + 32);
  v28 = [v13 remoteObjectProxyWithErrorHandler:&v22];
  [v28 clearAssetCacheForDomain:*(a1 + 40)];
  location = +[NSMutableArray array];
  memset(__b, 0, sizeof(__b));
  obj = [*(*(a1 + 32) + 40) allKeys];
  v15 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
  if (v15)
  {
    v10 = *__b[2];
    v11 = 0;
    v12 = v15;
    while (1)
    {
      v9 = v11;
      if (*__b[2] != v10)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v11);
      v7 = [v20 domain];
      v8 = [v7 isEqualToString:*(a1 + 40)];

      if (v8 == 1)
      {
        [location addObject:v20];
      }

      ++v11;
      if (v9 + 1 >= v12)
      {
        v11 = 0;
        v12 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v12)
        {
          break;
        }
      }
    }
  }

  memset(v17, 0, sizeof(v17));
  v5 = location;
  v6 = [v5 countByEnumeratingWithState:v17 objects:v31 count:16];
  if (v6)
  {
    v2 = *v17[2];
    v3 = 0;
    v4 = v6;
    while (1)
    {
      v1 = v3;
      if (*v17[2] != v2)
      {
        objc_enumerationMutation(v5);
      }

      v18 = *(v17[1] + 8 * v3);
      [*(*(a1 + 32) + 40) removeObjectForKey:v18];
      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [v5 countByEnumeratingWithState:v17 objects:v31 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
}

void __60__UARPAssetManagerServiceInstance_clearAssetCacheForDomain___block_invoke_375(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

- (void)primeCache:(id)cache
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cache);
  queue = selfCopy->_queue;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = __46__UARPAssetManagerServiceInstance_primeCache___block_invoke;
  v8 = &unk_1000361C8;
  v9 = selfCopy;
  v10 = location[0];
  dispatch_async(queue, &v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __46__UARPAssetManagerServiceInstance_primeCache___block_invoke(uint64_t a1)
{
  oslog[2] = a1;
  oslog[1] = a1;
  oslog[0] = *(*(a1 + 32) + 32);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_64_8_64(v55, *(a1 + 32), *(a1 + 40));
    _os_log_impl(&_mh_execute_header, oslog[0], type, "%@ Priming the cache for %@", v55, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  v24 = [*(a1 + 40) domain];
  v23 = [*(a1 + 40) appleModelNumber];
  v22 = [*(a1 + 40) hwFusing];
  v21 = [*(a1 + 40) assetVersion];
  v48 = createEndpointPersonality();

  if (v48)
  {
    v44 = createSubscriptionForPersonality(v48, [*(a1 + 40) usePallas], 0);
    if (v44)
    {
      v41 = +[NSMutableArray array];
      memset(__b, 0, sizeof(__b));
      obj = [*(*(a1 + 32) + 40) allKeys];
      v20 = [obj countByEnumeratingWithState:__b objects:v52 count:16];
      if (v20)
      {
        v16 = *__b[2];
        v17 = 0;
        v18 = v20;
        while (1)
        {
          v15 = v17;
          if (*__b[2] != v16)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(__b[1] + 8 * v17);
          v12 = [v40 domain];
          v13 = [*(a1 + 40) domain];
          v37 = 0;
          v35 = 0;
          v14 = 0;
          if ([v12 isEqualToString:?] == 1)
          {
            v38 = [v40 identifier];
            v37 = 1;
            v36 = [*(a1 + 40) appleModelNumber];
            v35 = 1;
            v14 = [v38 isEqualToString:?] == 1;
          }

          if (v35)
          {
          }

          if (v37)
          {
          }

          if (v14)
          {
            [v41 addObject:v40];
          }

          ++v17;
          if (v15 + 1 >= v18)
          {
            v17 = 0;
            v18 = [obj countByEnumeratingWithState:__b objects:v52 count:16];
            if (!v18)
            {
              break;
            }
          }
        }
      }

      memset(v33, 0, sizeof(v33));
      v10 = v41;
      v11 = [v10 countByEnumeratingWithState:v33 objects:v51 count:16];
      if (v11)
      {
        v7 = *v33[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*v33[2] != v7)
          {
            objc_enumerationMutation(v10);
          }

          v34 = *(v33[1] + 8 * v8);
          [*(*(a1 + 32) + 40) removeObjectForKey:v34];
          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [v10 countByEnumeratingWithState:v33 objects:v51 count:16];
            if (!v9)
            {
              break;
            }
          }
        }
      }

      [*(a1 + 32) initializeAssetManagerServiceConnection];
      v1 = *(*(a1 + 32) + 8);
      v26 = _NSConcreteStackBlock;
      v27 = -1073741824;
      v28 = 0;
      v29 = __46__UARPAssetManagerServiceInstance_primeCache___block_invoke_380;
      v30 = &unk_100036100;
      v31 = *(a1 + 32);
      v32 = [v1 remoteObjectProxyWithErrorHandler:&v26];
      v3 = v32;
      v2 = v44;
      v5 = [*(a1 + 40) assetVersion];
      v4 = [*(a1 + 40) filePath];
      [v3 primeCacheForSubscription:v2 assetVersion:v5 filePath:?];

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v41, 0);
      v45 = 0;
    }

    else
    {
      v43 = *(*(a1 + 32) + 32);
      v42 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_64_8_64(v53, *(a1 + 32), v48);
        _os_log_error_impl(&_mh_execute_header, v43, v42, "%@ Could not create subscription for %@", v53, 0x16u);
      }

      objc_storeStrong(&v43, 0);
      v45 = 1;
    }

    objc_storeStrong(&v44, 0);
  }

  else
  {
    v47 = *(*(a1 + 32) + 32);
    v46 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_64_8_64(v54, *(a1 + 32), *(a1 + 40));
      _os_log_error_impl(&_mh_execute_header, v47, v46, "%@ Could not create personality for %@", v54, 0x16u);
    }

    objc_storeStrong(&v47, 0);
    v45 = 1;
  }

  objc_storeStrong(&v48, 0);
}

void __46__UARPAssetManagerServiceInstance_primeCache___block_invoke_380(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] releaseXPCConnection];
  objc_storeStrong(location, 0);
}

- (void)updateReachabilityForPersonality:(id)personality reachable:(BOOL)reachable
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  reachableCopy = reachable;
  v11 = selfCopy->_log;
  v10 = 16;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    log = v11;
    type = v10;
    v4 = objc_opt_class();
    v7 = NSStringFromClass(v4);
    v9 = v7;
    __os_log_helper_16_2_2_8_64_8_32(v15, v9, "[UARPAssetManagerServiceInstance updateReachabilityForPersonality:reachable:]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v15, 0x16u);

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)updateSettingsForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  v9 = selfCopy->_log;
  v8 = 16;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    log = v9;
    type = v8;
    v3 = objc_opt_class();
    v6 = NSStringFromClass(v3);
    v7 = v6;
    __os_log_helper_16_2_2_8_64_8_32(v12, v7, "[UARPAssetManagerServiceInstance updateSettingsForPersonality:]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v12, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)settingsChangedForSerialNumber:(id)number
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  v9 = selfCopy->_log;
  v8 = 16;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    log = v9;
    type = v8;
    v3 = objc_opt_class();
    v6 = NSStringFromClass(v3);
    v7 = v6;
    __os_log_helper_16_2_2_8_64_8_32(v12, v7, "[UARPAssetManagerServiceInstance settingsChangedForSerialNumber:]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v12, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)assetManagerService
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = self->_log;
  v8 = 16;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_ERROR))
  {
    log = v9[0];
    type = v8;
    v2 = objc_opt_class();
    v6 = NSStringFromClass(v2);
    v7 = v6;
    __os_log_helper_16_2_2_8_64_8_32(v10, v7, "[UARPAssetManagerServiceInstance assetManagerService]");
    _os_log_error_impl(&_mh_execute_header, log, type, "%@ does not provide %s", v10, 0x16u);

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(v9, 0);
  return 0;
}

- (UARPAssetManagerServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end