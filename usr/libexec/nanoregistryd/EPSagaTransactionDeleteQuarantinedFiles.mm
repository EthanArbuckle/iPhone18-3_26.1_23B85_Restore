@interface EPSagaTransactionDeleteQuarantinedFiles
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionDeleteQuarantinedFiles

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  v8 = [registryCopy serviceFromClass:objc_opt_class()];

  v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  queue = [entryCopy queue];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BE900;
  v11[3] = &unk_100175660;
  v11[4] = self;
  [v8 deleteQuarantinedDataWithStoreUUID:v9 queue:queue completion:v11];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end