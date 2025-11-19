@interface EPSagaTransactionApplyDiff
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionApplyDiff

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"transactionCompleted"];
  if ([v8 BOOLValue])
  {
    v9 = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BF1F0;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(v9, block);
  }

  else
  {
    v9 = [v7 serviceFromClass:objc_opt_class()];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BEFA8;
    v11[3] = &unk_100179250;
    v12 = v6;
    v13 = self;
    [v9 grabRegistryWithWriteBlockAsync:v11];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"transactionCompleted"];
  if ([v8 BOOLValue])
  {
    v9 = [v7 serviceFromClass:objc_opt_class()];
    v10 = [v6 objectForKeyedSubscript:@"rollbackDiff"];
    if (!v10)
    {
      v10 = [v6 objectForKeyedSubscript:@"calculatedRollbackDiff"];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BF3FC;
    v13[3] = &unk_100176328;
    v14 = v6;
    v15 = v10;
    v16 = self;
    v11 = v10;
    [v9 grabRegistryWithWriteBlockAsync:v13];
  }

  else
  {
    v9 = [v6 queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BF570;
    v12[3] = &unk_100175660;
    v12[4] = self;
    dispatch_async(v9, v12);
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end