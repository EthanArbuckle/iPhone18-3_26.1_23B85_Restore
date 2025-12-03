@interface RDXPCActivity
+ (void)initialize;
- (BOOL)deferIfNeeded;
- (RDXPCActivity)initWithName:(id)name criteria:(id)criteria;
- (id)description;
- (void)dealloc;
- (void)markCompleted;
@end

@implementation RDXPCActivity

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100071AA8 = os_log_create("com.apple.SensorKit", "RDXPCActivity");
  }
}

- (RDXPCActivity)initWithName:(id)name criteria:(id)criteria
{
  v8.receiver = self;
  v8.super_class = RDXPCActivity;
  v6 = [(RDXPCActivity *)&v8 init];
  if (v6)
  {
    v6->_name = name;
    v6->_criteria = criteria;
  }

  return v6;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 8);
    objc_setProperty_nonatomic(self, v3, 0, 16);
    objc_setProperty_nonatomic(self, v4, 0, 24);
  }

  v5.receiver = self;
  v5.super_class = RDXPCActivity;
  [(RDXPCActivity *)&v5 dealloc];
}

- (BOOL)deferIfNeeded
{
  should_defer = xpc_activity_should_defer(self->_xpcActivity);
  if (should_defer)
  {
    v4 = qword_100071AA8;
    if (os_log_type_enabled(qword_100071AA8, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      v9 = 138543362;
      v10 = name;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Marking XPC Activity %{public}@ as DEFERRED", &v9, 0xCu);
    }

    if (!xpc_activity_set_state(self->_xpcActivity, 3))
    {
      v6 = qword_100071AA8;
      if (os_log_type_enabled(qword_100071AA8, OS_LOG_TYPE_ERROR))
      {
        v8 = self->_name;
        v9 = 138543618;
        v10 = v8;
        v11 = 2050;
        v12 = 3;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to mark the activity %{public}@ as %{public}ld", &v9, 0x16u);
      }
    }
  }

  return should_defer;
}

- (void)markCompleted
{
  v3 = qword_100071AA8;
  if (os_log_type_enabled(qword_100071AA8, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      name = self->_name;
    }

    else
    {
      name = 0;
    }

    v7 = 138543362;
    v8 = name;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Marking XPC Activity %{public}@ as DONE", &v7, 0xCu);
  }

  if (self && !xpc_activity_set_state(self->_xpcActivity, 5))
  {
    v5 = qword_100071AA8;
    if (os_log_type_enabled(qword_100071AA8, OS_LOG_TYPE_ERROR))
    {
      v6 = self->_name;
      v7 = 138543618;
      v8 = v6;
      v9 = 2050;
      v10 = 5;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to mark the activity %{public}@ as %{public}ld", &v7, 0x16u);
    }
  }
}

- (id)description
{
  v3 = xpc_copy_description(self->_criteria);
  v4 = [NSString stringWithFormat:@"%@: %@, criteria: %s", objc_opt_class(), self->_name, v3];
  free(v3);
  return v4;
}

@end