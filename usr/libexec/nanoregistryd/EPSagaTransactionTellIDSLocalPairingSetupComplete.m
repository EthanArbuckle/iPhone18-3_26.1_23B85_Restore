@interface EPSagaTransactionTellIDSLocalPairingSetupComplete
- (EPTransactionDelegate)delegate;
- (id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)cancel;
- (void)cancelWithError:(id)a3;
- (void)markCompleted;
@end

@implementation EPSagaTransactionTellIDSLocalPairingSetupComplete

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_serviceRegistry, a4);
  v7 = a4;
  routingSlipEntry = self->_routingSlipEntry;
  self->_routingSlipEntry = v6;
  v9 = v6;

  v10 = [(EPRoutingSlipEntry *)v9 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v11 = [(EPSagaTransactionTellIDSLocalPairingSetupComplete *)self registry];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B8060;
  v13[3] = &unk_1001757C0;
  v14 = v10;
  v15 = self;
  v12 = v10;
  [v11 grabRegistryWithReadBlockAsync:v13];
}

- (void)markCompleted
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Marking completed.", &v9, 0xCu);
    }
  }

  v8 = [(EPSagaTransactionTellIDSLocalPairingSetupComplete *)self delegate];
  [v8 transactionDidComplete:self];
}

- (void)cancel
{
  v3 = nr_daemon_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = nr_daemon_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@] Canceled.", &v8, 0xCu);
    }
  }

  [(EPSagaTransactionTellIDSLocalPairingSetupComplete *)self markCompleted];
}

- (void)cancelWithError:(id)a3
{
  v4 = a3;
  v5 = nr_daemon_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = nr_daemon_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Canceled with error : %@", &v11, 0x16u);
    }
  }

  if (v4)
  {
    v10 = [(EPRoutingSlipEntry *)self->_routingSlipEntry errors];
    [v10 addObject:v4];
  }

  [(EPSagaTransactionTellIDSLocalPairingSetupComplete *)self markCompleted];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end