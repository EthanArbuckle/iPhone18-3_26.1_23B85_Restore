@interface EPSagaTransactionRoutingSlip
- (EPRoutingSlip)childRoutingSlip;
- (EPRoutingSlipEntry)parentRoutingSlipEntry;
- (EPServiceRegistry)serviceRegistry;
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)cancelWithError:(id)a3;
- (void)invalidate;
- (void)routingSlipDidComplete:(id)a3 serviceRegistry:(id)a4;
- (void)routingSlipRequestsArchiving:(id)a3;
- (void)setChildRoutingSlip:(id)a3;
@end

@implementation EPSagaTransactionRoutingSlip

- (EPRoutingSlip)childRoutingSlip
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
  v3 = [WeakRetained objectForKeyedSubscript:@"routingSlip"];

  return v3;
}

- (void)setChildRoutingSlip:(id)a3
{
  v4 = a3;
  v7 = [[EPSagaOperandRoutingSlip alloc] initWithChildRoutingSlip:v4];

  WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
  v6 = [WeakRetained operands];
  [v6 setObject:v7 forKeyedSubscript:@"routingSlip"];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->_parentRoutingSlipEntry, v6);
  objc_storeWeak(&self->_serviceRegistry, v7);
  v8 = [v6 objectForKeyedSubscript:@"routingSlip"];
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
        v13 = [WeakRetained shortDescription];
        v14 = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
        v15 = [v14 identifier];
        *buf = 138543618;
        v22 = v13;
        v23 = 2114;
        v24 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: Resuming slip entry %{public}@ -> EPRoutingSlip[%{public}@]", buf, 0x16u);
      }
    }

    [v8 setRoutingSlipDelegate:self];
    [(EPSagaTransactionRoutingSlip *)self setChildRoutingSlip:v8];
    [v8 resumeWithServiceRegistry:v7 rollback:0];
  }

  else
  {
    if (v10)
    {
      v16 = nr_daemon_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
        v18 = [v17 shortDescription];
        *buf = 138543362;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: Building routing slip entry for %{public}@", buf, 0xCu);
      }
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000D0610;
    v19[3] = &unk_1001795D0;
    v19[4] = self;
    v20 = v7;
    [(EPSagaTransactionRoutingSlip *)self buildRoutingSlipEntries:v6 serviceRegistry:v20 completion:v19];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_storeWeak(&self->_parentRoutingSlipEntry, v7);
  objc_storeWeak(&self->_serviceRegistry, v6);
  v8 = [v7 objectForKeyedSubscript:@"routingSlip"];

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
        v13 = [WeakRetained identifier];
        v15 = 138543362;
        v16 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: Rolling back routing slip entry %{public}@", &v15, 0xCu);
      }
    }

    [v8 printDescription];
    [v8 setRoutingSlipDelegate:self];
    [(EPSagaTransactionRoutingSlip *)self setChildRoutingSlip:v8];
    [v8 resumeWithServiceRegistry:v6 rollback:1];
  }

  else
  {
    v14 = [(EPSagaTransactionRoutingSlip *)self delegate];
    [v14 transactionDidComplete:self];
  }
}

- (void)invalidate
{
  v2 = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
  [v2 invalidate];
}

- (void)routingSlipDidComplete:(id)a3 serviceRegistry:(id)a4
{
  v8 = [a3 getLastFirstError];
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
    v6 = [WeakRetained errors];
    [v6 addObject:v8];
  }

  v7 = [(EPSagaTransactionRoutingSlip *)self delegate];
  [v7 transactionDidComplete:self];
}

- (void)routingSlipRequestsArchiving:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentRoutingSlipEntry);
  [WeakRetained persist];

  v5 = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
  if (v5 == v8)
  {
    v6 = [v8 state];

    if (v6 == 2)
    {
      v7 = objc_loadWeakRetained(&self->_serviceRegistry);
      [(EPSagaTransactionRoutingSlip *)self routingSlipDidComplete:v8 serviceRegistry:v7];
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

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = [(EPSagaTransactionRoutingSlip *)self childRoutingSlip];
  v6 = nr_daemon_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = nr_daemon_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(EPSagaTransactionRoutingSlip *)self delegate];
      v11[0] = 67109376;
      v11[1] = v5 != 0;
      v12 = 1024;
      v13 = v9 != 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "EPSagaTransactionRoutingSlip: cancelWithError; childRoutingSlip: %{BOOL}d, delegate: %{BOOL}d", v11, 0xEu);
    }
  }

  if (v5)
  {
    [v5 cancelWithError:v4];
  }

  else
  {
    v10 = [(EPSagaTransactionRoutingSlip *)self delegate];
    [v10 transactionDidComplete:self];
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