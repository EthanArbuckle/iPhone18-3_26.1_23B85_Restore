@interface WakingTimer
- (WakingTimer)initWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period handlerBlock:(id)block;
- (void)dealloc;
- (void)fireTimer;
- (void)invalidate;
@end

@implementation WakingTimer

- (WakingTimer)initWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period handlerBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v19.receiver = self;
  v19.super_class = WakingTimer;
  v13 = [(WakingTimer *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    v14->_delay = delay;
    v14->_gracePeriod = period;
    v15 = objc_retainBlock(blockCopy);
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