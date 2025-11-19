@interface EPSagaTransactionWallClockWait
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)cancelTimer;
- (void)setTimerDuration:(double)a3 withBlock:(id)a4;
@end

@implementation EPSagaTransactionWallClockWait

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"timeoutDuration"];
  if (v8)
  {
    objc_initWeak(&location, self);
    [v8 doubleValue];
    v10 = v9;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000CABE8;
    v12[3] = &unk_100175EB8;
    objc_copyWeak(&v13, &location);
    [(EPSagaTransactionWallClockWait *)self setTimerDuration:v12 withBlock:v10];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = [(EPSagaTransactionWallClockWait *)self delegate];
    [v11 transactionDidComplete:self];
  }
}

- (void)setTimerDuration:(double)a3 withBlock:(id)a4
{
  v6 = a4;
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v8 = self->_currentTimer;
    self->_currentTimer = 0;
  }

  if (v6)
  {
    v9 = +[EPFactory queue];
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v9);

    v11 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000CAD8C;
    v14[3] = &unk_100175FA0;
    v14[4] = self;
    v15 = v6;
    dispatch_source_set_event_handler(v10, v14);
    dispatch_resume(v10);
    v12 = self->_currentTimer;
    self->_currentTimer = v10;
    v13 = v10;
  }
}

- (void)cancelTimer
{
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v4 = self->_currentTimer;
    self->_currentTimer = 0;

    v5 = [(EPSagaTransactionWallClockWait *)self delegate];
    [v5 transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end