@interface NotificationListener
+ (id)sharedInstance;
- (BOOL)registerForNotification:(id)a3 callback:(id)a4;
- (NotificationListener)init;
- (int)_tokenForName:(id)a3;
- (unint64_t)_stateForToken:(int)a3;
- (unint64_t)stateForNotification:(id)a3;
- (void)_executeCallbackForToken:(int)a3 withState:(unint64_t)a4;
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

- (int)_tokenForName:(id)a3
{
  v4 = a3;
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
  v6 = v4;
  v12 = v6;
  v13 = &v15;
  v14 = &v19;
  dispatch_sync(queue, block);
  if (*(v20 + 6))
  {
    v7 = [NSString stringWithFormat:@"notify_register_check failed: %lu", *(v20 + 6)];
    v8 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100013644(v7, v8);
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

- (unint64_t)_stateForToken:(int)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  for (i = 1; ; i = 0)
  {
    v6 = i;
    state64 = 0;
    state = notify_get_state(a3, &state64);
    if (!state)
    {
      break;
    }

    v8 = [NSString stringWithFormat:@"notify_get_state failed: %lu", state];
    v9 = [(MDRBaseObject *)self logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v13 = "[NotificationListener _stateForToken:]";
      v14 = 2114;
      v15 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s: %{public}@", buf, 0x16u);
    }

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  return state64;
}

- (unint64_t)stateForNotification:(id)a3
{
  v4 = [(NotificationListener *)self _tokenForName:a3];

  return [(NotificationListener *)self _stateForToken:v4];
}

- (void)_executeCallbackForToken:(int)a3 withState:(unint64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008864;
  block[3] = &unk_100020AA8;
  v6 = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_sync(queue, block);
}

- (BOOL)registerForNotification:(id)a3 callback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NotificationListener *)v8 _tokenForName:v6];
  out_token = v9;
  v10 = [NSString stringWithFormat:@"Register for notification %@ token = %d", v6, v9];
  v11 = [(MDRBaseObject *)v8 logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v12 = v6;
  v13 = [v6 UTF8String];
  v14 = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100008BBC;
  handler[3] = &unk_100020AD0;
  handler[4] = v8;
  v15 = notify_register_dispatch(v13, &out_token, v14, handler);

  if (!v15)
  {
    v16 = [NSString stringWithFormat:@"notify_register_dispatch OK"];
    v17 = [(MDRBaseObject *)v8 logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000136D0(v16, v17);
    }

    v18 = +[NSValue valueWithPointer:](NSValue, "valueWithPointer:", [v7 copy]);
    tokenMap = v8->_tokenMap;
    v20 = [NSNumber numberWithInt:out_token];
    [(NSMutableDictionary *)tokenMap setObject:v18 forKeyedSubscript:v20];
  }

  objc_sync_exit(v8);

  return v15 == 0;
}

- (void)unregisterAll
{
  v2 = self;
  objc_sync_enter(v2);
  [(NSMutableDictionary *)v2->_tokenMap enumerateKeysAndObjectsUsingBlock:&stru_100020B10];
  [(NSMutableDictionary *)v2->_tokenMap removeAllObjects];
  v3 = [NSString stringWithFormat:@"All notifications are unregistered"];
  v4 = [(MDRBaseObject *)v2 logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v5, 0xCu);
  }

  objc_sync_exit(v2);
}

@end