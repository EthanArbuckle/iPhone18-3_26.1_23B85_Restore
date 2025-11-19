@interface EPSagaTransactionNotifyCompanionOfCompletion
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionNotifyCompanionOfCompletion

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 serviceFromClass:objc_opt_class()];

  v9 = [v6 objectForKeyedSubscript:@"coreBluetoothID"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E7FD0;
  v11[3] = &unk_100177410;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [v8 sendMigrationCompletionWithStatus:0 toIDSBTUUID:v9 withResponseBlock:v11];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = [a3 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8220;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v5, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end