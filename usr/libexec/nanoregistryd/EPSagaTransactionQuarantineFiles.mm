@interface EPSagaTransactionQuarantineFiles
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionQuarantineFiles

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 serviceFromClass:objc_opt_class()];

  v9 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [v6 queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000568B0;
  v14[3] = &unk_100175F00;
  v15 = v6;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v11 = v9;
  v12 = v8;
  v13 = v6;
  [v12 quarantineDataWithStoreUUID:v11 services:0 queue:v10 completion:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 serviceFromClass:objc_opt_class()];

  v9 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [v6 queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100056B6C;
  v12[3] = &unk_100177960;
  v13 = v6;
  v14 = self;
  v11 = v6;
  [v8 unquarantineDataWithStoreUUID:v9 services:0 queue:v10 completion:v12];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end