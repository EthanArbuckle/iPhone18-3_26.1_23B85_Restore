@interface EPPeripheralObserverFactory
- (EPPeripheralConnectorManager)connectorManager;
- (EPPeripheralObserverFactory)initWithPeripheral:(id)peripheral;
- (id)newConnectorWithDelegate:(id)delegate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
@end

@implementation EPPeripheralObserverFactory

- (EPPeripheralObserverFactory)initWithPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  v6 = +[EPFactory queue];
  v9.receiver = self;
  v9.super_class = EPPeripheralObserverFactory;
  v7 = [(EPResourceManager *)&v9 initWithQueue:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_peripheral, peripheral);
    [peripheralCopy setDelegate:v7];
  }

  return v7;
}

- (EPPeripheralConnectorManager)connectorManager
{
  connectorManager = self->_connectorManager;
  if (!connectorManager)
  {
    v4 = +[EPPeripheralConnectorManagerFactory sharedConnectorManagerFactory];
    identifier = [(CBPeripheral *)self->_peripheral identifier];
    v6 = [v4 connectorManagerWithUuid:identifier];
    v7 = self->_connectorManager;
    self->_connectorManager = v6;

    connectorManager = self->_connectorManager;
  }

  return connectorManager;
}

- (id)newConnectorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  connectorManager = [(EPPeripheralObserverFactory *)self connectorManager];
  v6 = [connectorManager newResourceWithDelegate:delegateCopy];

  return v6;
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000DBFC;
  v8[3] = &unk_100175998;
  peripheralCopy = peripheral;
  servicesCopy = services;
  v6 = servicesCopy;
  v7 = peripheralCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v8];
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000DCE8;
  v11[3] = &unk_1001759C0;
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  v8 = errorCopy;
  v9 = serviceCopy;
  v10 = peripheralCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000DDD8;
  v11[3] = &unk_1001759C0;
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v8 = errorCopy;
  v9 = characteristicCopy;
  v10 = peripheralCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v11];
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  v11 = sub_1000034AC();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = sub_1000034AC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didUpdateValueForCharacteristic was called", buf, 2u);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000DF38;
  v17[3] = &unk_1001759C0;
  v18 = peripheralCopy;
  v19 = characteristicCopy;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = characteristicCopy;
  v16 = peripheralCopy;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v17];
}

@end