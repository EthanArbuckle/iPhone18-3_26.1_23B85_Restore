@interface EPSagaTransactionUpdateNRDeviceWithNewNetworkRelayDevice
- (EPTransactionDelegate)delegate;
- (id)_deviceCollection:(id)a3 diffToUpdateNetworkRelayId:(id)a4 ofDevice:(id)a5;
- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
@end

@implementation EPSagaTransactionUpdateNRDeviceWithNewNetworkRelayDevice

- (id)_deviceCollection:(id)a3 diffToUpdateNetworkRelayId:(id)a4 ofDevice:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[NSMutableDictionary dictionary];
  v9 = +[NSMutableDictionary dictionary];
  if (v6)
  {
    v10 = [NRDevicePropertyDiffType alloc];
    v11 = [[NRDevicePropertyDiff alloc] initWithValue:v6];
    v12 = [v10 initWithDiff:v11 andChangeType:1];

    [v9 setObject:v12 forKeyedSubscript:_NRDevicePropertyNetworkRelayIdentifier];
  }

  if ([v9 count])
  {
    v13 = [[NRDeviceDiff alloc] initWithDiffPropertyDiffs:v9];
    v14 = [[NRDeviceDiffType alloc] initWithDiff:v13 andChangeType:1];
    [v8 setObject:v14 forKeyedSubscript:v7];
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

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"networkRelayID"];
  v9 = [v6 objectForKeyedSubscript:@"nrDeviceIdentifier"];
  v10 = [v7 serviceFromClass:objc_opt_class()];

  v11 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 UUIDString];
    v13 = [v9 UUIDString];
    *buf = 136315650;
    v22 = "[EPSagaTransactionUpdateNRDeviceWithNewNetworkRelayDevice beginTransactionWithRoutingSlipEntry:serviceRegistry:]";
    v23 = 2114;
    v24 = v12;
    v25 = 2114;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s networkRelayDeviceIdentifier %{public}@, nanoRegistryDeviceIdentifier %{public}@", buf, 0x20u);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10009D3D8;
  v17[3] = &unk_100175748;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v6;
  v14 = v6;
  v15 = v9;
  v16 = v8;
  [v10 grabRegistryWithReadBlock:v17];
}

- (void)beginRollbackWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v5 = [a3 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009D854;
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