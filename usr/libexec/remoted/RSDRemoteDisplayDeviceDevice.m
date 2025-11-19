@interface RSDRemoteDisplayDeviceDevice
- (BOOL)connectable;
- (RSDRemoteDisplayDeviceDevice)initWithGeneratedName;
- (RSDRemoteDisplayDeviceDevice)initWithInterface:(id)a3;
- (void)attach;
- (void)createPortListener;
- (void)disconnect;
- (void)needsConnect;
- (void)setSuspended:(BOOL)a3;
@end

@implementation RSDRemoteDisplayDeviceDevice

- (RSDRemoteDisplayDeviceDevice)initWithGeneratedName
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v8 = v3;
  v4 = dword_100063C90++;
  snprintf(__str, 0x20uLL, "displayhost-%d", v4);
  v6.receiver = self;
  v6.super_class = RSDRemoteDisplayDeviceDevice;
  return [(RSDRemoteDevice *)&v6 initWithName:__str];
}

- (RSDRemoteDisplayDeviceDevice)initWithInterface:(id)a3
{
  v4 = a3;
  v5 = [(RSDRemoteDisplayDeviceDevice *)self initWithGeneratedName];
  v6 = v5;
  if (v5)
  {
    [(RSDRemoteNCMDevice *)v5 setInterface:v4];
    v7 = v6;
  }

  return v6;
}

- (void)attach
{
  v3.receiver = self;
  v3.super_class = RSDRemoteDisplayDeviceDevice;
  [(RSDRemoteDevice *)&v3 attach];
  [(RSDRemoteDisplayDeviceDevice *)self createPortListener];
}

- (void)disconnect
{
  v3 = qword_100064588;
  if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> disconnect", buf, 0xCu);
  }

  if (self->listener_source)
  {
    v4 = qword_100064588;
    if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@> cancelling port listener", buf, 0xCu);
    }

    dispatch_source_cancel(self->listener_source);
  }

  if (self->reestablished_connection)
  {
    xpc_remote_connection_cancel();
  }

  v5.receiver = self;
  v5.super_class = RSDRemoteDisplayDeviceDevice;
  [(RSDRemoteDevice *)&v5 disconnect];
}

- (void)needsConnect
{
  v3 = qword_100064588;
  if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", &v9, 0xCu);
  }

  if (self->reestablished_connection)
  {
    v4 = [(RSDRemoteDevice *)self connection];

    v5 = qword_100064588;
    v6 = os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v9 = 138543362;
        v10 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> wait for current connection to invalidate before applying reestablished connection", &v9, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v9 = 138543362;
        v10 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> Applying re-established connection", &v9, 0xCu);
      }

      reestablished_connection = self->reestablished_connection;
      self->reestablished_connection = 0;
      v8 = reestablished_connection;

      [(RSDRemoteDevice *)self connect:v8];
    }
  }
}

- (void)createPortListener
{
  v3 = qword_100064588;
  if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> create port listener start", buf, 0xCu);
  }

  v18 = -6753;
  v17 = -1;
  v4 = [(RSDRemoteNCMDevice *)self local_address];
  v5 = [(RSDRemoteNCMDevice *)self interface];
  v6 = sub_1000240DC(&v17, v4, &v18, [v5 index], &unk_100049E6C);

  if (v6)
  {
    v7 = qword_100064588;
    if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_ERROR))
    {
      sub_100041938(self, v6, v7);
    }

    v8 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BC08;
    block[3] = &unk_10005D130;
    block[4] = self;
    dispatch_after(v8, qword_100064590, block);
  }

  else
  {
    v9 = dispatch_source_create(&_dispatch_source_type_read, v17, 0, qword_100064590);
    listener_source = self->listener_source;
    self->listener_source = v9;

    v11 = self->listener_source;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002BC58;
    handler[3] = &unk_10005D538;
    v15 = v17;
    handler[4] = self;
    dispatch_source_set_event_handler(v11, handler);
    v12 = self->listener_source;
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(self->listener_source);
    v13 = qword_100064588;
    if (os_log_type_enabled(qword_100064588, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v20 = self;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@> create port listener done", buf, 0xCu);
    }
  }
}

- (BOOL)connectable
{
  if (self->_suspended)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = RSDRemoteDisplayDeviceDevice;
  return [(RSDRemoteDevice *)&v5 connectable];
}

- (void)setSuspended:(BOOL)a3
{
  if (self->_suspended != a3)
  {
    v3 = a3;
    v5 = qword_100064588;
    v6 = os_log_type_enabled(qword_100064588, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v6)
      {
        v7 = 138543362;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Suspending", &v7, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v7 = 138543362;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Resuming", &v7, 0xCu);
      }

      [(RSDRemoteDevice *)self drainPendedRequests];
    }

    self->_suspended = v3;
  }
}

@end