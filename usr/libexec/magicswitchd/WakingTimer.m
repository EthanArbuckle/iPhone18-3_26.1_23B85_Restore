@interface WakingTimer
- (WakingTimer)initWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 handlerBlock:(id)a6;
- (void)dealloc;
- (void)fireTimer;
- (void)invalidate;
@end

@implementation WakingTimer

- (WakingTimer)initWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 handlerBlock:(id)a6
{
  v11 = a3;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = WakingTimer;
  v13 = [(WakingTimer *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    v14->_delay = a4;
    v14->_gracePeriod = a5;
    v15 = objc_retainBlock(v12);
    handlerBlock = v14->_handlerBlock;
    v14->_handlerBlock = v15;

    v17 = +[WakingTimerScheduler sharedInstance];
    [v17 scheduleTimer:v14];
  }

  return v14;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(WakingTimer *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = WakingTimer;
  [(WakingTimer *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    v4 = +[WakingTimerScheduler sharedInstance];
    [v4 cancelTimer:self];
  }
}

- (void)fireTimer
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    (*(self->_handlerBlock + 2))();
  }
}

@end