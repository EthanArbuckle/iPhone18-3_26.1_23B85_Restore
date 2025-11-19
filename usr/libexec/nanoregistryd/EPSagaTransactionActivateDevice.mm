@interface EPSagaTransactionActivateDevice
- (EPTransactionDelegate)delegate;
- (id)_makeActiveDeviceCollection:(id)a3 diffWithPairingID:(id)a4 activate:(BOOL)a5;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionActivateDevice

- (id)_makeActiveDeviceCollection:(id)a3 diffWithPairingID:(id)a4 activate:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = +[NSDate date];
  v10 = +[NSMutableDictionary dictionary];
  v11 = [v7 activeDeviceID];
  v12 = v11;
  if (v5)
  {
    v13 = [v8 isEqual:v11];

    if (v13)
    {
      goto LABEL_9;
    }

    v14 = [v7 activeDeviceID];

    if (v14)
    {
      v15 = [NRMutableDevice diffsToActivate:0 withDate:v9];
      v16 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v15];
      v17 = [[NRDeviceDiffType alloc] initWithDiff:v16 andChangeType:1];
      v18 = [v7 activeDeviceID];
      [v10 setObject:v17 forKeyedSubscript:v18];
    }

    v19 = [NRMutableDevice diffsToActivate:1 withDate:v9];
    v20 = [v19 mutableCopy];

    v21 = [NRDevicePropertyDiffType alloc];
    v22 = [[NRDevicePropertyDiff alloc] initWithValue:v8];
    v23 = [v21 initWithDiff:v22 andChangeType:1];

    [v20 setObject:v23 forKeyedSubscript:NRDevicePropertyPairingID];
    v24 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v20];
    v25 = [[NRDeviceDiffType alloc] initWithDiff:v24 andChangeType:1];
    v26 = v10;
    v27 = v25;
    v28 = v8;
  }

  else
  {

    if (!v12)
    {
      goto LABEL_9;
    }

    v20 = [NRMutableDevice diffsToActivate:0 withDate:v9];
    v23 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v20];
    v24 = [[NRDeviceDiffType alloc] initWithDiff:v23 andChangeType:1];
    v25 = [v7 activeDeviceID];
    v26 = v10;
    v27 = v24;
    v28 = v25;
  }

  [v26 setObject:v27 forKeyedSubscript:v28];

LABEL_9:
  if ([v10 count])
  {
    v29 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v10];
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [v7 serviceFromClass:objc_opt_class()];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002208C;
  v12[3] = &unk_100176328;
  v12[4] = self;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  [v9 grabRegistryWithWriteBlockAsync:v12];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [v9 objectForKeyedSubscript:@"shouldRollBack"];
  if ([v7 BOOLValue])
  {
    [(EPSagaTransactionActivateDevice *)self beginTransactionWithRoutingSlipEntry:v9 serviceRegistry:v6];
  }

  else
  {
    v8 = [(EPSagaTransactionActivateDevice *)self delegate];
    [v8 transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end