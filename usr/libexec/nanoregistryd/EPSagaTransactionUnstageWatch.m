@interface EPSagaTransactionUnstageWatch
- (id)_deviceCollectionDiffWithPairingID:(id)a3;
- (id)delegate;
- (id)registry;
- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5;
@end

@implementation EPSagaTransactionUnstageWatch

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_deviceCollectionDiffWithPairingID:(id)a3
{
  v3 = a3;
  v4 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v11[0] = NRDevicePropertyIsStagedForTransfer;
  v11[1] = NRDevicePropertyTransferType;
  v12[0] = v4;
  v12[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v6 = +[NSMutableDictionary dictionary];
  v7 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v5];
  v8 = [[NRDeviceDiffType alloc] initWithDiff:v7 andChangeType:1];
  [v6 setObject:v8 forKeyedSubscript:v3];

  v9 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v6];

  return v9;
}

- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v29 = a5;
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  self->_parentRoutingSlipEntry = v8;
  v11 = v8;

  serviceRegistry = self->_serviceRegistry;
  self->_serviceRegistry = v9;
  v30 = v9;

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
  v26 = [(EPRoutingSlipEntry *)v11 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005BB0;
  block[3] = &unk_100175688;
  v32 = v13;
  v33 = v29;
  v27 = v13;
  v28 = v29;
  dispatch_async(v26, block);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end