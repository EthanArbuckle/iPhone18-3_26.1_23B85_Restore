@interface RSDRemoteService
- (RSDRemoteDevice)device;
- (RSDRemoteService)initWithName:(const char *)a3 description:(id)a4;
- (id)copyClientDescription;
- (id)description;
- (void)cancel;
- (void)dealloc;
- (void)getSocketWithTcpOption:(id *)a3 callback:(id)a4;
- (void)updateWithDescription:(id)a3;
@end

@implementation RSDRemoteService

- (void)cancel
{
  v3 = [(RSDRemoteService *)self service_listener];

  if (v3)
  {
    v4 = [(RSDRemoteService *)self service_listener];
    xpc_connection_cancel(v4);

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

- (RSDRemoteService)initWithName:(const char *)a3 description:(id)a4
{
  v6 = a4;
  v7 = [(RSDRemoteService *)self init];
  if (v7)
  {
    [(RSDRemoteService *)v7 setName:strdup(a3)];
    v8 = xpc_dictionary_get_value(v6, "Port");
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

    v12 = xpc_dictionary_get_value(v6, "EntitlementOverride");
    v13 = v12;
    if (v12 && xpc_get_type(v12) == &_xpc_type_string)
    {
      v16 = xpc_string_get_string_ptr(v13);
      [(RSDRemoteService *)v7 setEntitlement:strdup(v16)];
    }

    else
    {
      v14 = xpc_dictionary_get_value(v6, "Entitlement");
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

    v18 = xpc_dictionary_get_value(v6, "Properties");
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

- (void)updateWithDescription:(id)a3
{
  v4 = xpc_dictionary_get_value(a3, "Port");
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

- (void)getSocketWithTcpOption:(id *)a3 callback:(id)a4
{
  v13 = a4;
  v6 = [(RSDRemoteService *)self device];
  v7 = [v6 state];

  if (v7 == 5)
  {
    sub_10003A374(&v14, v15);
  }

  v8 = [(RSDRemoteService *)self device];
  v9 = objc_opt_respondsToSelector();

  v10 = [(RSDRemoteService *)self device];
  v11 = [(RSDRemoteService *)self port];
  if (v9)
  {
    [v10 connectToService:v11 withTcpOption:a3 callback:v13];
  }

  else
  {
    v12 = [v10 connectToService:v11 withTcpOption:a3];

    v13[2](v13, v12);
  }
}

- (id)description
{
  v3 = [(RSDRemoteService *)self device];
  v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%s/%s", [v3 device_name], -[RSDRemoteService name](self, "name"));

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
  v4 = [(RSDRemoteService *)self properties];

  if (v4)
  {
    v5 = [(RSDRemoteService *)self properties];
  }

  else
  {
    v5 = xpc_dictionary_create(0, 0, 0);
  }

  v6 = v5;
  xpc_dictionary_set_value(v3, "properties", v5);

  v7 = [(RSDRemoteService *)self service_listener];

  if (!v7)
  {
    v8 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      *buf = 136446210;
      v17 = [(RSDRemoteService *)self name];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Creating service listener for %{public}s", buf, 0xCu);
    }

    v10 = xpc_connection_create(0, qword_100064560);
    [(RSDRemoteService *)self setService_listener:v10];

    v11 = [(RSDRemoteService *)self service_listener];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002583C;
    handler[3] = &unk_10005CF88;
    handler[4] = self;
    xpc_connection_set_event_handler(v11, handler);

    v12 = [(RSDRemoteService *)self service_listener];
    xpc_connection_activate(v12);
  }

  v13 = [(RSDRemoteService *)self service_listener];
  xpc_dictionary_set_connection(v3, "endpoint", v13);

  return v3;
}

@end