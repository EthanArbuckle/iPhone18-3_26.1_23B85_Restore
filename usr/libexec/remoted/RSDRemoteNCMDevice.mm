@interface RSDRemoteNCMDevice
- (const)local_address;
- (const)remote_address;
- (unsigned)interface_index;
- (void)connected;
@end

@implementation RSDRemoteNCMDevice

- (void)connected
{
  connection = [(RSDRemoteDevice *)self connection];
  v4 = xpc_remote_connection_copy_remote_endpoint();
  endpoint = self->_endpoint;
  self->_endpoint = v4;

  if (!self->_endpoint)
  {
    v6 = sub_1000012E4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000437E8();
    }

    connection2 = [(RSDRemoteDevice *)self connection];
    xpc_remote_connection_cancel();
  }
}

- (unsigned)interface_index
{
  interface = [(RSDRemoteNCMDevice *)self interface];
  index = [interface index];

  return index;
}

- (const)local_address
{
  interface = [(RSDRemoteNCMDevice *)self interface];
  if ([interface is_private])
  {
    if ([(RSDRemoteDevice *)self type]== 9)
    {

LABEL_10:
      if (!self->local_address_storage.__u6_addr32[0] && !self->local_address_storage.__u6_addr32[1] && !self->local_address_storage.__u6_addr32[2] && !self->local_address_storage.__u6_addr32[3])
      {
        interface2 = [(RSDRemoteNCMDevice *)self interface];
        *self->local_address_storage.__u6_addr8 = sub_100031EDC([interface2 mac_addr], 1);
        *&self->local_address_storage.__u6_addr32[2] = v9;
      }

      return &self->local_address_storage;
    }

    type = [(RSDRemoteDevice *)self type];

    if (type == 12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  interface3 = [(RSDRemoteNCMDevice *)self interface];
  v5 = sub_1000244F8([interface3 name], self->local_address_storage.__u6_addr8, 1);

  if (v5)
  {
    v6 = sub_1000012E4();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000425F8();
    }
  }

  return &self->local_address_storage;
}

- (const)remote_address
{
  if ([(RSDRemoteDevice *)self state]== 3)
  {
    endpoint = [(RSDRemoteNCMDevice *)self endpoint];
    address = nw_endpoint_get_address(endpoint);

    if (address)
    {
      self->remote_address_storage = *&address->sa_data[6];
      return &self->remote_address_storage;
    }

    interface2 = sub_1000012E4();
    if (os_log_type_enabled(interface2, OS_LOG_TYPE_ERROR))
    {
      sub_100043924();
    }

LABEL_14:

    return &self->remote_address_storage;
  }

  interface = [(RSDRemoteNCMDevice *)self interface];
  is_private = [interface is_private];

  if (!is_private)
  {
    interface2 = sub_1000012E4();
    if (os_log_type_enabled(interface2, OS_LOG_TYPE_ERROR))
    {
      sub_1000438BC();
    }

    goto LABEL_14;
  }

  if (!self->remote_address_storage.__u6_addr32[0] && !self->remote_address_storage.__u6_addr32[1] && !self->remote_address_storage.__u6_addr32[2] && !self->remote_address_storage.__u6_addr32[3])
  {
    interface2 = [(RSDRemoteNCMDevice *)self interface];
    *self->remote_address_storage.__u6_addr8 = sub_100031EDC([interface2 mac_addr], 0);
    *&self->remote_address_storage.__u6_addr32[2] = v8;
    goto LABEL_14;
  }

  return &self->remote_address_storage;
}

@end