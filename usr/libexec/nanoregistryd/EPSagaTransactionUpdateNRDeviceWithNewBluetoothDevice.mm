@interface EPSagaTransactionUpdateNRDeviceWithNewBluetoothDevice
- (EPTransactionDelegate)delegate;
- (id)_deviceCollection:(id)a3 diffToUpdateBluetoothId:(id)a4 ofDevice:(id)a5;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionUpdateNRDeviceWithNewBluetoothDevice

- (id)_deviceCollection:(id)a3 diffToUpdateBluetoothId:(id)a4 ofDevice:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 activeDeviceID];
  v11 = +[NSMutableDictionary dictionary];
  v12 = +[NSDate date];
  v13 = +[NSMutableDictionary dictionary];
  v14 = [v9 objectForKeyedSubscript:v8];

  LOBYTE(v9) = [v14 isActive];
  if ((v9 & 1) == 0)
  {
    v15 = [NRMutableDevice diffsToActivate:1 withDate:v12];
    [v13 addEntriesFromDictionary:v15];
  }

  if (v7)
  {
    v16 = [NRDevicePropertyDiffType alloc];
    v17 = [[NRDevicePropertyDiff alloc] initWithValue:v7];
    v18 = [v16 initWithDiff:v17 andChangeType:1];

    [v13 setObject:v18 forKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  }

  if ([v13 count])
  {
    v19 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v13];
    v20 = [[NRDeviceDiffType alloc] initWithDiff:v19 andChangeType:1];
    [v11 setObject:v20 forKeyedSubscript:v8];
  }

  if (v10 && ([v10 isEqual:v8] & 1) == 0)
  {
    v21 = +[NSMutableDictionary dictionary];
    v22 = [NRMutableDevice diffsToActivate:0 withDate:v12];
    [v21 addEntriesFromDictionary:v22];

    v23 = +[NRMutableDevice diffsToClearStatusCodeAndCompatibilityState];
    [v21 addEntriesFromDictionary:v23];

    v24 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v21];
    v25 = [[NRDeviceDiffType alloc] initWithDiff:v24 andChangeType:1];
    [v11 setObject:v25 forKeyedSubscript:v10];
  }

  if ([v11 count])
  {
    v26 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v11];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"coreBluetoothID"];
  v9 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [v7 serviceFromClass:objc_opt_class()];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100018670;
  v14[3] = &unk_100175748;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v6;
  v11 = v6;
  v12 = v9;
  v13 = v8;
  [v10 grabRegistryWithReadBlock:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = [a3 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A14;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v5, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end