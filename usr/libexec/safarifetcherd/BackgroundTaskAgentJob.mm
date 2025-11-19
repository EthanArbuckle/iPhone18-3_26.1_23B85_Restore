@interface BackgroundTaskAgentJob
- (BackgroundTaskAgentJob)initWithName:(id)a3 startDelay:(double)a4;
- (BackgroundTaskAgentJobDelegate)delegate;
- (void)backgroundActivity:(id)a3 didBecomeSatisfied:(BOOL)a4;
- (void)dealloc;
- (void)schedule;
- (void)unschedule;
@end

@implementation BackgroundTaskAgentJob

- (BackgroundTaskAgentJob)initWithName:(id)a3 startDelay:(double)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = BackgroundTaskAgentJob;
  v7 = [(BackgroundTaskAgentJob *)&v15 init];
  v8 = v7;
  if (v7)
  {
    *&v7->_isSatisfied = 0;
    v7->_startDelay = a4;
    v9 = xpc_dictionary_create(0, 0, 0);
    requirements = v8->_requirements;
    v8->_requirements = v9;

    v11 = [v6 copy];
    name = v8->_name;
    v8->_name = v11;

    v13 = v8;
  }

  return v8;
}

- (void)dealloc
{
  [(BackgroundTaskAgentJob *)self unschedule];
  v3.receiver = self;
  v3.super_class = BackgroundTaskAgentJob;
  [(BackgroundTaskAgentJob *)&v3 dealloc];
}

- (void)schedule
{
  if (!self->_isScheduled)
  {
    objc_initWeak(&location, self);
    xpc_dictionary_set_int64(self->_requirements, XPC_ACTIVITY_DELAY, self->_startDelay);
    xpc_dictionary_set_string(self->_requirements, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_dictionary_set_BOOL(self->_requirements, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
    xpc_dictionary_set_BOOL(self->_requirements, XPC_ACTIVITY_REPEATING, 0);
    xpc_dictionary_set_BOOL(self->_requirements, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);
    xpc_dictionary_set_int64(self->_requirements, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
    objects = xpc_string_create([@"com.apple.mobilesafari" UTF8String]);
    v3 = xpc_array_create(&objects, 1uLL);
    xpc_dictionary_set_value(self->_requirements, XPC_ACTIVITY_DUET_RELATED_APPLICATIONS, v3);
    xpc_dictionary_set_BOOL(self->_requirements, XPC_ACTIVITY_RUN_WHEN_APP_FOREGROUNDED, 1);
    v4 = sub_100009E64();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138543362;
      v12 = name;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "background activity [%{public}@] to be scheduled.", buf, 0xCu);
    }

    v6 = [(NSString *)self->_name UTF8String];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100007150;
    handler[3] = &unk_10001C8D8;
    objc_copyWeak(&v8, &location);
    xpc_activity_register(v6, XPC_ACTIVITY_CHECK_IN, handler);
    self->_isScheduled = 1;
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }
}

- (void)backgroundActivity:(id)a3 didBecomeSatisfied:(BOOL)a4
{
  self->_isSatisfied = a4;
  objc_storeStrong(&self->_activity, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WeakRetained;
  if (self->_isSatisfied)
  {
    [WeakRetained backgroundTaskAgentJobDidBecomeSatisfied:self withJobDetails:0];
  }

  else
  {
    [WeakRetained backgroundTaskAgentJobDidBecomeUnsatisfied:self withJobDetails:0];
  }
}

- (void)unschedule
{
  activity = self->_activity;
  if (activity && self->_isSatisfied)
  {
    xpc_activity_set_state(activity, 5);
    v4 = self->_activity;
    self->_activity = 0;
  }

  xpc_activity_unregister([(NSString *)self->_name UTF8String]);
  v5 = sub_100009E64();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    v7 = 138543362;
    v8 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "background activity [%{public}@] is unscheduled.", &v7, 0xCu);
  }

  *&self->_isSatisfied = 0;
}

- (BackgroundTaskAgentJobDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end