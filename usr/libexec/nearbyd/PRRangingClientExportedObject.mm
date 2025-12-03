@interface PRRangingClientExportedObject
- (PRRangingClientExportedObject)initWithRangingClient:(id)client;
- (PRRangingClientProtocol)rangingClient;
- (void)didFailWithError:(id)error;
- (void)didReceiveNewSolutions:(id)solutions;
- (void)rangingRequestDidUpdateStatus:(unint64_t)status;
- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause;
- (void)remoteDevice:(id)device didChangeState:(int64_t)state;
- (void)sendDataToPeers:(id)peers;
@end

@implementation PRRangingClientExportedObject

- (PRRangingClientExportedObject)initWithRangingClient:(id)client
{
  clientCopy = client;
  v8.receiver = self;
  v8.super_class = PRRangingClientExportedObject;
  v5 = [(PRRangingClientExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_rangingClient, clientCopy);
  }

  return v6;
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didFailWithError:errorCopy];
}

- (void)rangingServiceDidUpdateState:(unint64_t)state cause:(int64_t)cause
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained rangingServiceDidUpdateState:state cause:cause];
}

- (void)didReceiveNewSolutions:(id)solutions
{
  solutionsCopy = solutions;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didReceiveNewSolutions:solutionsCopy];
  }
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)status
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained rangingRequestDidUpdateStatus:status];
  }
}

- (void)remoteDevice:(id)device didChangeState:(int64_t)state
{
  deviceCopy = device;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteDevice:deviceCopy didChangeState:state];
  }
}

- (void)sendDataToPeers:(id)peers
{
  peersCopy = peers;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sendDataToPeers:peersCopy];
  }
}

- (PRRangingClientProtocol)rangingClient
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);

  return WeakRetained;
}

@end