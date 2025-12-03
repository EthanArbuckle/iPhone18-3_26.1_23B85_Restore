@interface EPSagaTransactionPhoneMigration
- (id)_deviceCollectionDiffWithPairingID:(id)d;
- (id)keymaster;
- (id)migrationReporter;
- (id)registry;
- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion;
- (void)routingSlip:(id)slip entryDidCompleteRollback:(id)rollback;
- (void)routingSlip:(id)slip entryDidCompleteTransaction:(id)transaction;
@end

@implementation EPSagaTransactionPhoneMigration

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)keymaster
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)migrationReporter
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_deviceCollectionDiffWithPairingID:(id)d
{
  dCopy = d;
  v5 = [NRDevicePropertyDiffType alloc];
  v6 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
  v7 = [v5 initWithDiff:v6 andChangeType:1];

  v28 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v29 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  collection = [v29 collection];
  v9 = [collection objectForKeyedSubscript:dCopy];
  v10 = _NRDevicePropertyMigrationCount;
  v11 = [v9 objectForKeyedSubscript:_NRDevicePropertyMigrationCount];
  value = [v11 value];

  v13 = [NRDevicePropertyDiffType alloc];
  v14 = [NRDevicePropertyDiff alloc];
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [value integerValue] + 1);
  v16 = [v14 initWithValue:v15];
  v17 = [v13 initWithDiff:v16 andChangeType:1];

  v18 = [NRDevicePropertyDiffType alloc];
  v19 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
  v20 = [v18 initWithDiff:v19 andChangeType:1];

  v30[0] = NRDevicePropertyIsPaired;
  v30[1] = NRDevicePropertyIsSetup;
  v31[0] = v7;
  v31[1] = v20;
  v21 = v7;
  v30[2] = NRDevicePropertyIsArchived;
  v30[3] = v10;
  v31[2] = v28;
  v31[3] = v17;
  v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:4];
  v23 = +[NSMutableDictionary dictionary];
  v24 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v22];
  v25 = [[NRDeviceDiffType alloc] initWithDiff:v24 andChangeType:1];
  [v23 setObject:v25 forKeyedSubscript:dCopy];

  v26 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v23];

  return v26;
}

- (void)buildRoutingSlipEntries:(id)entries serviceRegistry:(id)registry completion:(id)completion
{
  entriesCopy = entries;
  registryCopy = registry;
  completionCopy = completion;
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  self->_parentRoutingSlipEntry = entriesCopy;
  v12 = entriesCopy;

  objc_storeStrong(&self->_serviceRegistry, registry);
  v13 = [(EPRoutingSlipEntry *)v12 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  registry = [(EPSagaTransactionPhoneMigration *)self registry];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001DA6C;
  v18[3] = &unk_100176148;
  v19 = v13;
  selfCopy = self;
  v21 = registryCopy;
  v22 = completionCopy;
  v15 = completionCopy;
  v16 = registryCopy;
  v17 = v13;
  [registry grabRegistryWithReadBlock:v18];
}

- (void)routingSlip:(id)slip entryDidCompleteTransaction:(id)transaction
{
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  transactionCopy = transaction;
  slipCopy = slip;
  v10 = [(EPRoutingSlipEntry *)parentRoutingSlipEntry objectForKeyedSubscript:@"nrDeviceIdentifier"];
  migrationReporter = [(EPSagaTransactionPhoneMigration *)self migrationReporter];
  [migrationReporter checkInWithCompletedMigrationTransaction:slipCopy routingSlipEntry:transactionCopy forPairingID:v10];
}

- (void)routingSlip:(id)slip entryDidCompleteRollback:(id)rollback
{
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  rollbackCopy = rollback;
  slipCopy = slip;
  v10 = [(EPRoutingSlipEntry *)parentRoutingSlipEntry objectForKeyedSubscript:@"nrDeviceIdentifier"];
  migrationReporter = [(EPSagaTransactionPhoneMigration *)self migrationReporter];
  [migrationReporter checkInWithMigrationTransactionRollback:slipCopy routingSlipEntry:rollbackCopy forPairingID:v10];
}

@end