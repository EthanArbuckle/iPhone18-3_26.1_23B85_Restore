@interface BTXpcService
- (BTXpcService)init;
- (BTXpcService)initWithName:(const char *)name sessionClass:(Class)class;
- (void)_handleConnection:(id)connection;
- (void)_handleEvent:(id)event;
@end

@implementation BTXpcService

- (BTXpcService)init
{
  v3 = [NSString stringWithUTF8String:"[BTXpcService init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (BTXpcService)initWithName:(const char *)name sessionClass:(Class)class
{
  v17.receiver = self;
  v17.super_class = BTXpcService;
  v6 = [(BTXpcService *)&v17 init];
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
    handler[2] = sub_100001028;
    handler[3] = &unk_100008438;
    v11 = p_isa;
    v16 = v11;
    xpc_connection_set_event_handler(v10, handler);
    xpc_connection_resume(p_isa[3]);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100001034, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    p_isa = &v16->super.isa;
  }

  else
  {
    v13 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_FAULT))
    {
      sub_1000043B4(v13);
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
    [(BTXpcService *)self _handleConnection:eventCopy];
  }

  else
  {
    v6 = type;
    v7 = qword_10000CEC8;
    v8 = os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_ERROR);
    if (v6 == &_xpc_type_error)
    {
      if (v8)
      {
        sub_100004470(eventCopy, v7);
      }
    }

    else if (v8)
    {
      sub_1000043F8(eventCopy, v7);
    }
  }
}

- (void)_handleConnection:(id)connection
{
  connectionCopy = connection;
  [(BTXpcService *)self name];
  v5 = xpc_connection_copy_entitlement_value();
  v6 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v6))
  {
  }

  else
  {
    v7 = qword_10000CEC8;
    if (os_log_type_enabled(qword_10000CEC8, OS_LOG_TYPE_ERROR))
    {
      sub_1000044E8(v7);
    }

    xpc_connection_cancel(connectionCopy);
  }
}

@end