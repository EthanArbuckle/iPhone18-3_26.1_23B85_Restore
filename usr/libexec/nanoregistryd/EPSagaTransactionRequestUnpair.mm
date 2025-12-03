@interface EPSagaTransactionRequestUnpair
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)timeout;
- (void)update;
@end

@implementation EPSagaTransactionRequestUnpair

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  routingSlipEntry = self->_routingSlipEntry;
  self->_routingSlipEntry = entryCopy;
  v9 = entryCopy;

  serviceRegistry = self->_serviceRegistry;
  self->_serviceRegistry = registryCopy;
  v11 = registryCopy;

  v12 = [(EPServiceRegistry *)v11 serviceFromClass:objc_opt_class()];
  connectivityTestService = self->_connectivityTestService;
  self->_connectivityTestService = v12;

  [(NRRemoteObject *)self->_connectivityTestService addConnectivityObserver:self];
  queue = [(EPRoutingSlipEntry *)v9 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000DFC64;
  v17[3] = &unk_100175660;
  v17[4] = self;
  v15 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.migration.connectivitywaittimeout" delay:1 gracePeriod:queue waking:v17 handlerQueue:60.0 handlerBlock:0.0];
  timer = self->_timer;
  self->_timer = v15;

  [(EPSagaTransactionRequestUnpair *)self update];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  queue = [entry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFCF8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)timeout
{
  timer = self->_timer;
  self->_timer = 0;

  [(EPSagaTransactionRequestUnpair *)self update];
}

- (void)update
{
  defaultPairedDevice = [(NRRemoteObject *)self->_connectivityTestService defaultPairedDevice];
  isConnected = [defaultPairedDevice isConnected];

  if (isConnected)
  {
    if (self->_finished)
    {
      return;
    }

    self->_finished = 1;
    [(NRRemoteObject *)self->_connectivityTestService removeConnectivityObserver:self];
    [(AbstractTimer *)self->_timer invalidate];
    timer = self->_timer;
    self->_timer = 0;

    queue2 = [(EPRoutingSlipEntry *)self->_routingSlipEntry objectForKeyedSubscript:@"idsDeviceIdentifier"];
    v7 = [(EPRoutingSlipEntry *)self->_routingSlipEntry objectForKeyedSubscript:@"advertisedName"];
    if (queue2)
    {
      v8 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      [v8 sendMigratedAwayToDestination:queue2 advertisedName:v7 withSentBlock:0];
    }

    else
    {
      v13 = nr_daemon_log();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (!v14)
      {
        goto LABEL_6;
      }

      v8 = nr_daemon_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No ids destination defined", buf, 2u);
      }
    }

LABEL_6:
    queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E009C;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(queue, block);

LABEL_10:
    return;
  }

  if (!self->_timer && !self->_finished)
  {
    self->_finished = 1;
    [(NRRemoteObject *)self->_connectivityTestService removeConnectivityObserver:self];
    errors = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
    v18 = NSLocalizedDescriptionKey;
    v19 = @"IDS reconnect timeout";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.nanoregistry.migration.requestunpair" code:0 userInfo:v11];
    [errors addObject:v12];

    [(EPRoutingSlipEntry *)self->_routingSlipEntry persist];
    queue2 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E00F0;
    v15[3] = &unk_100175660;
    v15[4] = self;
    dispatch_async(queue2, v15);
    goto LABEL_10;
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end