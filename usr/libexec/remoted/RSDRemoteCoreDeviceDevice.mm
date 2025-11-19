@interface RSDRemoteCoreDeviceDevice
- (RSDRemoteCoreDeviceDevice)initWithGeneratedName;
- (const)local_address;
- (const)remote_address;
- (unsigned)type;
- (void)attach;
- (void)cancelListener;
- (void)connected;
- (void)dealloc;
- (void)disconnect;
- (void)needsConnect;
@end

@implementation RSDRemoteCoreDeviceDevice

- (unsigned)type
{
  v2 = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];

  if (v2)
  {
    return 10;
  }

  else
  {
    return 13;
  }
}

- (RSDRemoteCoreDeviceDevice)initWithGeneratedName
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v8 = v3;
  v4 = dword_100063C14++;
  snprintf(__str, 0x20uLL, "coredevice-%d", v4);
  v6.receiver = self;
  v6.super_class = RSDRemoteCoreDeviceDevice;
  return [(RSDRemoteDevice *)&v6 initWithName:__str];
}

- (void)attach
{
  [(RSDRemoteDevice *)self setBackendProperty:"InterfaceName" withString:[(RSDRemoteCoreDeviceDevice *)self if_name]];
  if ([(RSDRemoteCoreDeviceDevice *)self if_index])
  {
    [(RSDRemoteDevice *)self setBackendProperty:"InterfaceIndex" withUint:[(RSDRemoteCoreDeviceDevice *)self if_index]];
  }

  [qword_100064330 addObject:self];
  v3.receiver = self;
  v3.super_class = RSDRemoteCoreDeviceDevice;
  [(RSDRemoteDevice *)&v3 attach];
}

- (void)disconnect
{
  v5.receiver = self;
  v5.super_class = RSDRemoteCoreDeviceDevice;
  [(RSDRemoteDevice *)&v5 disconnect];
  v3 = [(RSDRemoteCoreDeviceDevice *)self client_connection];

  if (v3)
  {
    v4 = [(RSDRemoteCoreDeviceDevice *)self client_connection];
    nw_connection_cancel(v4);

    [(RSDRemoteCoreDeviceDevice *)self setClient_connection:0];
  }

  [qword_100064330 removeObject:self];
}

- (void)cancelListener
{
  v3 = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (v3)
  {
    v4 = [(RSDRemoteCoreDeviceDevice *)self server_listener];
    nw_listener_cancel(v4);

    [(RSDRemoteCoreDeviceDevice *)self setServer_listener:0];
  }
}

- (void)dealloc
{
  v3 = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (v3)
  {
    v4 = [(RSDRemoteCoreDeviceDevice *)self server_listener];
    nw_listener_cancel(v4);
  }

  free([(RSDRemoteCoreDeviceDevice *)self if_name]);
  [(RSDRemoteCoreDeviceDevice *)self setIf_name:0];
  [(RSDRemoteCoreDeviceDevice *)self setControl_peer:0];
  [(RSDRemoteCoreDeviceDevice *)self setClient_endpoint:0];
  [(RSDRemoteCoreDeviceDevice *)self setServer_listener:0];
  v5.receiver = self;
  v5.super_class = RSDRemoteCoreDeviceDevice;
  [(RSDRemoteDevice *)&v5 dealloc];
}

- (void)connected
{
  v3 = [(RSDRemoteDevice *)self connection];
  v4 = xpc_remote_connection_copy_remote_endpoint();
  [(RSDRemoteCoreDeviceDevice *)self setAddress_endpoint:v4];

  v5 = [(RSDRemoteCoreDeviceDevice *)self address_endpoint];

  if (!v5)
  {
    v6 = sub_100004B08();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100038450();
    }
  }
}

- (void)needsConnect
{
  v3 = sub_100004B08();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", &v14, 0xCu);
  }

  v4 = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (v4)
  {
    v5 = [(RSDRemoteCoreDeviceDevice *)self client_connection];

    v6 = sub_100004B08();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        v14 = 138543362;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> server using established client connection", &v14, 0xCu);
      }

      v8 = [(RSDRemoteCoreDeviceDevice *)self client_connection];
      [(RSDRemoteCoreDeviceDevice *)self setClient_connection:0];
      if (v8)
      {
LABEL_8:
        xpc_remote_connection_get_failsafe_version_flags();
        v9 = xpc_remote_connection_create_with_nw_connection();
LABEL_16:
        [(RSDRemoteDevice *)self connect:v9];

LABEL_17:
        return;
      }

LABEL_15:
      v9 = 0;
      goto LABEL_16;
    }

    if (v7)
    {
      v14 = 138543362;
      v15 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> server waiting for connection from client", &v14, 0xCu);
    }
  }

  else
  {
    v10 = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];

    v11 = sub_100004B08();
    v6 = v11;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> client connecting to remote remoted", &v14, 0xCu);
      }

      v14 = 0;
      v9 = sub_100004E28([(RSDRemoteCoreDeviceDevice *)self if_name], 2, &v14);
      if (!v9 || !v14)
      {
        v13 = sub_100004B08();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_100038498();
        }

        goto LABEL_17;
      }

      [(RSDRemoteCoreDeviceDevice *)self setIf_index:?];
      v12 = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];
      v8 = nw_connection_create(v12, v9);

      if (v8)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1000384CC();
    }
  }
}

- (const)local_address
{
  p_local_address_storage = &self->local_address_storage;
  if (!self->local_address_storage.__u6_addr32[0] && !self->local_address_storage.__u6_addr32[1] && !self->local_address_storage.__u6_addr32[2] && !self->local_address_storage.__u6_addr32[3] && sub_1000244F8([(RSDRemoteCoreDeviceDevice *)self if_name], p_local_address_storage, 0))
  {
    v3 = sub_100004B08();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000385EC();
    }
  }

  return p_local_address_storage;
}

- (const)remote_address
{
  v2 = [(RSDRemoteCoreDeviceDevice *)self address_endpoint];
  address = nw_endpoint_get_address(v2);

  return &address->sa_data[6];
}

@end