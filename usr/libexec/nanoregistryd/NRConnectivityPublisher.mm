@interface NRConnectivityPublisher
+ (id)sharedConnectivityPublisher;
- (BOOL)isConnected;
- (NRConnectivityPublisher)init;
- (int)_registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5;
- (int64_t)getDropoutCounter;
- (unint64_t)_readNotifyToken:(int)a3;
- (void)_readConnectivityStatus;
- (void)_updateNotifyToken:(int)a3 withValue:(unint64_t)a4 withNotificationName:(id)a5;
- (void)_writeConnectivityStatus;
- (void)setConnected:(BOOL)a3;
@end

@implementation NRConnectivityPublisher

+ (id)sharedConnectivityPublisher
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A9254;
  block[3] = &unk_1001756A8;
  block[4] = a1;
  if (qword_1001B39B0 != -1)
  {
    dispatch_once(&qword_1001B39B0, block);
  }

  v2 = qword_1001B39A8;

  return v2;
}

- (NRConnectivityPublisher)init
{
  v7.receiver = self;
  v7.super_class = NRConnectivityPublisher;
  v2 = [(NRConnectivityPublisher *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.nanoregistry.connectivitypublisher", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_dropoutCounterNotifyToken = [(NRConnectivityPublisher *)v2 _registerNotifyTokenWithName:@"com.apple.nanoregistry.dropoutcounter" withQueue:0 withBlock:0];
    [(NRConnectivityPublisher *)v2 _readConnectivityStatus];
  }

  return v2;
}

- (void)setConnected:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A93A8;
  v4[3] = &unk_100176198;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

- (BOOL)isConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A9494;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)getDropoutCounter
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A9554;
  v5[3] = &unk_1001758D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_readConnectivityStatus
{
  v3 = [(NRConnectivityPublisher *)self _readNotifyToken:self->_dropoutCounterNotifyToken];
  self->_connected = v3 >= 0;
  self->_dropoutCounter = v3 & 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_writeConnectivityStatus
{
  v2 = 0x8000000000000000;
  if (self->_connected)
  {
    v2 = 0;
  }

  [(NRConnectivityPublisher *)self _updateNotifyToken:self->_dropoutCounterNotifyToken withValue:v2 | self->_dropoutCounter withNotificationName:@"com.apple.nanoregistry.dropoutcounter"];
}

- (void)_updateNotifyToken:(int)a3 withValue:(unint64_t)a4 withNotificationName:(id)a5
{
  v7 = a5;
  v8 = nr_daemon_log();
  v9 = v8;
  if (a3 == -1)
  {
    v12 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

    if (v12)
    {
      v13 = nr_daemon_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10010269C(v7, v13);
      }
    }
  }

  else
  {
    v10 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v7;
        v16 = 2048;
        v17 = a4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating token %@ with value %lld", &v14, 0x16u);
      }
    }

    notify_set_state(a3, a4);
    notify_post([v7 UTF8String]);
  }
}

- (unint64_t)_readNotifyToken:(int)a3
{
  if (a3 == -1)
  {
    return 0;
  }

  state64 = 0;
  if (notify_get_state(a3, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

- (int)_registerNotifyTokenWithName:(id)a3 withQueue:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  out_token = -1;
  v10 = [v7 UTF8String];
  if (v9)
  {
    if (!notify_register_dispatch(v10, &out_token, v8, v9))
    {
      goto LABEL_9;
    }
  }

  else if (!notify_register_check(v10, &out_token))
  {
    goto LABEL_9;
  }

  v11 = nr_daemon_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = nr_daemon_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to register block and get notify token for %@", buf, 0xCu);
    }
  }

LABEL_9:
  v14 = out_token;

  return v14;
}

@end