@interface EPSagaTransactionSignalProcessName
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionSignalProcessName

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"processName"];
  v7 = [v5 objectForKeyedSubscript:@"signalNumber"];
  +[NRUnixProcessSignaler signalProcessNamed:withSignal:](NRUnixProcessSignaler, "signalProcessNamed:withSignal:", v6, [v7 intValue]);
  v8 = [v5 queue];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051BF0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v8, block);
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = [a3 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051CD0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v5, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end