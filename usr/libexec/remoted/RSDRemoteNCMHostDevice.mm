@interface RSDRemoteNCMHostDevice
- (BOOL)connectable;
- (RSDRemoteNCMHostDevice)initWithGeneratedName;
- (RSDRemoteNCMHostDevice)initWithInterface:(id)interface;
- (RSDRemoteNCMHostDevice)initWithUSBSerialNumber:(const __CFString *)number;
- (uint64_t)tlsRequirement;
- (void)attach;
- (void)connected;
- (void)disconnect;
- (void)needsConnect;
- (void)setSuspended:(BOOL)suspended;
- (void)setupConnectionTimer;
@end

@implementation RSDRemoteNCMHostDevice

- (RSDRemoteNCMHostDevice)initWithGeneratedName
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v8 = v3;
  v4 = dword_100063C80++;
  snprintf(__str, 0x20uLL, "ncm-%d", v4);
  v6.receiver = self;
  v6.super_class = RSDRemoteNCMHostDevice;
  return [(RSDRemoteDevice *)&v6 initWithName:__str];
}

- (RSDRemoteNCMHostDevice)initWithUSBSerialNumber:(const __CFString *)number
{
  numberCopy = number;
  v5 = [qword_1000643B8 objectForKeyedSubscript:numberCopy];
  v6 = v5;
  if (v5)
  {
    uTF8String = [v5 UTF8String];
    v8 = qword_1000643A8;
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v16 = uTF8String;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Using previously allocated name %{public}s", buf, 0xCu);
    }

    v14.receiver = self;
    v14.super_class = RSDRemoteNCMHostDevice;
    v9 = [(RSDRemoteDevice *)&v14 initWithName:uTF8String];
  }

  else
  {
    v10 = qword_1000643A8;
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "New device attached, allocating name", buf, 2u);
    }

    initWithGeneratedName = [(RSDRemoteNCMHostDevice *)self initWithGeneratedName];
    v9 = initWithGeneratedName;
    if (initWithGeneratedName)
    {
      v12 = [NSString stringWithCString:[(RSDRemoteDevice *)initWithGeneratedName device_name] encoding:4];
      [qword_1000643B8 setObject:v12 forKeyedSubscript:numberCopy];
    }
  }

  return v9;
}

- (RSDRemoteNCMHostDevice)initWithInterface:(id)interface
{
  interfaceCopy = interface;
  cf = 0;
  v5 = sub_100012D28([interfaceCopy service], &cf);
  v6 = qword_1000643A8;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = cf;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "USB Serial Number: %{public}@", buf, 0xCu);
    }

    initWithGeneratedName = [(RSDRemoteNCMHostDevice *)self initWithUSBSerialNumber:cf];
    CFRelease(cf);
    if (initWithGeneratedName)
    {
LABEL_5:
      [(RSDRemoteNCMDevice *)initWithGeneratedName setInterface:interfaceCopy];
      initWithGeneratedName->fd = -1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
    {
      sub_10003C45C(v6);
    }

    initWithGeneratedName = [(RSDRemoteNCMHostDevice *)self initWithGeneratedName];
    if (initWithGeneratedName)
    {
      goto LABEL_5;
    }
  }

  return initWithGeneratedName;
}

- (void)attach
{
  v5.receiver = self;
  v5.super_class = RSDRemoteNCMHostDevice;
  [(RSDRemoteDevice *)&v5 attach];
  interface = [(RSDRemoteNCMDevice *)self interface];
  is_private = [interface is_private];

  if ((is_private & 1) == 0)
  {
    [(RSDRemoteNCMHostDevice *)self setupConnectionTimer];
  }
}

- (void)setupConnectionTimer
{
  if (self->connection_timer)
  {
    sub_10003C4A0(&v7, v8);
  }

  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_1000643A0);
  connection_timer = self->connection_timer;
  self->connection_timer = v3;

  dispatch_source_set_timer(self->connection_timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  v5 = self->connection_timer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100011A34;
  handler[3] = &unk_10005D130;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  dispatch_resume(self->connection_timer);
}

- (void)needsConnect
{
  v3 = qword_1000643A8;
  if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", buf, 0xCu);
  }

  connection = [(RSDRemoteDevice *)self connection];

  if (connection)
  {
    v5 = qword_1000643A8;
    if (!os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138543362;
    *&buf[4] = self;
    v6 = "%{public}@> already have a connection, skip";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    return;
  }

  interface = [(RSDRemoteNCMDevice *)self interface];
  state = [interface state];

  if (state != 2)
  {
    v5 = qword_1000643A8;
    if (!os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 138543362;
    *&buf[4] = self;
    v6 = "%{public}@> NCM interface not ready";
    goto LABEL_17;
  }

  if (*[(RSDRemoteNCMDevice *)self local_address]|| *([(RSDRemoteNCMDevice *)self local_address]+ 1) || *([(RSDRemoteNCMDevice *)self local_address]+ 2) || *([(RSDRemoteNCMDevice *)self local_address]+ 3))
  {
    interface2 = [(RSDRemoteNCMDevice *)self interface];
    is_private = [interface2 is_private];

    if ((is_private & 1) == 0)
    {
      bonjour_service = nw_endpoint_create_bonjour_service("ncm", "_remoted._tcp", "local.");
      [(RSDRemoteNCMDevice *)self setEndpoint:bonjour_service];

      endpoint = [(RSDRemoteNCMDevice *)self endpoint];
      if (!endpoint)
      {
        sub_10003C6DC(&v38, buf);
      }

      interface3 = [(RSDRemoteNCMDevice *)self interface];
      v14 = sub_100031974([interface3 index]);

      if (v14)
      {
        v15 = nw_parameters_copy_required_interface(v14);
        name = nw_interface_get_name(v15);
        interface4 = [(RSDRemoteNCMDevice *)self interface];
        v18 = strncmp(name, [interface4 name], 0x10uLL);

        if (v18)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          *buf = 0u;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          interface5 = [(RSDRemoteNCMDevice *)self interface];
          [interface5 name];
          _os_log_send_and_compose_impl();

          _os_crash_msg();
          __break(1u);
          return;
        }

        endpoint2 = [(RSDRemoteNCMDevice *)self endpoint];
        v20 = nw_connection_create(endpoint2, v14);

        v21 = v20;
        if (!v21)
        {
          sub_10003C624(&v38, buf);
        }

        v22 = v21;

        xpc_remote_connection_get_failsafe_version_flags();
        v23 = xpc_remote_connection_create_with_nw_connection();
        if (!v23)
        {
          sub_10003C5B0(&v38, buf);
        }

        v24 = v23;

        [(RSDRemoteDevice *)self connect:v24];
        connection_timer = self->connection_timer;
        v26 = dispatch_time(0, 20000000000);
        dispatch_source_set_timer(connection_timer, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      else
      {
        v31 = qword_1000643A8;
        if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_FAULT))
        {
          sub_10003C698(v31);
        }
      }

      return;
    }

    if (self->fd != -1)
    {
      v5 = qword_1000643A8;
      if (!os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 138543362;
      *&buf[4] = self;
      v6 = "%{public}@> already connecting, skip";
      goto LABEL_17;
    }

    remote_address = [(RSDRemoteNCMDevice *)self remote_address];
    interface6 = [(RSDRemoteNCMDevice *)self interface];
    v29 = sub_100023C1C(&self->fd, remote_address, 0xE59Fu, [interface6 index], &xmmword_100049E58);

    v30 = qword_1000643A8;
    if (v29)
    {
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_ERROR))
      {
        sub_10003C750();
      }

      [(RSDRemoteDevice *)self connect:0];
    }

    else
    {
      if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%{public}@> network_connect_in6() completed successfully", buf, 0xCu);
      }

      fd = self->fd;
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100012130;
      v36[3] = &unk_10005D420;
      v36[4] = self;
      [(RSDRemoteDevice *)self pollConnect:fd onQueue:qword_1000643A0 withLog:qword_1000643A8 completion:v36];
    }
  }

  else
  {
    v33 = qword_1000643A8;
    if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@> no inet6 assigned, try again later", buf, 0xCu);
    }

    v34 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012128;
    block[3] = &unk_10005D130;
    block[4] = self;
    dispatch_after(v34, qword_1000643A0, block);
  }
}

- (void)disconnect
{
  v3 = qword_1000643A8;
  if (os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> disconnect", buf, 0xCu);
  }

  connection_timer = self->connection_timer;
  if (connection_timer)
  {
    dispatch_source_cancel(connection_timer);
    v5 = self->connection_timer;
    self->connection_timer = 0;
  }

  v6.receiver = self;
  v6.super_class = RSDRemoteNCMHostDevice;
  [(RSDRemoteDevice *)&v6 disconnect];
}

- (void)connected
{
  connection_timer = self->connection_timer;
  if (connection_timer)
  {
    dispatch_source_set_timer(connection_timer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v4.receiver = self;
  v4.super_class = RSDRemoteNCMHostDevice;
  [(RSDRemoteNCMDevice *)&v4 connected];
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
  v5.super_class = RSDRemoteNCMHostDevice;
  return [(RSDRemoteDevice *)&v5 connectable];
}

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended != suspended)
  {
    suspendedCopy = suspended;
    v5 = qword_1000643A8;
    v6 = os_log_type_enabled(qword_1000643A8, OS_LOG_TYPE_INFO);
    if (suspendedCopy)
    {
      if (v6)
      {
        v7 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Suspending", &v7, 0xCu);
      }
    }

    else
    {
      if (v6)
      {
        v7 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@> Resuming", &v7, 0xCu);
      }

      [(RSDRemoteDevice *)self drainPendedRequests];
    }

    self->_suspended = suspendedCopy;
  }
}

- (uint64_t)tlsRequirement
{
  v0 = sub_1000012E4();
  v1 = sub_10001A4AC(v0, @"rsd_ncm_tls_requirement", @"ncm-tls-requirement", 0);

  if (v1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  v3 = sub_1000012E4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_100019E60(v2);
    v5 = &unk_100053A79;
    if (!v1)
    {
      v5 = " by default";
    }

    v7 = 136315394;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "TLS is %s for NCM peers%s", &v7, 0x16u);
  }

  return v2;
}

@end