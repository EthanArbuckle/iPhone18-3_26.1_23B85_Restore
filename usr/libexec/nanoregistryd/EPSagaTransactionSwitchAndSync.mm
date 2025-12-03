@interface EPSagaTransactionSwitchAndSync
- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion;
@end

@implementation EPSagaTransactionSwitchAndSync

- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion
{
  entriesCopy = entries;
  registryCopy = registry;
  completionCopy = completion;
  v10 = [entriesCopy objectForKeyedSubscript:@"switchToNRDeviceUUID"];
  v11 = [entriesCopy objectForKeyedSubscript:@"shouldWaitForAssertion"];
  v12 = [registryCopy serviceFromClass:objc_opt_class()];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000803B8;
  v18[3] = &unk_1001783E0;
  v19 = v10;
  v20 = registryCopy;
  v21 = v11;
  v22 = entriesCopy;
  v23 = completionCopy;
  v13 = completionCopy;
  v14 = entriesCopy;
  v15 = v11;
  v16 = registryCopy;
  v17 = v10;
  [v12 grabRegistryWithReadBlockAsync:v18];
}

@end