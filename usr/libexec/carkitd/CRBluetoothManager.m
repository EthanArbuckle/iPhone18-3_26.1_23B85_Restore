@interface CRBluetoothManager
+ (BOOL)hasPairingSupportingCarPlayWithAddress:(id)a3;
+ (BOOL)hasPairingWithAddress:(id)a3;
+ (id)_sanitizeName:(id)a3;
+ (id)addressStringForData:(id)a3;
- (BOOL)isPowered;
- (BOOL)unpairWithBluetoothAddress:(id)a3;
- (CRBluetoothManager)init;
- (CRBluetoothManagerPairingDelegate)pairingDelegate;
- (id)_deviceForBluetoothAddress:(id)a3;
- (id)connectedBluetoothAddresses;
- (unint64_t)connectedServicesCountForBluetoothAddress:(id)a3;
- (void)_pairingCompletedForDevice:(id)a3;
- (void)_requestConfirmationForDevice:(id)a3 numericCode:(id)a4;
- (void)addObserver:(id)a3;
- (void)bluetoothPowerStateChanged:(id)a3;
- (void)confirmPairingWithBluetoothAddress:(id)a3 numericCode:(id)a4;
- (void)connectWithBluetoothAddress:(id)a3;
- (void)dealloc;
- (void)numericComparisonRequestHandler:(id)a3;
- (void)pairWithBluetoothAddress:(id)a3;
- (void)pairingFailureHandler:(id)a3;
- (void)pairingSuccessHandler:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setContactsSyncEnabled:(BOOL)a3 forBluetoothAddress:(id)a4;
@end

@implementation CRBluetoothManager

+ (id)addressStringForData:(id)a3
{
  v3 = a3;
  v4 = v3;
  v11 = 0;
  v10 = 0;
  if (!v3 || [v3 length] != 6)
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

+ (id)_sanitizeName:(id)a3
{
  v3 = a3;
  v4 = [NSScanner scannerWithString:v3];
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRBluetoothManager *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CRBluetoothManager *)self observers];
  [v5 removeObserver:v4];
}

- (id)connectedBluetoothAddresses
{
  v2 = +[NSMutableSet set];
  v3 = +[BluetoothManager sharedInstance];
  v4 = [v3 connectedDevices];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v4;
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

        v10 = [*(*(&v25 + 1) + 8 * i) address];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = +[BluetoothManager sharedInstance];
  v12 = [v11 connectingDevices];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = v12;
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

        v18 = [*(*(&v21 + 1) + 8 * j) address];
        if (v18)
        {
          [v2 addObject:v18];
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

- (id)_deviceForBluetoothAddress:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[BluetoothManager sharedInstance];
    v5 = [v4 pairedDevices];

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v5;
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
        v12 = [v11 address];
        v13 = [v3 isEqualToString:v12];

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
    v16 = [v15 connectingDevices];

    v14 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v17 = *v24;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(v16);
          }

          v19 = *(*(&v23 + 1) + 8 * i);
          v20 = [v19 address];
          v21 = [v3 isEqualToString:v20];

          if (v21)
          {
            v14 = v19;
            goto LABEL_23;
          }
        }

        v14 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

- (void)pairWithBluetoothAddress:(id)a3
{
  v4 = a3;
  [(CRBluetoothManager *)self setCurrentlyPairingAddress:v4];
  v5 = +[BluetoothManager sharedInstance];
  v6 = [v5 deviceFromAddressString:v4];

  v7 = CarPairingLogging();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 141558275;
      v13 = 1752392040;
      v14 = 2113;
      v15 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "starting pairing for device address %{private, mask.hash}@", &v12, 0x16u);
    }

    v9 = +[BluetoothManager sharedInstance];
    [v9 setDevicePairingEnabled:1];

    v10 = +[BluetoothManager sharedInstance];
    [v10 setConnectable:1];

    v11 = +[BluetoothManager sharedInstance];
    [v11 connectDevice:v6];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100088F3C();
    }

    v11 = [(CRBluetoothManager *)self pairingDelegate];
    if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 bluetoothManager:self failedPairingForDeviceAddress:v4 name:0 didTimeout:0];
    }
  }
}

- (void)confirmPairingWithBluetoothAddress:(id)a3 numericCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CRBluetoothManager *)self setCurrentlyPairingAddress:v6];
  v8 = +[BluetoothManager sharedInstance];
  v9 = [v8 deviceFromAddressString:v6];

  v10 = CarPairingLogging();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 141558275;
      v16 = 1752392040;
      v17 = 2113;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "confirming pairing for device address %{private, mask.hash}@", &v15, 0x16u);
    }

    v12 = +[BluetoothManager sharedInstance];
    [v12 setDevicePairingEnabled:1];

    v13 = +[BluetoothManager sharedInstance];
    [v13 setConnectable:1];

    [(CRBluetoothManager *)self _requestConfirmationForDevice:v9 numericCode:v7];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100088F3C();
    }

    v14 = [(CRBluetoothManager *)self pairingDelegate];
    if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v14 bluetoothManager:self failedPairingForDeviceAddress:v6 name:0 didTimeout:0];
    }
  }
}

- (BOOL)unpairWithBluetoothAddress:(id)a3
{
  v4 = a3;
  v5 = [(CRBluetoothManager *)self _deviceForBluetoothAddress:v4];
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
      v10 = [v5 address];
      v12 = 141558275;
      v13 = 1752392040;
      v14 = 2113;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "unpaired device: %{private, mask.hash}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100088FA4();
  }

  return v5 != 0;
}

- (unint64_t)connectedServicesCountForBluetoothAddress:(id)a3
{
  v3 = [(CRBluetoothManager *)self _deviceForBluetoothAddress:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 connectedServicesCount];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setContactsSyncEnabled:(BOOL)a3 forBluetoothAddress:(id)a4
{
  v4 = a3;
  v5 = a4;
  v6 = +[BluetoothManager sharedInstance];
  v7 = [v6 deviceFromAddressString:v5];

  if (v7)
  {
    v8 = [v7 syncSettings] & 0xFFFF00FF;
    v9 = &_mh_execute_header;
    if (v4)
    {
      v9 = 0x100000100;
    }

    [v7 setSyncSettings:v9 | v8];
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"NO";
      v12 = 138543875;
      if (v4)
      {
        v11 = @"YES";
      }

      v13 = v11;
      v14 = 2160;
      v15 = 1752392040;
      v16 = 2113;
      v17 = v5;
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

+ (BOOL)hasPairingSupportingCarPlayWithAddress:(id)a3
{
  v3 = a3;
  v4 = +[BluetoothManager sharedInstance];
  v5 = [v4 pairedDevices];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006B244;
  v8[3] = &unk_1000DFD40;
  v9 = v3;
  v6 = v3;
  LOBYTE(v4) = [v5 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (BOOL)hasPairingWithAddress:(id)a3
{
  v3 = a3;
  v4 = +[BluetoothManager sharedInstance];
  v5 = [v4 pairedDevices];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006B384;
  v8[3] = &unk_1000DFD40;
  v9 = v3;
  v6 = v3;
  LOBYTE(v4) = [v5 indexOfObjectPassingTest:v8] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)connectWithBluetoothAddress:(id)a3
{
  v3 = [(CRBluetoothManager *)self _deviceForBluetoothAddress:a3];
  [v3 connect];
}

- (BOOL)isPowered
{
  v2 = +[BluetoothManager sharedInstance];
  v3 = [v2 powered];

  return v3;
}

- (void)_requestConfirmationForDevice:(id)a3 numericCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 address];
  v9 = objc_opt_class();
  v10 = [v6 name];
  v11 = [v9 _sanitizeName:v10];

  v12 = CarPairingLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558275;
    v18 = 1752392040;
    v19 = 2113;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "requesting numeric comparison confirmation for device %{private, mask.hash}@", buf, 0x16u);
  }

  v13 = [(CRBluetoothManager *)self pairingDelegate];
  if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10006B680;
    v14[3] = &unk_1000DFD68;
    v14[4] = self;
    v15 = v6;
    v16 = v8;
    [v13 bluetoothManager:self requestsConfirmationForDeviceAddress:v16 name:v11 numericCode:v7 responseHandler:v14];
  }
}

- (void)_pairingCompletedForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 address];
  v6 = objc_opt_class();
  v7 = [v4 name];

  v8 = [v6 _sanitizeName:v7];

  v9 = CarPairingLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 141558275;
    v14 = 1752392040;
    v15 = 2113;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "pairing completed for device %{private, mask.hash}@", &v13, 0x16u);
  }

  v10 = +[BluetoothManager sharedInstance];
  [v10 setDevicePairingEnabled:0];

  v11 = +[BluetoothManager sharedInstance];
  [v11 setConnectable:0];

  v12 = [(CRBluetoothManager *)self pairingDelegate];
  if (v12 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 bluetoothManager:self completedPairingForDeviceAddress:v5 deviceName:v8];
  }
}

- (void)bluetoothPowerStateChanged:(id)a3
{
  v4 = [(CRBluetoothManager *)self isPowered];
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [NSNumber numberWithBool:v4];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BT power state changed: %@", &v8, 0xCu);
  }

  v7 = [(CRBluetoothManager *)self observers];
  [v7 bluetoothManager:self didChangePowerState:v4];
}

- (void)pairingFailureHandler:(id)a3
{
  v4 = a3;
  v8 = [v4 object];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKey:BluetoothErrorKey];

  v7 = v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v6 intValue] == 316;
  [(CRBluetoothManager *)self _pairingFailedForDevice:v8 didTimeout:v7];
}

- (void)pairingSuccessHandler:(id)a3
{
  v4 = [a3 object];
  [(CRBluetoothManager *)self _pairingCompletedForDevice:v4];
}

- (void)numericComparisonRequestHandler:(id)a3
{
  v4 = a3;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 name];
    v7 = [v4 object];
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "numericComparisonRequestHandler received %@ for %@", buf, 0x16u);
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:BluetoothPairingUserNumericComparisionNotification];

  if (v9)
  {
    v10 = [v4 object];
    v11 = [v10 valueForKey:@"device"];

    v12 = [v4 object];
    v13 = [v12 valueForKey:@"value"];

    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%06u", [v13 unsignedIntValue]);
    [(CRBluetoothManager *)self _requestConfirmationForDevice:v11 numericCode:v14];
  }

  else
  {
    v11 = CarPairingLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000890EC(v4, v11);
    }
  }
}

- (CRBluetoothManagerPairingDelegate)pairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pairingDelegate);

  return WeakRetained;
}

@end