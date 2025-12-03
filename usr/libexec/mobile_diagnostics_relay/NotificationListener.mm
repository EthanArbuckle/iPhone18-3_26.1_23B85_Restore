@interface NotificationListener
+ (id)sharedInstance;
- (BOOL)registerForNotification:(id)notification callback:(id)callback;
- (NotificationListener)init;
- (int)_tokenForName:(id)name;
- (unint64_t)_stateForToken:(int)token;
- (unint64_t)stateForNotification:(id)notification;
- (void)_executeCallbackForToken:(int)token withState:(unint64_t)state;
- (void)unregisterAll;
@end

@implementation NotificationListener

- (NotificationListener)init
{
  v10.receiver = self;
  v10.super_class = NotificationListener;
  v2 = [(MDRBaseObject *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    tokensByName = v2->_tokensByName;
    v2->_tokensByName = v3;

    v5 = +[NSMutableDictionary dictionary];
    tokenMap = v2->_tokenMap;
    v2->_tokenMap = v5;

    v7 = dispatch_queue_create("com.apple.MDR.notifyQ", 0);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (qword_100026500 != -1)
  {
    sub_100013630();
  }

  v3 = qword_1000264F8;

  return v3;
}

- (int)_tokenForName:(id)name
{
  nameCopy = name;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008474;
  block[3] = &unk_100020A80;
  block[4] = self;
  v6 = nameCopy;
  v12 = v6;
  v13 = &v15;
  v14 = &v19;
  dispatch_sync(queue, block);
  if (*(v20 + 6))
  {
    v7 = [NSString stringWithFormat:@"notify_register_check failed: %lu", *(v20 + 6)];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      sub_100013644(v7, logger);
    }

    v9 = -1;
  }

  else
  {
    v9 = *(v16 + 6);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

- (unint64_t)_stateForToken:(int)token
{
  if (token < 0)
  {
    return 0;
  }

  for (i = 1; ; i = 0)
  {
    v6 = i;
    state64 = 0;
    state = notify_get_state(token, &state64);
    if (!state)
    {
      break;
    }

    state = [NSString stringWithFormat:@"notify_get_state failed: %lu", state];
    logger = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[NotificationListener _stateForToken:]";
      v14 = 2114;
      v15 = state;
      _os_log_error_impl(&_mh_execute_header, logger, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
    }

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  return state64;
}

- (unint64_t)stateForNotification:(id)notification
{
  v4 = [(NotificationListener *)self _tokenForName:notification];

  return [(NotificationListener *)self _stateForToken:v4];
}

- (void)_executeCallbackForToken:(int)token withState:(unint64_t)state
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008864;
  block[3] = &unk_100020AA8;
  tokenCopy = token;
  block[4] = self;
  block[5] = state;
  dispatch_sync(queue, block);
}

- (BOOL)registerForNotification:(id)notification callback:(id)callback
{
  notificationCopy = notification;
  callbackCopy = callback;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NotificationListener *)selfCopy _tokenForName:notificationCopy];
  out_token = v9;
  v10 = [NSString stringWithFormat:@"Register for notification %@ token = %d", notificationCopy, v9];
  logger = [(MDRBaseObject *)selfCopy logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v12 = notificationCopy;
  uTF8String = [notificationCopy UTF8String];
  v14 = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100008BBC;
  handler[3] = &unk_100020AD0;
  handler[4] = selfCopy;
  v15 = notify_register_dispatch(uTF8String, &out_token, v14, handler);

  if (!v15)
  {
    v16 = [NSString stringWithFormat:@"notify_register_dispatch OK"];
    logger2 = [(MDRBaseObject *)selfCopy logger];
    if (os_log_type_enabled(logger2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000136D0(v16, logger2);
    }

    v18 = +[NSValue valueWithPointer:](NSValue, "valueWithPointer:", [callbackCopy copy]);
    tokenMap = selfCopy->_tokenMap;
    v20 = [NSNumber numberWithInt:out_token];
    [(NSMutableDictionary *)tokenMap setObject:v18 forKeyedSubscript:v20];
  }

  objc_sync_exit(selfCopy);

  return v15 == 0;
}

- (void)unregisterAll
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_tokenMap enumerateKeysAndObjectsUsingBlock:&stru_100020B10];
  [(NSMutableDictionary *)selfCopy->_tokenMap removeAllObjects];
  v3 = [NSString stringWithFormat:@"All notifications are unregistered"];
  logger = [(MDRBaseObject *)selfCopy logger];
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

@end