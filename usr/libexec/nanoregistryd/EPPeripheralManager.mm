@interface EPPeripheralManager
- (CBPeripheralManager)manager;
- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request;
- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers;
@end

@implementation EPPeripheralManager

- (CBPeripheralManager)manager
{
  managerManager = [(EPPeripheralManager *)self managerManager];
  manager = [managerManager manager];

  return manager;
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = sub_1000A98C0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = sub_1000A98C0();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
        v12 = 138412802;
        v13 = v10;
        v14 = 2048;
        v15 = ownerDelegate;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling peripheralManagerDidUpdateState: on %@[%p] with %@", &v12, 0x20u);
      }
    }

    [ownerDelegate peripheralManagerDidUpdateState:stateCopy];
  }
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  managerCopy = manager;
  serviceCopy = service;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = v12;
    if (errorCopy)
    {
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v15 = sub_1000A98C0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          uUID = [serviceCopy UUID];
          uUIDString = [uUID UUIDString];
          v22 = 138413058;
          v23 = v17;
          v24 = 2048;
          v25 = ownerDelegate;
          v26 = 2112;
          v27 = uUIDString;
          v28 = 2112;
          v29 = errorCopy;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Calling peripheralManager:didAddService:error: on %@[%p] for service %@ with error %@", &v22, 0x2Au);
LABEL_9:

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v20 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v15 = sub_1000A98C0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v17 = NSStringFromClass(v21);
          uUID = [serviceCopy UUID];
          uUIDString = [uUID UUIDString];
          v22 = 138412802;
          v23 = v17;
          v24 = 2048;
          v25 = ownerDelegate;
          v26 = 2112;
          v27 = uUIDString;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didAddService:error: on %@[%p] for service %@ with no error", &v22, 0x20u);
          goto LABEL_9;
        }

LABEL_10:
      }
    }

    [ownerDelegate peripheralManager:managerCopy didAddService:serviceCopy error:errorCopy];
  }
}

- (void)peripheralManager:(id)manager didReceiveReadRequest:(id)request
{
  managerCopy = manager;
  requestCopy = request;
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
        characteristic = [requestCopy characteristic];
        uUID = [characteristic UUID];
        uUIDString = [uUID UUIDString];
        v17 = 138412802;
        v18 = v13;
        v19 = 2048;
        v20 = ownerDelegate;
        v21 = 2112;
        v22 = uUIDString;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didReceiveReadRequest: on %@[%p] for characteristic %@", &v17, 0x20u);
      }
    }

    [ownerDelegate peripheralManager:managerCopy didReceiveReadRequest:requestCopy];
  }
}

- (void)peripheralManager:(id)manager didReceiveWriteRequests:(id)requests
{
  managerCopy = manager;
  requestsCopy = requests;
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
        firstObject = [requestsCopy firstObject];
        characteristic = [firstObject characteristic];
        uUID = [characteristic UUID];
        uUIDString = [uUID UUIDString];
        v18 = 138412802;
        v19 = v13;
        v20 = 2048;
        v21 = ownerDelegate;
        v22 = 2112;
        v23 = uUIDString;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didReceiveWriteRequests: on %@[%p] for characteristic %@", &v18, 0x20u);
      }
    }

    [ownerDelegate peripheralManager:managerCopy didReceiveWriteRequests:requestsCopy];
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  advertisingCopy = advertising;
  errorCopy = error;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManagerDidStartAdvertising:advertisingCopy error:errorCopy];
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)subscribers
{
  subscribersCopy = subscribers;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManagerIsReadyToUpdateSubscribers:subscribersCopy];
  }
}

- (void)peripheralManager:(id)manager central:(id)central didSubscribeToCharacteristic:(id)characteristic
{
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManager:managerCopy central:centralCopy didSubscribeToCharacteristic:characteristicCopy];
  }
}

- (void)peripheralManager:(id)manager central:(id)central didUnsubscribeFromCharacteristic:(id)characteristic
{
  managerCopy = manager;
  centralCopy = central;
  characteristicCopy = characteristic;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate peripheralManager:managerCopy central:centralCopy didUnsubscribeFromCharacteristic:characteristicCopy];
  }
}

@end