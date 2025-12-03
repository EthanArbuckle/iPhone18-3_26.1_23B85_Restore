@interface MONotifier
+ (BOOL)isAvailable;
- (MONotifier)initWithName:(id)name;
- (unint64_t)observerCount;
- (void)notify:(int)notify withPayload:(id)payload;
- (void)notifyAndPersist:(int)persist withPayload:(id)payload;
- (void)registerDispatcher:(id)dispatcher forNotification:(int)notification;
- (void)unregisterDispatcher:(id)dispatcher;
@end

@implementation MONotifier

+ (BOOL)isAvailable
{
  if (isAvailable_pred != -1)
  {
    +[MONotifier isAvailable];
  }

  return isAvailable_available;
}

- (unint64_t)observerCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __27__MONotifier_observerCount__block_invoke;
  v5[3] = &unk_10033C6A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __27__MONotifier_observerCount__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (MONotifier)initWithName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = MONotifier;
  v5 = [(MONotifier *)&v17 init];
  if (v5)
  {
    if (nameCopy && [nameCopy length])
    {
      nameCopy = [NSString stringWithFormat:@"com.apple.momentsd:%@", nameCopy];
    }

    else
    {
      nameCopy = @"com.apple.momentsd:anonymous";
    }

    v5->_enabled = 0;
    v7 = objc_opt_new();
    dispatchers = v5->_dispatchers;
    v5->_dispatchers = v7;

    v9 = objc_opt_new();
    persistedPayload = v5->_persistedPayload;
    v5->_persistedPayload = v9;

    uTF8String = [(__CFString *)nameCopy UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    queue = v5->_queue;
    v5->_queue = v13;

    v15 = v5;
  }

  return v5;
}

- (void)notify:(int)notify withPayload:(id)payload
{
  payloadCopy = payload;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __59__MONotifier_MODerivedNotifierUtility__notify_withPayload___block_invoke;
  block[3] = &unk_10033C6D0;
  block[4] = self;
  v10 = payloadCopy;
  notifyCopy = notify;
  v8 = payloadCopy;
  dispatch_async(queue, block);
}

void __59__MONotifier_MODerivedNotifierUtility__notify_withPayload___block_invoke(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = [*(a1 + 40) copy];
        [v7 onNotification:*(a1 + 48) withPayload:v8];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)notifyAndPersist:(int)persist withPayload:(id)payload
{
  payloadCopy = payload;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __69__MONotifier_MODerivedNotifierUtility__notifyAndPersist_withPayload___block_invoke;
  block[3] = &unk_10033C6D0;
  persistCopy = persist;
  block[4] = self;
  v10 = payloadCopy;
  v8 = payloadCopy;
  dispatch_async(queue, block);
}

void __69__MONotifier_MODerivedNotifierUtility__notifyAndPersist_withPayload___block_invoke(uint64_t a1)
{
  [*(a1 + 32) notify:*(a1 + 48) withPayload:*(a1 + 40)];
  v4 = [*(a1 + 40) copy];
  v2 = *(*(a1 + 32) + 24);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  [v2 setObject:v4 forKey:v3];
}

- (void)registerDispatcher:(id)dispatcher forNotification:(int)notification
{
  dispatcherCopy = dispatcher;
  queue = self->_queue;
  if (!queue)
  {
    v9 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MONotifier(MODispatcherUtility) registerDispatcher:forNotification:];
    }

    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MONotifier.m" lineNumber:117 description:{@"Notifier does not have a dispatch queue - did you init with name ? (in %s:%d)", "-[MONotifier(MODispatcherUtility) registerDispatcher:forNotification:]", 117}];

    queue = self->_queue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__MONotifier_MODispatcherUtility__registerDispatcher_forNotification___block_invoke;
  block[3] = &unk_10033C6D0;
  block[4] = self;
  v13 = dispatcherCopy;
  notificationCopy = notification;
  v11 = dispatcherCopy;
  dispatch_sync(queue, block);
}

void __70__MONotifier_MODispatcherUtility__registerDispatcher_forNotification___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    [*(v3 + 16) addObject:*(a1 + 40)];
    [*(a1 + 32) onObserverCountChange:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
    v4 = [*(*(a1 + 32) + 16) count];
    v3 = *(a1 + 32);
    if (v4)
    {
      if ((*(v3 + 32) & 1) == 0)
      {
        *(v3 + 32) = 1;
        [*(a1 + 32) onEnable];
        v3 = *(a1 + 32);
      }
    }
  }

  v5 = *(v3 + 24);
  v6 = [NSNumber numberWithInt:*(a1 + 48)];
  v9 = [v5 objectForKey:v6];

  v7 = v9;
  if (v9)
  {
    v8 = [v9 copy];
    [*(a1 + 40) onNotification:*(a1 + 48) withPayload:v8];

    v7 = v9;
  }
}

- (void)unregisterDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  queue = self->_queue;
  if (!queue)
  {
    v7 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MONotifier(MODispatcherUtility) unregisterDispatcher:];
    }

    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MONotifier.m" lineNumber:137 description:{@"Notifier does not have a dispatch queue - did you init with name ? (in %s:%d)", "-[MONotifier(MODispatcherUtility) unregisterDispatcher:]", 137}];

    queue = self->_queue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __56__MONotifier_MODispatcherUtility__unregisterDispatcher___block_invoke;
  block[3] = &unk_100335B08;
  block[4] = self;
  v11 = dispatcherCopy;
  v9 = dispatcherCopy;
  dispatch_sync(queue, block);
}

id __56__MONotifier_MODispatcherUtility__unregisterDispatcher___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) containsObject:*(a1 + 40)];
  if (result)
  {
    [*(*(a1 + 32) + 16) removeObject:*(a1 + 40)];
    [*(a1 + 32) onObserverCountChange:{objc_msgSend(*(*(a1 + 32) + 16), "count")}];
    result = [*(*(a1 + 32) + 16) count];
    if (!result)
    {
      v3 = *(a1 + 32);
      if (*(v3 + 32) == 1)
      {
        *(v3 + 32) = 0;
        v4 = *(a1 + 32);

        return [v4 onDisable];
      }
    }
  }

  return result;
}

@end