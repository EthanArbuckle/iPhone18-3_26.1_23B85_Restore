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
  client_endpoint = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];

  if (client_endpoint)
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
  client_connection = [(RSDRemoteCoreDeviceDevice *)self client_connection];

  if (client_connection)
  {
    client_connection2 = [(RSDRemoteCoreDeviceDevice *)self client_connection];
    nw_connection_cancel(client_connection2);

    [(RSDRemoteCoreDeviceDevice *)self setClient_connection:0];
  }

  [qword_100064330 removeObject:self];
}

- (void)cancelListener
{
  server_listener = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (server_listener)
  {
    server_listener2 = [(RSDRemoteCoreDeviceDevice *)self server_listener];
    nw_listener_cancel(server_listener2);

    [(RSDRemoteCoreDeviceDevice *)self setServer_listener:0];
  }
}

- (void)dealloc
{
  server_listener = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (server_listener)
  {
    server_listener2 = [(RSDRemoteCoreDeviceDevice *)self server_listener];
    nw_listener_cancel(server_listener2);
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
  connection = [(RSDRemoteDevice *)self connection];
  v4 = xpc_remote_connection_copy_remote_endpoint();
  [(RSDRemoteCoreDeviceDevice *)self setAddress_endpoint:v4];

  address_endpoint = [(RSDRemoteCoreDeviceDevice *)self address_endpoint];

  if (!address_endpoint)
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
    selfCopy4 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", &v14, 0xCu);
  }

  server_listener = [(RSDRemoteCoreDeviceDevice *)self server_listener];

  if (server_listener)
  {
    client_connection = [(RSDRemoteCoreDeviceDevice *)self client_connection];

    v6 = sub_100004B08();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (client_connection)
    {
      if (v7)
      {
        v14 = 138543362;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> server using established client connection", &v14, 0xCu);
      }

      client_connection2 = [(RSDRemoteCoreDeviceDevice *)self client_connection];
      [(RSDRemoteCoreDeviceDevice *)self setClient_connection:0];
      if (client_connection2)
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
      selfCopy4 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> server waiting for connection from client", &v14, 0xCu);
    }
  }

  else
  {
    client_endpoint = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];

    v11 = sub_100004B08();
    v6 = v11;
    if (client_endpoint)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        selfCopy4 = self;
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
      client_endpoint2 = [(RSDRemoteCoreDeviceDevice *)self client_endpoint];
      client_connection2 = nw_connection_create(client_endpoint2, v9);

      if (client_connection2)
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
  address_endpoint = [(RSDRemoteCoreDeviceDevice *)self address_endpoint];
  address = nw_endpoint_get_address(address_endpoint);

  return &address->sa_data[6];
}

@end