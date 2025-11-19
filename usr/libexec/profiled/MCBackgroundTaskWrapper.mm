@interface MCBackgroundTaskWrapper
- (MCBackgroundTaskWrapper)initWithTask:(id)a3;
- (void)dealloc;
- (void)setTaskCompleted;
@end

@implementation MCBackgroundTaskWrapper

- (MCBackgroundTaskWrapper)initWithTask:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MCBackgroundTaskWrapper;
  v6 = [(MCBackgroundTaskWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, a3);
  }

  return v7;
}

- (void)setTaskCompleted
{
  v3 = [(MCBackgroundTaskWrapper *)self task];
  [v3 setTaskCompleted];

  [(MCBackgroundTaskWrapper *)self setCompleted:1];
}

- (void)dealloc
{
  if (![(MCBackgroundTaskWrapper *)self completed])
  {
    v3 = _MCLogObjects[0];
    if (os_log_type_enabled(_MCLogObjects[0], OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(MCBackgroundTaskWrapper *)self task];
      v6 = [v5 identifier];
      *buf = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "MCBackgroundTaskWrapper dealloc called with an incomplete task: %{public}@", buf, 0xCu);
    }

    [(MCBackgroundTaskWrapper *)self setTaskCompleted];
  }

  v7.receiver = self;
  v7.super_class = MCBackgroundTaskWrapper;
  [(MCBackgroundTaskWrapper *)&v7 dealloc];
}

@end