@interface LEAudioXpcService
- (LEAudioXpcService)init;
- (LEAudioXpcService)initWithName:(const char *)name sessionClass:(Class)class;
- (void)_handleConnection:(id)connection;
- (void)_handleEvent:(id)event;
@end

@implementation LEAudioXpcService

- (LEAudioXpcService)init
{
  v3 = [NSString stringWithUTF8String:"[LEAudioXpcService init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (LEAudioXpcService)initWithName:(const char *)name sessionClass:(Class)class
{
  v16.receiver = self;
  v16.super_class = LEAudioXpcService;
  v6 = [(LEAudioXpcService *)&v16 init];
  if (!v6)
  {
    return 0;
  }

  p_isa = &v6->super.isa;
  v6->_name = name;
  objc_storeStrong(&v6->_sessionClass, class);
  mach_service = xpc_connection_create_mach_service(name, &_dispatch_main_q, 1uLL);
  v9 = p_isa[3];
  p_isa[3] = mach_service;

  v10 = p_isa[3];
  if (v10)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000AAB4;
    handler[3] = &unk_100094C90;
    v11 = p_isa;
    v15 = v11;
    xpc_connection_set_event_handler(v10, handler);
    xpc_connection_resume(p_isa[3]);
    p_isa = &v15->super.isa;
  }

  else
  {
    v12 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_FAULT))
    {
      sub_10005B948(v12);
    }

    v11 = 0;
  }

  return v11;
}

- (void)_handleEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_connection)
  {
    [(LEAudioXpcService *)self _handleConnection:eventCopy];
  }

  else
  {
    v6 = type;
    v7 = qword_1000A9FE0;
    v8 = os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR);
    if (v6 == &_xpc_type_error)
    {
      if (v8)
      {
        sub_10005BA04(eventCopy, v7);
      }
    }

    else if (v8)
    {
      sub_10005B98C(eventCopy, v7);
    }
  }
}

- (void)_handleConnection:(id)connection
{
  connectionCopy = connection;
  [(LEAudioXpcService *)self name];
  v5 = xpc_connection_copy_entitlement_value();
  v6 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v6))
  {
  }

  else
  {
    v7 = qword_1000A9FE0;
    if (os_log_type_enabled(qword_1000A9FE0, OS_LOG_TYPE_ERROR))
    {
      sub_10005BA7C(v7);
    }

    xpc_connection_cancel(connectionCopy);
  }
}

@end