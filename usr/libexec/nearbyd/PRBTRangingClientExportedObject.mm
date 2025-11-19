@interface PRBTRangingClientExportedObject
- (PRBTRangingClientExportedObject)initWithRangingClient:(id)a3;
- (PRBTRangingClientProtocol)rangingClient;
- (void)didConnectDevice:(id)a3 error:(id)a4;
- (void)didFailWithError:(id)a3;
- (void)didFetchTxPower:(id)a3 fromDevice:(id)a4 withError:(id)a5;
- (void)didReceiveNewBTRSSI:(id)a3;
- (void)didStartRangingOnDevice:(id)a3 withError:(id)a4;
- (void)didStopOwnerRangingOnDevice:(id)a3 withError:(id)a4;
@end

@implementation PRBTRangingClientExportedObject

- (PRBTRangingClientExportedObject)initWithRangingClient:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PRBTRangingClientExportedObject;
  v5 = [(PRBTRangingClientExportedObject *)&v8 init];
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

- (void)didFetchTxPower:(id)a3 fromDevice:(id)a4 withError:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didFetchTxPower:v10 fromDevice:v9 withError:v8];
}

- (void)didConnectDevice:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didConnectDevice:v7 error:v6];
}

- (void)didStartRangingOnDevice:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didStartRangingOnDevice:v7 withError:v6];
}

- (void)didStopOwnerRangingOnDevice:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didStopOwnerRangingOnDevice:v7 withError:v6];
}

- (void)didReceiveNewBTRSSI:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);
  [WeakRetained didReceiveNewBTRSSI:v4];
}

- (PRBTRangingClientProtocol)rangingClient
{
  WeakRetained = objc_loadWeakRetained(&self->_rangingClient);

  return WeakRetained;
}

@end