@interface EPSagaTransactionUnstageWatch
- (id)_deviceCollectionDiffWithPairingID:(id)d;
- (id)delegate;
- (id)registry;
- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion;
@end

@implementation EPSagaTransactionUnstageWatch

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_deviceCollectionDiffWithPairingID:(id)d
{
  dCopy = d;
  v4 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v11[0] = NRDevicePropertyIsStagedForTransfer;
  v11[1] = NRDevicePropertyTransferType;
  v12[0] = v4;
  v12[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v6 = +[NSMutableDictionary dictionary];
  v7 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v5];
  v8 = [[NRDeviceDiffType alloc] initWithDiff:v7 andChangeType:1];
  [v6 setObject:v8 forKeyedSubscript:dCopy];

  v9 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v6];

  return v9;
}

- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion
{
  entriesCopy = entries;
  registryCopy = registry;
  completionCopy = completion;
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  self->_parentRoutingSlipEntry = entriesCopy;
  v11 = entriesCopy;

  serviceRegistry = self->_serviceRegistry;
  self->_serviceRegistry = registryCopy;
  v30 = registryCopy;

  v13 = +[NSMutableArray array];
  v14 = [(EPRoutingSlipEntry *)v11 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v15 = [EPRoutingSlipEntry alloc];
  v16 = objc_opt_class();
  v36 = @"nrDeviceIdentifier";
  v17 = [[EPSagaOperandUUID alloc] initWithUUID:v14];
  v37 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v19 = [(EPRoutingSlipEntry *)v15 initWithName:@"unstageWatchFromTransferManager" transactionClass:v16 operands:v18];

  [v13 addObject:v19];
  v20 = [(EPSagaTransactionUnstageWatch *)self _deviceCollectionDiffWithPairingID:v14];
  v21 = [EPRoutingSlipEntry alloc];
  v22 = objc_opt_class();
  v34 = @"transactionDiff";
  v23 = [[EPSagaOperandDiff alloc] initWithDiff:v20];
  v35 = v23;
  v24 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v25 = [(EPRoutingSlipEntry *)v21 initWithName:@"unsetProperties" transactionClass:v22 operands:v24];

  [v13 addObject:v25];
  queue = [(EPRoutingSlipEntry *)v11 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005BB0;
  block[3] = &unk_100175688;
  v32 = v13;
  v33 = completionCopy;
  v27 = v13;
  v28 = completionCopy;
  dispatch_async(queue, block);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end