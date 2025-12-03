@interface EPCentralManager
- (CBCentralManager)manager;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state;
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation EPCentralManager

- (CBCentralManager)manager
{
  managerManager = [(EPCentralManager *)self managerManager];
  manager = [managerManager manager];

  return manager;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = sub_1000A98C0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = sub_1000A98C0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
      v16 = 134218242;
      selfCopy2 = self;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received centralManagerDidUpdateState: with %@", &v16, 0x16u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = sub_1000A98C0();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = sub_1000A98C0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = +[EPPairingAgentManager stringFromCBManagerState:](EPPairingAgentManager, "stringFromCBManagerState:", [stateCopy state]);
        v16 = 134218754;
        selfCopy2 = self;
        v18 = 2112;
        v19 = v14;
        v20 = 2048;
        v21 = ownerDelegate;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling centralManagerDidUpdateState: on %@[%p] with %@", &v16, 0x2Au);
      }
    }

    [ownerDelegate centralManagerDidUpdateState:stateCopy];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  v8 = sub_1000A98C0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = sub_1000A98C0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [peripheralCopy identifier];
      uUIDString = [identifier UUIDString];
      v21 = 134218242;
      selfCopy2 = self;
      v23 = 2112;
      v24 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didConnectPeripheral: with peripheral %@", &v21, 0x16u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = sub_1000A98C0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = sub_1000A98C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        identifier2 = [peripheralCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        v21 = 134218754;
        selfCopy2 = self;
        v23 = 2112;
        v24 = v18;
        v25 = 2048;
        v26 = ownerDelegate;
        v27 = 2112;
        v28 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didConnectPeripheral: on %@[%p] with peripheral %@", &v21, 0x2Au);
      }
    }

    [ownerDelegate centralManager:managerCopy didConnectPeripheral:peripheralCopy];
  }
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = sub_1000A98C0();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = sub_1000A98C0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [peripheralCopy identifier];
      uUIDString = [identifier UUIDString];
      v24 = 134218498;
      selfCopy2 = self;
      v26 = 2112;
      v27 = uUIDString;
      v28 = 2112;
      v29 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didDisconnectPeripheral: with peripheral %@ with error %@", &v24, 0x20u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = sub_1000A98C0();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = sub_1000A98C0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        identifier2 = [peripheralCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        v24 = 134219010;
        selfCopy2 = self;
        v26 = 2112;
        v27 = v21;
        v28 = 2048;
        v29 = ownerDelegate;
        v30 = 2112;
        v31 = uUIDString2;
        v32 = 2112;
        v33 = errorCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didDisconnectPeripheral: on %@[%p] with peripheral %@ with error %@", &v24, 0x34u);
      }
    }

    [ownerDelegate centralManager:managerCopy didDisconnectPeripheral:peripheralCopy error:errorCopy];
  }
}

- (void)centralManager:(id)manager didUpdatePeripheralConnectionState:(id)state
{
  managerCopy = manager;
  stateCopy = state;
  v8 = sub_1000A98C0();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = sub_1000A98C0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [stateCopy identifier];
      uUIDString = [identifier UUIDString];
      v21 = 134218242;
      selfCopy2 = self;
      v23 = 2112;
      v24 = uUIDString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didUpdatePeripheralConnectionState: with peripheral %@", &v21, 0x16u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v14 = sub_1000A98C0();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = sub_1000A98C0();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        identifier2 = [stateCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        v21 = 134218754;
        selfCopy2 = self;
        v23 = 2112;
        v24 = v18;
        v25 = 2048;
        v26 = ownerDelegate;
        v27 = 2112;
        v28 = uUIDString2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didUpdatePeripheralConnectionState: on %@[%p] with peripheral %@", &v21, 0x2Au);
      }
    }

    [ownerDelegate centralManager:managerCopy didUpdatePeripheralConnectionState:stateCopy];
  }
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  v11 = sub_1000A98C0();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = sub_1000A98C0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [peripheralCopy identifier];
      uUIDString = [identifier UUIDString];
      v27 = 134218498;
      selfCopy3 = self;
      v29 = 2112;
      v30 = uUIDString;
      v31 = 2112;
      v32 = errorCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Received central:didFailToConnectPeripheral: with peripheral %@ with error %@", &v27, 0x20u);
    }
  }

  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    v17 = sub_1000A98C0();
    v18 = v17;
    if (errorCopy)
    {
      v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);

      if (v19)
      {
        v20 = sub_1000A98C0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          identifier2 = [peripheralCopy identifier];
          uUIDString2 = [identifier2 UUIDString];
          v27 = 134219010;
          selfCopy3 = self;
          v29 = 2112;
          v30 = v22;
          v31 = 2048;
          v32 = ownerDelegate;
          v33 = 2112;
          v34 = uUIDString2;
          v35 = 2112;
          v36 = errorCopy;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "EPCentralManagerManager[%p]: Calling central:didFailToConnectPeripheral: on %@[%p] with peripheral %@ with error %@", &v27, 0x34u);
LABEL_13:

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v25 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

      if (v25)
      {
        v20 = sub_1000A98C0();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          v22 = NSStringFromClass(v26);
          identifier2 = [peripheralCopy identifier];
          uUIDString2 = [identifier2 UUIDString];
          v27 = 134218754;
          selfCopy3 = self;
          v29 = 2112;
          v30 = v22;
          v31 = 2048;
          v32 = ownerDelegate;
          v33 = 2112;
          v34 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "EPCentralManagerManager[%p]: Calling central:didFailToConnectPeripheral: on %@[%p] with peripheral %@ with no error", &v27, 0x2Au);
          goto LABEL_13;
        }

LABEL_14:
      }
    }

    [ownerDelegate centralManager:managerCopy didFailToConnectPeripheral:peripheralCopy error:errorCopy];
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  ownerDelegate = [(EPResource *)self ownerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [ownerDelegate centralManager:managerCopy didDiscoverPeripheral:peripheralCopy advertisementData:dataCopy RSSI:iCopy];
  }
}

@end