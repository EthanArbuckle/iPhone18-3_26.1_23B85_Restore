@interface EPSagaTransactionUnpairBluetoothDevice
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)unpairer:(id)unpairer didFinishUnpairingDevices:(id)devices;
- (void)unpairerBluetoothMayHaveFailed:(id)failed;
@end

@implementation EPSagaTransactionUnpairBluetoothDevice

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  objc_storeStrong(&self->_routingSlipEntry, entry);
  v7 = [entryCopy objectForKeyedSubscript:@"coreBluetoothID"];
  if (v7)
  {
    objc_storeStrong(&self->_routingSlipEntry, entry);
    v8 = [EPMassUnpairer alloc];
    v9 = [NSSet setWithObject:v7];
    v10 = [(EPMassUnpairer *)v8 initWithDelegate:self UUIDs:v9];
    unpairer = self->_unpairer;
    self->_unpairer = v10;
  }

  else
  {
    queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E7B9C;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)unpairer:(id)unpairer didFinishUnpairingDevices:(id)devices
{
  v5 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue:unpairer];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7C7C;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)unpairerBluetoothMayHaveFailed:(id)failed
{
  v4 = nr_daemon_log();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v6 = nr_daemon_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Skipping bluetooth unpair because the mass unpairer timed out/failed", buf, 2u);
    }
  }

  queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7DC8;
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