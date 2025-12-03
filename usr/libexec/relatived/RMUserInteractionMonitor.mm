@interface RMUserInteractionMonitor
+ (id)userInteractionMonitor;
- (void)sendUserInteractionUpdate;
- (void)startUserInteractionUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)stopUserInteractionUpdates;
@end

@implementation RMUserInteractionMonitor

+ (id)userInteractionMonitor
{
  v2 = objc_opt_new();

  return v2;
}

- (void)startUserInteractionUpdatesToQueue:(id)queue withHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  if (qword_10002C0C8 != -1)
  {
    sub_10001351C();
  }

  v8 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[RMUserInteractionMonitor] Starting user interaction monitoring", v9, 2u);
  }

  [(RMUserInteractionMonitor *)self setQueue:queueCopy];
  [(RMUserInteractionMonitor *)self setHandler:handlerCopy];
}

- (void)stopUserInteractionUpdates
{
  if (qword_10002C0C8 != -1)
  {
    sub_10001351C();
  }

  v2 = qword_10002C0D0;
  if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[RMUserInteractionMonitor] Stopping user interaction monitoring", v3, 2u);
  }
}

- (void)sendUserInteractionUpdate
{
  queue = [(RMUserInteractionMonitor *)self queue];
  if (queue)
  {
    v4 = queue;
    handler = [(RMUserInteractionMonitor *)self handler];

    if (handler)
    {
      v6 = sub_1000087A8();
      [(RMUserInteractionMonitor *)self lastUserInteractionUpdateTimestamp];
      if (v6 - v7 >= 0.5)
      {
        [(RMUserInteractionMonitor *)self setLastUserInteractionUpdateTimestamp:v6];
        if (qword_10002C0C8 != -1)
        {
          sub_10001351C();
        }

        v8 = qword_10002C0D0;
        if (os_log_type_enabled(qword_10002C0D0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[RMUserInteractionMonitor] Sending user interaction update", buf, 2u);
        }

        queue2 = [(RMUserInteractionMonitor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100008FE8;
        block[3] = &unk_100024948;
        block[4] = self;
        dispatch_async(queue2, block);
      }
    }
  }
}

@end