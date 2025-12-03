@interface EPSagaTransactionUpdateNRDeviceWithNewNetworkRelayDevice
- (EPTransactionDelegate)delegate;
- (id)_deviceCollection:(id)collection diffToUpdateNetworkRelayId:(id)id ofDevice:(id)device;
- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
@end

@implementation EPSagaTransactionUpdateNRDeviceWithNewNetworkRelayDevice

- (id)_deviceCollection:(id)collection diffToUpdateNetworkRelayId:(id)id ofDevice:(id)device
{
  idCopy = id;
  deviceCopy = device;
  v8 = +[NSMutableDictionary dictionary];
  v9 = +[NSMutableDictionary dictionary];
  if (idCopy)
  {
    v10 = [NRDevicePropertyDiffType alloc];
    v11 = [[NRDevicePropertyDiff alloc] initWithValue:idCopy];
    v12 = [v10 initWithDiff:v11 andChangeType:1];

    [v9 setObject:v12 forKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
  }

  if ([v9 count])
  {
    v13 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v9];
    v14 = [[NRDeviceDiffType alloc] initWithDiff:v13 andChangeType:1];
    [v8 setObject:v14 forKeyedSubscript:deviceCopy];
  }

  if ([v8 count])
  {
    v15 = [[NRDeviceCollectionDiff alloc] initWithDeviceCollectionDiffDeviceDiffs:v8];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  registryCopy = registry;
  v8 = [entryCopy objectForKeyedSubscript:@"networkRelayID"];
  v9 = [entryCopy objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [registryCopy serviceFromClass:objc_opt_class()];

  v11 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uUIDString = [v8 UUIDString];
    uUIDString2 = [v9 UUIDString];
    *buf = 136315650;
    v22 = "[EPSagaTransactionUpdateNRDeviceWithNewNetworkRelayDevice beginTransactionWithRoutingSlipEntry:serviceRegistry:]";
    v23 = 2114;
    v24 = uUIDString;
    v25 = 2114;
    v26 = uUIDString2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s networkRelayDeviceIdentifier %{public}@, nanoRegistryDeviceIdentifier %{public}@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009D3D8;
  v17[3] = &unk_100175748;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = entryCopy;
  v14 = entryCopy;
  v15 = v9;
  v16 = v8;
  [v10 grabRegistryWithReadBlock:v17];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  queue = [entry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D854;
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