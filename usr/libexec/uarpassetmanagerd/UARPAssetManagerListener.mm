@interface UARPAssetManagerListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)xpcConnectionHasEntitlement:(id)a3;
- (UARPAssetManagerListener)initWithDelegate:(id)a3;
- (void)checkAssetAvailabilityForDomain:(id)a3;
- (void)clearAssetCacheForDomain:(id)a3;
- (void)dealloc;
- (void)getAssetURLForPersonality:(id)a3 reply:(id)a4;
- (void)getSandboxExtensionTokenForAssetURL:(id)a3 reply:(id)a4;
- (void)getSupplementalAssetURLForPersonality:(id)a3 supplementalAsset:(id)a4 reply:(id)a5;
- (void)primeCache:(id)a3;
- (void)subscribeForPersonality:(id)a3;
- (void)updateReachabilityForPersonality:(id)a3 reachable:(BOOL)a4;
- (void)updateSettingsForPersonality:(id)a3;
@end

@implementation UARPAssetManagerListener

- (UARPAssetManagerListener)initWithDelegate:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v15;
  v15 = 0;
  v13.receiver = v3;
  v13.super_class = UARPAssetManagerListener;
  v15 = [(UARPAssetManagerListener *)&v13 init];
  objc_storeStrong(&v15, v15);
  if (v15)
  {
    objc_storeStrong(&v15->_delegate, location[0]);
    v4 = dispatch_queue_create("com.apple.AssetManagerListener.queue", 0);
    internalQueue = v15->_internalQueue;
    v15->_internalQueue = v4;

    v6 = os_log_create("com.apple.uarpassetmanager.uarp", "uarpAssetManager");
    xpcLog = v15->_xpcLog;
    v15->_xpcLog = v6;

    v8 = [NSXPCListener alloc];
    v9 = [v8 initWithMachServiceName:kUarpAssetManagerXpcServiceName];
    listener = v15->_listener;
    v15->_listener = v9;

    [(NSXPCListener *)v15->_listener setDelegate:v15];
    [(NSXPCListener *)v15->_listener resume];
  }

  v12 = v15;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v15, 0);
  return v12;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(NSXPCListener *)self->_listener invalidate];
  v2.receiver = v4;
  v2.super_class = UARPAssetManagerListener;
  [(UARPAssetManagerListener *)&v2 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v15 = 0;
  v16 = &v15;
  v17 = 0x20000000;
  v18 = 32;
  v19 = 0;
  queue = v22->_internalQueue;
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = __63__UARPAssetManagerListener_listener_shouldAcceptNewConnection___block_invoke;
  v12 = &unk_100035D80;
  v13 = v22;
  v14[0] = v20;
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

void __63__UARPAssetManagerListener_listener_shouldAcceptNewConnection___block_invoke(NSObject *a1)
{
  location[2] = a1;
  location[1] = a1;
  if ([(objc_class *)a1[4].isa xpcConnectionHasEntitlement:a1[5].isa])
  {
    v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UARPAsyncAssetManagerXPCProvider];
    [(objc_class *)a1[5].isa setExportedInterface:?];

    [(objc_class *)a1[5].isa setExportedObject:a1[4].isa];
    v19 = [(objc_class *)a1[5].isa processIdentifier];
    objc_initWeak(&from, a1[4].isa);
    v11 = _NSConcreteStackBlock;
    v12 = -1073741824;
    v13 = 0;
    v14 = __63__UARPAssetManagerListener_listener_shouldAcceptNewConnection___block_invoke_67;
    v15 = &unk_100035D58;
    objc_copyWeak(&v16, &from);
    v17 = v19;
    [(objc_class *)a1[5].isa setInterruptionHandler:&v11];
    v4 = _NSConcreteStackBlock;
    v5 = -1073741824;
    v6 = 0;
    v7 = __63__UARPAssetManagerListener_listener_shouldAcceptNewConnection___block_invoke_69;
    v8 = &unk_100035D58;
    objc_copyWeak(&v9, &from);
    v10 = v19;
    [(objc_class *)a1[5].isa setInvalidationHandler:&v4];
    [(objc_class *)a1[5].isa _setQueue:*(a1[4].isa + 4)];
    [(objc_class *)a1[5].isa resume];
    oslog = *(a1[4].isa + 3);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v22, [(objc_class *)a1[5].isa processIdentifier]);
      _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "New connection from PID %d", v22, 8u);
    }

    objc_storeStrong(&oslog, 0);
    *(*(a1[6].isa + 1) + 24) = 1;
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&from);
  }

  else
  {
    location[0] = *(a1[4].isa + 3);
    v20 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_2(v23, [(objc_class *)a1[5].isa processIdentifier]);
      _os_log_error_impl(&_mh_execute_header, location[0], v20, "Client connection from PID %{public}d not entitled", v23, 8u);
    }

    objc_storeStrong(location, 0);
  }
}

void __63__UARPAssetManagerListener_listener_shouldAcceptNewConnection___block_invoke_67(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  oslog = *(location[0] + 3);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_0_1_4_0(v4, *(a1 + 40));
    _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Connection to PID %d interrupted", v4, 8u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

void __63__UARPAssetManagerListener_listener_shouldAcceptNewConnection___block_invoke_69(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  oslog = *(location[0] + 3);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_4_0(v4, *(a1 + 40));
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Connection from PID %d invalidated", v4, 8u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)xpcConnectionHasEntitlement:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] valueForEntitlement:kUarpAssetManagerXpcEntitlement];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 1 && [v6 BOOLValue] == 1)
  {
    v9 = 1;
    v5 = 1;
  }

  else
  {
    oslog = v8->_xpcLog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_1_4_0(v10, [location[0] processIdentifier]);
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Connection from PID %d does not have the correct entitlement", v10, 8u);
    }

    objc_storeStrong(&oslog, 0);
    v9 = 0;
    v5 = 1;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)subscribeForPersonality:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = v5->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v6, "[UARPAssetManagerListener subscribeForPersonality:]", location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(UARPAssetManagerListenerDelegate *)v5->_delegate subscribeForPersonality:location[0]];
  objc_storeStrong(location, 0);
}

- (void)updateReachabilityForPersonality:(id)a3 reachable:(BOOL)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  oslog = v8->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v9, "[UARPAssetManagerListener updateReachabilityForPersonality:reachable:]", location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", v9, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(UARPAssetManagerListenerDelegate *)v8->_delegate updateReachabilityForPersonality:location[0] reachable:v6];
  objc_storeStrong(location, 0);
}

- (void)updateSettingsForPersonality:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = v5->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v6, "[UARPAssetManagerListener updateSettingsForPersonality:]", location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(UARPAssetManagerListenerDelegate *)v5->_delegate updateSettingsForPersonality:location[0]];
  objc_storeStrong(location, 0);
}

- (void)getAssetURLForPersonality:(id)a3 reply:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(UARPAssetManagerListenerDelegate *)v9->_delegate getAssetURLForPersonality:location[0]];
  oslog = v9->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_3_8_32_8_64_8_64(v10, "[UARPAssetManagerListener getAssetURLForPersonality:reply:]", location[0], v6);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", v10, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  (*(v7 + 2))(v7, v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)getSupplementalAssetURLForPersonality:(id)a3 supplementalAsset:(id)a4 reply:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  oslog = v11->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_32(v12, "[UARPAssetManagerListener getSupplementalAssetURLForPersonality:supplementalAsset:reply:]");
    _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "RECEIVED %s: deprecated", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  (*(v8 + 2))(v8, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)getSandboxExtensionTokenForAssetURL:(id)a3 reply:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [UARPSandboxExtension readTokenStringWithURL:location[0]];
  oslog = v9->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_3_8_32_8_64_8_64(v10, "[UARPAssetManagerListener getSandboxExtensionTokenForAssetURL:reply:]", location[0], v6);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@, returning %@", v10, 0x20u);
  }

  objc_storeStrong(&oslog, 0);
  (*(v7 + 2))(v7, v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)checkAssetAvailabilityForDomain:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = v5->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v6, "[UARPAssetManagerListener checkAssetAvailabilityForDomain:]", location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(UARPAssetManagerListenerDelegate *)v5->_delegate checkAssetAvailabilityForDomain:location[0]];
  objc_storeStrong(location, 0);
}

- (void)clearAssetCacheForDomain:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = v5->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v6, "[UARPAssetManagerListener clearAssetCacheForDomain:]", location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(UARPAssetManagerListenerDelegate *)v5->_delegate clearAssetCacheForDomain:location[0]];
  objc_storeStrong(location, 0);
}

- (void)primeCache:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  oslog = v5->_xpcLog;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_64(v6, "[UARPAssetManagerListener primeCache:]", location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "RECEIVED %s: %@", v6, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  [(UARPAssetManagerListenerDelegate *)v5->_delegate primeCache:location[0]];
  objc_storeStrong(location, 0);
}

@end