@interface EPSagaTransactionRequestUnpair
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)timeout;
- (void)update;
@end

@implementation EPSagaTransactionRequestUnpair

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  routingSlipEntry = self->_routingSlipEntry;
  self->_routingSlipEntry = v6;
  v9 = v6;

  serviceRegistry = self->_serviceRegistry;
  self->_serviceRegistry = v7;
  v11 = v7;

  v12 = [(EPServiceRegistry *)v11 serviceFromClass:objc_opt_class()];
  connectivityTestService = self->_connectivityTestService;
  self->_connectivityTestService = v12;

  [(NRRemoteObject *)self->_connectivityTestService addConnectivityObserver:self];
  v14 = [(EPRoutingSlipEntry *)v9 queue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000DFC64;
  v17[3] = &unk_100175660;
  v17[4] = self;
  v15 = [TimerFactory timerWithIdentifier:@"com.apple.nanoregistry.migration.connectivitywaittimeout" delay:1 gracePeriod:v14 waking:v17 handlerQueue:60.0 handlerBlock:0.0];
  timer = self->_timer;
  self->_timer = v15;

  [(EPSagaTransactionRequestUnpair *)self update];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = [a3 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFCF8;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)timeout
{
  timer = self->_timer;
  self->_timer = 0;

  [(EPSagaTransactionRequestUnpair *)self update];
}

- (void)update
{
  v3 = [(NRRemoteObject *)self->_connectivityTestService defaultPairedDevice];
  v4 = [v3 isConnected];

  if (v4)
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

    v6 = [(EPRoutingSlipEntry *)self->_routingSlipEntry objectForKeyedSubscript:@"idsDeviceIdentifier"];
    v7 = [(EPRoutingSlipEntry *)self->_routingSlipEntry objectForKeyedSubscript:@"advertisedName"];
    if (v6)
    {
      v8 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
      [v8 sendMigratedAwayToDestination:v6 advertisedName:v7 withSentBlock:0];
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
    v9 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E009C;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(v9, block);

LABEL_10:
    return;
  }

  if (!self->_timer && !self->_finished)
  {
    self->_finished = 1;
    [(NRRemoteObject *)self->_connectivityTestService removeConnectivityObserver:self];
    v10 = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
    v18 = NSLocalizedDescriptionKey;
    v19 = @"IDS reconnect timeout";
    v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [NSError errorWithDomain:@"com.apple.nanoregistry.migration.requestunpair" code:0 userInfo:v11];
    [v10 addObject:v12];

    [(EPRoutingSlipEntry *)self->_routingSlipEntry persist];
    v6 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E00F0;
    v15[3] = &unk_100175660;
    v15[4] = self;
    dispatch_async(v6, v15);
    goto LABEL_10;
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end