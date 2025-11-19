@interface MNPLockdownConnection
- (MNPLockdownConnection)initWithConnection:(_lockdown_connection *)a3;
- (void)dealloc;
- (void)listen;
- (void)sendMessage:(id)a3;
- (void)shutdown;
@end

@implementation MNPLockdownConnection

- (void)dealloc
{
  conn = self->_conn;
  lockdown_disconnect();
  v4.receiver = self;
  v4.super_class = MNPLockdownConnection;
  [(MNPLockdownConnection *)&v4 dealloc];
}

- (MNPLockdownConnection)initWithConnection:(_lockdown_connection *)a3
{
  v12.receiver = self;
  v12.super_class = MNPLockdownConnection;
  v4 = [(MNPLockdownConnection *)&v12 init];
  if (v4)
  {
    v5 = os_transaction_create();
    transaction = v4->_transaction;
    v4->_transaction = v5;

    v4->_conn = a3;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.mobile.notification_proxy_io_queue", v7);
    queue = v4->_queue;
    v4->_queue = v8;

    v10 = v4;
  }

  return v4;
}

- (void)sendMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100000F38;
    v8[3] = &unk_100008328;
    v8[4] = self;
    v9 = v4;
    dispatch_async(queue, v8);
  }

  else
  {
    v7 = qword_10000C768;
    if (os_log_type_enabled(qword_10000C768, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Invalid input.", buf, 2u);
    }
  }
}

- (void)shutdown
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000010AC;
  block[3] = &unk_100008350;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)listen
{
  objc_initWeak(&location, self);
  v3 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    conn = self->_conn;
    socket = lockdown_get_socket();
    *buf = 67109120;
    v17 = socket;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Lockdown socket: %d", buf, 8u);
  }

  v6 = self->_conn;
  v7 = lockdown_get_socket();
  v8 = dispatch_source_create(&_dispatch_source_type_read, v7, 0, self->_queue);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000013A8;
  handler[3] = &unk_100008378;
  objc_copyWeak(&v14, &location);
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001950;
  v11[3] = &unk_1000083A0;
  objc_copyWeak(&v12, &location);
  dispatch_source_set_cancel_handler(v8, v11);
  source = self->_source;
  self->_source = v8;
  v10 = v8;

  dispatch_resume(v10);
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end