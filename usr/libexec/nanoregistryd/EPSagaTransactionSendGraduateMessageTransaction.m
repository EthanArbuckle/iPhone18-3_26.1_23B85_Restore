@interface EPSagaTransactionSendGraduateMessageTransaction
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionSendGraduateMessageTransaction

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  objc_storeStrong(&self->_routingSlipEntry, a3);
  v7 = a3;
  v8 = a4;
  v9 = nr_daemon_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = nr_daemon_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Adding EPSagaTransactionSendGraduateMessage to EPDTC", buf, 2u);
    }
  }

  v12 = [v7 objectForKeyedSubscript:@"coreBluetoothID"];
  v13 = objc_opt_new();
  v14 = [EPRoutingSlipEntry alloc];
  v15 = objc_opt_class();
  v23 = @"coreBluetoothID";
  v16 = [[EPSagaOperandUUID alloc] initWithUUID:v12];
  v24 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v18 = [(EPRoutingSlipEntry *)v14 initWithName:@"tellWatchToGraduate" transactionClass:v15 operands:v17];
  [v13 setEntry:v18];

  [v13 setRunningStatusCode:2];
  [v13 setNotUnrollable:1];
  v19 = [v8 serviceFromClass:objc_opt_class()];

  [v19 addTransaction:v13];
  v20 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012B74;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v20, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end