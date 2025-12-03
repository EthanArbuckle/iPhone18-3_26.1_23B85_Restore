@interface EPPeripheralObserver
- (CBPeripheral)peripheral;
- (id)newConnectorWithDelegate:(id)delegate;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
@end

@implementation EPPeripheralObserver

- (CBPeripheral)peripheral
{
  resourceManager = [(EPResource *)self resourceManager];
  peripheral = [resourceManager peripheral];

  return peripheral;
}

- (id)newConnectorWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  resourceManager = [(EPResource *)self resourceManager];
  v6 = [resourceManager newConnectorWithDelegate:delegateCopy];

  return v6;
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  servicesCopy = services;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = sub_1000A98C0();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = sub_1000A98C0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = 138412546;
        v15 = v13;
        v16 = 2048;
        v17 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didDiscoverServices: on %@[%p]", &v14, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didDiscoverServices:servicesCopy];
  }
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412546;
        v18 = v16;
        v19 = 2048;
        v20 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didDiscoverCharacteristicsForService:error: on %@[%p]", &v17, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didDiscoverCharacteristicsForService:serviceCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412546;
        v18 = v16;
        v19 = 2048;
        v20 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didWriteValueForCharacteristic:error: on %@[%p]", &v17, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didWriteValueForCharacteristic:characteristicCopy error:errorCopy];
  }
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = sub_1000A98C0();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = 138412546;
        v18 = v16;
        v19 = 2048;
        v20 = ownerDelegate;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Calling peripheral:didUpdateValueForCharacteristic:error: on %@[%p]", &v17, 0x16u);
      }
    }

    [ownerDelegate peripheral:peripheralCopy didUpdateValueForCharacteristic:characteristicCopy error:errorCopy];
  }
}

@end