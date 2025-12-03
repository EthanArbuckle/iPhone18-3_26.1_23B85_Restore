@interface EPSagaTransactionPrepareIDSServices
- (EPTransactionDelegate)delegate;
- (void)_addTimeout;
- (void)_invalidateTimer;
- (void)_transactionCompleted;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionPrepareIDSServices

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeStrong(&self->_routingSlip, entry);
  v9 = [registryCopy serviceFromClass:objc_opt_class()];
  [v9 invalidateIDSChannels];
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100089678;
  v10[3] = &unk_100178630;
  v10[4] = self;
  objc_copyWeak(&v11, &location);
  [v9 initializeAllIDSChannelsBlock:v10];
  [(EPSagaTransactionPrepareIDSServices *)self _addTimeout];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_transactionCompleted
{
  if (!self->_transactionCompleted)
  {
    [(EPSagaTransactionPrepareIDSServices *)self _invalidateTimer];
    self->_transactionCompleted = 1;
    delegate = [(EPSagaTransactionPrepareIDSServices *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)_addTimeout
{
  if (self->_transactionCompleted)
  {
    v2 = nr_daemon_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = nr_daemon_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPrepareIDSServices: Trying to add a transaction after completed. Not allowed.", buf, 2u);
      }
    }
  }

  else
  {
    currentTimer = self->_currentTimer;
    if (currentTimer)
    {
      dispatch_source_cancel(currentTimer);
      v7 = self->_currentTimer;
      self->_currentTimer = 0;
    }

    v8 = nr_daemon_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = nr_daemon_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionPrepareIDSServices: Adding 15 seconds timeout.", buf, 2u);
      }
    }

    objc_initWeak(buf, self);
    queue = [(EPRoutingSlipEntry *)self->_routingSlip queue];
    v12 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
    v13 = self->_currentTimer;
    self->_currentTimer = v12;

    v14 = self->_currentTimer;
    v15 = dispatch_time(0, 15000000000);
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0);
    v16 = self->_currentTimer;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100089A54;
    v17[3] = &unk_100178630;
    v17[4] = self;
    objc_copyWeak(&v18, buf);
    dispatch_source_set_event_handler(v16, v17);
    dispatch_resume(self->_currentTimer);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

- (void)_invalidateTimer
{
  currentTimer = self->_currentTimer;
  if (currentTimer)
  {
    dispatch_source_cancel(currentTimer);
    v4 = self->_currentTimer;
    self->_currentTimer = 0;
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end