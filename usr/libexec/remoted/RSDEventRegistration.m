@interface RSDEventRegistration
- (RSDEventRegistration)initWithToken:(unint64_t)a3 name:(char *)a4;
- (void)cancelBrowsing;
- (void)dealloc;
- (void)fire:(id)a3;
- (void)startBrowsing:(id)a3;
@end

@implementation RSDEventRegistration

- (RSDEventRegistration)initWithToken:(unint64_t)a3 name:(char *)a4
{
  v6 = [(RSDEventRegistration *)self init];
  v7 = v6;
  if (v6)
  {
    [(RSDEventRegistration *)v6 setToken:a3];
    [(RSDEventRegistration *)v7 setName:strdup(a4)];
    v8 = v7;
  }

  return v7;
}

- (void)startBrowsing:(id)a3
{
  v4 = a3;
  v5 = [(RSDEventRegistration *)self browser];

  if (v5)
  {
    sub_100037E64(&v15, v16);
  }

  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100002E90;
  v12 = &unk_10005CE60;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = objc_retainBlock(&v9);
  started = remote_device_start_browsing_matching();
  [(RSDEventRegistration *)self setBrowser:started, v9, v10, v11, v12, v13];
}

- (void)cancelBrowsing
{
  v3 = [(RSDEventRegistration *)self browser];

  if (!v3)
  {
    sub_100037EFC(&v5, v6);
  }

  [(RSDEventRegistration *)self setDontRestartBrowse:1];
  v4 = [(RSDEventRegistration *)self browser];
  remote_device_browser_cancel();
}

- (void)fire:(id)a3
{
  memset(uuid, 170, sizeof(uuid));
  remote_device_copy_uuid();
  v4 = xpc_uuid_create(uuid);
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v5, "UUID", v4);
  if (os_log_type_enabled(qword_1000642F0, OS_LOG_TYPE_INFO))
  {
    *&out[29] = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *out = v6;
    *&out[16] = v6;
    uuid_unparse(uuid, out);
    v7 = qword_1000642F0;
    if (os_log_type_enabled(qword_1000642F0, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = 136446466;
      v10 = [(RSDEventRegistration *)self name];
      v11 = 2082;
      v12 = out;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Delivering RSD event to %{public}s for device %{public}s", &v9, 0x16u);
    }
  }

  [(RSDEventRegistration *)self token];
  xpc_event_publisher_fire();
}

- (void)dealloc
{
  free(self->_name);
  v3.receiver = self;
  v3.super_class = RSDEventRegistration;
  [(RSDEventRegistration *)&v3 dealloc];
}

@end