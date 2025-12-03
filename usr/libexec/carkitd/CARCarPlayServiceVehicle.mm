@interface CARCarPlayServiceVehicle
- (CARBluetoothCarPlayService)service;
- (CARCarPlayServiceVehicleDelegate)delegate;
- (NSDictionary)analyticsDescription;
- (NSDictionary)vehicleAccessoryInfoKeys;
- (NSString)description;
- (id)initFromBluetoothIdentifier:(id)identifier service:(id)service identificationMessage:(id)message;
- (void)_handleStartSessionMessage:(id)message;
- (void)sendCarPlayAvailability:(id)availability;
@end

@implementation CARCarPlayServiceVehicle

- (id)initFromBluetoothIdentifier:(id)identifier service:(id)service identificationMessage:(id)message
{
  identifierCopy = identifier;
  serviceCopy = service;
  messageCopy = message;
  v26.receiver = self;
  v26.super_class = CARCarPlayServiceVehicle;
  v11 = [(CARCarPlayServiceVehicle *)&v26 init];
  v12 = v11;
  if (v11)
  {
    v11->_transportType = 4;
    uUIDString = [identifierCopy UUIDString];
    bluetoothAddress = v12->_bluetoothAddress;
    v12->_bluetoothAddress = uUIDString;

    objc_storeWeak(&v12->_service, serviceCopy);
    displayName = [messageCopy displayName];
    vehicleName = v12->_vehicleName;
    v12->_vehicleName = displayName;

    modelName = [messageCopy modelName];
    vehicleModelName = v12->_vehicleModelName;
    v12->_vehicleModelName = modelName;

    pPID = [messageCopy PPID];
    PPID = v12->_PPID;
    v12->_PPID = pPID;

    accessoryProtocols = [messageCopy accessoryProtocols];
    accessoryProtocols = v12->_accessoryProtocols;
    v12->_accessoryProtocols = accessoryProtocols;

    authenticationSerialNumber = [messageCopy authenticationSerialNumber];
    certificateSerialNumber = v12->_certificateSerialNumber;
    v12->_certificateSerialNumber = authenticationSerialNumber;

    v12->_supportsUSBCarPlay = [messageCopy supportsWiredCarPlay];
    *&v12->_supportsWirelessCarPlay = 257;
    v12->_supportsWiredBluetoothPairing = [messageCopy supportsWiredToWirelessPairing];
    v12->_supportsCarPlayConnectionRequest = 1;
    v12->_supportsEnhancedIntegration = [messageCopy supportsEnhancedIntegration];
    v12->_supportsThemeAssets = [messageCopy supportsThemeAssets];
  }

  return v12;
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = CARCarPlayServiceVehicle;
  v17 = [(CARCarPlayServiceVehicle *)&v18 description];
  transportType = [(CARCarPlayServiceVehicle *)self transportType];
  if ((transportType - 1) > 3)
  {
    v4 = @"unknown";
  }

  else
  {
    v4 = *(&off_1000DF6E8 + transportType - 1);
  }

  v16 = v4;
  bluetoothAddress = [(CARCarPlayServiceVehicle *)self bluetoothAddress];
  vehicleName = [(CARCarPlayServiceVehicle *)self vehicleName];
  vehicleModelName = [(CARCarPlayServiceVehicle *)self vehicleModelName];
  pPID = [(CARCarPlayServiceVehicle *)self PPID];
  certificateSerialNumber = [(CARCarPlayServiceVehicle *)self certificateSerialNumber];
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

  v13 = [NSString stringWithFormat:@"%@ {transport: %@ btID: %@, name: %@, model: %@, PPID: %@, authSerial: %@, wired: %@, oob: %@, enhancedIntegration: %@, assets: %@}", v17, v16, bluetoothAddress, vehicleName, vehicleModelName, pPID, certificateSerialNumber, v9, v10, v11, v12];

  return v13;
}

- (NSDictionary)analyticsDescription
{
  v3 = +[NSMutableDictionary dictionary];
  vehicleName = [(CARCarPlayServiceVehicle *)self vehicleName];

  if (vehicleName)
  {
    vehicleName2 = [(CARCarPlayServiceVehicle *)self vehicleName];
    [v3 setObject:vehicleName2 forKeyedSubscript:@"name"];
  }

  vehicleModelName = [(CARCarPlayServiceVehicle *)self vehicleModelName];

  if (vehicleModelName)
  {
    vehicleModelName2 = [(CARCarPlayServiceVehicle *)self vehicleModelName];
    [v3 setObject:vehicleModelName2 forKeyedSubscript:@"modelName"];
  }

  v8 = [v3 copy];

  return v8;
}

- (NSDictionary)vehicleAccessoryInfoKeys
{
  v3 = +[NSMutableDictionary dictionary];
  vehicleName = [(CARCarPlayServiceVehicle *)self vehicleName];

  if (vehicleName)
  {
    vehicleName2 = [(CARCarPlayServiceVehicle *)self vehicleName];
    [v3 setObject:vehicleName2 forKey:@"name"];
  }

  vehicleModelName = [(CARCarPlayServiceVehicle *)self vehicleModelName];

  if (vehicleModelName)
  {
    vehicleModelName2 = [(CARCarPlayServiceVehicle *)self vehicleModelName];
    [v3 setObject:vehicleModelName2 forKey:@"modelName"];
  }

  pPID = [(CARCarPlayServiceVehicle *)self PPID];

  if (pPID)
  {
    pPID2 = [(CARCarPlayServiceVehicle *)self PPID];
    [v3 setObject:pPID2 forKey:@"ppid"];
  }

  v10 = [v3 copy];

  return v10;
}

- (void)sendCarPlayAvailability:(id)availability
{
  availabilityCopy = availability;
  if (availabilityCopy)
  {
    service = [(CARCarPlayServiceVehicle *)self service];
    if (service)
    {
      v6 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412546;
        v9 = availabilityCopy;
        v10 = 2112;
        v11 = service;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "sending CarPlayAvailability: %@ using service: %@", &v8, 0x16u);
      }

      v7 = sub_100002A68(2uLL);
      if (os_signpost_enabled(v7))
      {
        LOWORD(v8) = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SentCarPlayAvailability", "", &v8, 2u);
      }

      [service sendMessage:availabilityCopy];
    }
  }
}

- (void)_handleStartSessionMessage:(id)message
{
  messageCopy = message;
  delegate = [(CARCarPlayServiceVehicle *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceVehicle:self receivedStartSessionMessage:messageCopy];
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