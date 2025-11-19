@interface BrowseRegistration
- (BrowseRegistration)initWithRequest:(id)a3;
- (void)cancel;
- (void)deliverDevice:(id)a3;
@end

@implementation BrowseRegistration

- (BrowseRegistration)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(BrowseRegistration *)self init];
  if (v5)
  {
    [(BrowseRegistration *)v5 setType:xpc_dictionary_get_uint64(v4, "device_type")];
    v6 = xpc_dictionary_get_remote_connection(v4);
    [(BrowseRegistration *)v5 setConnection:v6];

    v7 = [(BrowseRegistration *)v5 connection];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100026A20;
    handler[3] = &unk_10005CF88;
    v8 = v5;
    v12 = v8;
    xpc_connection_set_event_handler(v7, handler);

    [qword_100064568 addObject:v8];
    v9 = v8;
  }

  return v5;
}

- (void)deliverDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == [(BrowseRegistration *)self type]|| [(BrowseRegistration *)self type]== 0xFFFF)
  {
    v6 = [(BrowseRegistration *)self connection];
    v7 = sub_100002B18(v6);

    v8 = qword_100064558;
    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_INFO))
    {
      v12 = 136446210;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Delivering device (client=%{public}s)", &v12, 0xCu);
    }

    free(v7);
    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = [(BrowseRegistration *)self connection];
    sub_100026C8C(v4, v10, v9);

    v11 = [(BrowseRegistration *)self connection];
    xpc_connection_send_message(v11, v9);
  }
}

- (void)cancel
{
  if (![(BrowseRegistration *)self canceled])
  {
    [(BrowseRegistration *)self setCanceled:1];
    [qword_100064568 removeObject:self];
    v3 = [(BrowseRegistration *)self connection];
    v4 = sub_100002B18(v3);

    if (os_log_type_enabled(qword_100064558, OS_LOG_TYPE_DEBUG))
    {
      sub_1000404AC();
    }

    free(v4);
    v5 = [(BrowseRegistration *)self connection];
    barrier[0] = _NSConcreteStackBlock;
    barrier[1] = 3221225472;
    barrier[2] = sub_100026E74;
    barrier[3] = &unk_10005D130;
    barrier[4] = self;
    xpc_connection_send_barrier(v5, barrier);
  }
}

@end