@interface DispatchTimer
- (DispatchTimer)initWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period handlerBlock:(id)block;
- (void)dealloc;
- (void)fireTimer;
- (void)invalidate;
- (void)scheduleTimer;
@end

@implementation DispatchTimer

- (DispatchTimer)initWithIdentifier:(id)identifier delay:(double)delay gracePeriod:(double)period handlerBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = DispatchTimer;
  v13 = [(DispatchTimer *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    v14->_delay = delay;
    v14->_gracePeriod = period;
    v15 = objc_retainBlock(blockCopy);
    handlerBlock = v14->_handlerBlock;
    v14->_handlerBlock = v15;

    [(DispatchTimer *)v14 scheduleTimer];
  }

  return v14;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(DispatchTimer *)self invalidate];
  }

  v3.receiver = self;
  v3.super_class = DispatchTimer;
  [(DispatchTimer *)&v3 dealloc];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    timerSource = self->_timerSource;
    if (timerSource)
    {
      dispatch_source_cancel(timerSource);
      v4 = self->_timerSource;
      self->_timerSource = 0;
    }
  }
}

- (void)scheduleTimer
{
  v3 = +[MagicSwitchEnabler sharedInstance];
  workQueue = [v3 workQueue];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, workQueue);

  v6 = dispatch_time(0, (self->_delay * 1000000000.0));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100007C64;
  v9[3] = &unk_1000184D0;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v5, v9);
  timerSource = self->_timerSource;
  self->_timerSource = v5;
  v8 = v5;

  dispatch_resume(v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)fireTimer
{
  timerSource = self->_timerSource;
  self->_timerSource = 0;

  self->_invalidated = 1;
  v4 = *(self->_handlerBlock + 2);

  v4();
}

@end