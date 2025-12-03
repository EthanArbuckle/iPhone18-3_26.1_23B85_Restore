@interface LEAudioXpcWatchdog
- (void)_startTimer;
- (void)_stopTimer;
- (void)_timerEvent;
- (void)beginTransaction;
- (void)endTransaction;
@end

@implementation LEAudioXpcWatchdog

- (void)beginTransaction
{
  obj = self;
  objc_sync_enter(obj);
  [(LEAudioXpcWatchdog *)obj setIsTransacting:1];
  [(LEAudioXpcWatchdog *)obj setTransactionCount:[(LEAudioXpcWatchdog *)obj transactionCount]+ 1];
  timer = [(LEAudioXpcWatchdog *)obj timer];

  if (!timer)
  {
    [(LEAudioXpcWatchdog *)obj _startTimer];
  }

  objc_sync_exit(obj);
}

- (void)endTransaction
{
  obj = self;
  objc_sync_enter(obj);
  [(LEAudioXpcWatchdog *)obj setIsTransacting:0];
  objc_sync_exit(obj);
}

- (void)_startTimer
{
  v3 = dispatch_get_global_queue(17, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(LEAudioXpcWatchdog *)self setTimer:v4];

  timer = [(LEAudioXpcWatchdog *)self timer];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10000AF28;
  handler[3] = &unk_100094CB8;
  handler[4] = self;
  dispatch_source_set_event_handler(timer, handler);

  timer2 = [(LEAudioXpcWatchdog *)self timer];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000AF30;
  v10[3] = &unk_100094CB8;
  v10[4] = self;
  dispatch_source_set_cancel_handler(timer2, v10);

  timer3 = [(LEAudioXpcWatchdog *)self timer];
  v8 = dispatch_time(0, 10000000000);
  dispatch_source_set_timer(timer3, v8, 0x2540BE400uLL, 0x3B9ACA00uLL);

  timer4 = [(LEAudioXpcWatchdog *)self timer];
  dispatch_resume(timer4);
}

- (void)_stopTimer
{
  timer = [(LEAudioXpcWatchdog *)self timer];
  dispatch_source_cancel(timer);
}

- (void)_timerEvent
{
  obj = self;
  objc_sync_enter(obj);
  timerTransactionCount = [(LEAudioXpcWatchdog *)obj timerTransactionCount];
  if (timerTransactionCount == [(LEAudioXpcWatchdog *)obj transactionCount])
  {
    if ([(LEAudioXpcWatchdog *)obj isTransacting])
    {
      [(LEAudioXpcWatchdog *)obj _timeout];
    }

    else
    {
      [(LEAudioXpcWatchdog *)obj _stopTimer];
    }
  }

  else
  {
    [(LEAudioXpcWatchdog *)obj setTimerTransactionCount:[(LEAudioXpcWatchdog *)obj transactionCount]];
  }

  objc_sync_exit(obj);
}

@end