@interface EPSagaTransactionApplyDiff
- (EPTransactionDelegate)delegate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionApplyDiff

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"transactionCompleted"];
  if ([v8 BOOLValue])
  {
    queue = [entryCopy queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BF1F0;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    queue = [registryCopy serviceFromClass:objc_opt_class()];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000BEFA8;
    v11[3] = &unk_100179250;
    v12 = entryCopy;
    selfCopy = self;
    [queue grabRegistryWithWriteBlockAsync:v11];
  }
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"transactionCompleted"];
  if ([v8 BOOLValue])
  {
    queue = [registryCopy serviceFromClass:objc_opt_class()];
    v10 = [entryCopy objectForKeyedSubscript:@"rollbackDiff"];
    if (!v10)
    {
      v10 = [entryCopy objectForKeyedSubscript:@"calculatedRollbackDiff"];
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000BF3FC;
    v13[3] = &unk_100176328;
    v14 = entryCopy;
    v15 = v10;
    selfCopy = self;
    v11 = v10;
    [queue grabRegistryWithWriteBlockAsync:v13];
  }

  else
  {
    queue = [entryCopy queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000BF570;
    v12[3] = &unk_100175660;
    v12[4] = self;
    dispatch_async(queue, v12);
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end