@interface NDStatusMonitor
+ (id)sharedMonitor;
- (NDStatusMonitor)init;
- (void)dealloc;
- (void)handleBetterNetworkEvent;
- (void)performCallbackAfterNetworkChangedEvent:(id)a3 identifier:(unint64_t)a4 delay:(int64_t)a5;
- (void)performCallbackAfterNetworkChangedEvent:(id)a3 identifier:(unint64_t)a4 numberOfPreviousRetries:(unint64_t)a5;
- (void)simulateNetworkChangedEvent:(id)a3 identifier:(unint64_t)a4;
- (void)start;
- (void)startMonitoringDynamicStore;
- (void)stop;
- (void)stopMonitoringDynamicStore;
@end

@implementation NDStatusMonitor

+ (id)sharedMonitor
{
  if (qword_1000EB120 != -1)
  {
    dispatch_once(&qword_1000EB120, &stru_1000D54D0);
  }

  v3 = qword_1000EB128;

  return v3;
}

- (void)stop
{
  symptomToken = self->_symptomToken;
  if (symptomToken)
  {
    notify_cancel(symptomToken);
    self->_symptomToken = 0;
  }
}

- (void)start
{
  queue = self->_queue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10003FE14;
  handler[3] = &unk_1000D5E40;
  handler[4] = self;
  notify_register_dispatch("com.apple.symptoms.managed_events.joined-known-good-network", &self->_symptomToken, queue, handler);
}

- (void)stopMonitoringDynamicStore
{
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    SCDynamicStoreSetDispatchQueue(dynamicStore, 0);
  }
}

- (void)startMonitoringDynamicStore
{
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    goto LABEL_10;
  }

  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  v4 = SCDynamicStoreCreate(0, @"com.apple.nsurlsessiond", sub_1000400B8, &context);
  if (v4)
  {
    NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
    v6 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv6);
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv4);
    v8 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetIPv6);
    Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    v10 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    CFArrayAppendValue(Mutable, NetworkGlobalEntity);
    CFArrayAppendValue(Mutable, v6);
    CFArrayAppendValue(v10, NetworkInterfaceEntity);
    CFArrayAppendValue(v10, v8);
    if (SCDynamicStoreSetNotificationKeys(v4, Mutable, v10))
    {
      self->_dynamicStore = v4;
    }

    else
    {
      v11 = qword_1000EB210;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = SCError();
        v13 = SCErrorString(v12);
        v14 = SCError();
        *buf = 136315394;
        v17 = v13;
        v18 = 1024;
        v19 = v14;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SCDynamicStoreSetNotificationKeys failed: %s [%d]", buf, 0x12u);
      }

      CFRelease(v4);
    }

    CFRelease(NetworkGlobalEntity);
    CFRelease(v6);
    CFRelease(NetworkInterfaceEntity);
    CFRelease(v8);
    CFRelease(Mutable);
    CFRelease(v10);
  }

  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
LABEL_10:
    SCDynamicStoreSetDispatchQueue(dynamicStore, self->_queue);
  }
}

- (void)handleBetterNetworkEvent
{
  v3 = qword_1000EB210;
  if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received symptom that we may be on a better network", buf, 2u);
  }

  if ([(NSMutableSet *)self->_clients count])
  {
    v4 = qword_1000EB210;
    if (os_log_type_enabled(qword_1000EB210, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "executing blocks waiting for network change", buf, 2u);
    }

    v5 = self->_clients;
    v6 = objc_alloc_init(NSMutableSet);
    clients = self->_clients;
    self->_clients = v6;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          [v12 voucher];
          objc_claimAutoreleasedReturnValue();

          v13 = [v12 client];
          [v13 statusMonitor:self callbackForIdentifier:objc_msgSend(v12 networkChanged:{"identifier"), 1}];
        }

        v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v9);
    }

    symptom_create();
    symptom_send();
  }
}

- (void)simulateNetworkChangedEvent:(id)a3 identifier:(unint64_t)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000403B0;
  block[3] = &unk_1000D6448;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)performCallbackAfterNetworkChangedEvent:(id)a3 identifier:(unint64_t)a4 delay:(int64_t)a5
{
  v8 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100040560;
  v11[3] = &unk_1000D54F8;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)performCallbackAfterNetworkChangedEvent:(id)a3 identifier:(unint64_t)a4 numberOfPreviousRetries:(unint64_t)a5
{
  v8 = exp2(a5);

  [(NDStatusMonitor *)self performCallbackAfterNetworkChangedEvent:a3 identifier:a4 delay:(v8 * 900.0)];
}

- (void)dealloc
{
  [(NDStatusMonitor *)self stop];
  dynamicStore = self->_dynamicStore;
  if (dynamicStore)
  {
    CFRelease(dynamicStore);
  }

  v4.receiver = self;
  v4.super_class = NDStatusMonitor;
  [(NDStatusMonitor *)&v4 dealloc];
}

- (NDStatusMonitor)init
{
  v10.receiver = self;
  v10.super_class = NDStatusMonitor;
  v2 = [(NDStatusMonitor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    clients = v2->_clients;
    v2->_clients = v3;

    v2->_networkChangeEventCount = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.nsurlsessiond.status-monitor", v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

@end