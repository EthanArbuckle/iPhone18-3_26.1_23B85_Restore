@interface EPDeviceInfo
- (BOOL)isPairing;
- (EPDevice)device;
- (EPDeviceInfo)initWithPeer:(id)a3;
- (EPDeviceInfoDelegate)delegate;
- (EPPeripheralObserverFactory)peripheralFactory;
- (id)initBase;
- (id)newCentralDevice;
- (id)newClassicDevice;
- (id)newConnectorWithDelegate:(id)a3;
- (id)newPeripheralDeviceWithAdvertisementData:(id)a3 withRSSI:(id)a4;
- (void)dealloc;
- (void)device:(id)a3 peerDidInvalidate:(id)a4;
- (void)deviceDidDeallocate:(id)a3;
- (void)devicePairingFailure:(id)a3;
- (void)devicePairingSuccess:(id)a3;
- (void)reset;
@end

@implementation EPDeviceInfo

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPDeviceInfo;
  return [(EPDeviceInfo *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EPDeviceInfo;
  [(EPDeviceInfo *)&v2 dealloc];
}

- (EPDeviceInfo)initWithPeer:(id)a3
{
  v5 = a3;
  v6 = [(EPDeviceInfo *)self initBase];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 4, a3);
    v8 = [v5 identifier];
    uuid = v7->_uuid;
    v7->_uuid = v8;
  }

  return v7;
}

- (id)newPeripheralDeviceWithAdvertisementData:(id)a3 withRSSI:(id)a4
{
  self->_deviceWasHere = 1;
  v5 = [EPDevice newDeviceWithInfo:self withAdvertisementData:a3 withRSSI:a4];
  objc_storeWeak(&self->_device, v5);
  return v5;
}

- (id)newCentralDevice
{
  self->_deviceWasHere = 1;
  v3 = [EPDevice newDeviceWithInfo:self];
  objc_storeWeak(&self->_device, v3);
  return v3;
}

- (id)newClassicDevice
{
  self->_deviceWasHere = 1;
  v3 = [EPDevice newClassicDeviceWithInfo:self];
  objc_storeWeak(&self->_device, v3);
  return v3;
}

- (void)reset
{
  peripheralFactory = self->_peripheralFactory;
  self->_peripheralFactory = 0;

  peer = self->_peer;
  self->_peer = 0;

  connectors = self->_connectors;
  self->_connectors = 0;
}

- (BOOL)isPairing
{
  WeakRetained = objc_loadWeakRetained(&self->_device);
  v3 = [WeakRetained isPairing];

  return v3;
}

- (void)deviceDidDeallocate:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deviceInfoDeviceDidDeallocate:self];

  [(EPDeviceInfo *)self reset];
}

- (void)device:(id)a3 peerDidInvalidate:(id)a4
{
  v6 = a4;
  if (self->_peer)
  {
    [(EPDeviceInfo *)self reset];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deviceInfo:self peerDidInvalidate:v6];
}

- (void)devicePairingFailure:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 deviceInfoPairingFailure:self];
  }
}

- (void)devicePairingSuccess:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 deviceInfoPairingSuccess:self];
  }
}

- (EPPeripheralObserverFactory)peripheralFactory
{
  if (!self->_peripheralFactory)
  {
    peer = self->_peer;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = self->_peer;
      v5 = [[EPPeripheralObserverFactory alloc] initWithPeripheral:v4];
      peripheralFactory = self->_peripheralFactory;
      self->_peripheralFactory = v5;
    }
  }

  v7 = self->_peripheralFactory;

  return v7;
}

- (id)newConnectorWithDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_device);

  if (WeakRetained)
  {
    if (!self->_connectors)
    {
      peer = self->_peer;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(EPDeviceInfo *)self peripheralFactory];
        v8 = [v7 connectorManager];
      }

      else
      {
        v10 = [EPNullResourceManager alloc];
        v7 = +[EPFactory queue];
        v8 = [(EPResourceManager *)v10 initWithQueue:v7];
      }

      connectors = self->_connectors;
      self->_connectors = v8;
    }

    v9 = [(EPResourceManagerProtocol *)self->_connectors newResourceWithDelegate:v4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (EPDeviceInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (EPDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end