@interface DMDEventStreamDispatcher
- (DMDEventStreamDispatcher)initWithListeners:(id)a3;
- (void)_dispatchToListenerForKey:(id)a3 inMap:(id)a4 withBlock:(id)a5;
- (void)_registerEventStreamHandlers;
- (void)_registerListener:(id)a3 forKeys:(id)a4 inMap:(id)a5;
@end

@implementation DMDEventStreamDispatcher

- (DMDEventStreamDispatcher)initWithListeners:(id)a3
{
  v22 = a3;
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
    obj = v22;
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
            v18 = [v16 distributedNotificationNames];
            [(DMDEventStreamDispatcher *)v4 _registerListener:v16 forKeys:v18 inMap:v4->_distributedNotificationNameToListenersMap];
          }

          if (objc_opt_respondsToSelector())
          {
            v19 = [v16 notifyMatchingNotifications];
            [(DMDEventStreamDispatcher *)v4 _registerListener:v16 forKeys:v19 inMap:v4->_notifyMatchingNotificationToListenersMap];
          }

          if (objc_opt_respondsToSelector())
          {
            v20 = [v16 managedSettingsGroups];
            [(DMDEventStreamDispatcher *)v4 _registerListener:v16 forKeys:v20 inMap:v4->_managedSettingsGroupsToListenersMap];
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

- (void)_registerListener:(id)a3 forKeys:(id)a4 inMap:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v8;
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
        v15 = v9;
        objc_sync_enter(v15);
        v16 = [v15 objectForKeyedSubscript:{v14, v17}];
        if (!v16)
        {
          v16 = +[NSPointerArray weakObjectsPointerArray];
          [v15 setObject:v16 forKeyedSubscript:v14];
        }

        [v16 addPointer:v7];

        objc_sync_exit(v15);
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)_dispatchToListenerForKey:(id)a3 inMap:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7)
  {
    v10 = v8;
    objc_sync_enter(v10);
    v11 = [v10 objectForKeyedSubscript:v7];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = [v11 allObjects];
    v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v12);
          }

          if (v9)
          {
            v9[2](v9, *(*(&v16 + 1) + 8 * v15));
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }

    objc_sync_exit(v10);
  }
}

@end