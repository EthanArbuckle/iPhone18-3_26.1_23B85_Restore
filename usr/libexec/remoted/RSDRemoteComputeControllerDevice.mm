@interface RSDRemoteComputeControllerDevice
- (RSDRemoteComputeControllerDevice)initWithGeneratedName:(const char *)name;
- (RSDRemoteComputeControllerDevice)initWithInterface:(id)interface address:(const in6_addr *)address;
- (RSDRemoteComputeControllerDevice)initWithInterface:(id)interface endpoint:(id)endpoint bonjourUUID:(unsigned __int8)d[16];
- (uint64_t)tlsRequirement;
- (void)attach;
- (void)connected;
- (void)dealloc;
- (void)disconnect;
- (void)needsConnect;
- (void)populateInterfaceProperties;
@end

@implementation RSDRemoteComputeControllerDevice

- (RSDRemoteComputeControllerDevice)initWithGeneratedName:(const char *)name
{
  result = [(RSDRemoteComputeControllerDevice *)self init];
  if (result)
  {
    v5 = result;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__str = v6;
    v10 = v6;
    v7 = dword_100063C88++;
    snprintf(__str, 0x20uLL, "%s-%d", name, v7);
    v8.receiver = v5;
    v8.super_class = RSDRemoteComputeControllerDevice;
    return [(RSDRemoteDevice *)&v8 initWithName:__str];
  }

  return result;
}

- (RSDRemoteComputeControllerDevice)initWithInterface:(id)interface address:(const in6_addr *)address
{
  interfaceCopy = interface;
  selfCopy = 0;
  *__s1 = 0u;
  memset(v15, 0, sizeof(v15));
  if (!interfaceCopy || !address)
  {
    goto LABEL_18;
  }

  if (!address->__u6_addr32[0] && !address->__u6_addr32[1] && !address->__u6_addr32[2] && !address->__u6_addr32[3] || (v9 = [(RSDRemoteComputeControllerDevice *)self initWithGeneratedName:"cnode"], (self = v9) == 0))
  {
LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

  objc_storeStrong(&v9->_interface, interface);
  self->remote_address_storage = *address;
  if (!inet_ntop(30, address, __s1, 0x2Eu))
  {
    v11 = __error();
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
    {
      sub_10003DB3C(v11);
    }

    goto LABEL_17;
  }

  if (_dispatch_is_multithreaded())
  {
    while (1)
    {
      v10 = strdup(__s1);
      if (v10)
      {
        break;
      }

      __os_temporary_resource_shortage();
    }
  }

  else
  {
    v10 = strdup(__s1);
    if (!v10)
    {
      sub_10003DA8C(__s1, &v13, v16);
    }
  }

  self->_ipv6_str = v10;
  self = self;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (RSDRemoteComputeControllerDevice)initWithInterface:(id)interface endpoint:(id)endpoint bonjourUUID:(unsigned __int8)d[16]
{
  interfaceCopy = interface;
  endpointCopy = endpoint;
  if (interfaceCopy && !uuid_is_null(d) && (v13 = [(RSDRemoteComputeControllerDevice *)self initWithGeneratedName:"cnode"], (self = v13) != 0))
  {
    objc_storeStrong(&v13->_interface, interface);
    uuid_copy(self->bonjour_uuid, d);
    if (uuid_is_null(self->bonjour_uuid))
    {
      sub_10003DBB4(&v14, v15);
    }

    objc_storeStrong(&self->bonjour_endpoint, endpoint);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  free(self->_ipv6_str);
  self->_ipv6_str = 0;
  v3.receiver = self;
  v3.super_class = RSDRemoteComputeControllerDevice;
  [(RSDRemoteDevice *)&v3 dealloc];
}

- (void)populateInterfaceProperties
{
  interface = [(RSDRemoteComputeControllerDevice *)self interface];
  -[RSDRemoteDevice setBackendProperty:withUint:](self, "setBackendProperty:withUint:", "InterfaceIndex", [interface index]);

  interface2 = [(RSDRemoteComputeControllerDevice *)self interface];
  name = [interface2 name];

  if (name)
  {
    interface3 = [(RSDRemoteComputeControllerDevice *)self interface];
    -[RSDRemoteDevice setBackendProperty:withString:](self, "setBackendProperty:withString:", "InterfaceName", [interface3 name]);
  }

  if ([(RSDRemoteComputeControllerDevice *)self ipv6_str])
  {
    ipv6_str = [(RSDRemoteComputeControllerDevice *)self ipv6_str];

    [(RSDRemoteDevice *)self setBackendProperty:"IPV6Address" withString:ipv6_str];
  }
}

- (void)attach
{
  [qword_100064428 addObject:self];
  [(RSDRemoteComputeControllerDevice *)self populateInterfaceProperties];
  v3.receiver = self;
  v3.super_class = RSDRemoteComputeControllerDevice;
  [(RSDRemoteDevice *)&v3 attach];
}

- (void)disconnect
{
  v3.receiver = self;
  v3.super_class = RSDRemoteComputeControllerDevice;
  [(RSDRemoteDevice *)&v3 disconnect];
  [qword_100064428 removeObject:self];
}

- (void)connected
{
  connection = [(RSDRemoteDevice *)self connection];
  v4 = xpc_remote_connection_copy_remote_endpoint();
  address_endpoint = self->address_endpoint;
  self->address_endpoint = v4;

  v6 = self->address_endpoint;
  if (v6)
  {
    self->remote_address_storage = *&nw_endpoint_get_address(v6)->sa_data[6];
  }

  else
  {
    if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_ERROR))
    {
      sub_10003DC20();
    }

    connection2 = [(RSDRemoteDevice *)self connection];
    xpc_remote_connection_cancel();
  }
}

- (void)needsConnect
{
  v3 = qword_100064410;
  if (os_log_type_enabled(qword_100064410, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@> needsConnect", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016C98;
  v4[3] = &unk_10005D130;
  v4[4] = self;
  sub_1000163F8(v4);
}

- (uint64_t)tlsRequirement
{
  v0 = sub_10002DA14();
  v1 = sub_10001A4AC(v0, @"rsd_compute_platform_tls_requirement", @"compute-platform-tls-requirement", @"ComputePlatformEncryptionIsRequired");

  if (v1)
  {
    v2 = &unk_100053A79;
    goto LABEL_20;
  }

  if (sub_10000FE64())
  {
    v2 = " by default on hactivated devices";
    v1 = 1;
    goto LABEL_20;
  }

  if (sub_100025390())
  {
    v2 = " by default in the factory";
    v1 = 2;
    goto LABEL_20;
  }

  if (qword_100064608 != -1)
  {
    sub_100041EDC();
  }

  if (qword_100064600)
  {
    v3 = [&off_10005F370 objectForKeyedSubscript:?];
    v4 = v3;
    v2 = " by default";
    if (v3)
    {
      unsignedIntValue = [v3 unsignedIntValue];
      if (unsignedIntValue)
      {
        v1 = unsignedIntValue;
      }

      else
      {
        v1 = 1;
      }

      if (unsignedIntValue)
      {
        v2 = " by default on this hardware model";
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0;
    v2 = " by default";
  }

  v1 = 1;
LABEL_19:

LABEL_20:
  v6 = sub_10002DA14();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = sub_100019E60(v1);
    v10 = 2080;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TLS is %s for compute peers%s", &v8, 0x16u);
  }

  return v1;
}

@end