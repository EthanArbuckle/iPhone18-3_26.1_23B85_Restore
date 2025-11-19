@interface BTWatchdog
- (void)_startTimer;
- (void)_stopTimer;
- (void)_timeout;
- (void)_timerEvent;
- (void)beginTransaction;
- (void)endTransaction;
@end

@implementation BTWatchdog

- (void)beginTransaction
{
  obj = self;
  objc_sync_enter(obj);
  [(BTWatchdog *)obj setIsTransacting:1];
  [(BTWatchdog *)obj setTransactionCount:[(BTWatchdog *)obj transactionCount]+ 1];
  v2 = [(BTWatchdog *)obj timer];

  if (!v2)
  {
    [(BTWatchdog *)obj _startTimer];
  }

  objc_sync_exit(obj);
}

- (void)endTransaction
{
  obj = self;
  objc_sync_enter(obj);
  [(BTWatchdog *)obj setIsTransacting:0];
  objc_sync_exit(obj);
}

- (void)_startTimer
{
  v3 = dispatch_get_global_queue(17, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(BTWatchdog *)self setTimer:v4];

  v5 = [(BTWatchdog *)self timer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000271C;
  handler[3] = &unk_1000189C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);

  v6 = [(BTWatchdog *)self timer];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002724;
  v10[3] = &unk_1000189C8;
  v10[4] = self;
  dispatch_source_set_cancel_handler(v6, v10);

  v7 = [(BTWatchdog *)self timer];
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(v7, v8, 0x2540BE400uLL, 0x3B9ACA00uLL);

  v9 = [(BTWatchdog *)self timer];
  dispatch_resume(v9);
}

- (void)_stopTimer
{
  v2 = [(BTWatchdog *)self timer];
  dispatch_source_cancel(v2);
}

- (void)_timerEvent
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(BTWatchdog *)obj timerTransactionCount];
  if (v2 == [(BTWatchdog *)obj transactionCount])
  {
    if ([(BTWatchdog *)obj isTransacting])
    {
      [(BTWatchdog *)obj _timeout];
    }

    else
    {
      [(BTWatchdog *)obj _stopTimer];
    }
  }

  else
  {
    [(BTWatchdog *)obj setTimerTransactionCount:[(BTWatchdog *)obj transactionCount]];
  }

  objc_sync_exit(obj);
}

- (void)_timeout
{
  if ((DMIsMigrationNeeded() & 1) == 0)
  {
    sub_10000E90C();
  }

  if (qword_10001EFC0 != -1)
  {
    sub_10000E938();
  }
}

@end