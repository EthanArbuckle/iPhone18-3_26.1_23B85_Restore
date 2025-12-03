@interface EPSagaTransactionNotifyCompanionOfCompletion
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionNotifyCompanionOfCompletion

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [registryCopy serviceFromClass:objc_opt_class()];

  v9 = [entryCopy objectForKeyedSubscript:@"coreBluetoothID"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E7FD0;
  v11[3] = &unk_100177410;
  v12 = entryCopy;
  selfCopy = self;
  v10 = entryCopy;
  [v8 sendMigrationCompletionWithStatus:0 toIDSBTUUID:v9 withResponseBlock:v11];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  queue = [entry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8220;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end