@interface DMDEventStreamDispatcher
- (DMDEventStreamDispatcher)initWithListeners:(id)listeners;
- (void)_dispatchToListenerForKey:(id)key inMap:(id)map withBlock:(id)block;
- (void)_registerEventStreamHandlers;
- (void)_registerListener:(id)listener forKeys:(id)keys inMap:(id)map;
@end

@implementation DMDEventStreamDispatcher

- (DMDEventStreamDispatcher)initWithListeners:(id)listeners
{
  listenersCopy = listeners;
  v28.receiver = self;
  v28.super_class = DMDEventStreamDispatcher;
  v4 = [(DMDEventStreamDispatcher *)&v28 init];
  if (v4)
  {
    v5 = +[NSPointerArray weakObjectsPointerArray];
    alarmListeners = v4->_alarmListeners;
    v4->_alarmListeners = v5;

    v7 = objc_opt_new();
    distributedNotificationNameToListenersMap = v4->_distributedNotificationNameToListenersMap;
    v4->_distributedNotificationNameToListenersMap = v7;

    v9 = objc_opt_new();
    notifyMatchingNotificationToListenersMap = v4->_notifyMatchingNotificationToListenersMap;
    v4->_notifyMatchingNotificationToListenersMap = v9;

    v11 = objc_opt_new();
    managedSettingsGroupsToListenersMap = v4->_managedSettingsGroupsToListenersMap;
    v4->_managedSettingsGroupsToListenersMap = v11;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = listenersCopy;
    v13 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = *v25;
      do
      {
        v15 = 0;
        do
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v24 + 1) + 8 * v15);
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 alarms])
          {
            v17 = v4->_alarmListeners;
            objc_sync_enter(v17);
            [(NSPointerArray *)v4->_alarmListeners addPointer:v16];
            objc_sync_exit(v17);
          }

          if (objc_opt_respondsToSelector())
          {
            distributedNotificationNames = [v16 distributedNotificationNames];
            [(DMDEventStreamDispatcher *)v4 _registerListener:v16 forKeys:distributedNotificationNames inMap:v4->_distributedNotificationNameToListenersMap];
          }

          if (objc_opt_respondsToSelector())
          {
            notifyMatchingNotifications = [v16 notifyMatchingNotifications];
            [(DMDEventStreamDispatcher *)v4 _registerListener:v16 forKeys:notifyMatchingNotifications inMap:v4->_notifyMatchingNotificationToListenersMap];
          }

          if (objc_opt_respondsToSelector())
          {
            managedSettingsGroups = [v16 managedSettingsGroups];
            [(DMDEventStreamDispatcher *)v4 _registerListener:v16 forKeys:managedSettingsGroups inMap:v4->_managedSettingsGroupsToListenersMap];
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }

    [(DMDEventStreamDispatcher *)v4 _registerEventStreamHandlers];
  }

  return v4;
}

- (void)_registerEventStreamHandlers
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100042738;
  block[3] = &unk_1000CE5A0;
  block[4] = self;
  if (qword_1000FF0D8 != -1)
  {
    dispatch_once(&qword_1000FF0D8, block);
  }
}

- (void)_registerListener:(id)listener forKeys:(id)keys inMap:(id)map
{
  listenerCopy = listener;
  keysCopy = keys;
  mapCopy = map;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = keysCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = mapCopy;
        objc_sync_enter(v15);
        v16 = [v15 objectForKeyedSubscript:{v14, v17}];
        if (!v16)
        {
          v16 = +[NSPointerArray weakObjectsPointerArray];
          [v15 setObject:v16 forKeyedSubscript:v14];
        }

        [v16 addPointer:listenerCopy];

        objc_sync_exit(v15);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)_dispatchToListenerForKey:(id)key inMap:(id)map withBlock:(id)block
{
  keyCopy = key;
  mapCopy = map;
  blockCopy = block;
  if (keyCopy)
  {
    v10 = mapCopy;
    objc_sync_enter(v10);
    v11 = [v10 objectForKeyedSubscript:keyCopy];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allObjects = [v11 allObjects];
    v13 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v13)
    {
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(allObjects);
          }

          if (blockCopy)
          {
            blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * v15));
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [allObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }

    objc_sync_exit(v10);
  }
}

@end