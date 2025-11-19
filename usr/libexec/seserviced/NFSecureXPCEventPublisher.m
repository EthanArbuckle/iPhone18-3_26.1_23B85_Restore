@interface NFSecureXPCEventPublisher
- (NFSecureXPCEventPublisher)initWithMachPort:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)sendEvent:(id)a3;
@end

@implementation NFSecureXPCEventPublisher

- (void)dealloc
{
  if ([(NFSecureXPCEventPublisher *)self available])
  {
    v3 = [(NFSecureXPCEventPublisher *)self connection];
    xpc_connection_cancel(v3);
  }

  v4.receiver = self;
  v4.super_class = NFSecureXPCEventPublisher;
  [(NFSecureXPCEventPublisher *)&v4 dealloc];
}

- (NFSecureXPCEventPublisher)initWithMachPort:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = NFSecureXPCEventPublisher;
  v9 = [(NFSecureXPCEventPublisher *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceName, a3);
    v11 = [v7 UTF8String];
    if (v8)
    {
      v12 = v8;
      queue = v10->_queue;
      v10->_queue = v12;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create(v11, queue);
      v15 = v10->_queue;
      v10->_queue = v14;
    }

    mach_service = xpc_connection_create_mach_service(v11, v10->_queue, 2uLL);
    connection = v10->_connection;
    v10->_connection = mach_service;

    objc_initWeak(&location, v10);
    v18 = v10->_connection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100054D34;
    handler[3] = &unk_1004C2D30;
    objc_copyWeak(&v22, &location);
    v21 = v7;
    xpc_connection_set_event_handler(v18, handler);
    v10->_available = 1;
    xpc_connection_activate(v10->_connection);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)sendEvent:(id)a3
{
  v4 = a3;
  if ([(NFSecureXPCEventPublisher *)self available])
  {
    type = xpc_get_type(v4);
    if (type == &_xpc_type_dictionary)
    {
      v7 = [(NFSecureXPCEventPublisher *)self connection];
      xpc_connection_send_notification();
    }

    else
    {
      v6 = type;
      v7 = SESDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        name = xpc_type_get_name(v6);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Invalid event type: %s", &v9, 0xCu);
      }
    }
  }

  else
  {
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(NFSecureXPCEventPublisher *)self serviceName];
      v9 = 138412290;
      name = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Service unavailable: %@", &v9, 0xCu);
    }
  }
}

@end