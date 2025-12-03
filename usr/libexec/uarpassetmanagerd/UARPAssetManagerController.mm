@interface UARPAssetManagerController
- (UARPAssetManagerController)initWithIdleTimeout:(int64_t)timeout;
- (id)getAssetURLForPersonality:(id)personality;
- (void)addXPCEventSubscriber:(unint64_t)subscriber withDomain:(id)domain;
- (void)assetAvailabilityUpdateForPersonality:(id)personality assetVersion:(id)version creationDate:(id)date status:(int64_t)status;
- (void)checkAssetAvailabilityForDomain:(id)domain;
- (void)clearAssetCacheForDomain:(id)domain;
- (void)handleXPCEventError:(int)error;
- (void)handleXPCEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)notifySubscribers:(id)subscribers withDomain:(id)domain;
- (void)primeCache:(id)cache;
- (void)removeXPCEventSubscriber:(unint64_t)subscriber;
- (void)setActivityForUARPPeriodicLaunch;
- (void)settingsChangedForSerialNumber:(id)number;
- (void)subscribeForPersonality:(id)personality;
- (void)updateReachabilityForPersonality:(id)personality reachable:(BOOL)reachable;
- (void)updateSettingsForPersonality:(id)personality;
@end

@implementation UARPAssetManagerController

- (UARPAssetManagerController)initWithIdleTimeout:(int64_t)timeout
{
  v35 = a2;
  timeoutCopy = timeout;
  v36 = 0;
  v33.receiver = self;
  v33.super_class = UARPAssetManagerController;
  v36 = [(UARPAssetManagerController *)&v33 init];
  objc_storeStrong(&v36, v36);
  if (v36)
  {
    v36->_idleExitTimeoutSec = timeoutCopy;
    v3 = dispatch_queue_create("com.apple.AsyncAssetManager.queue", 0);
    internalQueue = v36->_internalQueue;
    v36->_internalQueue = v3;

    v5 = [UARPAssetManagerServiceManager alloc];
    v6 = [(UARPAssetManagerServiceManager *)v5 initWithDelegate:v36];
    assetManagerServiceManager = v36->_assetManagerServiceManager;
    v36->_assetManagerServiceManager = v6;

    v8 = os_log_create("com.apple.uarpassetmanager.uarp", "uarpAssetManager");
    log = v36->_log;
    v36->_log = v8;

    v10 = [UARPAssetManagerListener alloc];
    v11 = [(UARPAssetManagerListener *)v10 initWithDelegate:v36];
    assetManagerListener = v36->_assetManagerListener;
    v36->_assetManagerListener = v11;

    v13 = [UARPAssetManagerSettingsListener alloc];
    v14 = [(UARPAssetManagerSettingsListener *)v13 initWithController:v36 dispatchQueue:v36->_internalQueue];
    settingsListener = v36->_settingsListener;
    v36->_settingsListener = v14;

    [(UARPAssetManagerController *)v36 setActivityForUARPPeriodicLaunch];
    v16 = objc_opt_new();
    subscriberTokens = v36->_subscriberTokens;
    v36->_subscriberTokens = v16;

    [kUARPAssetAvailabilityXPCEventName UTF8String];
    v18 = v36->_internalQueue;
    v19 = xpc_event_publisher_create();
    publisher = v36->_publisher;
    v36->_publisher = v19;

    objc_initWeak(&v32, v36);
    v25 = v36->_publisher;
    v26[3] = _NSConcreteStackBlock;
    v27 = -1073741824;
    v28 = 0;
    v29 = __50__UARPAssetManagerController_initWithIdleTimeout___block_invoke;
    v30 = &unk_100035CB8;
    objc_copyWeak(&v31, &v32);
    xpc_event_publisher_set_handler();
    v24 = v36->_publisher;
    objc_copyWeak(v26, &v32);
    xpc_event_publisher_set_error_handler();
    v21 = v36->_publisher;
    xpc_event_publisher_activate();
    objc_destroyWeak(v26);
    objc_destroyWeak(&v31);
    objc_destroyWeak(&v32);
  }

  v23 = v36;
  objc_storeStrong(&v36, 0);
  return v23;
}

void __50__UARPAssetManagerController_initWithIdleTimeout___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, id obj)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleXPCEventWithAction:v8 token:v7 descriptor:location];

  objc_storeStrong(&location, 0);
}

void __50__UARPAssetManagerController_initWithIdleTimeout___block_invoke_2(uint64_t a1, unsigned int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleXPCEventError:a2];
}

- (void)setActivityForUARPPeriodicLaunch
{
  selfCopy = self;
  v9[1] = a2;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = __62__UARPAssetManagerController_setActivityForUARPPeriodicLaunch__block_invoke;
  v7 = &unk_100035D08;
  selfCopy2 = self;
  v9[0] = objc_retainBlock(&v3);
  oslog = selfCopy->_log;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_32(v11, "com.apple.UARPAssetManager.periodicFirmwareCheck");
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Registering Activity handler for = %s", v11, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  xpc_activity_register("com.apple.UARPAssetManager.periodicFirmwareCheck", XPC_ACTIVITY_CHECK_IN, v9[0]);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&selfCopy2, 0);
}

void __62__UARPAssetManagerController_setActivityForUARPPeriodicLaunch__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = a1;
  state = xpc_activity_get_state(location[0]);
  v7 = *(a1[4] + 32);
  v6 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_0_1_8_0(v13, state);
    _os_log_impl(&_mh_execute_header, v7, v6, "UARP Periodic Firmware Check Kicked Off - STATE=%ld", v13, 0xCu);
  }

  objc_storeStrong(&v7, 0);
  if (state)
  {
    if (state == 2)
    {
      v3 = *(a1[4] + 32);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_32_8_32(v11, "[UARPAssetManagerController setActivityForUARPPeriodicLaunch]_block_invoke", "com.apple.UARPAssetManager.periodicFirmwareCheck");
        _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s: Handling RUN state for activity: %s", v11, 0x16u);
      }

      objc_storeStrong(&v3, 0);
      xpc_activity_set_state(location[0], 4);
      [*(a1[4] + 72) checkForUpdate];
      xpc_activity_set_state(location[0], 5);
    }
  }

  else
  {
    oslog = *(a1[4] + 32);
    v4 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_32(v12, "com.apple.UARPAssetManager.periodicFirmwareCheck");
      _os_log_debug_impl(&_mh_execute_header, oslog, v4, "Handling CHECKIN state for activity: %s", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)handleXPCEventError:(int)error
{
  selfCopy = self;
  v6 = a2;
  errorCopy = error;
  oslog = self->_log;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    v3 = xpc_strerror();
    __os_log_helper_16_2_1_8_34(v8, v3);
    _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Received error: %{public}s", v8, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
}

- (void)handleXPCEventWithAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  selfCopy = self;
  v29 = a2;
  actionCopy = action;
  tokenCopy = token;
  location = 0;
  objc_storeStrong(&location, descriptor);
  v25 = selfCopy->_log;
  v24 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_0_1_8_0(v33, tokenCopy);
    _os_log_debug_impl(&_mh_execute_header, v25, v24, "Received event for token=%llu", v33, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  if (actionCopy)
  {
    if (actionCopy == 1)
    {
      oslog = selfCopy->_log;
      v15 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_8_0(v31, tokenCopy);
        _os_log_debug_impl(&_mh_execute_header, oslog, v15, "Remove Subscriber with token=%llu", v31, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      [(UARPAssetManagerController *)selfCopy removeXPCEventSubscriber:tokenCopy];
    }

    else if (actionCopy == 2)
    {
      v14 = selfCopy->_log;
      v13 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v5 = v14;
        v6 = v13;
        __os_log_helper_16_0_0(v12);
        _os_log_debug_impl(&_mh_execute_header, v5, v6, "Received initial barrier", v12, 2u);
      }

      objc_storeStrong(&v14, 0);
    }

LABEL_20:
    v19 = 0;
    goto LABEL_21;
  }

  string = xpc_dictionary_get_string(location, [kUARPAssetAvailabilityXPCEventDomainKey UTF8String]);
  if (string)
  {
    v18 = selfCopy->_log;
    v17 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_32_8_0(v32, string, tokenCopy);
      _os_log_debug_impl(&_mh_execute_header, v18, v17, "Add Subscriber for %s with token=%llu", v32, 0x16u);
    }

    objc_storeStrong(&v18, 0);
    v8 = selfCopy;
    v7 = tokenCopy;
    v9 = [NSString stringWithUTF8String:string];
    [(UARPAssetManagerController *)v8 addXPCEventSubscriber:v7 withDomain:?];

    goto LABEL_20;
  }

  v22 = selfCopy->_log;
  v21 = 16;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v10 = v22;
    v11 = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_error_impl(&_mh_execute_header, v10, v11, "No domain found for registration! Ignoring", v20, 2u);
  }

  objc_storeStrong(&v22, 0);
  v19 = 1;
LABEL_21:
  objc_storeStrong(&location, 0);
}

- (void)addXPCEventSubscriber:(unint64_t)subscriber withDomain:(id)domain
{
  selfCopy = self;
  v11 = a2;
  subscriberCopy = subscriber;
  location = 0;
  objc_storeStrong(&location, domain);
  v8 = selfCopy->_log;
  v7 = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_1_8_66(v13, location);
    _os_log_impl(&_mh_execute_header, v8, v7, "Adding subscriber token for identifier %{public}@", v13, 0xCu);
  }

  objc_storeStrong(&v8, 0);
  v6 = [(NSMutableDictionary *)selfCopy->_subscriberTokens objectForKeyedSubscript:location];
  if (!v6)
  {
    v6 = objc_opt_new();

    [(NSMutableDictionary *)selfCopy->_subscriberTokens setObject:v6 forKeyedSubscript:location];
  }

  v4 = v6;
  v5 = [NSNumber numberWithUnsignedLongLong:subscriberCopy];
  [v4 addObject:?];

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
}

- (void)removeXPCEventSubscriber:(unint64_t)subscriber
{
  selfCopy = self;
  v20 = a2;
  subscriberCopy = subscriber;
  location = self->_log;
  v17 = 1;
  if (os_log_type_enabled(location, OS_LOG_TYPE_INFO))
  {
    log = location;
    type = v17;
    __os_log_helper_16_0_0(v16);
    _os_log_impl(&_mh_execute_header, log, type, "Removing subscriber token", v16, 2u);
  }

  objc_storeStrong(&location, 0);
  memset(__b, 0, sizeof(__b));
  obj = [(NSMutableDictionary *)selfCopy->_subscriberTokens allKeys];
  v10 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v10)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v7);
      v13 = [(NSMutableDictionary *)selfCopy->_subscriberTokens objectForKeyedSubscript:v15];
      if (v13)
      {
        v3 = v13;
        v4 = [NSNumber numberWithUnsignedLongLong:subscriberCopy];
        [v3 removeObject:?];
      }

      objc_storeStrong(&v13, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }
}

- (void)subscribeForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager subscribeForPersonality:location[0]];
  objc_storeStrong(location, 0);
}

- (void)updateReachabilityForPersonality:(id)personality reachable:(BOOL)reachable
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager updateReachabilityForPersonality:location[0] reachable:reachable];
  objc_storeStrong(location, 0);
}

- (void)updateSettingsForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager updateSettingsForPersonality:location[0]];
  objc_storeStrong(location, 0);
}

- (id)getAssetURLForPersonality:(id)personality
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  v4 = [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager checkCacheForPersonality:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)checkAssetAvailabilityForDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager checkAssetAvailabilityForDomain:location[0]];
  objc_storeStrong(location, 0);
}

- (void)clearAssetCacheForDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, domain);
  [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager clearAssetCacheForDomain:location[0]];
  objc_storeStrong(location, 0);
}

- (void)primeCache:(id)cache
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cache);
  [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager primeCache:location[0]];
  objc_storeStrong(location, 0);
}

- (void)notifySubscribers:(id)subscribers withDomain:(id)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subscribers);
  v15 = 0;
  objc_storeStrong(&v15, domain);
  v14 = xpc_copy(location[0]);
  queue = selfCopy->_internalQueue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = __59__UARPAssetManagerController_notifySubscribers_withDomain___block_invoke;
  v10 = &unk_100035D30;
  v11 = selfCopy;
  v12 = v15;
  v13 = v14;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __59__UARPAssetManagerController_notifySubscribers_withDomain___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1[4] + 64) objectForKeyedSubscript:a1[5]];
  if ([location[0] count])
  {
    memset(__b, 0, sizeof(__b));
    obj = location[0];
    v14 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
    if (v14)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v14;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(__b[1] + 8 * v11);
        v19 = *(a1[4] + 32);
        v18 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v7 = v19;
          v8 = v18;
          __os_log_helper_16_2_2_8_66_8_2(v27, a1[6], [v21 unsignedLongLongValue]);
          _os_log_impl(&_mh_execute_header, v7, v8, "Sending notification %{public}@ to %{public}llu", v27, 0x16u);
        }

        objc_storeStrong(&v19, 0);
        v6 = *(a1[4] + 56);
        [v21 unsignedLongLongValue];
        v1 = a1[6];
        if (xpc_event_publisher_fire())
        {
          v16 = *(a1[4] + 32);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v5 = v16;
            v3 = a1[6];
            v4 = [v21 unsignedLongLongValue];
            v2 = xpc_strerror();
            __os_log_helper_16_2_3_8_66_8_2_8_34(v26, v3, v4, v2);
            _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Sending %{public}@ to %{public}llu failed with error: %{public}s", v26, 0x20u);
          }

          objc_storeStrong(&v16, 0);
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    v22 = 0;
  }

  else
  {
    oslog = *(a1[4] + 32);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v29, a1[5]);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "Did not find any subscribers for domain %{public}@", v29, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v22 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)assetAvailabilityUpdateForPersonality:(id)personality assetVersion:(id)version creationDate:(id)date status:(int64_t)status
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, personality);
  v46 = 0;
  objc_storeStrong(&v46, version);
  v45 = 0;
  objc_storeStrong(&v45, date);
  statusCopy = status;
  if (status == 2)
  {
    v39 = 0;
    v37 = 0;
    v23 = [NSKeyedArchiver archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&v37];
    objc_storeStrong(&v39, v37);
    v38 = v23;
    if (v23)
    {
      v34 = xpc_dictionary_create(0, 0, 0);
      key = [kUARPAssetAvailabilityXPCEventPersonalityKey UTF8String];
      v20 = v38;
      v6 = v38;
      bytes = [v20 bytes];
      xpc_dictionary_set_data(v34, key, bytes, [v38 length]);
      uTF8String = [kUARPAssetAvailabilityXPCEventStatusKey UTF8String];
      xpc_dictionary_set_uint64(v34, uTF8String, statusCopy);
      if (!v46)
      {
        goto LABEL_16;
      }

      v33 = 0;
      v31 = 0;
      v19 = [NSKeyedArchiver archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v31];
      objc_storeStrong(&v33, v31);
      v32 = v19;
      if (v19)
      {
        v18 = v34;
        uTF8String2 = [kUARPAssetAvailabilityXPCEventAssetVersionKey UTF8String];
        v15 = v32;
        v8 = v32;
        bytes = [v15 bytes];
        xpc_dictionary_set_data(v18, uTF8String2, bytes, [v32 length]);
        v40 = 0;
      }

      else
      {
        v30 = selfCopy->_log;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_1_8_66(v49, v46);
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Error serializing asset version %{public}@", v49, 0xCu);
        }

        objc_storeStrong(&v30, 0);
        v40 = 1;
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      if (!v40)
      {
LABEL_16:
        if (v45)
        {
          v13 = v34;
          uTF8String3 = [kUARPAssetAvailabilityXPCEventAssetCreationDateKey UTF8String];
          [v45 timeIntervalSince1970];
          xpc_dictionary_set_date(v13, uTF8String3, v9);
        }

        v11 = selfCopy;
        v10 = v34;
        domain = [location[0] domain];
        [(UARPAssetManagerController *)v11 notifySubscribers:v10 withDomain:?];

        v40 = 0;
      }

      objc_storeStrong(&v34, 0);
    }

    else
    {
      v36 = selfCopy->_log;
      v35 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_66(v50, location[0]);
        _os_log_error_impl(&_mh_execute_header, v36, v35, "Error serializing personality %{public}@", v50, 0xCu);
      }

      objc_storeStrong(&v36, 0);
      v40 = 1;
    }

    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  else
  {
    v43 = selfCopy->_log;
    v42 = 16;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      log = v43;
      type = v42;
      v26 = UARPAssetManagerAvailabilityStatusToString();
      v41 = v26;
      __os_log_helper_16_2_1_8_64(v51, v41);
      _os_log_error_impl(&_mh_execute_header, log, type, "Asset lookup failed with status %@, not reporting to client.", v51, 0xCu);

      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v43, 0);
    v40 = 1;
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
}

- (void)settingsChangedForSerialNumber:(id)number
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, number);
  oslog = selfCopy->_log;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Received request for settings changed for %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(UARPAssetManagerServiceManager *)selfCopy->_assetManagerServiceManager settingsChangedForSerialNumber:location[0]];
  objc_storeStrong(location, 0);
}

@end