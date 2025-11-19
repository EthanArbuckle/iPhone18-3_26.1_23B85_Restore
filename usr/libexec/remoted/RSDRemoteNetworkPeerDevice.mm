@interface RSDRemoteNetworkPeerDevice
- (RSDRemoteNetworkPeerDevice)initWithGeneratedName;
- (id)initClientWithRemoteAddress:(const in6_addr *)a3;
- (id)initServerWithPeerSocket:(int)a3;
- (void)attach;
- (void)disconnect;
- (void)needsConnect;
- (void)serverReplacePeerSocket:(int)a3;
@end

@implementation RSDRemoteNetworkPeerDevice

- (RSDRemoteNetworkPeerDevice)initWithGeneratedName
{
  result = [(RSDRemoteNetworkPeerDevice *)self init];
  if (result)
  {
    v3 = result;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v4;
    v8 = v4;
    v5 = dword_100063C8C++;
    snprintf(__str, 0x20uLL, "network-%d", v5);
    v6.receiver = v3;
    v6.super_class = RSDRemoteNetworkPeerDevice;
    return [(RSDRemoteDevice *)&v6 initWithName:__str];
  }

  return result;
}

- (id)initClientWithRemoteAddress:(const in6_addr *)a3
{
  v3 = a3;
  if (a3)
  {
    if ((a3->__u6_addr32[0] || a3->__u6_addr32[1] || a3->__u6_addr32[2] || a3->__u6_addr32[3]) && (self = [(RSDRemoteNetworkPeerDevice *)self initWithGeneratedName]) != 0)
    {
      self->remote_address_storage = *v3;
      self->server_mode = 0;
      self = self;
      v3 = self;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)initServerWithPeerSocket:(int)a3
{
  v3 = self;
  if ((a3 & 0x80000000) == 0)
  {
    v5 = [(RSDRemoteNetworkPeerDevice *)self initWithGeneratedName];
    v3 = v5;
    if (v5)
    {
      v5->peerfd = a3;
      v5->server_mode = 1;
      if (!sub_1000247A0(a3, v5->remote_address_storage.__u6_addr8))
      {
        v3 = v3;
        v6 = v3;
        goto LABEL_7;
      }

      if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
      {
        sub_10003EC74();
      }
    }
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)serverReplacePeerSocket:(int)a3
{
  if (a3 < 0)
  {
    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
    {
      sub_10003ECE4();
    }
  }

  else if (sub_1000247A0(a3, self->remote_address_storage.__u6_addr8))
  {
    if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
    {
      sub_10003EC74();
    }
  }

  else
  {
    self->peerfd = a3;
    v5 = [(RSDRemoteDevice *)self connection];

    if (v5)
    {
      v6 = [(RSDRemoteDevice *)self connection];
      xpc_remote_connection_cancel();

      [(RSDRemoteDevice *)self setConnection:0];
    }

    else
    {

      [(RSDRemoteNetworkPeerDevice *)self needsConnect];
    }
  }
}

- (void)attach
{
  [qword_1000644A0 addObject:self];
  v3.receiver = self;
  v3.super_class = RSDRemoteNetworkPeerDevice;
  [(RSDRemoteDevice *)&v3 attach];
}

- (void)disconnect
{
  v3.receiver = self;
  v3.super_class = RSDRemoteNetworkPeerDevice;
  [(RSDRemoteDevice *)&v3 disconnect];
  [qword_1000644A0 removeObject:self];
}

- (void)needsConnect
{
  v3 = qword_100064498;
  if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", buf, 0xCu);
  }

  if (self->server_mode)
  {
    if (self->peerfd < 0)
    {
      v9 = qword_100064498;
      if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@> wait for the other side to connect", buf, 0xCu);
      }
    }

    else
    {
      xpc_remote_connection_get_failsafe_version_flags();
      v4 = xpc_remote_connection_create_with_connected_fd();
      self->peerfd = -1;
      [(RSDRemoteDevice *)self connect:v4];
    }
  }

  else
  {
    HIDWORD(v10) = -1;
    v5 = [(RSDRemoteNetworkPeerDevice *)self remote_address];
    v6 = sub_100023C1C(&v10 + 1, v5, 0xE5F9u, [qword_1000644B0 index], &xmmword_100049E58);
    v7 = qword_100064498;
    if (v6)
    {
      v8 = v6;
      if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_ERROR))
      {
        sub_10003ED20(self, v8, v7);
      }

      [(RSDRemoteDevice *)self connect:0];
    }

    else
    {
      if (os_log_type_enabled(qword_100064498, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@> network_connect_in6() completed successfully", buf, 0xCu);
      }

      LODWORD(v10) = HIDWORD(v10);
      [(RSDRemoteDevice *)self pollConnect:_NSConcreteStackBlock onQueue:3221225472 withLog:sub_100022724 completion:&unk_10005D640, self, v10];
    }
  }
}

@end