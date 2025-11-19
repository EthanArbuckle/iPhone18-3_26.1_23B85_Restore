@interface _DASConsoleModeMonitor
+ (id)sharedMonitor;
- (BOOL)queryAndUpdateCurrentConsoleModeState:(id)a3;
- (BOOL)queryConsoleModeState:(unint64_t)a3;
- (_DASConsoleModeMonitor)init;
- (id)registerStateChangeHandler:(id)a3 forConsoleModeType:(unint64_t)a4;
- (void)consoleModeNotificationHandler:(id)a3;
- (void)deregisterStateChangeHandler:(id)a3 forConsoleModeType:(unint64_t)a4;
- (void)registerForConsoleModeChangedNotification;
@end

@implementation _DASConsoleModeMonitor

- (_DASConsoleModeMonitor)init
{
  v30.receiver = self;
  v30.super_class = _DASConsoleModeMonitor;
  v2 = [(_DASConsoleModeMonitor *)&v30 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.duetactivityscheduler.consolemodemonitor.handler", v4);
    handlerQueue = v2->_handlerQueue;
    v2->_handlerQueue = v5;

    v7 = os_log_create("com.apple.duetactivityscheduler", "ConsoleModeMonitor");
    log = v2->_log;
    v2->_log = v7;

    v9 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v9;

    v11 = +[NSMutableDictionary dictionary];
    consoleModeStateMap = v2->_consoleModeStateMap;
    v2->_consoleModeStateMap = v11;

    v13 = +[NSMutableDictionary dictionary];
    notificationMap = v2->_notificationMap;
    v2->_notificationMap = v13;

    [(NSMutableDictionary *)v2->_notificationMap setObject:@"com.apple.system.console_mode_changed" forKeyedSubscript:&off_1001CA2B8];
    [(NSMutableDictionary *)v2->_notificationMap setObject:@"com.apple.system.performance_gaming_mode_changed" forKeyedSubscript:&off_1001CA2D0];
    *&v2->_notifyTokenDefault = -1;
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, QOS_CLASS_UTILITY, 0);
    v17 = dispatch_queue_create("com.apple.duetactivityscheduler.consolemodemonitor.notify", v16);
    notifyQueue = v2->_notifyQueue;
    v2->_notifyQueue = v17;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v19 = [&off_1001CAE10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(&off_1001CAE10);
          }

          v23 = *(*(&v26 + 1) + 8 * v22);
          v24 = +[NSMutableDictionary dictionary];
          [(NSMutableDictionary *)v2->_handlers setObject:v24 forKeyedSubscript:v23];

          [(NSMutableDictionary *)v2->_consoleModeStateMap setObject:&__kCFBooleanFalse forKeyedSubscript:v23];
          [(_DASConsoleModeMonitor *)v2 queryAndUpdateCurrentConsoleModeState:v23];
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [&off_1001CAE10 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }

    [(_DASConsoleModeMonitor *)v2 registerForConsoleModeChangedNotification];
  }

  return v2;
}

+ (id)sharedMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F630;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B698 != -1)
  {
    dispatch_once(&qword_10020B698, block);
  }

  v2 = qword_10020B6A0;

  return v2;
}

- (void)registerForConsoleModeChangedNotification
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_notificationMap;
  v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v12 = *v17;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v16 + 1) + 8 * i);
        if ([v5 unsignedIntValue] == 10)
        {
          v6 = 8;
        }

        else
        {
          v6 = 12;
        }

        objc_initWeak(&location, self);
        v7 = [(NSMutableDictionary *)self->_notificationMap objectForKeyedSubscript:v5];
        v8 = v7;
        v9 = [v7 UTF8String];
        notifyQueue = self->_notifyQueue;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10009F870;
        handler[3] = &unk_1001B79F8;
        objc_copyWeak(&v14, &location);
        handler[4] = v5;
        notify_register_dispatch(v9, (self + v6), notifyQueue, handler);

        objc_destroyWeak(&v14);
        objc_destroyWeak(&location);
      }

      v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }
}

- (void)consoleModeNotificationHandler:(id)a3
{
  v4 = a3;
  if ([(_DASConsoleModeMonitor *)self queryAndUpdateCurrentConsoleModeState:v4])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_10009FB54;
    v26 = sub_10009FB64;
    v27 = 0;
    handlerQueue = self->_handlerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009FB6C;
    block[3] = &unk_1001B5D98;
    v21 = &v22;
    block[4] = self;
    v14 = v4;
    v6 = v4;
    v20 = v6;
    dispatch_sync(handlerQueue, block);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v23[5];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v30 count:16];
    if (v8)
    {
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v6;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Calling handler for %@", buf, 0xCu);
          }

          v13 = [(NSMutableDictionary *)self->_consoleModeStateMap objectForKeyedSubscript:v6];
          (*(v11 + 16))(v11, [v13 BOOLValue]);
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v30 count:16];
      }

      while (v8);
    }

    _Block_object_dispose(&v22, 8);
    v4 = v14;
  }
}

- (BOOL)queryAndUpdateCurrentConsoleModeState:(id)a3
{
  v4 = a3;
  state64 = 0;
  if ([v4 unsignedIntValue] == 10)
  {
    v5 = 8;
  }

  else
  {
    v5 = 12;
  }

  if (*(&self->super.isa + v5) == -1)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1001269A0(log);
    }

    LOBYTE(v12) = 0;
  }

  else
  {
    v6 = [(NSMutableDictionary *)self->_consoleModeStateMap objectForKeyedSubscript:v4];
    v7 = [v6 BOOLValue];

    state = notify_get_state(*(&self->super.isa + v5), &state64);
    v9 = self->_log;
    if (state)
    {
      v10 = state;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100126928(v10, v9);
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v18 = state64;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Console Mode Status is now %llu for %@", buf, 0x16u);
      }

      if (state64)
      {
        v13 = &__kCFBooleanTrue;
      }

      else
      {
        v13 = &__kCFBooleanFalse;
      }

      [(NSMutableDictionary *)self->_consoleModeStateMap setObject:v13 forKeyedSubscript:v4];
    }

    v14 = [(NSMutableDictionary *)self->_consoleModeStateMap objectForKeyedSubscript:v4];
    v12 = v7 ^ [v14 BOOLValue];
  }

  return v12;
}

- (BOOL)queryConsoleModeState:(unint64_t)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  notifyQueue = self->_notifyQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009FE3C;
  block[3] = &unk_1001B7A20;
  block[5] = &v7;
  block[6] = a3;
  block[4] = self;
  dispatch_sync(notifyQueue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)registerStateChangeHandler:(id)a3 forConsoleModeType:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = +[NSUUID UUID];
    handlerQueue = self->_handlerQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009FFEC;
    v13[3] = &unk_1001B7A48;
    v13[4] = self;
    v9 = v7;
    v14 = v9;
    v16 = a4;
    v15 = v6;
    dispatch_sync(handlerQueue, v13);
    v10 = v15;
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)deregisterStateChangeHandler:(id)a3 forConsoleModeType:(unint64_t)a4
{
  v6 = a3;
  handlerQueue = self->_handlerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A01A8;
  block[3] = &unk_1001B5DC0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(handlerQueue, block);
}

@end