@interface FMDDispatchTimer
- (FMDDispatchTimer)initWithQueue:(id)a3 timeout:(double)a4 completion:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)start;
@end

@implementation FMDDispatchTimer

- (FMDDispatchTimer)initWithQueue:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = FMDDispatchTimer;
  v10 = [(FMDDispatchTimer *)&v17 init];
  if (v10)
  {
    if (v8)
    {
      v11 = v8;
      queue = v10->_queue;
      v10->_queue = v11;
    }

    else
    {
      v13 = &_dispatch_main_q;
      queue = v10->_queue;
      v10->_queue = &_dispatch_main_q;
    }

    v10->_timeout = a4;
    v14 = objc_retainBlock(v9);
    completion = v10->_completion;
    v10->_completion = v14;

    v10->_leewayTimeInterval = 1.0;
  }

  return v10;
}

- (void)dealloc
{
  timerSource = self->_timerSource;
  if (timerSource)
  {
    dispatch_source_cancel(timerSource);
  }

  v4.receiver = self;
  v4.super_class = FMDDispatchTimer;
  [(FMDDispatchTimer *)&v4 dealloc];
}

- (void)start
{
  v3 = [(FMDDispatchTimer *)self queue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(FMDDispatchTimer *)self setTimerSource:v4];

  objc_initWeak(&location, self);
  v5 = [(FMDDispatchTimer *)self timerSource];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10014C014;
  v16 = &unk_1002CD518;
  objc_copyWeak(&v17, &location);
  dispatch_source_set_event_handler(v5, &v13);

  [(FMDDispatchTimer *)self timeout:v13];
  v7 = v6;
  [(FMDDispatchTimer *)self leewayTimeInterval];
  v9 = v8;
  v10 = [(FMDDispatchTimer *)self timerSource];
  v11 = dispatch_time(0, (v7 * 1000000000.0));
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, (v9 * 1000000000.0));

  v12 = [(FMDDispatchTimer *)self timerSource];
  dispatch_resume(v12);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)cancel
{
  v3 = [(FMDDispatchTimer *)self timerSource];

  if (v3)
  {
    v4 = [(FMDDispatchTimer *)self timerSource];
    dispatch_source_cancel(v4);

    [(FMDDispatchTimer *)self setTimerSource:0];
  }
}

@end