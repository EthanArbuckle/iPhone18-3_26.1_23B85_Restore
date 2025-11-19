@interface EPSagaTransactionUpdateDeviceForStartUnpairing
- (EPTransactionDelegate)delegate;
- (void)_updateRegistryForUnpairing:(id)a3 pairingReport:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionUpdateDeviceForStartUnpairing

- (void)_updateRegistryForUnpairing:(id)a3 pairingReport:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [NRDevicePropertyDiffType alloc];
    v9 = [v7 isErrorSet];
    if (v9)
    {
      v10 = [NRDevicePropertyDiff alloc];
      v4 = [v7 detailedError];
      v11 = [v10 initWithValue:v4];
    }

    else
    {
      v11 = 0;
    }

    if ([v7 isErrorSet])
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    v12 = [v8 initWithDiff:v11 andChangeType:v13];
    if (v9)
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

  v24 = [v6 applyDiff:v23];
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 serviceFromClass:objc_opt_class()];
  v9 = [v7 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [v7 objectForKeyedSubscript:@"pairingReport"];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000A6CE8;
  v14[3] = &unk_1001788A8;
  v15 = v9;
  v16 = self;
  v17 = v10;
  v18 = v6;
  v11 = v6;
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