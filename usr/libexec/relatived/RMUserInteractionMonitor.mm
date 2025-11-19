@interface RMUserInteractionMonitor
+ (id)userInteractionMonitor;
- (void)sendUserInteractionUpdate;
- (void)startUserInteractionUpdatesToQueue:(id)a3 withHandler:(id)a4;
- (void)stopUserInteractionUpdates;
@end

@implementation RMUserInteractionMonitor

+ (id)userInteractionMonitor
{
  v2 = objc_opt_new();

  return v2;
}

- (void)startUserInteractionUpdatesToQueue:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  [(RMUserInteractionMonitor *)self setQueue:v6];
  [(RMUserInteractionMonitor *)self setHandler:v7];
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
  v3 = [(RMUserInteractionMonitor *)self queue];
  if (v3)
  {
    v4 = v3;
    v5 = [(RMUserInteractionMonitor *)self handler];

    if (v5)
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

        v9 = [(RMUserInteractionMonitor *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100008FE8;
        block[3] = &unk_100024948;
        block[4] = self;
        dispatch_async(v9, block);
      }
    }
  }
}

@end