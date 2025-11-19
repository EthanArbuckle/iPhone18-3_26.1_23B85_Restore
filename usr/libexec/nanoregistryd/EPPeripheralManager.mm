@interface EPPeripheralManager
- (CBPeripheralManager)manager;
- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4;
- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3;
@end

@implementation EPPeripheralManager

- (CBPeripheralManager)manager
{
  v2 = [(EPPeripheralManager *)self managerManager];
  v3 = [v2 manager];

  return v3;
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = [(EPResource *)self ownerDelegate];
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
        v11 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [v4 state]);
        v12 = 138412802;
        v13 = v10;
        v14 = 2048;
        v15 = v5;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling peripheralManagerDidUpdateState: on %@[%p] with %@", &v12, 0x20u);
      }
    }

    [v5 peripheralManagerDidUpdateState:v4];
  }
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v12 = sub_1000A98C0();
    v13 = v12;
    if (v10)
    {
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (v14)
      {
        v15 = sub_1000A98C0();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          v18 = [v9 UUID];
          v19 = [v18 UUIDString];
          v22 = 138413058;
          v23 = v17;
          v24 = 2048;
          v25 = v11;
          v26 = 2112;
          v27 = v19;
          v28 = 2112;
          v29 = v10;
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
          v18 = [v9 UUID];
          v19 = [v18 UUIDString];
          v22 = 138412802;
          v23 = v17;
          v24 = 2048;
          v25 = v11;
          v26 = 2112;
          v27 = v19;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didAddService:error: on %@[%p] for service %@ with no error", &v22, 0x20u);
          goto LABEL_9;
        }

LABEL_10:
      }
    }

    [v11 peripheralManager:v8 didAddService:v9 error:v10];
  }
}

- (void)peripheralManager:(id)a3 didReceiveReadRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPResource *)self ownerDelegate];
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
        v14 = [v7 characteristic];
        v15 = [v14 UUID];
        v16 = [v15 UUIDString];
        v17 = 138412802;
        v18 = v13;
        v19 = 2048;
        v20 = v8;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didReceiveReadRequest: on %@[%p] for characteristic %@", &v17, 0x20u);
      }
    }

    [v8 peripheralManager:v6 didReceiveReadRequest:v7];
  }
}

- (void)peripheralManager:(id)a3 didReceiveWriteRequests:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPResource *)self ownerDelegate];
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
        v14 = [v7 firstObject];
        v15 = [v14 characteristic];
        v16 = [v15 UUID];
        v17 = [v16 UUIDString];
        v18 = 138412802;
        v19 = v13;
        v20 = 2048;
        v21 = v8;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling peripheralManager:didReceiveWriteRequests: on %@[%p] for characteristic %@", &v18, 0x20u);
      }
    }

    [v8 peripheralManager:v6 didReceiveWriteRequests:v7];
  }
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 peripheralManagerDidStartAdvertising:v8 error:v6];
  }
}

- (void)peripheralManagerIsReadyToUpdateSubscribers:(id)a3
{
  v5 = a3;
  v4 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 peripheralManagerIsReadyToUpdateSubscribers:v5];
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didSubscribeToCharacteristic:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 peripheralManager:v11 central:v8 didSubscribeToCharacteristic:v9];
  }
}

- (void)peripheralManager:(id)a3 central:(id)a4 didUnsubscribeFromCharacteristic:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 peripheralManager:v11 central:v8 didUnsubscribeFromCharacteristic:v9];
  }
}

@end