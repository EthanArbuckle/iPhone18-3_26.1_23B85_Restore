@interface EPSagaTransactionWaitForDeviceCollectionChanges
- (EPRoutingSlipEntry)routingSlipEntry;
- (EPServiceRegistry)serviceRegistry;
- (EPTransactionDelegate)delegate;
- (NRDeviceCollectionDiff)diff;
- (void)addDiffObserver;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)cancelWithError:(id)error;
- (void)check;
- (void)invalidate;
- (void)removeDiffObserver;
- (void)startTimer;
- (void)stopTimer;
- (void)timeout:(id)timeout;
- (void)transactionDidComplete;
@end

@implementation EPSagaTransactionWaitForDeviceCollectionChanges

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  objc_storeWeak(&self->_serviceRegistry, registryCopy);
  objc_storeWeak(&self->_routingSlipEntry, entryCopy);
  v8 = [entryCopy objectForKeyedSubscript:@"deviceCollectionWaitingTransactionDiff"];

  objc_storeWeak(&self->_diff, v8);
  [registryCopy addService:self];

  [(EPSagaTransactionWaitForDeviceCollectionChanges *)self addDiffObserver];
  [(EPSagaTransactionWaitForDeviceCollectionChanges *)self startTimer];

  [(EPSagaTransactionWaitForDeviceCollectionChanges *)self check];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  queue = [entry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014A54;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)transactionDidComplete
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  [WeakRetained removeService:self];

  [(EPSagaTransactionWaitForDeviceCollectionChanges *)self stopTimer];
  [(EPSagaTransactionWaitForDeviceCollectionChanges *)self removeDiffObserver];
  if (!self->_transactionComplete)
  {
    self->_transactionComplete = 1;
    delegate = [(EPSagaTransactionWaitForDeviceCollectionChanges *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)addDiffObserver
{
  if (!self->_diffObserverToken)
  {
    v9[9] = v2;
    v9[10] = v3;
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    v6 = [WeakRetained serviceFromClass:objc_opt_class()];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100014C20;
    v9[3] = &unk_100175920;
    v9[4] = self;
    v7 = [v6 addDiffObserverWithWriteBlock:v9];
    diffObserverToken = self->_diffObserverToken;
    self->_diffObserverToken = v7;
  }
}

- (void)removeDiffObserver
{
  if (self->_diffObserverToken)
  {
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    v5 = [WeakRetained serviceFromClass:objc_opt_class()];

    [v5 removeDiffObserver:self->_diffObserverToken];
    diffObserverToken = self->_diffObserverToken;
    self->_diffObserverToken = 0;
  }
}

- (void)invalidate
{
  if (self->_diffObserverToken)
  {
    WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
    v4 = [WeakRetained serviceFromClass:objc_opt_class()];

    [v4 removeDiffObserver:self->_diffObserverToken];
    diffObserverToken = self->_diffObserverToken;
    self->_diffObserverToken = 0;
  }

  [(EPSagaTransactionWaitForDeviceCollectionChanges *)self stopTimer];
}

- (void)check
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);
  v4 = [WeakRetained serviceFromClass:objc_opt_class()];

  v5 = objc_loadWeakRetained(&self->_routingSlipEntry);
  v6 = [v5 objectForKeyedSubscript:@"deviceCollectionWaitingTransactionDiff"];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014F0C;
  v8[3] = &unk_1001757C0;
  v9 = v6;
  selfCopy = self;
  v7 = v6;
  [v4 grabRegistryWithReadBlockAsync:v8];
}

- (void)startTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);
  v6 = [WeakRetained objectForKeyedSubscript:@"deviceCollectionWaitingTransactionTimeout"];

  v4 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"timeout:" selector:0 userInfo:0 repeats:?];
    [(EPSagaTransactionWaitForDeviceCollectionChanges *)self setTimer:v5];

    v4 = v6;
  }
}

- (void)timeout:(id)timeout
{
  routingSlipEntry = [(EPSagaTransactionWaitForDeviceCollectionChanges *)self routingSlipEntry];
  queue = [routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015130;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopTimer
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v17 = NSLocalizedDescriptionKey;
    v18 = @"Cancelled";
    v5 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    errorCopy = [NSError errorWithDomain:@"com.apple.nanoregistry.saga.EPSagaTransactionWaitForDeviceCollectionChanges" code:1 userInfo:v5];
  }

  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@: cancelWithError: %@", &v13, 0x16u);
    }
  }

  routingSlipEntry = [(EPSagaTransactionWaitForDeviceCollectionChanges *)self routingSlipEntry];
  errors = [routingSlipEntry errors];
  [errors addObject:errorCopy];

  [(EPSagaTransactionWaitForDeviceCollectionChanges *)self transactionDidComplete];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NRDeviceCollectionDiff)diff
{
  WeakRetained = objc_loadWeakRetained(&self->_diff);

  return WeakRetained;
}

- (EPServiceRegistry)serviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);

  return WeakRetained;
}

- (EPRoutingSlipEntry)routingSlipEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_routingSlipEntry);

  return WeakRetained;
}

@end