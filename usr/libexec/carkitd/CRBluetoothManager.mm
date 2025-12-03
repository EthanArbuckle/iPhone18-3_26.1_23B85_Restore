@interface CRBluetoothManager
+ (BOOL)hasPairingSupportingCarPlayWithAddress:(id)address;
+ (BOOL)hasPairingWithAddress:(id)address;
+ (id)_sanitizeName:(id)name;
+ (id)addressStringForData:(id)data;
- (BOOL)isPowered;
- (BOOL)unpairWithBluetoothAddress:(id)address;
- (CRBluetoothManager)init;
- (CRBluetoothManagerPairingDelegate)pairingDelegate;
- (id)_deviceForBluetoothAddress:(id)address;
- (id)connectedBluetoothAddresses;
- (unint64_t)connectedServicesCountForBluetoothAddress:(id)address;
- (void)_pairingCompletedForDevice:(id)device;
- (void)_requestConfirmationForDevice:(id)device numericCode:(id)code;
- (void)addObserver:(id)observer;
- (void)bluetoothPowerStateChanged:(id)changed;
- (void)confirmPairingWithBluetoothAddress:(id)address numericCode:(id)code;
- (void)connectWithBluetoothAddress:(id)address;
- (void)dealloc;
- (void)numericComparisonRequestHandler:(id)handler;
- (void)pairWithBluetoothAddress:(id)address;
- (void)pairingFailureHandler:(id)handler;
- (void)pairingSuccessHandler:(id)handler;
- (void)removeObserver:(id)observer;
- (void)setContactsSyncEnabled:(BOOL)enabled forBluetoothAddress:(id)address;
@end

@implementation CRBluetoothManager

+ (id)addressStringForData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  v11 = 0;
  v10 = 0;
  if (!dataCopy || [dataCopy length] != 6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  [v4 getBytes:&v10 length:6];
  v5 = BTDeviceAddressToString();
  if (v5)
  {
    v6 = v5;
    v7 = CarGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100088EB4(v4, v6, v7);
    }

    goto LABEL_7;
  }

  v8 = [NSString stringWithUTF8String:v12];
LABEL_8:

  return v8;
}

+ (id)_sanitizeName:(id)name
{
  nameCopy = name;
  v4 = [NSScanner scannerWithString:nameCopy];
  v5 = +[NSCharacterSet illegalCharacterSet];
  [v4 setCharactersToBeSkipped:v5];

  v6 = +[NSMutableString string];
  v7 = +[NSMutableString string];
  while (1)
  {
    v8 = v7;
    v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v16 = v7;
    v10 = [v4 scanUpToCharactersFromSet:v9 intoString:&v16];
    v7 = v16;

    if (!v10)
    {
      break;
    }

    [v6 appendString:v7];
    v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v12 = [v4 scanCharactersFromSet:v11 intoString:0];

    if (v12)
    {
      [v6 appendString:@" "];
    }
  }

  if ([v6 length] < 0x33)
  {
    v13 = v6;
  }

  else
  {
    v13 = [v6 substringToIndex:50];
  }

  v14 = v13;

  return v14;
}

- (CRBluetoothManager)init
{
  v13.receiver = self;
  v13.super_class = CRBluetoothManager;
  v2 = [(CRBluetoothManager *)&v13 init];
  if (v2)
  {
    v3 = +[BluetoothManager sharedInstance];
    v4 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CRBluetoothManagerObserving];
    observers = v2->_observers;
    v2->_observers = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"bluetoothPowerStateChanged:" name:BluetoothPowerChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"pairingFailureHandler:" name:BluetoothPairingPINResultFailedNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"pairingSuccessHandler:" name:BluetoothPairingPINResultSuccessNotification object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"numericComparisonRequestHandler:" name:BluetoothPairingPassKeyDisplayNotification object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"numericComparisonRequestHandler:" name:BluetoothPairingUserConfirmationNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"numericComparisonRequestHandler:" name:BluetoothPairingUserNumericComparisionNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRBluetoothManager;
  [(CRBluetoothManager *)&v4 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRBluetoothManager *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CRBluetoothManager *)self observers];
  [observers removeObserver:observerCopy];
}

- (id)connectedBluetoothAddresses
{
  v2 = +[NSMutableSet set];
  v3 = +[BluetoothManager sharedInstance];
  connectedDevices = [v3 connectedDevices];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = connectedDevices;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        address = [*(*(&v25 + 1) + 8 * i) address];
        if (address)
        {
          [v2 addObject:address];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = +[BluetoothManager sharedInstance];
  connectingDevices = [v11 connectingDevices];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = connectingDevices;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        address2 = [*(*(&v21 + 1) + 8 * j) address];
        if (address2)
        {
          [v2 addObject:address2];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v15);
  }

  v19 = CarGeneralLogging();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "connected BT Classic addresses: %@", buf, 0xCu);
  }

  return v2;
}

- (id)_deviceForBluetoothAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    v4 = +[BluetoothManager sharedInstance];
    pairedDevices = [v4 pairedDevices];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = pairedDevices;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        address = [v11 address];
        v13 = [addressCopy isEqualToString:address];

        if (v13)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v14 = v11;

      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
LABEL_10:
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = +[BluetoothManager sharedInstance];
    connectingDevices = [v15 connectingDevices];

    v14 = [connectingDevices countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v17 = *v24;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(connectingDevices);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          address2 = [v19 address];
          v21 = [addressCopy isEqualToString:address2];

          if (v21)
          {
            v14 = v19;
            goto LABEL_23;
          }
        }

        v14 = [connectingDevices countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:

LABEL_24:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)pairWithBluetoothAddress:(id)address
{
  addressCopy = address;
  [(CRBluetoothManager *)self setCurrentlyPairingAddress:addressCopy];
  v5 = +[BluetoothManager sharedInstance];
  v6 = [v5 deviceFromAddressString:addressCopy];

  v7 = CarPairingLogging();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 141558275;
      v13 = 1752392040;
      v14 = 2113;
      v15 = addressCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "starting pairing for device address %{private, mask.hash}@", &v12, 0x16u);
    }

    v9 = +[BluetoothManager sharedInstance];
    [v9 setDevicePairingEnabled:1];

    v10 = +[BluetoothManager sharedInstance];
    [v10 setConnectable:1];

    pairingDelegate = +[BluetoothManager sharedInstance];
    [pairingDelegate connectDevice:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100088F3C();
    }

    pairingDelegate = [(CRBluetoothManager *)self pairingDelegate];
    if (pairingDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [pairingDelegate bluetoothManager:self failedPairingForDeviceAddress:addressCopy name:0 didTimeout:0];
    }
  }
}

- (void)confirmPairingWithBluetoothAddress:(id)address numericCode:(id)code
{
  addressCopy = address;
  codeCopy = code;
  [(CRBluetoothManager *)self setCurrentlyPairingAddress:addressCopy];
  v8 = +[BluetoothManager sharedInstance];
  v9 = [v8 deviceFromAddressString:addressCopy];

  v10 = CarPairingLogging();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 141558275;
      v16 = 1752392040;
      v17 = 2113;
      v18 = addressCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "confirming pairing for device address %{private, mask.hash}@", &v15, 0x16u);
    }

    v12 = +[BluetoothManager sharedInstance];
    [v12 setDevicePairingEnabled:1];

    v13 = +[BluetoothManager sharedInstance];
    [v13 setConnectable:1];

    [(CRBluetoothManager *)self _requestConfirmationForDevice:v9 numericCode:codeCopy];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100088F3C();
    }

    pairingDelegate = [(CRBluetoothManager *)self pairingDelegate];
    if (pairingDelegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [pairingDelegate bluetoothManager:self failedPairingForDeviceAddress:addressCopy name:0 didTimeout:0];
    }
  }
}

- (BOOL)unpairWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v5 = [(CRBluetoothManager *)self _deviceForBluetoothAddress:addressCopy];
  v6 = +[BluetoothManager sharedInstance];
  [v6 setDevicePairingEnabled:1];

  [v5 unpair];
  v7 = +[BluetoothManager sharedInstance];
  [v7 setDevicePairingEnabled:0];

  v8 = CarPairingLogging();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      address = [v5 address];
      v12 = 141558275;
      v13 = 1752392040;
      v14 = 2113;
      v15 = address;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unpaired device: %{private, mask.hash}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100088FA4();
  }

  return v5 != 0;
}

- (unint64_t)connectedServicesCountForBluetoothAddress:(id)address
{
  v3 = [(CRBluetoothManager *)self _deviceForBluetoothAddress:address];
  v4 = v3;
  if (v3)
  {
    connectedServicesCount = [v3 connectedServicesCount];
  }

  else
  {
    connectedServicesCount = 0;
  }

  return connectedServicesCount;
}

- (void)setContactsSyncEnabled:(BOOL)enabled forBluetoothAddress:(id)address
{
  enabledCopy = enabled;
  addressCopy = address;
  v6 = +[BluetoothManager sharedInstance];
  v7 = [v6 deviceFromAddressString:addressCopy];

  if (v7)
  {
    v8 = [v7 syncSettings] & 0xFFFF00FF;
    v9 = &_mh_execute_header;
    if (enabledCopy)
    {
      v9 = 0x100000100;
    }

    [v7 setSyncSettings:v9 | v8];
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v12 = 138543875;
      if (enabledCopy)
      {
        v11 = @"YES";
      }

      v13 = v11;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 2113;
      v17 = addressCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "set contacts sync enabled: %{public}@ for device (%{private, mask.hash}@)", &v12, 0x20u);
    }
  }

  else
  {
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10008900C();
    }
  }
}

+ (BOOL)hasPairingSupportingCarPlayWithAddress:(id)address
{
  addressCopy = address;
  v4 = +[BluetoothManager sharedInstance];
  pairedDevices = [v4 pairedDevices];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006B244;
  v8[3] = &unk_1000DFD40;
  v9 = addressCopy;
  v6 = addressCopy;
  LOBYTE(v4) = [pairedDevices indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (BOOL)hasPairingWithAddress:(id)address
{
  addressCopy = address;
  v4 = +[BluetoothManager sharedInstance];
  pairedDevices = [v4 pairedDevices];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006B384;
  v8[3] = &unk_1000DFD40;
  v9 = addressCopy;
  v6 = addressCopy;
  LOBYTE(v4) = [pairedDevices indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)connectWithBluetoothAddress:(id)address
{
  v3 = [(CRBluetoothManager *)self _deviceForBluetoothAddress:address];
  [v3 connect];
}

- (BOOL)isPowered
{
  v2 = +[BluetoothManager sharedInstance];
  powered = [v2 powered];

  return powered;
}

- (void)_requestConfirmationForDevice:(id)device numericCode:(id)code
{
  deviceCopy = device;
  codeCopy = code;
  address = [deviceCopy address];
  v9 = objc_opt_class();
  name = [deviceCopy name];
  v11 = [v9 _sanitizeName:name];

  v12 = CarPairingLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v18 = 1752392040;
    v19 = 2113;
    v20 = address;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "requesting numeric comparison confirmation for device %{private, mask.hash}@", buf, 0x16u);
  }

  pairingDelegate = [(CRBluetoothManager *)self pairingDelegate];
  if (pairingDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006B680;
    v14[3] = &unk_1000DFD68;
    v14[4] = self;
    v15 = deviceCopy;
    v16 = address;
    [pairingDelegate bluetoothManager:self requestsConfirmationForDeviceAddress:v16 name:v11 numericCode:codeCopy responseHandler:v14];
  }
}

- (void)_pairingCompletedForDevice:(id)device
{
  deviceCopy = device;
  address = [deviceCopy address];
  v6 = objc_opt_class();
  name = [deviceCopy name];

  v8 = [v6 _sanitizeName:name];

  v9 = CarPairingLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 141558275;
    v14 = 1752392040;
    v15 = 2113;
    v16 = address;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pairing completed for device %{private, mask.hash}@", &v13, 0x16u);
  }

  v10 = +[BluetoothManager sharedInstance];
  [v10 setDevicePairingEnabled:0];

  v11 = +[BluetoothManager sharedInstance];
  [v11 setConnectable:0];

  pairingDelegate = [(CRBluetoothManager *)self pairingDelegate];
  if (pairingDelegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [pairingDelegate bluetoothManager:self completedPairingForDeviceAddress:address deviceName:v8];
  }
}

- (void)bluetoothPowerStateChanged:(id)changed
{
  isPowered = [(CRBluetoothManager *)self isPowered];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:isPowered];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BT power state changed: %@", &v8, 0xCu);
  }

  observers = [(CRBluetoothManager *)self observers];
  [observers bluetoothManager:self didChangePowerState:isPowered];
}

- (void)pairingFailureHandler:(id)handler
{
  handlerCopy = handler;
  object = [handlerCopy object];
  userInfo = [handlerCopy userInfo];

  v6 = [userInfo objectForKey:BluetoothErrorKey];

  v7 = v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 intValue] == 316;
  [(CRBluetoothManager *)self _pairingFailedForDevice:object didTimeout:v7];
}

- (void)pairingSuccessHandler:(id)handler
{
  object = [handler object];
  [(CRBluetoothManager *)self _pairingCompletedForDevice:object];
}

- (void)numericComparisonRequestHandler:(id)handler
{
  handlerCopy = handler;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    name = [handlerCopy name];
    object = [handlerCopy object];
    *buf = 138412546;
    v16 = name;
    v17 = 2112;
    v18 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "numericComparisonRequestHandler received %@ for %@", buf, 0x16u);
  }

  name2 = [handlerCopy name];
  v9 = [name2 isEqualToString:BluetoothPairingUserNumericComparisionNotification];

  if (v9)
  {
    object2 = [handlerCopy object];
    v11 = [object2 valueForKey:@"device"];

    object3 = [handlerCopy object];
    v13 = [object3 valueForKey:@"value"];

    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%06u", [v13 unsignedIntValue]);
    [(CRBluetoothManager *)self _requestConfirmationForDevice:v11 numericCode:v14];
  }

  else
  {
    v11 = CarPairingLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000890EC(handlerCopy, v11);
    }
  }
}

- (CRBluetoothManagerPairingDelegate)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

@end