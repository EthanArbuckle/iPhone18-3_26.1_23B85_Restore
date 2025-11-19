@interface DispatchTimer
- (DispatchTimer)initWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 handlerQueue:(id)a6 handlerBlock:(id)a7;
- (void)dealloc;
- (void)fireTimer;
- (void)invalidate;
- (void)scheduleTimer;
@end

@implementation DispatchTimer

- (DispatchTimer)initWithIdentifier:(id)a3 delay:(double)a4 gracePeriod:(double)a5 handlerQueue:(id)a6 handlerBlock:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v21.receiver = self;
  v21.super_class = DispatchTimer;
  v16 = [(DispatchTimer *)&v21 init];
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

    [(DispatchTimer *)v17 scheduleTimer];
  }

  return v17;
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
      v5 = self->_timerSource;
      self->_timerSource = 0;
    }

    handlerBlock = self->_handlerBlock;
    self->_handlerBlock = 0;

    handlerQueue = self->_handlerQueue;
    self->_handlerQueue = 0;
  }
}

- (void)scheduleTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_handlerQueue);
  v4 = dispatch_time(0, (self->_delay * 1000000000.0));
  dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A406C;
  v7[3] = &unk_100175EB8;
  objc_copyWeak(&v8, &location);
  dispatch_source_set_event_handler(v3, v7);
  timerSource = self->_timerSource;
  self->_timerSource = v3;
  v6 = v3;

  dispatch_resume(v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)fireTimer
{
  timerSource = self->_timerSource;
  self->_timerSource = 0;

  self->_invalidated = 1;
  v5 = objc_retainBlock(self->_handlerBlock);
  handlerBlock = self->_handlerBlock;
  self->_handlerBlock = 0;

  v5[2]();
}

@end