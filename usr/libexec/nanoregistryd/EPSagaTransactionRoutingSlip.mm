@interface EPSagaTransactionRoutingSlip
- (EPRoutingSlip)childRoutingSlip;
- (EPRoutingSlipEntry)parentRoutingSlipEntry;
- (EPServiceRegistry)serviceRegistry;
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)cancelWithError:(id)error;
- (void)invalidate;
- (void)routingSlipDidComplete:(id)complete serviceRegistry:(id)registry;
- (void)routingSlipRequestsArchiving:(id)archiving;
- (void)setChildRoutingSlip:(id)slip;
@end

@implementation EPSagaTransactionRoutingSlip

- (EPRoutingSlip)childRoutingSlip
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
  v3 = [WeakRetained objectForKeyedSubscript:@"routingSlip"];

  return v3;
}

- (void)setChildRoutingSlip:(id)slip
{
  slipCopy = slip;
  v7 = [[EPSagaOperandRoutingSlip alloc] initWithChildRoutingSlip:slipCopy];

  WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
  operands = [WeakRetained operands];
  [operands setObject:v7 forKeyedSubscript:@"routingSlip"];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  objc_storeWeak(&self->_parentRoutingSlipEntry, entryCopy);
  objc_storeWeak(&self->_serviceRegistry, registryCopy);
  v8 = [entryCopy objectForKeyedSubscript:@"routingSlip"];
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
        shortDescription = [WeakRetained shortDescription];
        childRoutingSlip = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
        identifier = [childRoutingSlip identifier];
        *buf = 138543618;
        v22 = shortDescription;
        v23 = 2114;
        v24 = identifier;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: Resuming slip entry %{public}@ -> EPRoutingSlip[%{public}@]", buf, 0x16u);
      }
    }

    [v8 setRoutingSlipDelegate:self];
    [(EPSagaTransactionRoutingSlip *)self setChildRoutingSlip:v8];
    [v8 resumeWithServiceRegistry:registryCopy rollback:0];
  }

  else
  {
    if (v10)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
        shortDescription2 = [v17 shortDescription];
        *buf = 138543362;
        v22 = shortDescription2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: Building routing slip entry for %{public}@", buf, 0xCu);
      }
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000D0610;
    v19[3] = &unk_1001795D0;
    v19[4] = self;
    v20 = registryCopy;
    [(EPSagaTransactionRoutingSlip *)self buildRoutingSlipEntries:entryCopy serviceRegistry:v20 completion:v19];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  objc_storeWeak(&self->_parentRoutingSlipEntry, entryCopy);
  objc_storeWeak(&self->_serviceRegistry, registryCopy);
  v8 = [entryCopy objectForKeyedSubscript:@"routingSlip"];

  if (v8)
  {
    v9 = nr_daemon_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = nr_daemon_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
        identifier = [WeakRetained identifier];
        v15 = 138543362;
        v16 = identifier;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: Rolling back routing slip entry %{public}@", &v15, 0xCu);
      }
    }

    [v8 printDescription];
    [v8 setRoutingSlipDelegate:self];
    [(EPSagaTransactionRoutingSlip *)self setChildRoutingSlip:v8];
    [v8 resumeWithServiceRegistry:registryCopy rollback:1];
  }

  else
  {
    delegate = [(EPSagaTransactionRoutingSlip *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (void)invalidate
{
  childRoutingSlip = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
  [childRoutingSlip invalidate];
}

- (void)routingSlipDidComplete:(id)complete serviceRegistry:(id)registry
{
  getLastFirstError = [complete getLastFirstError];
  if (getLastFirstError)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
    errors = [WeakRetained errors];
    [errors addObject:getLastFirstError];
  }

  delegate = [(EPSagaTransactionRoutingSlip *)self delegate];
  [delegate transactionDidComplete:self];
}

- (void)routingSlipRequestsArchiving:(id)archiving
{
  archivingCopy = archiving;
  WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
  [WeakRetained persist];

  childRoutingSlip = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
  if (childRoutingSlip == archivingCopy)
  {
    state = [archivingCopy state];

    if (state == 2)
    {
      v7 = objc_loadWeakRetained(&self->_serviceRegistry);
      [(EPSagaTransactionRoutingSlip *)self routingSlipDidComplete:archivingCopy serviceRegistry:v7];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
  [v7 persist];
LABEL_6:
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  childRoutingSlip = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      delegate = [(EPSagaTransactionRoutingSlip *)self delegate];
      v11[0] = 67109376;
      v11[1] = childRoutingSlip != 0;
      v12 = 1024;
      v13 = delegate != 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: cancelWithError; childRoutingSlip: %{BOOL}d, delegate: %{BOOL}d", v11, 0xEu);
    }
  }

  if (childRoutingSlip)
  {
    [childRoutingSlip cancelWithError:errorCopy];
  }

  else
  {
    delegate2 = [(EPSagaTransactionRoutingSlip *)self delegate];
    [delegate2 transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (EPRoutingSlipEntry)parentRoutingSlipEntry
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);

  return WeakRetained;
}

- (EPServiceRegistry)serviceRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_serviceRegistry);

  return WeakRetained;
}

@end