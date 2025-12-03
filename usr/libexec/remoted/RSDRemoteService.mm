@interface RSDRemoteService
- (RSDRemoteDevice)device;
- (RSDRemoteService)initWithName:(const char *)name description:(id)description;
- (id)copyClientDescription;
- (id)description;
- (void)cancel;
- (void)dealloc;
- (void)getSocketWithTcpOption:(id *)option callback:(id)callback;
- (void)updateWithDescription:(id)description;
@end

@implementation RSDRemoteService

- (void)cancel
{
  service_listener = [(RSDRemoteService *)self service_listener];

  if (service_listener)
  {
    service_listener2 = [(RSDRemoteService *)self service_listener];
    xpc_connection_cancel(service_listener2);

    [(RSDRemoteService *)self setService_listener:0];
  }
}

- (void)dealloc
{
  free(self->_name);
  free(self->_port);
  free(self->_entitlement);
  v3.receiver = self;
  v3.super_class = RSDRemoteService;
  [(RSDRemoteService *)&v3 dealloc];
}

- (RSDRemoteService)initWithName:(const char *)name description:(id)description
{
  descriptionCopy = description;
  v7 = [(RSDRemoteService *)self init];
  if (v7)
  {
    [(RSDRemoteService *)v7 setName:strdup(name)];
    v8 = xpc_dictionary_get_value(descriptionCopy, "Port");
    v9 = v8;
    if (v8)
    {
      if (xpc_get_type(v8) != &_xpc_type_string)
      {
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
        {
          sub_10003A294();
        }

        v10 = 0;
        goto LABEL_25;
      }

      string_ptr = xpc_string_get_string_ptr(v9);
      [(RSDRemoteService *)v7 setPort:strdup(string_ptr)];
    }

    v12 = xpc_dictionary_get_value(descriptionCopy, "EntitlementOverride");
    v13 = v12;
    if (v12 && xpc_get_type(v12) == &_xpc_type_string)
    {
      v16 = xpc_string_get_string_ptr(v13);
      [(RSDRemoteService *)v7 setEntitlement:strdup(v16)];
    }

    else
    {
      v14 = xpc_dictionary_get_value(descriptionCopy, "Entitlement");
      v15 = v14;
      if (!v14 || xpc_get_type(v14) != &_xpc_type_string)
      {
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
        {
          sub_10003A30C();
        }

LABEL_21:
        v10 = 0;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v17 = xpc_string_get_string_ptr(v15);
      [(RSDRemoteService *)v7 setEntitlement:strdup(v17)];
    }

    v18 = xpc_dictionary_get_value(descriptionCopy, "Properties");
    v15 = v18;
    if (v18)
    {
      if (xpc_get_type(v18) != &_xpc_type_dictionary)
      {
        if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
        {
          sub_10003A2D0();
        }

        goto LABEL_21;
      }

      [(RSDRemoteService *)v7 setProperties:v15];
    }

    v10 = v7;
    goto LABEL_24;
  }

  v10 = 0;
LABEL_26:

  return v10;
}

- (void)updateWithDescription:(id)description
{
  v4 = xpc_dictionary_get_value(description, "Port");
  v5 = v4;
  if (v4)
  {
    if (xpc_get_type(v4) == &_xpc_type_string)
    {
      free([(RSDRemoteService *)self port]);
      string_ptr = xpc_string_get_string_ptr(v5);
      [(RSDRemoteService *)self setPort:strdup(string_ptr)];
    }

    else if (os_log_type_enabled(qword_1000646E0, OS_LOG_TYPE_ERROR))
    {
      sub_10003A294();
    }
  }
}

- (void)getSocketWithTcpOption:(id *)option callback:(id)callback
{
  callbackCopy = callback;
  device = [(RSDRemoteService *)self device];
  state = [device state];

  if (state == 5)
  {
    sub_10003A374(&v14, v15);
  }

  device2 = [(RSDRemoteService *)self device];
  v9 = objc_opt_respondsToSelector();

  device3 = [(RSDRemoteService *)self device];
  port = [(RSDRemoteService *)self port];
  if (v9)
  {
    [device3 connectToService:port withTcpOption:option callback:callbackCopy];
  }

  else
  {
    v12 = [device3 connectToService:port withTcpOption:option];

    callbackCopy[2](callbackCopy, v12);
  }
}

- (id)description
{
  device = [(RSDRemoteService *)self device];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%s", [device device_name], -[RSDRemoteService name](self, "name"));

  return v4;
}

- (RSDRemoteDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (id)copyClientDescription
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "name", [(RSDRemoteService *)self name]);
  properties = [(RSDRemoteService *)self properties];

  if (properties)
  {
    properties2 = [(RSDRemoteService *)self properties];
  }

  else
  {
    properties2 = xpc_dictionary_create(0, 0, 0);
  }

  v6 = properties2;
  xpc_dictionary_set_value(v3, "properties", properties2);

  service_listener = [(RSDRemoteService *)self service_listener];

  if (!service_listener)
  {
    v8 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 136446210;
      name = [(RSDRemoteService *)self name];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating service listener for %{public}s", buf, 0xCu);
    }

    v10 = xpc_connection_create(0, qword_100064560);
    [(RSDRemoteService *)self setService_listener:v10];

    service_listener2 = [(RSDRemoteService *)self service_listener];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002583C;
    handler[3] = &unk_10005CF88;
    handler[4] = self;
    xpc_connection_set_event_handler(service_listener2, handler);

    service_listener3 = [(RSDRemoteService *)self service_listener];
    xpc_connection_activate(service_listener3);
  }

  service_listener4 = [(RSDRemoteService *)self service_listener];
  xpc_dictionary_set_connection(v3, "endpoint", service_listener4);

  return v3;
}

@end