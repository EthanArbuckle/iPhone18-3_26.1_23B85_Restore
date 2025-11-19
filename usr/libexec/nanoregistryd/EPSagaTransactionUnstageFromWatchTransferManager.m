@interface EPSagaTransactionUnstageFromWatchTransferManager
- (EPTransactionDelegate)delegate;
- (id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionUnstageFromWatchTransferManager

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[EPSagaTransactionUnstageFromWatchTransferManager beginTransactionWithRoutingSlipEntry:serviceRegistry:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }
  }

  serviceRegistry = self->_serviceRegistry;
  self->_serviceRegistry = v7;
  v12 = v7;

  v13 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v14 = [(EPSagaTransactionUnstageFromWatchTransferManager *)self registry];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000DB22C;
  v17[3] = &unk_100176328;
  v17[4] = self;
  v18 = v13;
  v19 = v6;
  v15 = v6;
  v16 = v13;
  [v14 grabRegistryWithWriteBlockAsync:v17];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end