@interface RSDRemoteBonjourPeerDevice
- (RSDRemoteBonjourPeerDevice)initWithBrowsedEndpointUUID:(id)d uuid:(unsigned __int8)uuid[16];
- (RSDRemoteBonjourPeerDevice)initWithGeneratedName;
- (RSDRemoteBonjourPeerDevice)initWithIncomingEndpoint:(id)endpoint;
- (const)local_address;
- (const)remote_address;
- (void)attach;
- (void)connected;
- (void)disconnect;
- (void)needsConnect;
@end

@implementation RSDRemoteBonjourPeerDevice

- (RSDRemoteBonjourPeerDevice)initWithGeneratedName
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__str = v3;
  v8 = v3;
  v4 = dword_100063C98++;
  snprintf(__str, 0x20uLL, "peer-%d", v4);
  v6.receiver = self;
  v6.super_class = RSDRemoteBonjourPeerDevice;
  return [(RSDRemoteDevice *)&v6 initWithName:__str];
}

- (RSDRemoteBonjourPeerDevice)initWithIncomingEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  initWithGeneratedName = [(RSDRemoteBonjourPeerDevice *)self initWithGeneratedName];
  v6 = initWithGeneratedName;
  if (initWithGeneratedName)
  {
    [(RSDRemoteBonjourPeerDevice *)initWithGeneratedName setAddress_endpoint:endpointCopy];
    v6->saysHelloFirst = 0;
    v7 = v6;
  }

  return v6;
}

- (RSDRemoteBonjourPeerDevice)initWithBrowsedEndpointUUID:(id)d uuid:(unsigned __int8)uuid[16]
{
  dCopy = d;
  if (nw_endpoint_get_type(dCopy) != nw_endpoint_type_bonjour_service)
  {
    sub_100042214(&v11, v12);
  }

  initWithGeneratedName = [(RSDRemoteBonjourPeerDevice *)self initWithGeneratedName];
  v8 = initWithGeneratedName;
  if (initWithGeneratedName)
  {
    [(RSDRemoteBonjourPeerDevice *)initWithGeneratedName setBonjour_endpoint:dCopy];
    uuid_copy(v8->remote_device_uuid, uuid);
    if (uuid_is_null(v8->remote_device_uuid))
    {
      sub_100042280(&v11, v12);
    }

    v8->saysHelloFirst = uuid_compare(&xmmword_1000646E8, v8->remote_device_uuid) > 0;
    v9 = v8;
  }

  return v8;
}

- (void)attach
{
  [qword_100064610 addObject:self];
  v3.receiver = self;
  v3.super_class = RSDRemoteBonjourPeerDevice;
  [(RSDRemoteDevice *)&v3 attach];
}

- (void)disconnect
{
  v4.receiver = self;
  v4.super_class = RSDRemoteBonjourPeerDevice;
  [(RSDRemoteDevice *)&v4 disconnect];
  peerconn = self->_peerconn;
  self->_peerconn = 0;

  [qword_100064610 removeObject:self];
}

- (void)connected
{
  connection = [(RSDRemoteDevice *)self connection];
  v4 = xpc_remote_connection_copy_remote_endpoint();
  [(RSDRemoteBonjourPeerDevice *)self setAddress_endpoint:v4];

  address_endpoint = [(RSDRemoteBonjourPeerDevice *)self address_endpoint];
  if (!address_endpoint)
  {
    sub_100042358(&v6, v7);
  }

  uuid_copy(self->remote_device_uuid, [(RSDRemoteDevice *)self uuid]);
  if (uuid_is_null(self->remote_device_uuid))
  {
    sub_1000422EC(&v6, v7);
  }

  if (byte_100064618 == 1)
  {

    sub_10002EB10(self->remote_device_uuid);
  }
}

- (void)needsConnect
{
  v3 = sub_10002F03C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", buf, 0xCu);
  }

  if (uuid_is_null(self->remote_device_uuid))
  {
    v4 = 0;
  }

  else
  {
    v4 = [[NSUUID alloc] initWithUUIDBytes:self->remote_device_uuid];
  }

  saysHelloFirst = self->saysHelloFirst;
  v6 = sub_10002F03C();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (saysHelloFirst)
  {
    if (v7)
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> local device uuid > remote device uuid: attaching and connecting to remote device", buf, 0xCu);
    }

    if (!v4 || ([qword_100064620 containsObject:v4] & 1) != 0)
    {
      v8 = sub_10002F03C();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@> connecting to remote remoted", buf, 0xCu);
      }

      bonjour_endpoint = [(RSDRemoteBonjourPeerDevice *)self bonjour_endpoint];
      if (!bonjour_endpoint)
      {
        sub_1000424D0(&v25, buf);
      }

      bonjour_endpoint2 = [(RSDRemoteBonjourPeerDevice *)self bonjour_endpoint];
      v11 = nw_endpoint_copy_interface();

      v12 = v11;
      if (!v12)
      {
        sub_100042464(&v25, buf);
      }

      peerconn = v12;

      index = nw_interface_get_index(peerconn);
      v15 = sub_10002F080(index);
      if (!v15)
      {
        v24 = sub_10002F03C();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          sub_100042430();
        }

        goto LABEL_40;
      }

      v16 = v15;
      bonjour_endpoint3 = [(RSDRemoteBonjourPeerDevice *)self bonjour_endpoint];
      v18 = nw_connection_create(bonjour_endpoint3, v16);

      goto LABEL_36;
    }

    v22 = sub_10002F03C();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      v23 = "%{public}@> attempting hello but bonjour endpoint previously gone away so discarding device";
LABEL_43:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (v7)
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@> local device uuid < remote device uuid: waiting for remote device to connect", buf, 0xCu);
  }

  if (self->_peerconn)
  {
    connection = [(RSDRemoteDevice *)self connection];

    peerconn = sub_10002F03C();
    v20 = os_log_type_enabled(peerconn, OS_LOG_TYPE_DEFAULT);
    if (!connection)
    {
      if (v20)
      {
        *buf = 138543362;
        *&buf[4] = self;
        _os_log_impl(&_mh_execute_header, peerconn, OS_LOG_TYPE_DEFAULT, "%{public}@> using established peer connection", buf, 0xCu);
      }

      v18 = self->_peerconn;
      peerconn = self->_peerconn;
      self->_peerconn = 0;
LABEL_36:

      if (v18)
      {
        xpc_remote_connection_get_failsafe_version_flags();
        peerconn = xpc_remote_connection_create_with_nw_connection();
      }

      else
      {
        peerconn = 0;
      }

      [(RSDRemoteDevice *)self connect:peerconn];

      goto LABEL_40;
    }

    if (v20)
    {
      *buf = 138543362;
      *&buf[4] = self;
      v21 = "%{public}@> wait for current connection to invalidate before applying reestablished connection";
LABEL_27:
      _os_log_impl(&_mh_execute_header, peerconn, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    }
  }

  else
  {
    if (v4 && ([qword_100064620 containsObject:v4] & 1) == 0)
    {
      v22 = sub_10002F03C();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = self;
        v23 = "%{public}@> attempting to wait for connection from peer but bonjour endpoint previously gone away so discarding device";
        goto LABEL_43;
      }

LABEL_44:

      [(RSDRemoteBonjourPeerDevice *)self disconnect];
      goto LABEL_45;
    }

    peerconn = sub_10002F03C();
    if (os_log_type_enabled(peerconn, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      v21 = "%{public}@> waiting for connection from peer";
      goto LABEL_27;
    }
  }

LABEL_40:

LABEL_45:
}

- (const)local_address
{
  p_local_address_storage = &self->local_address_storage;
  if (!self->local_address_storage.__u6_addr32[0] && !self->local_address_storage.__u6_addr32[1] && !self->local_address_storage.__u6_addr32[2] && !self->local_address_storage.__u6_addr32[3] && sub_1000244F8([qword_100064630 name], p_local_address_storage, 1))
  {
    v3 = sub_10002F03C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1000425F8();
    }
  }

  return p_local_address_storage;
}

- (const)remote_address
{
  address_endpoint = [(RSDRemoteBonjourPeerDevice *)self address_endpoint];
  address = nw_endpoint_get_address(address_endpoint);

  return &address->sa_data[6];
}

@end