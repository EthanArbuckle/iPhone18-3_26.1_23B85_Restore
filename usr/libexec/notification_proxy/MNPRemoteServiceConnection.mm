@interface MNPRemoteServiceConnection
- (MNPRemoteServiceConnection)initWithConnection:(id)a3;
- (void)dealloc;
- (void)listen;
- (void)sendMessage:(id)a3;
- (void)shutdown;
@end

@implementation MNPRemoteServiceConnection

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MNPRemoteServiceConnection;
  [(MNPRemoteServiceConnection *)&v2 dealloc];
}

- (MNPRemoteServiceConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = MNPRemoteServiceConnection;
  v6 = [(MNPRemoteServiceConnection *)&v15 init];
  if (v6)
  {
    v7 = os_transaction_create();
    transaction = v6->_transaction;
    v6->_transaction = v7;

    objc_storeStrong(&v6->_conn, a3);
    v9 = dispatch_queue_create("com.apple.mobile.notification_proxy_io_queue", 0);
    queue = v6->_queue;
    v6->_queue = v9;

    conn = v6->_conn;
    v12 = v6->_queue;
    xpc_remote_connection_set_target_queue();
    v13 = v6;
  }

  return v6;
}

- (void)sendMessage:(id)a3
{
  v4 = _CFXPCCreateXPCObjectFromCFObject();
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100001C98;
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
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to convert dictionary to XPC message.", buf, 2u);
    }
  }
}

- (void)shutdown
{
  [(MNPRemoteServiceConnection *)self sendMessage:&off_100008820];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001D2C;
  block[3] = &unk_100008350;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)listen
{
  objc_initWeak(&location, self);
  conn = self->_conn;
  objc_copyWeak(&v5, &location);
  xpc_remote_connection_set_event_handler();
  v4 = self->_conn;
  xpc_remote_connection_activate();
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end