@interface TMMonotonicClock
- (TMMonotonicClock)initWithSyncInterval:(double)a3;
- (double)coarseMonotonicTime;
- (unint64_t)lastWake;
- (void)dealloc;
- (void)montonicTimeForMachTime:(unint64_t)a3 toQueue:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation TMMonotonicClock

- (double)coarseMonotonicTime
{
  v3 = [(TMMonotonicClock *)self machTime];
  v4 = sub_100001918(0, 0);
  v5 = sub_100001E00(self->_lastCoarseMonotonicTimeMachTime, v3);
  v6 = v4 - self->_lastCoarseMonotonicTime;
  v7 = sub_100001EB0();
  if (v6 >= v7 * -0.5)
  {
    if (v5 > v7 + v7 && v6 < v7 * 0.5)
    {
      v14 = qword_100033218;
      if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
      {
        lastCoarseMonotonicTime = self->_lastCoarseMonotonicTime;
        v17 = 134219008;
        v18 = v4;
        v19 = 2048;
        v20 = lastCoarseMonotonicTime;
        v21 = 2048;
        v22 = v6;
        v23 = 2048;
        v24 = v5;
        v25 = 2048;
        v26 = v7;
        v10 = "PMU RTC appears stalled: %f - %f = %f; mach advanced by %f; resolution %f";
        v11 = v14;
        v12 = 52;
        goto LABEL_12;
      }
    }
  }

  else
  {
    v8 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_FAULT))
    {
      v9 = self->_lastCoarseMonotonicTime;
      v17 = 134218752;
      v18 = v4;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      v10 = "PMU RTC went backward: %f - %f = %f; resolution %f";
      v11 = v8;
      v12 = 42;
LABEL_12:
      _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, v10, &v17, v12);
    }
  }

  self->_lastCoarseMonotonicTime = v4;
  self->_lastCoarseMonotonicTimeMachTime = v3;
  return v4;
}

- (unint64_t)lastWake
{
  if (qword_100033208 != -1)
  {
    sub_1000174E4();
  }

  v7 = 8;
  v8 = 0;
  if (sysctl(&unk_1000331F8, qword_100033200, &v8, &v7, 0, 0))
  {
    v3 = qword_100033218;
    if (os_log_type_enabled(qword_100033218, OS_LOG_TYPE_ERROR))
    {
      sub_1000174F8(v3);
    }

    v4 = -1;
    v8 = -1;
  }

  else
  {
    v4 = v8;
  }

  if (self->_lastWake != v4)
  {
    self->_lastWake = v4;
    v5 = qword_100033220;
    if (os_log_type_enabled(qword_100033220, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cmd,lastWake,mach,%llu", buf, 0xCu);
    }

    AnalyticsSendEventLazy();
    return v8;
  }

  return v4;
}

- (TMMonotonicClock)initWithSyncInterval:(double)a3
{
  v8.receiver = self;
  v8.super_class = TMMonotonicClock;
  v4 = [(TMMonotonicClock *)&v8 init];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = [+[NSString stringWithFormat:](NSString UTF8String:@"%@.%llx"];
    v4->_workQ = dispatch_queue_create(v6, 0);
    v4->_lastCoarseMonotonicTimeMachTime = [(TMMonotonicClock *)v4 machTime];
    v4->_syncInterval = a3;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TMMonotonicClock;
  [(TMMonotonicClock *)&v3 dealloc];
}

- (void)montonicTimeForMachTime:(unint64_t)a3 toQueue:(id)a4 withCompletionHandler:(id)a5
{
  v10 = mach_absolute_time();
  if (v10 < a3)
  {
    sub_100017478(a2, self, a3, v10);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000C190;
  v11[3] = &unk_100029210;
  v11[4] = self;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = a3;
  dispatch_async([(TMMonotonicClock *)self workQ], v11);
}

@end