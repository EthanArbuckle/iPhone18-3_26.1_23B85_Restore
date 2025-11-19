@interface EPSagaTransactionMakeDevicePaired
- (EPTransactionDelegate)delegate;
- (id)_makeIsSetupNoDeviceCollection:(id)a3 diffWithPairingID:(id)a4;
- (id)registry;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionMakeDevicePaired

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_makeIsSetupNoDeviceCollection:(id)a3 diffWithPairingID:(id)a4
{
  v4 = [NRDevicePropertyDiffType alloc];
  v5 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanFalse];
  v6 = [v4 initWithDiff:v5 andChangeType:1];

  v7 = [NRDeviceDiff alloc];
  v11 = NRDevicePropertyIsSetup;
  v12 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v7 initWithDiffPropertyDiffs:v8];

  return v9;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_serviceRegistry, a4);
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [v6 objectForKeyedSubscript:@"isPaired"];
  v10 = [v9 BOOLValue];
  v11 = [(EPSagaTransactionMakeDevicePaired *)self registry];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006C3A4;
  v14[3] = &unk_100177F38;
  v15 = v8;
  v16 = self;
  v18 = v10;
  v17 = v6;
  v12 = v6;
  v13 = v8;
  [v11 grabRegistryWithWriteBlockAsync:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"shouldRollBack"];
  if ([v8 BOOLValue])
  {
    objc_storeStrong(&self->_serviceRegistry, a4);
    v9 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
    v10 = [v6 objectForKeyedSubscript:@"isPaired"];
    v11 = [v10 BOOLValue];
    v12 = [(EPSagaTransactionMakeDevicePaired *)self registry];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006C69C;
    v14[3] = &unk_100177F38;
    v15 = v9;
    v16 = self;
    v18 = v11;
    v17 = v6;
    v13 = v9;
    [v12 grabRegistryWithWriteBlockAsync:v14];
  }

  else
  {
    v10 = [(EPSagaTransactionMakeDevicePaired *)self delegate];
    [v10 transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end