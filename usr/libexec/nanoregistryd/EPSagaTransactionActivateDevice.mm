@interface EPSagaTransactionActivateDevice
- (EPTransactionDelegate)delegate;
- (id)_makeActiveDeviceCollection:(id)collection diffWithPairingID:(id)d activate:(BOOL)activate;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionActivateDevice

- (id)_makeActiveDeviceCollection:(id)collection diffWithPairingID:(id)d activate:(BOOL)activate
{
  activateCopy = activate;
  collectionCopy = collection;
  dCopy = d;
  v9 = +[NSDate date];
  v10 = +[NSMutableDictionary dictionary];
  activeDeviceID = [collectionCopy activeDeviceID];
  v12 = activeDeviceID;
  if (activateCopy)
  {
    v13 = [dCopy isEqual:activeDeviceID];

    if (v13)
    {
      goto LABEL_9;
    }

    activeDeviceID2 = [collectionCopy activeDeviceID];

    if (activeDeviceID2)
    {
      v15 = [NRMutableDevice diffsToActivate:0 withDate:v9];
      v16 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v15];
      v17 = [[NRDeviceDiffType alloc] initWithDiff:v16 andChangeType:1];
      activeDeviceID3 = [collectionCopy activeDeviceID];
      [v10 setObject:v17 forKeyedSubscript:activeDeviceID3];
    }

    v19 = [NRMutableDevice diffsToActivate:1 withDate:v9];
    v20 = [v19 mutableCopy];

    v21 = [NRDevicePropertyDiffType alloc];
    v22 = [[NRDevicePropertyDiff alloc] initWithValue:dCopy];
    v23 = [v21 initWithDiff:v22 andChangeType:1];

    [v20 setObject:v23 forKeyedSubscript:NRDevicePropertyPairingID];
    v24 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v20];
    activeDeviceID4 = [[NRDeviceDiffType alloc] initWithDiff:v24 andChangeType:1];
    v26 = v10;
    v27 = activeDeviceID4;
    v28 = dCopy;
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
    activeDeviceID4 = [collectionCopy activeDeviceID];
    v26 = v10;
    v27 = v24;
    v28 = activeDeviceID4;
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

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v9 = [registryCopy serviceFromClass:objc_opt_class()];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002208C;
  v12[3] = &unk_100176328;
  v12[4] = self;
  v13 = v8;
  v14 = entryCopy;
  v10 = entryCopy;
  v11 = v8;
  [v9 grabRegistryWithWriteBlockAsync:v12];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v7 = [entryCopy objectForKeyedSubscript:@"shouldRollBack"];
  if ([v7 BOOLValue])
  {
    [(EPSagaTransactionActivateDevice *)self beginTransactionWithRoutingSlipEntry:entryCopy serviceRegistry:registryCopy];
  }

  else
  {
    delegate = [(EPSagaTransactionActivateDevice *)self delegate];
    [delegate transactionDidComplete:self];
  }
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end