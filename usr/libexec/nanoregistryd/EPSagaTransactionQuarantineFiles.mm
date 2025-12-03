@interface EPSagaTransactionQuarantineFiles
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionQuarantineFiles

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [registryCopy serviceFromClass:objc_opt_class()];

  v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  queue = [entryCopy queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000568B0;
  v14[3] = &unk_100175F00;
  v15 = entryCopy;
  v16 = v8;
  v17 = v9;
  selfCopy = self;
  v11 = v9;
  v12 = v8;
  v13 = entryCopy;
  [v12 quarantineDataWithStoreUUID:v11 services:0 queue:queue completion:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [registryCopy serviceFromClass:objc_opt_class()];

  v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  queue = [entryCopy queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100056B6C;
  v12[3] = &unk_100177960;
  v13 = entryCopy;
  selfCopy = self;
  v11 = entryCopy;
  [v8 unquarantineDataWithStoreUUID:v9 services:0 queue:queue completion:v12];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end