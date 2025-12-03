@interface EPSagaTransactionGeneratePairedDiff
- (EPTransactionDelegate)delegate;
- (id)_makeActiveDeviceCollectionDiffWithPairingID:(id)d;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionGeneratePairedDiff

- (id)_makeActiveDeviceCollectionDiffWithPairingID:(id)d
{
  dCopy = d;
  v4 = [NRMutableDevice diffsToPair:1 withDate:0];
  v5 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v4];
  v6 = [[NRDeviceDiffType alloc] initWithDiff:v5 andChangeType:1];
  v7 = [NRDeviceCollectionDiff alloc];
  v11 = dCopy;
  v12 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  v9 = [v7 initWithDeviceCollectionDiffDeviceDiffs:v8];

  return v9;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [registryCopy serviceFromClass:objc_opt_class()];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008C7B0;
  v13[3] = &unk_100175748;
  v13[4] = self;
  v14 = v8;
  v15 = registryCopy;
  v16 = entryCopy;
  v10 = entryCopy;
  v11 = registryCopy;
  v12 = v8;
  [v9 grabRegistryWithReadBlockAsync:v13];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  v5 = [(EPSagaTransactionGeneratePairedDiff *)self delegate:entry];
  [v5 transactionDidComplete:self];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end