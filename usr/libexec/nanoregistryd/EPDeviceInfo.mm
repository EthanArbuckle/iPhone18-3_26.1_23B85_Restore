@interface EPDeviceInfo
- (BOOL)isPairing;
- (EPDevice)device;
- (EPDeviceInfo)initWithPeer:(id)peer;
- (EPDeviceInfoDelegate)delegate;
- (EPPeripheralObserverFactory)peripheralFactory;
- (id)initBase;
- (id)newCentralDevice;
- (id)newClassicDevice;
- (id)newConnectorWithDelegate:(id)delegate;
- (id)newPeripheralDeviceWithAdvertisementData:(id)data withRSSI:(id)i;
- (void)dealloc;
- (void)device:(id)device peerDidInvalidate:(id)invalidate;
- (void)deviceDidDeallocate:(id)deallocate;
- (void)devicePairingFailure:(id)failure;
- (void)devicePairingSuccess:(id)success;
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

- (EPDeviceInfo)initWithPeer:(id)peer
{
  peerCopy = peer;
  initBase = [(EPDeviceInfo *)self initBase];
  v7 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 4, peer);
    identifier = [peerCopy identifier];
    uuid = v7->_uuid;
    v7->_uuid = identifier;
  }

  return v7;
}

- (id)newPeripheralDeviceWithAdvertisementData:(id)data withRSSI:(id)i
{
  self->_deviceWasHere = 1;
  v5 = [EPDevice newDeviceWithInfo:self withAdvertisementData:data withRSSI:i];
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
  isPairing = [WeakRetained isPairing];

  return isPairing;
}

- (void)deviceDidDeallocate:(id)deallocate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deviceInfoDeviceDidDeallocate:self];

  [(EPDeviceInfo *)self reset];
}

- (void)device:(id)device peerDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  if (self->_peer)
  {
    [(EPDeviceInfo *)self reset];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deviceInfo:self peerDidInvalidate:invalidateCopy];
}

- (void)devicePairingFailure:(id)failure
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 deviceInfoPairingFailure:self];
  }
}

- (void)devicePairingSuccess:(id)success
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

- (id)newConnectorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_device);

  if (WeakRetained)
  {
    if (!self->_connectors)
    {
      peer = self->_peer;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        peripheralFactory = [(EPDeviceInfo *)self peripheralFactory];
        connectorManager = [peripheralFactory connectorManager];
      }

      else
      {
        v10 = [EPNullResourceManager alloc];
        peripheralFactory = +[EPFactory queue];
        connectorManager = [(EPResourceManager *)v10 initWithQueue:peripheralFactory];
      }

      connectors = self->_connectors;
      self->_connectors = connectorManager;
    }

    v9 = [(EPResourceManagerProtocol *)self->_connectors newResourceWithDelegate:delegateCopy];
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