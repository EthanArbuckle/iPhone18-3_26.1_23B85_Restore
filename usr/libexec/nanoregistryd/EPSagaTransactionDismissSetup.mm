@interface EPSagaTransactionDismissSetup
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionDismissSetup

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  v6 = [registryCopy serviceFromClass:objc_opt_class()];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A7BEC;
  v8[3] = &unk_1001757C0;
  v9 = registryCopy;
  selfCopy = self;
  v7 = registryCopy;
  [v6 grabRegistryWithReadBlockAsync:v8];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end