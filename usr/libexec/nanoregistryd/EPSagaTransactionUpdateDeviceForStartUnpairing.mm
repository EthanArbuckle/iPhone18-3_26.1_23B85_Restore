@interface EPSagaTransactionUpdateDeviceForStartUnpairing
- (EPTransactionDelegate)delegate;
- (void)_updateRegistryForUnpairing:(id)unpairing pairingReport:(id)report;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionUpdateDeviceForStartUnpairing

- (void)_updateRegistryForUnpairing:(id)unpairing pairingReport:(id)report
{
  unpairingCopy = unpairing;
  reportCopy = report;
  if (reportCopy)
  {
    v8 = [NRDevicePropertyDiffType alloc];
    isErrorSet = [reportCopy isErrorSet];
    if (isErrorSet)
    {
      v10 = [NRDevicePropertyDiff alloc];
      detailedError = [reportCopy detailedError];
      v11 = [v10 initWithValue:detailedError];
    }

    else
    {
      v11 = 0;
    }

    if ([reportCopy isErrorSet])
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    v12 = [v8 initWithDiff:v11 andChangeType:v13];
    if (isErrorSet)
    {
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = [NRDevicePropertyDiffType alloc];
  v15 = [[NRDevicePropertyDiff alloc] initWithValue:&__kCFBooleanFalse];
  v16 = [v14 initWithDiff:v15 andChangeType:0];

  v17 = [[NRDevicePropertyDiffType alloc] initWithDiff:0 andChangeType:2];
  v18 = [NRDeviceDiff alloc];
  if (v12)
  {
    v27[0] = _NRDevicePropertyLastPairingError;
    v27[1] = NRDevicePropertyIsPaired;
    v28[0] = v12;
    v28[1] = v16;
    v27[2] = _NRDevicePropertyPairingStatusBluetoothPaired;
    v28[2] = v17;
    v19 = v28;
    v20 = v27;
    v21 = 3;
  }

  else
  {
    v25[0] = NRDevicePropertyIsPaired;
    v25[1] = _NRDevicePropertyPairingStatusBluetoothPaired;
    v26[0] = v16;
    v26[1] = v17;
    v19 = v26;
    v20 = v25;
    v21 = 2;
  }

  v22 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:v21];
  v23 = [v18 initWithDiffPropertyDiffs:v22];

  v24 = [unpairingCopy applyDiff:v23];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  registryCopy = registry;
  entryCopy = entry;
  v8 = [registryCopy serviceFromClass:objc_opt_class()];
  v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [entryCopy objectForKeyedSubscript:@"pairingReport"];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A6CE8;
  v14[3] = &unk_1001788A8;
  v15 = v9;
  selfCopy = self;
  v17 = v10;
  v18 = registryCopy;
  v11 = registryCopy;
  v12 = v10;
  v13 = v9;
  [v8 grabRegistryWithWriteBlockAsync:v14];
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end