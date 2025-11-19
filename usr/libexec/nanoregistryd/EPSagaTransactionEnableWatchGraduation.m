@interface EPSagaTransactionEnableWatchGraduation
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionEnableWatchGraduation

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = a4;
  v6 = [v5 serviceFromClass:objc_opt_class()];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100014718;
  v8[3] = &unk_1001757C0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 grabRegistryWithReadBlockAsync:v8];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end