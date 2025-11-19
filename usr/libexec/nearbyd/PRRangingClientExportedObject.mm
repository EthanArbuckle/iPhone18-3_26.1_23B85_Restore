@interface PRRangingClientExportedObject
- (PRRangingClientExportedObject)initWithRangingClient:(id)a3;
- (PRRangingClientProtocol)rangingClient;
- (void)didFailWithError:(id)a3;
- (void)didReceiveNewSolutions:(id)a3;
- (void)rangingRequestDidUpdateStatus:(unint64_t)a3;
- (void)rangingServiceDidUpdateState:(unint64_t)a3 cause:(int64_t)a4;
- (void)remoteDevice:(id)a3 didChangeState:(int64_t)a4;
- (void)sendDataToPeers:(id)a3;
@end

@implementation PRRangingClientExportedObject

- (PRRangingClientExportedObject)initWithRangingClient:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PRRangingClientExportedObject;
  v5 = [(PRRangingClientExportedObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_rangingClient, v4);
  }

  return v6;
}

- (void)didFailWithError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didFailWithError:v4];
}

- (void)rangingServiceDidUpdateState:(unint64_t)a3 cause:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained rangingServiceDidUpdateState:a3 cause:a4];
}

- (void)didReceiveNewSolutions:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained didReceiveNewSolutions:v5];
  }
}

- (void)rangingRequestDidUpdateStatus:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained rangingRequestDidUpdateStatus:a3];
  }
}

- (void)remoteDevice:(id)a3 didChangeState:(int64_t)a4
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained remoteDevice:v7 didChangeState:a4];
  }
}

- (void)sendDataToPeers:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained sendDataToPeers:v5];
  }
}

- (PRRangingClientProtocol)rangingClient
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);

  return WeakRetained;
}

@end