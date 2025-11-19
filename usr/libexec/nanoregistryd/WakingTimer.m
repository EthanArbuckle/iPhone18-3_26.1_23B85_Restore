@interface WakingTimer
- (WakingTimer)initWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 handlerQueue:(id)a6 handlerBlock:(id)a7;
- (void)dealloc;
- (void)fireTimer;
- (void)invalidate;
@end

@implementation WakingTimer

- (WakingTimer)initWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 handlerQueue:(id)a6 handlerBlock:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = WakingTimer;
  v16 = [(WakingTimer *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    v17->_delay = a4;
    v17->_gracePeriod = a5;
    objc_storeStrong(&v17->_handlerQueue, a6);
    v18 = objc_retainBlock(v15);
    handlerBlock = v17->_handlerBlock;
    v17->_handlerBlock = v18;

    v20 = +[WakingTimerScheduler sharedInstance];
    [v20 scheduleTimer:v17];
  }

  return v17;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v3 = nr_daemon_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1001018E0(v3);
    }

    [(WakingTimer *)self invalidate];
  }

  v4.receiver = self;
  v4.super_class = WakingTimer;
  [(WakingTimer *)&v4 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v4 = +[WakingTimerScheduler sharedInstance];
    [v4 cancelTimer:self];

    handlerBlock = self->_handlerBlock;
    self->_handlerBlock = 0;

    handlerQueue = self->_handlerQueue;
    self->_handlerQueue = 0;
  }
}

- (void)fireTimer
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v3 = objc_retainBlock(self->_handlerBlock);
    handlerBlock = self->_handlerBlock;
    self->_handlerBlock = 0;

    v5 = [(WakingTimer *)self handlerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008E638;
    block[3] = &unk_100175D58;
    v8 = v3;
    v6 = v3;
    dispatch_async(v5, block);
  }
}

@end