@interface CARCarPlayServiceVehicle
- (CARBluetoothCarPlayService)service;
- (CARCarPlayServiceVehicleDelegate)delegate;
- (NSDictionary)analyticsDescription;
- (NSDictionary)vehicleAccessoryInfoKeys;
- (NSString)description;
- (id)initFromBluetoothIdentifier:(id)a3 service:(id)a4 identificationMessage:(id)a5;
- (void)_handleStartSessionMessage:(id)a3;
- (void)sendCarPlayAvailability:(id)a3;
@end

@implementation CARCarPlayServiceVehicle

- (id)initFromBluetoothIdentifier:(id)a3 service:(id)a4 identificationMessage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = CARCarPlayServiceVehicle;
  v11 = [(CARCarPlayServiceVehicle *)&v26 init];
  v12 = v11;
  if (v11)
  {
    v11->_transportType = 4;
    v13 = [v8 UUIDString];
    bluetoothAddress = v12->_bluetoothAddress;
    v12->_bluetoothAddress = v13;

    objc_storeWeak(&v12->_service, v9);
    v15 = [v10 displayName];
    vehicleName = v12->_vehicleName;
    v12->_vehicleName = v15;

    v17 = [v10 modelName];
    vehicleModelName = v12->_vehicleModelName;
    v12->_vehicleModelName = v17;

    v19 = [v10 PPID];
    PPID = v12->_PPID;
    v12->_PPID = v19;

    v21 = [v10 accessoryProtocols];
    accessoryProtocols = v12->_accessoryProtocols;
    v12->_accessoryProtocols = v21;

    v23 = [v10 authenticationSerialNumber];
    certificateSerialNumber = v12->_certificateSerialNumber;
    v12->_certificateSerialNumber = v23;

    v12->_supportsUSBCarPlay = [v10 supportsWiredCarPlay];
    *&v12->_supportsWirelessCarPlay = 257;
    v12->_supportsWiredBluetoothPairing = [v10 supportsWiredToWirelessPairing];
    v12->_supportsCarPlayConnectionRequest = 1;
    v12->_supportsEnhancedIntegration = [v10 supportsEnhancedIntegration];
    v12->_supportsThemeAssets = [v10 supportsThemeAssets];
  }

  return v12;
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = CARCarPlayServiceVehicle;
  v17 = [(CARCarPlayServiceVehicle *)&v18 description];
  v3 = [(CARCarPlayServiceVehicle *)self transportType];
  if ((v3 - 1) > 3)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = *(&off_1000DF6E8 + v3 - 1);
  }

  v16 = v4;
  v15 = [(CARCarPlayServiceVehicle *)self bluetoothAddress];
  v5 = [(CARCarPlayServiceVehicle *)self vehicleName];
  v6 = [(CARCarPlayServiceVehicle *)self vehicleModelName];
  v7 = [(CARCarPlayServiceVehicle *)self PPID];
  v8 = [(CARCarPlayServiceVehicle *)self certificateSerialNumber];
  if ([(CARCarPlayServiceVehicle *)self supportsUSBCarPlay])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(CARCarPlayServiceVehicle *)self supportsWiredBluetoothPairing])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(CARCarPlayServiceVehicle *)self supportsEnhancedIntegration])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if ([(CARCarPlayServiceVehicle *)self supportsThemeAssets])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [NSString stringWithFormat:@"%@ {transport: %@ btID: %@, name: %@, model: %@, PPID: %@, authSerial: %@, wired: %@, oob: %@, enhancedIntegration: %@, assets: %@}", v17, v16, v15, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (NSDictionary)analyticsDescription
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(CARCarPlayServiceVehicle *)self vehicleName];

  if (v4)
  {
    v5 = [(CARCarPlayServiceVehicle *)self vehicleName];
    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  v6 = [(CARCarPlayServiceVehicle *)self vehicleModelName];

  if (v6)
  {
    v7 = [(CARCarPlayServiceVehicle *)self vehicleModelName];
    [v3 setObject:v7 forKeyedSubscript:@"modelName"];
  }

  v8 = [v3 copy];

  return v8;
}

- (NSDictionary)vehicleAccessoryInfoKeys
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(CARCarPlayServiceVehicle *)self vehicleName];

  if (v4)
  {
    v5 = [(CARCarPlayServiceVehicle *)self vehicleName];
    [v3 setObject:v5 forKey:@"name"];
  }

  v6 = [(CARCarPlayServiceVehicle *)self vehicleModelName];

  if (v6)
  {
    v7 = [(CARCarPlayServiceVehicle *)self vehicleModelName];
    [v3 setObject:v7 forKey:@"modelName"];
  }

  v8 = [(CARCarPlayServiceVehicle *)self PPID];

  if (v8)
  {
    v9 = [(CARCarPlayServiceVehicle *)self PPID];
    [v3 setObject:v9 forKey:@"ppid"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)sendCarPlayAvailability:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CARCarPlayServiceVehicle *)self service];
    if (v5)
    {
      v6 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412546;
        v9 = v4;
        v10 = 2112;
        v11 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sending CarPlayAvailability: %@ using service: %@", &v8, 0x16u);
      }

      v7 = sub_100002A68(2uLL);
      if (os_signpost_enabled(v7))
      {
        LOWORD(v8) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SentCarPlayAvailability", "", &v8, 2u);
      }

      [v5 sendMessage:v4];
    }
  }
}

- (void)_handleStartSessionMessage:(id)a3
{
  v5 = a3;
  v4 = [(CARCarPlayServiceVehicle *)self delegate];
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 serviceVehicle:self receivedStartSessionMessage:v5];
  }
}

- (CARCarPlayServiceVehicleDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CARBluetoothCarPlayService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

@end