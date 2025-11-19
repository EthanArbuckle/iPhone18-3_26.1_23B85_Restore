@interface EPSagaTransactionPhoneMigration
- (id)_deviceCollectionDiffWithPairingID:(id)a3;
- (id)keymaster;
- (id)migrationReporter;
- (id)registry;
- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5;
- (void)routingSlip:(id)a3 entryDidCompleteRollback:(id)a4;
- (void)routingSlip:(id)a3 entryDidCompleteTransaction:(id)a4;
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

- (id)_deviceCollectionDiffWithPairingID:(id)a3
{
  v4 = a3;
  v5 = [NRDevicePropertyDiffType alloc];
  v6 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanTrue];
  v7 = [v5 initWithDiff:v6 andChangeType:1];

  v28 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v29 = [(EPServiceRegistry *)self->_serviceRegistry serviceFromClass:objc_opt_class()];
  v8 = [v29 collection];
  v9 = [v8 objectForKeyedSubscript:v4];
  v10 = _NRDevicePropertyMigrationCount;
  v11 = [v9 objectForKeyedSubscript:_NRDevicePropertyMigrationCount];
  v12 = [v11 value];

  v13 = [NRDevicePropertyDiffType alloc];
  v14 = [NRDevicePropertyDiff alloc];
  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 integerValue] + 1);
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
  [v23 setObject:v25 forKeyedSubscript:v4];

  v26 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v23];

  return v26;
}

- (void)buildRoutingSlipEntries:(id)a3 serviceRegistry:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  self->_parentRoutingSlipEntry = v8;
  v12 = v8;

  objc_storeStrong(&self->_serviceRegistry, a4);
  v13 = [(EPRoutingSlipEntry *)v12 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v14 = [(EPSagaTransactionPhoneMigration *)self registry];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001DA6C;
  v18[3] = &unk_100176148;
  v19 = v13;
  v20 = self;
  v21 = v9;
  v22 = v10;
  v15 = v10;
  v16 = v9;
  v17 = v13;
  [v14 grabRegistryWithReadBlock:v18];
}

- (void)routingSlip:(id)a3 entryDidCompleteTransaction:(id)a4
{
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  v7 = a4;
  v8 = a3;
  v10 = [(EPRoutingSlipEntry *)parentRoutingSlipEntry objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [(EPSagaTransactionPhoneMigration *)self migrationReporter];
  [v9 checkInWithCompletedMigrationTransaction:v8 routingSlipEntry:v7 forPairingID:v10];
}

- (void)routingSlip:(id)a3 entryDidCompleteRollback:(id)a4
{
  parentRoutingSlipEntry = self->_parentRoutingSlipEntry;
  v7 = a4;
  v8 = a3;
  v10 = [(EPRoutingSlipEntry *)parentRoutingSlipEntry objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [(EPSagaTransactionPhoneMigration *)self migrationReporter];
  [v9 checkInWithMigrationTransactionRollback:v8 routingSlipEntry:v7 forPairingID:v10];
}

@end