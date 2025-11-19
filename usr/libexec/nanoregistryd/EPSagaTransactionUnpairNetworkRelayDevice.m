@interface EPSagaTransactionUnpairNetworkRelayDevice
- (EPTransactionDelegate)delegate;
- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4;
- (void)networkRelayUnpairingCompletedWithError:(id)a3;
@end

@implementation EPSagaTransactionUnpairNetworkRelayDevice

- (void)beginTransactionWithRoutingSlipEntry:(id)a3 serviceRegistry:(id)a4
{
  v6 = a3;
  objc_storeStrong(&self->_routingSlipEntry, a3);
  v7 = [v6 objectForKeyedSubscript:@"networkRelayID"];
  if (v7)
  {
    objc_storeStrong(&self->_routingSlipEntry, a3);
    v8 = +[NetworkRelayAgent sharedInstance];
    [v8 addDelegate:self];
    [v8 unpairNetworkRelayDeviceWithNetworkRelayIdentifier:v7];
  }

  else
  {
    v8 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10009CDD0;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)networkRelayUnpairingCompletedWithError:(id)a3
{
  v4 = a3;
  v5 = networkrelay_pairing_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "networkRelayUnpairingCompletedWithError called with error %{public}@", buf, 0xCu);
  }

  v6 = +[NetworkRelayAgent sharedInstance];
  [v6 removeDelegate:self];
  v7 = [(EPRoutingSlipEntry *)self->_routingSlipEntry queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009CF60;
  block[3] = &unk_100175660;
  block[4] = self;
  dispatch_async(v7, block);
}

- (EPTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end