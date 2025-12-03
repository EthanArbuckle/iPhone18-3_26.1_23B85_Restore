@interface NFSecureXPCEventPublisher
- (NFSecureXPCEventPublisher)initWithMachPort:(id)port queue:(id)queue;
- (void)dealloc;
- (void)sendEvent:(id)event;
@end

@implementation NFSecureXPCEventPublisher

- (void)dealloc
{
  if ([(NFSecureXPCEventPublisher *)self available])
  {
    connection = [(NFSecureXPCEventPublisher *)self connection];
    xpc_connection_cancel(connection);
  }

  v4.receiver = self;
  v4.super_class = NFSecureXPCEventPublisher;
  [(NFSecureXPCEventPublisher *)&v4 dealloc];
}

- (NFSecureXPCEventPublisher)initWithMachPort:(id)port queue:(id)queue
{
  portCopy = port;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = NFSecureXPCEventPublisher;
  v9 = [(NFSecureXPCEventPublisher *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceName, port);
    uTF8String = [portCopy UTF8String];
    if (queueCopy)
    {
      v12 = queueCopy;
      queue = v10->_queue;
      v10->_queue = v12;
    }

    else
    {
      queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_create(uTF8String, queue);
      v15 = v10->_queue;
      v10->_queue = v14;
    }

    mach_service = xpc_connection_create_mach_service(uTF8String, v10->_queue, 2uLL);
    connection = v10->_connection;
    v10->_connection = mach_service;

    objc_initWeak(&location, v10);
    v18 = v10->_connection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100054D34;
    handler[3] = &unk_1004C2D30;
    objc_copyWeak(&v22, &location);
    v21 = portCopy;
    xpc_connection_set_event_handler(v18, handler);
    v10->_available = 1;
    xpc_connection_activate(v10->_connection);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v10;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  if ([(NFSecureXPCEventPublisher *)self available])
  {
    type = xpc_get_type(eventCopy);
    if (type == &_xpc_type_dictionary)
    {
      connection = [(NFSecureXPCEventPublisher *)self connection];
      xpc_connection_send_notification();
    }

    else
    {
      v6 = type;
      connection = SESDefaultLogObject();
      if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315138;
        name = xpc_type_get_name(v6);
        _os_log_impl(&_mh_execute_header, connection, OS_LOG_TYPE_ERROR, "Invalid event type: %s", &v9, 0xCu);
      }
    }
  }

  else
  {
    connection = SESDefaultLogObject();
    if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
    {
      serviceName = [(NFSecureXPCEventPublisher *)self serviceName];
      v9 = 138412290;
      name = serviceName;
      _os_log_impl(&_mh_execute_header, connection, OS_LOG_TYPE_ERROR, "Service unavailable: %@", &v9, 0xCu);
    }
  }
}

@end