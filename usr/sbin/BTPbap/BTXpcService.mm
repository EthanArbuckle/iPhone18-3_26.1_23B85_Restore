@interface BTXpcService
- (BTXpcService)init;
- (BTXpcService)initWithName:(const char *)a3 sessionClass:(Class)a4;
- (void)_handleConnection:(id)a3;
- (void)_handleEvent:(id)a3;
@end

@implementation BTXpcService

- (BTXpcService)init
{
  v3 = [NSString stringWithUTF8String:"[BTXpcService init]"];
  [NSException raise:NSInvalidArgumentException format:@"Calling %@ is not allowed", v3];

  return 0;
}

- (BTXpcService)initWithName:(const char *)a3 sessionClass:(Class)a4
{
  v17.receiver = self;
  v17.super_class = BTXpcService;
  v6 = [(BTXpcService *)&v17 init];
  if (!v6)
  {
    return 0;
  }

  p_isa = &v6->super.isa;
  v6->_name = a3;
  objc_storeStrong(&v6->_sessionClass, a4);
  mach_service = xpc_connection_create_mach_service(a3, &_dispatch_main_q, 1uLL);
  v9 = p_isa[3];
  p_isa[3] = mach_service;

  v10 = p_isa[3];
  if (v10)
  {
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001000;
    handler[3] = &unk_1000083A0;
    v11 = p_isa;
    v16 = v11;
    xpc_connection_set_event_handler(v10, handler);
    xpc_connection_resume(p_isa[3]);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_10000100C, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    p_isa = &v16->super.isa;
  }

  else
  {
    v13 = qword_10000C908;
    if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_FAULT))
    {
      sub_100002D54(v13);
    }

    v11 = 0;
  }

  return v11;
}

- (void)_handleEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_connection)
  {
    [(BTXpcService *)self _handleConnection:v4];
  }

  else
  {
    v6 = type;
    v7 = qword_10000C908;
    v8 = os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_ERROR);
    if (v6 == &_xpc_type_error)
    {
      if (v8)
      {
        sub_100002E10(v4, v7);
      }
    }

    else if (v8)
    {
      sub_100002D98(v4, v7);
    }
  }
}

- (void)_handleConnection:(id)a3
{
  v4 = a3;
  [(BTXpcService *)self name];
  v5 = xpc_connection_copy_entitlement_value();
  v6 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_BOOL && xpc_BOOL_get_value(v6))
  {
  }

  else
  {
    v7 = qword_10000C908;
    if (os_log_type_enabled(qword_10000C908, OS_LOG_TYPE_ERROR))
    {
      sub_100002E88(v7);
    }

    xpc_connection_cancel(v4);
  }
}

@end