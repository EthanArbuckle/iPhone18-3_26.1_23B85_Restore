@interface EPSagaTransactionSignalProcessName
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionSignalProcessName

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  v6 = [entryCopy objectForKeyedSubscript:@"processName"];
  v7 = [entryCopy objectForKeyedSubscript:@"signalNumber"];
  +[NRUnixProcessSignaler signalProcessNamed:withSignal:](NRUnixProcessSignaler, "signalProcessNamed:withSignal:", v6, [v7 intValue]);
  queue = [entryCopy queue];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051BF0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  queue = [entry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051CD0;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end