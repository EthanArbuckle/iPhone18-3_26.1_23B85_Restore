@interface EPSagaTransactionUpdateNRDeviceWithNewBluetoothDevice
- (EPTransactionDelegate)delegate;
- (id)_deviceCollection:(id)collection diffToUpdateBluetoothId:(id)id ofDevice:(id)device;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionUpdateNRDeviceWithNewBluetoothDevice

- (id)_deviceCollection:(id)collection diffToUpdateBluetoothId:(id)id ofDevice:(id)device
{
  idCopy = id;
  deviceCopy = device;
  collectionCopy = collection;
  activeDeviceID = [collectionCopy activeDeviceID];
  v11 = +[NSMutableDictionary dictionary];
  v12 = +[NSDate date];
  v13 = +[NSMutableDictionary dictionary];
  v14 = [collectionCopy objectForKeyedSubscript:deviceCopy];

  LOBYTE(collectionCopy) = [v14 isActive];
  if ((collectionCopy & 1) == 0)
  {
    v15 = [NRMutableDevice diffsToActivate:1 withDate:v12];
    [v13 addEntriesFromDictionary:v15];
  }

  if (idCopy)
  {
    v16 = [NRDevicePropertyDiffType alloc];
    v17 = [[NRDevicePropertyDiff alloc] initWithValue:idCopy];
    v18 = [v16 initWithDiff:v17 andChangeType:1];

    [v13 setObject:v18 forKeyedSubscript:_NRDevicePropertyBluetoothIdentifier];
  }

  if ([v13 count])
  {
    v19 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v13];
    v20 = [[NRDeviceDiffType alloc] initWithDiff:v19 andChangeType:1];
    [v11 setObject:v20 forKeyedSubscript:deviceCopy];
  }

  if (activeDeviceID && ([activeDeviceID isEqual:deviceCopy] & 1) == 0)
  {
    v21 = +[NSMutableDictionary dictionary];
    v22 = [NRMutableDevice diffsToActivate:0 withDate:v12];
    [v21 addEntriesFromDictionary:v22];

    v23 = +[NRMutableDevice diffsToClearStatusCodeAndCompatibilityState];
    [v21 addEntriesFromDictionary:v23];

    v24 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v21];
    v25 = [[NRDeviceDiffType alloc] initWithDiff:v24 andChangeType:1];
    [v11 setObject:v25 forKeyedSubscript:activeDeviceID];
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

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"coreBluetoothID"];
  v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [registryCopy serviceFromClass:objc_opt_class()];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100018670;
  v14[3] = &unk_100175748;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = entryCopy;
  v11 = entryCopy;
  v12 = v9;
  v13 = v8;
  [v10 grabRegistryWithReadBlock:v14];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  queue = [entry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A14;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(queue, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end