@interface EPSagaTransactionMakeDevicePaired
- (EPTransactionDelegate)delegate;
- (id)_makeIsSetupNoDeviceCollection:(id)collection diffWithPairingID:(id)d;
- (id)registry;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionMakeDevicePaired

- (id)registry
{
  serviceRegistry = self->_serviceRegistry;
  v3 = objc_opt_class();

  return [(EPServiceRegistry *)serviceRegistry serviceFromClass:v3];
}

- (id)_makeIsSetupNoDeviceCollection:(id)collection diffWithPairingID:(id)d
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

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  objc_storeStrong(&self->_serviceRegistry, registry);
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [entryCopy objectForKeyedSubscript:@"isPaired"];
  bOOLValue = [v9 BOOLValue];
  registry = [(EPSagaTransactionMakeDevicePaired *)self registry];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006C3A4;
  v14[3] = &unk_100177F38;
  v15 = v8;
  selfCopy = self;
  v18 = bOOLValue;
  v17 = entryCopy;
  v12 = entryCopy;
  v13 = v8;
  [registry grabRegistryWithWriteBlockAsync:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"shouldRollBack"];
  if ([v8 BOOLValue])
  {
    objc_storeStrong(&self->_serviceRegistry, registry);
    v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
    delegate = [entryCopy objectForKeyedSubscript:@"isPaired"];
    bOOLValue = [delegate BOOLValue];
    registry = [(EPSagaTransactionMakeDevicePaired *)self registry];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006C69C;
    v14[3] = &unk_100177F38;
    v15 = v9;
    selfCopy = self;
    v18 = bOOLValue;
    v17 = entryCopy;
    v13 = v9;
    [registry grabRegistryWithWriteBlockAsync:v14];
  }

  else
  {
    delegate = [(EPSagaTransactionMakeDevicePaired *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end