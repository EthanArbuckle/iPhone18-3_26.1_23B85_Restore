@interface FMDXPCJanitor
- (FMDXPCJanitor)initWithName:(id)name gracePeriod:(double)period cleanupTask:(id)task;
- (id)activityHandler;
- (void)deactivate;
- (void)handleActivity;
- (void)performWork;
- (void)schedule:(id)schedule requireClass:(unint64_t)class;
@end

@implementation FMDXPCJanitor

- (FMDXPCJanitor)initWithName:(id)name gracePeriod:(double)period cleanupTask:(id)task
{
  nameCopy = name;
  taskCopy = task;
  v13.receiver = self;
  v13.super_class = FMDXPCJanitor;
  v10 = [(FMDXPCJanitor *)&v13 init];
  if (v10)
  {
    v11 = [@"com.apple.icloud.findmydeviced.fmdxpcjanitor." stringByAppendingString:nameCopy];
    [(FMDXPCJanitor *)v10 setName:v11];

    [(FMDXPCJanitor *)v10 setGracePeriod:period];
    [(FMDXPCJanitor *)v10 setCleanupTask:taskCopy];
    [(FMDXPCJanitor *)v10 handleActivity];
  }

  return v10;
}

- (void)schedule:(id)schedule requireClass:(unint64_t)class
{
  scheduleCopy = schedule;
  [(FMDXPCJanitor *)self gracePeriod];
  v7 = [scheduleCopy dateByAddingTimeInterval:?];

  [v7 timeIntervalSinceNow];
  v9 = v8;

  [(FMDXPCJanitor *)self gracePeriod];
  v11 = v10;
  v12 = sub_100002880();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDXPCJanitor: Scheduling cleanup XPC activity in %lld", &v18, 0xCu);
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v13, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_REPEATING, 0);
  xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_BOOL(v13, XPC_ACTIVITY_POWER_NAP, 1);
  xpc_dictionary_set_int64(v13, XPC_ACTIVITY_DELAY, v9);
  xpc_dictionary_set_int64(v13, XPC_ACTIVITY_GRACE_PERIOD, v11);
  name = [(FMDXPCJanitor *)self name];
  v15 = [name cStringUsingEncoding:4];

  if (class)
  {
    v16 = &XPC_ACTIVITY_REQUIRES_CLASS_A;
    if (class != 1)
    {
      v16 = &XPC_ACTIVITY_REQUIRES_CLASS_C;
    }

    xpc_dictionary_set_BOOL(v13, *v16, 1);
  }

  activityHandler = [(FMDXPCJanitor *)self activityHandler];
  xpc_activity_register(v15, v13, activityHandler);
}

- (void)deactivate
{
  name = [(FMDXPCJanitor *)self name];

  v4 = sub_100002880();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (name)
  {
    if (v5)
    {
      name2 = [(FMDXPCJanitor *)self name];
      v9 = 138412290;
      v10 = name2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDXPCJanitor Unregistering XPC activity %@", &v9, 0xCu);
    }

    name3 = [(FMDXPCJanitor *)self name];
    v8 = [name3 cStringUsingEncoding:4];

    xpc_activity_unregister(v8);
  }

  else
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cannot unregister unnamed XPC activity", &v9, 2u);
    }
  }
}

- (id)activityHandler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001B50F8;
  v4[3] = &unk_1002D0638;
  v4[4] = self;
  v2 = objc_retainBlock(v4);

  return v2;
}

- (void)handleActivity
{
  name = [(FMDXPCJanitor *)self name];
  v4 = [name cStringUsingEncoding:4];

  activityHandler = [(FMDXPCJanitor *)self activityHandler];
  xpc_activity_register(v4, XPC_ACTIVITY_CHECK_IN, activityHandler);
}

- (void)performWork
{
  cleanupTask = [(FMDXPCJanitor *)self cleanupTask];

  if (cleanupTask)
  {
    cleanupTask2 = [(FMDXPCJanitor *)self cleanupTask];
    cleanupTask2[2]();
  }

  else
  {
    v4 = sub_100002880();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDXPCJanitor initialized without cleanupTask. No work to do.", buf, 2u);
    }
  }
}

@end