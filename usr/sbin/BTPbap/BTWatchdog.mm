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
  timer = [(BTWatchdog *)obj timer];

  if (!timer)
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

  timer = [(BTWatchdog *)self timer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000209C;
  handler[3] = &unk_100008568;
  handler[4] = self;
  dispatch_source_set_event_handler(timer, handler);

  timer2 = [(BTWatchdog *)self timer];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000020A4;
  v10[3] = &unk_100008568;
  v10[4] = self;
  dispatch_source_set_cancel_handler(timer2, v10);

  timer3 = [(BTWatchdog *)self timer];
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(timer3, v8, 0x2540BE400uLL, 0x3B9ACA00uLL);

  timer4 = [(BTWatchdog *)self timer];
  dispatch_resume(timer4);
}

- (void)_stopTimer
{
  timer = [(BTWatchdog *)self timer];
  dispatch_source_cancel(timer);
}

- (void)_timerEvent
{
  obj = self;
  objc_sync_enter(obj);
  timerTransactionCount = [(BTWatchdog *)obj timerTransactionCount];
  if (timerTransactionCount == [(BTWatchdog *)obj transactionCount])
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
    sub_1000031B4();
  }

  if (qword_10000C940 != -1)
  {
    sub_1000031E0();
  }
}

@end