@interface SESDarwinNotificationMonitor
+ (BOOL)registerDelegate:(id)delegate forEvent:(id)event;
+ (id)sharedObject;
- (SESDarwinNotificationMonitor)initWithQueue:(id)queue;
- (void)_handleEvent:(id)event;
@end

@implementation SESDarwinNotificationMonitor

+ (id)sharedObject
{
  if (qword_10050CC20 != -1)
  {
    sub_1003AD1E0();
  }

  v3 = qword_10050CC18;

  return v3;
}

- (SESDarwinNotificationMonitor)initWithQueue:(id)queue
{
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = SESDarwinNotificationMonitor;
  v6 = [(SESDarwinNotificationMonitor *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[NSMapTable strongToWeakObjectsMapTable];
    registeredDelegates = v7->_registeredDelegates;
    v7->_registeredDelegates = v8;

    v10 = objc_opt_new();
    pendingNotificationIdentifiers = v7->_pendingNotificationIdentifiers;
    v7->_pendingNotificationIdentifiers = v10;

    queue = v7->_queue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002DB60;
    handler[3] = &unk_1004C20F8;
    v15 = v7;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", queue, handler);
  }

  return v7;
}

- (void)_handleEvent:(id)event
{
  queue = self->_queue;
  eventCopy = event;
  dispatch_assert_queue_V2(queue);
  string = xpc_dictionary_get_string(eventCopy, _xpc_event_key_name);

  if (string)
  {
    v7 = [NSString stringWithUTF8String:string];
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notification %@ received", &v12, 0xCu);
    }

    v9 = [(NSMapTable *)self->_registeredDelegates objectForKey:v7];
    v10 = v9;
    if (v9)
    {
      [v9 onDarwinNotification:v7];
    }

    else if ([(NSMutableSet *)self->_pendingNotificationIdentifiers count]< 0x65)
    {
      [(NSMutableSet *)self->_pendingNotificationIdentifiers addObject:v7];
    }

    else
    {
      v11 = SESDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Too many notifications received, dropping event %@", &v12, 0xCu);
      }
    }
  }
}

+ (BOOL)registerDelegate:(id)delegate forEvent:(id)event
{
  delegateCopy = delegate;
  eventCopy = event;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = +[SESDarwinNotificationMonitor sharedObject];
  dispatch_assert_queue_not_V2(v7[1]);
  v8 = v7[1];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002DF0C;
  v16[3] = &unk_1004C2120;
  v9 = v7;
  v17 = v9;
  v10 = delegateCopy;
  v18 = v10;
  v11 = eventCopy;
  v19 = v11;
  v20 = &v21;
  dispatch_sync(v8, v16);
  v12 = SESDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v22 + 24);
    *buf = 138543618;
    v26 = v11;
    v27 = 1026;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registered delegate for event %{public}@, pending %{public}d", buf, 0x12u);
  }

  v14 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v14 & 1;
}

@end