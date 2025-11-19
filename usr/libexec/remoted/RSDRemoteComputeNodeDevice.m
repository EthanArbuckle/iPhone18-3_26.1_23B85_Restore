@interface RSDRemoteComputeNodeDevice
+ (id)tlsOidsRequiredOfPeer;
- (RSDRemoteComputeNodeDevice)initWithInterface:(id)a3 peerConnection:(id)a4 endpoint:(id)a5;
- (RSDRemoteComputeNodeDevice)initWithInterface:(id)a3 peerSocket:(int)a4;
- (void)attach;
- (void)dealloc;
- (void)disconnect;
- (void)needsConnect;
- (void)populateInterfaceProperties;
- (void)replacePeerConnection:(id)a3;
- (void)replacePeerSocket:(int)a3;
@end

@implementation RSDRemoteComputeNodeDevice

- (RSDRemoteComputeNodeDevice)initWithInterface:(id)a3 peerSocket:(int)a4
{
  v7 = a3;
  if (a4 < 0 || (v8 = [(RSDRemoteDevice *)self initWithName:"cctrl"], (self = v8) == 0))
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (sub_1000247A0(a4, v8->remote_address_storage.__u6_addr8))
  {
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
    {
      sub_10003E6BC();
    }

    goto LABEL_6;
  }

  *__s1 = 0u;
  memset(v15, 0, sizeof(v15));
  if (!inet_ntop(30, &self->remote_address_storage, __s1, 0x2Eu))
  {
    v12 = __error();
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
    {
      sub_10003DB3C(v12);
    }

    goto LABEL_6;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v11 = strdup(__s1);
      if (v11)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v11 = strdup(__s1);
    if (!v11)
    {
      sub_10003DA8C(__s1, &v13, v16);
    }
  }

  self->_ipv6_str = v11;
  objc_storeStrong(&self->_interface, a3);
  self->peerfd = a4;
  v9 = self;
LABEL_7:

  return v9;
}

- (RSDRemoteComputeNodeDevice)initWithInterface:(id)a3 peerConnection:(id)a4 endpoint:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(RSDRemoteDevice *)self initWithName:"cctrl"];
  v13 = v12;
  if (!v12)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_11;
  }

  objc_storeStrong(&v12->_interface, a3);
  objc_storeStrong(&v13->peer_connection, a4);
  v13->peerfd = -1;
  v13->remote_address_storage = *&nw_endpoint_get_address(v11)->sa_data[6];
  *__s1 = 0u;
  memset(v20, 0, sizeof(v20));
  if (!inet_ntop(30, &v13->remote_address_storage, __s1, 0x2Eu))
  {
    v15 = __error();
    if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_ERROR))
    {
      sub_10003DB3C(v15);
    }

    goto LABEL_8;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v14 = strdup(__s1);
      if (v14)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v14 = strdup(__s1);
    if (!v14)
    {
      sub_10003DA8C(__s1, &v18, v21);
    }
  }

  v13->_ipv6_str = v14;
  v16 = v13;
LABEL_11:

  return v16;
}

- (void)dealloc
{
  free(self->_ipv6_str);
  self->_ipv6_str = 0;
  v3.receiver = self;
  v3.super_class = RSDRemoteComputeNodeDevice;
  [(RSDRemoteDevice *)&v3 dealloc];
}

- (void)replacePeerSocket:(int)a3
{
  if ((a3 & 0x80000000) == 0)
  {
    self->peerfd = a3;
    v4 = [(RSDRemoteDevice *)self connection];

    if (v4)
    {
      v5 = [(RSDRemoteDevice *)self connection];
      xpc_remote_connection_cancel();

      [(RSDRemoteDevice *)self setConnection:0];
    }

    else
    {

      [(RSDRemoteComputeNodeDevice *)self needsConnect];
    }
  }
}

- (void)replacePeerConnection:(id)a3
{
  objc_storeStrong(&self->peer_connection, a3);
  v4 = [(RSDRemoteDevice *)self connection];

  if (v4)
  {
    v5 = [(RSDRemoteDevice *)self connection];
    xpc_remote_connection_cancel();

    [(RSDRemoteDevice *)self setConnection:0];
  }

  else
  {

    [(RSDRemoteComputeNodeDevice *)self needsConnect];
  }
}

- (void)populateInterfaceProperties
{
  v3 = [(RSDRemoteComputeNodeDevice *)self interface];
  -[RSDRemoteDevice setBackendProperty:withUint:](self, "setBackendProperty:withUint:", "InterfaceIndex", [v3 index]);

  v4 = [(RSDRemoteComputeNodeDevice *)self interface];
  v5 = [v4 name];

  if (v5)
  {
    v6 = [(RSDRemoteComputeNodeDevice *)self interface];
    -[RSDRemoteDevice setBackendProperty:withString:](self, "setBackendProperty:withString:", "InterfaceName", [v6 name]);
  }

  if ([(RSDRemoteComputeNodeDevice *)self ipv6_str])
  {
    v7 = [(RSDRemoteComputeNodeDevice *)self ipv6_str];

    [(RSDRemoteDevice *)self setBackendProperty:"IPV6Address" withString:v7];
  }
}

- (void)attach
{
  [(RSDRemoteComputeNodeDevice *)self populateInterfaceProperties];
  v3.receiver = self;
  v3.super_class = RSDRemoteComputeNodeDevice;
  [(RSDRemoteDevice *)&v3 attach];
}

- (void)disconnect
{
  v2.receiver = self;
  v2.super_class = RSDRemoteComputeNodeDevice;
  [(RSDRemoteDevice *)&v2 disconnect];
}

+ (id)tlsOidsRequiredOfPeer
{
  v2 = [NSMutableSet setWithArray:&off_10005F280];
  if (sub_100017BB8())
  {
    [v2 addObject:@"1.2.840.113635.100.6.85"];
  }

  v3 = [v2 copy];

  return v3;
}

- (void)needsConnect
{
  v3 = qword_100064438;
  if (os_log_type_enabled(qword_100064438, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100018D00;
  v4[3] = &unk_10005D130;
  v4[4] = self;
  sub_10001BF34(&off_10005F298, v4);
}

@end