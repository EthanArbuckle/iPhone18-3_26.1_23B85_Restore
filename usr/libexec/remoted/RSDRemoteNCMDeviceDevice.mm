@interface RSDRemoteNCMDeviceDevice
- (BOOL)isTrusted;
- (RSDRemoteNCMDeviceDevice)initWithGeneratedName;
- (RSDRemoteNCMDeviceDevice)initWithInterface:(id)a3;
- (void)attach;
- (void)createBonjourListener;
- (void)createPortListener;
- (void)disconnect;
- (void)needsConnect;
@end

@implementation RSDRemoteNCMDeviceDevice

- (void)disconnect
{
  v3 = qword_1000643E0;
  if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> disconnect", buf, 0xCu);
  }

  if (self->bonjour_listener)
  {
    v4 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@> cancelling bonjour listener", buf, 0xCu);
    }

    nw_listener_cancel(self->bonjour_listener);
  }

  if (self->listener_source)
  {
    v5 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@> cancelling port listener", buf, 0xCu);
    }

    dispatch_source_cancel(self->listener_source);
  }

  if (self->reestablished_connection)
  {
    xpc_remote_connection_cancel();
  }

  v6.receiver = self;
  v6.super_class = RSDRemoteNCMDeviceDevice;
  [(RSDRemoteDevice *)&v6 disconnect];
}

- (BOOL)isTrusted
{
  if (self->_researchInfraEnforcementDisabled)
  {
    v3 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> Treating ncm host as trusted on research VM", buf, 0xCu);
    }

    return 1;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = RSDRemoteNCMDeviceDevice;
    return [(RSDRemoteDevice *)&v5 isTrusted];
  }
}

- (RSDRemoteNCMDeviceDevice)initWithGeneratedName
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v8 = v3;
  v4 = dword_100063C84++;
  snprintf(__str, 0x20uLL, "ncmhost-%d", v4);
  v6.receiver = self;
  v6.super_class = RSDRemoteNCMDeviceDevice;
  return [(RSDRemoteDevice *)&v6 initWithName:__str];
}

- (RSDRemoteNCMDeviceDevice)initWithInterface:(id)a3
{
  v4 = a3;
  v5 = [(RSDRemoteNCMDeviceDevice *)self initWithGeneratedName];
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
  v5.receiver = self;
  v5.super_class = RSDRemoteNCMDeviceDevice;
  [(RSDRemoteDevice *)&v5 attach];
  if (sub_100031B50())
  {
    [(RSDRemoteNCMDeviceDevice *)self createBonjourListener];
  }

  v3 = [(RSDRemoteNCMDevice *)self interface];
  v4 = [v3 is_private];

  if (v4)
  {
    [(RSDRemoteNCMDeviceDevice *)self createPortListener];
  }
}

- (void)needsConnect
{
  v3 = qword_1000643E0;
  if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", &v9, 0xCu);
  }

  self->_researchInfraEnforcementDisabled = sub_1000035F0(qword_1000643E0);
  if (self->reestablished_connection)
  {
    v4 = [(RSDRemoteDevice *)self connection];

    v5 = qword_1000643E0;
    v6 = os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT);
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

- (void)createBonjourListener
{
  v3 = qword_1000643E0;
  if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138543362;
    *(buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> create bonjour listener start", buf, 0xCu);
  }

  if (*[(RSDRemoteNCMDevice *)self local_address]|| *([(RSDRemoteNCMDevice *)self local_address]+ 1) || *([(RSDRemoteNCMDevice *)self local_address]+ 2) || *([(RSDRemoteNCMDevice *)self local_address]+ 3))
  {
    v4 = [(RSDRemoteNCMDevice *)self interface];
    v5 = sub_100031974([v4 index]);

    if (!v5)
    {
      v19 = qword_1000643E0;
      if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_FAULT))
      {
        sub_10003C698(v19);
      }

      goto LABEL_16;
    }

    v6 = nw_parameters_copy_required_interface(v5);
    name = nw_interface_get_name(v6);
    v8 = [(RSDRemoteNCMDevice *)self interface];
    v9 = strncmp(name, [v8 name], 0x10uLL);

    if (!v9)
    {
      v10 = nw_listener_create(v5);
      bonjour_listener = self->bonjour_listener;
      self->bonjour_listener = v10;

      v12 = self->bonjour_listener;
      if (!v12)
      {
        sub_10003D30C(&v27, buf);
      }

      v13 = nw_advertise_descriptor_create_bonjour_service("ncm", "_remoted._tcp", "local.");
      if (!v13)
      {
        sub_10003D290(&v27, buf);
      }

      v14 = v13;

      nw_advertise_descriptor_set_no_auto_rename(v14, 1);
      nw_listener_set_advertise_descriptor(self->bonjour_listener, v14);
      v15 = self->bonjour_listener;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100014A7C;
      handler[3] = &unk_10005D090;
      handler[4] = self;
      nw_listener_set_new_connection_handler(v15, handler);
      v16 = self->bonjour_listener;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100002058;
      v24[3] = &unk_10005D4E8;
      v24[4] = self;
      nw_listener_set_state_changed_handler(v16, v24);
      v17 = self->bonjour_listener;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100014C74;
      v23[3] = &unk_10005D510;
      v23[4] = self;
      nw_listener_set_advertised_endpoint_changed_handler(v17, v23);
      nw_listener_set_queue(self->bonjour_listener, qword_1000643D8);
      nw_listener_start(self->bonjour_listener);
      v18 = qword_1000643E0;
      if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 138543362;
        *(buf + 4) = self;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@> create bonjour listener done", buf, 0xCu);
      }

LABEL_16:
      return;
    }

    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v22 = [(RSDRemoteNCMDevice *)self interface];
    [v22 name];
    _os_log_send_and_compose_impl();

    _os_crash_msg();
    __break(1u);
  }

  else
  {
    v20 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@> no inet6 assigned, try again later", buf, 0xCu);
    }

    v21 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100014A2C;
    block[3] = &unk_10005D130;
    block[4] = self;
    dispatch_after(v21, qword_1000643D8, block);
  }
}

- (void)createPortListener
{
  v3 = qword_1000643E0;
  if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> create port listener start", buf, 0xCu);
  }

  v16 = -6753;
  v15 = -1;
  v4 = [(RSDRemoteNCMDevice *)self local_address];
  v5 = [(RSDRemoteNCMDevice *)self interface];
  LODWORD(v4) = sub_1000240DC(&v15, v4, &v16, [v5 index], &unk_100049E6C);

  if (v4)
  {
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_ERROR))
    {
      sub_10003D490();
    }

    v6 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100015034;
    block[3] = &unk_10005D130;
    block[4] = self;
    dispatch_after(v6, qword_1000643D8, block);
  }

  else
  {
    v7 = dispatch_source_create(&_dispatch_source_type_read, v15, 0, qword_1000643D8);
    listener_source = self->listener_source;
    self->listener_source = v7;

    v9 = self->listener_source;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100015084;
    handler[3] = &unk_10005D538;
    v13 = v15;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    v10 = self->listener_source;
    dispatch_source_set_mandatory_cancel_handler();
    dispatch_activate(self->listener_source);
    v11 = qword_1000643E0;
    if (os_log_type_enabled(qword_1000643E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@> create port listener done", buf, 0xCu);
    }
  }
}

@end