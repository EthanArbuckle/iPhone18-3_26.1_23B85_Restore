@interface EPSagaTransactionGeneratePairedDiff
- (EPTransactionDelegate)delegate;
- (id)_makeActiveDeviceCollectionDiffWithPairingID:(id)a3;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionGeneratePairedDiff

- (id)_makeActiveDeviceCollectionDiffWithPairingID:(id)a3
{
  v3 = a3;
  v4 = [NRMutableDevice diffsToPair:1 withDate:0];
  v5 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v4];
  v6 = [[NRDeviceDiffType alloc] initWithDiff:v5 andChangeType:1];
  v7 = [NRDeviceCollectionDiff alloc];
  v11 = v3;
  v12 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = [v7 initWithDeviceCollectionDiffDeviceDiffs:v8];

  return v9;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [v7 serviceFromClass:objc_opt_class()];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008C7B0;
  v13[3] = &unk_100175748;
  v13[4] = self;
  v14 = v8;
  v15 = v7;
  v16 = v6;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [v9 grabRegistryWithReadBlockAsync:v13];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = [(EPSagaTransactionGeneratePairedDiff *)self delegate:a3];
  [v5 transactionDidComplete:self];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end