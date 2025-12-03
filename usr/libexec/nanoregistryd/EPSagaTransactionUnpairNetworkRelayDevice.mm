@interface EPSagaTransactionUnpairNetworkRelayDevice
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry;
- (void)networkRelayUnpairingCompletedWithError:(id)error;
@end

@implementation EPSagaTransactionUnpairNetworkRelayDevice

- (void)beginTransactionWithRoutingSlipEntry:(id)entry serviceRegistry:(id)registry
{
  entryCopy = entry;
  objc_storeStrong(&self->_routingSlipEntry, entry);
  v7 = [entryCopy objectForKeyedSubscript:@"networkRelayID"];
  if (v7)
  {
    objc_storeStrong(&self->_routingSlipEntry, entry);
    queue = +[NetworkRelayAgent sharedInstance];
    [queue addDelegate:self];
    [queue unpairNetworkRelayDeviceWithNetworkRelayIdentifier:v7];
  }

  else
  {
    queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009CDD0;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)networkRelayUnpairingCompletedWithError:(id)error
{
  errorCopy = error;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "networkRelayUnpairingCompletedWithError called with error %{public}@", buf, 0xCu);
  }

  v6 = +[NetworkRelayAgent sharedInstance];
  [v6 removeDelegate:self];
  queue = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CF60;
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