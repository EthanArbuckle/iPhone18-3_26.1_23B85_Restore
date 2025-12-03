@interface CARMessagingServiceConnector
- (BOOL)unpairWithBluetoothLEIdentifier:(id)identifier;
- (CARMessagingServiceConnector)initWithVehicleStore:(id)store;
- (CARMessagingServiceConnectorDelegate)delegate;
- (NSSet)connectedVehicles;
- (id)_usbSerialNumber;
- (id)vehicleAccessoryForCertificateSerial:(id)serial;
- (id)vehicleAccessoryForiAPConnectionIdentifier:(unint64_t)identifier;
- (void)_updateCarKeyInformationForVehicleAccessory:(id)accessory;
- (void)accessoryManager:(id)manager didConnectUnsupportedAccessoryWithBluetoothAddress:(id)address;
- (void)accessoryManager:(id)manager didConnectVehicleAccessory:(id)accessory;
- (void)accessoryManager:(id)manager didDisconnectVehicleAccessory:(id)accessory;
- (void)accessoryManager:(id)manager didUpdateVehicleAccessory:(id)accessory;
- (void)beginWiredBluetoothPairingWithVehicle:(id)vehicle completion:(id)completion;
- (void)connectWithBluetoothLEIdentifier:(id)identifier;
- (void)pairWithBluetoothLEIdentifier:(id)identifier deviceName:(id)name;
- (void)requestWiFiCredentialsFromVehicle:(id)vehicle;
- (void)sendDeviceTransportIdentifiersToVehicle:(id)vehicle;
- (void)sendWiredCarPlayAvailable:(id)available wirelessCarPlayAvailable:(id)playAvailable themeAssetsAvailable:(id)assetsAvailable toVehicle:(id)vehicle;
- (void)serviceConnector:(id)connector completedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name;
- (void)serviceConnector:(id)connector didConnectVehicle:(id)vehicle;
- (void)serviceConnector:(id)connector didDisconnectVehicle:(id)vehicle;
- (void)serviceConnector:(id)connector failedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name error:(id)error;
- (void)serviceConnector:(id)connector requestsPairingConfirmationForBluetoothLEIdentifier:(id)identifier name:(id)name numericCode:(id)code responseHandler:(id)handler;
- (void)serviceVehicle:(id)vehicle receivedStartSessionMessage:(id)message;
@end

@implementation CARMessagingServiceConnector

- (NSSet)connectedVehicles
{
  accessoryManager = [(CARMessagingServiceConnector *)self accessoryManager];
  connectedVehicleAccessories = [accessoryManager connectedVehicleAccessories];

  serviceConnector = [(CARMessagingServiceConnector *)self serviceConnector];
  connectedVehicles = [serviceConnector connectedVehicles];

  if ([connectedVehicleAccessories count] && objc_msgSend(connectedVehicles, "count"))
  {
    v7 = [connectedVehicleAccessories setByAddingObjectsFromSet:connectedVehicles];
  }

  else if ([connectedVehicleAccessories count])
  {
    v7 = connectedVehicleAccessories;
  }

  else
  {
    v7 = connectedVehicles;
  }

  v8 = v7;

  return v8;
}

- (CARMessagingServiceConnector)initWithVehicleStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CARMessagingServiceConnector;
  v5 = [(CARMessagingServiceConnector *)&v13 init];
  if (v5)
  {
    v6 = +[CRVehicleAccessoryManager sharedInstance];
    accessoryManager = v5->_accessoryManager;
    v5->_accessoryManager = v6;

    [(CRVehicleAccessoryManager *)v5->_accessoryManager addObserver:v5];
    v8 = objc_alloc_init(ACCConnectionInfo);
    coreAccessoriesManager = v5->_coreAccessoriesManager;
    v5->_coreAccessoriesManager = v8;

    [(ACCConnectionInfo *)v5->_coreAccessoriesManager registerDelegate:v5];
    v10 = [[CARCarPlayServiceConnector alloc] initWithVehicleStore:storeCopy];
    serviceConnector = v5->_serviceConnector;
    v5->_serviceConnector = v10;

    [(CARCarPlayServiceConnector *)v5->_serviceConnector setDelegate:v5];
  }

  return v5;
}

- (void)pairWithBluetoothLEIdentifier:(id)identifier deviceName:(id)name
{
  nameCopy = name;
  identifierCopy = identifier;
  serviceConnector = [(CARMessagingServiceConnector *)self serviceConnector];
  [serviceConnector pairWithBluetoothLEIdentifier:identifierCopy deviceName:nameCopy];
}

- (void)connectWithBluetoothLEIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serviceConnector = [(CARMessagingServiceConnector *)self serviceConnector];
  [serviceConnector connectWithBluetoothLEIdentifier:identifierCopy];
}

- (BOOL)unpairWithBluetoothLEIdentifier:(id)identifier
{
  identifierCopy = identifier;
  serviceConnector = [(CARMessagingServiceConnector *)self serviceConnector];
  v6 = [serviceConnector unpairWithBluetoothLEIdentifier:identifierCopy];

  return v6;
}

- (void)beginWiredBluetoothPairingWithVehicle:(id)vehicle completion:(id)completion
{
  vehicleCopy = vehicle;
  completionCopy = completion;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [vehicleCopy beginWiredBluetoothPairing:completionCopy];
  }

  else
  {
    v7 = sub_100002A68(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100081FAC();
    }
  }
}

- (void)requestWiFiCredentialsFromVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [vehicleCopy requestWiFiCredentials];
  }

  else
  {
    v4 = sub_100002A68(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100081FE0();
    }
  }
}

- (void)sendDeviceTransportIdentifiersToVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [vehicleCopy sendDeviceTransportIdentifiers];
  }

  else
  {
    v4 = sub_100002A68(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100082014();
    }
  }
}

- (void)sendWiredCarPlayAvailable:(id)available wirelessCarPlayAvailable:(id)playAvailable themeAssetsAvailable:(id)assetsAvailable toVehicle:(id)vehicle
{
  availableCopy = available;
  playAvailableCopy = playAvailable;
  assetsAvailableCopy = assetsAvailable;
  vehicleCopy = vehicle;
  if ([availableCopy BOOLValue])
  {
    _usbSerialNumber = [(CARMessagingServiceConnector *)self _usbSerialNumber];
  }

  else
  {
    _usbSerialNumber = 0;
  }

  if ([playAvailableCopy BOOLValue])
  {
    v15 = MGGetStringAnswer();
  }

  else
  {
    v15 = 0;
  }

  v16 = CarPairingLogging();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    v18 = @"YES";
    if (availableCopy)
    {
      if (![availableCopy BOOLValue])
      {
        v18 = @"NO";
      }

      if (playAvailableCopy)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = @"unset";
      if (playAvailableCopy)
      {
LABEL_12:
        if ([playAvailableCopy BOOLValue])
        {
          v17 = @"YES";
        }

        goto LABEL_17;
      }
    }

    v17 = @"unset";
LABEL_17:
    if (assetsAvailableCopy)
    {
      if ([assetsAvailableCopy BOOLValue])
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }
    }

    else
    {
      v19 = @"unset";
    }

    *buf = 138544386;
    v22 = v18;
    v23 = 2112;
    v24 = _usbSerialNumber;
    v25 = 2114;
    v26 = v17;
    v27 = 2112;
    v28 = v15;
    v29 = 2114;
    v30 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sending CarPlayAvailability {wired: %{public}@ USB: %@} {wireless: %{public}@ BT: %@} {assets: %{public}@}", buf, 0x34u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [vehicleCopy sendWiredCarPlayAvailable:availableCopy usbIdentifier:_usbSerialNumber wirelessCarPlayAvailable:playAvailableCopy bluetoothIdentifier:v15 themeAssetsAvailable:assetsAvailableCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[CARCarPlayServiceMessageAvailability alloc] initWithWirelessAvailable:playAvailableCopy != 0 wiredAvailable:availableCopy usbIdentifier:_usbSerialNumber themeAssetsAvailable:assetsAvailableCopy];
      [vehicleCopy sendCarPlayAvailability:v20];
    }
  }
}

- (id)vehicleAccessoryForiAPConnectionIdentifier:(unint64_t)identifier
{
  accessoryManager = [(CARMessagingServiceConnector *)self accessoryManager];
  v5 = [accessoryManager vehicleAccessoryForiAPConnectionIdentifier:identifier];

  return v5;
}

- (id)vehicleAccessoryForCertificateSerial:(id)serial
{
  serialCopy = serial;
  accessoryManager = [(CARMessagingServiceConnector *)self accessoryManager];
  v6 = [accessoryManager vehicleAccessoryForCertificateSerial:serialCopy];

  return v6;
}

- (id)_usbSerialNumber
{
  v2 = IOServiceMatching("IOUSBDeviceController");
  if (v2 && (MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2)) != 0)
  {
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"DeviceDescription", kCFAllocatorDefault, 0);
    v5 = CFProperty;
    if (CFProperty)
    {
      v6 = [CFProperty objectForKey:@"serialNumber"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)serviceConnector:(id)connector requestsPairingConfirmationForBluetoothLEIdentifier:(id)identifier name:(id)name numericCode:(id)code responseHandler:(id)handler
{
  identifierCopy = identifier;
  nameCopy = name;
  codeCopy = code;
  handlerCopy = handler;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self requestsPairingConfirmationForBluetoothLEIdentifier:identifierCopy name:nameCopy numericCode:codeCopy responseHandler:handlerCopy];
  }
}

- (void)serviceConnector:(id)connector failedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name error:(id)error
{
  identifierCopy = identifier;
  nameCopy = name;
  errorCopy = error;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self failedPairingForBluetoothLEIdentifier:identifierCopy name:nameCopy error:errorCopy];
  }
}

- (void)serviceConnector:(id)connector completedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self completedPairingForBluetoothLEIdentifier:identifierCopy name:nameCopy];
  }
}

- (void)serviceConnector:(id)connector didConnectVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  [vehicleCopy setDelegate:self];
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didConnectVehicle:vehicleCopy];
  }
}

- (void)serviceConnector:(id)connector didDisconnectVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didDisconnectVehicle:vehicleCopy];
  }
}

- (void)serviceVehicle:(id)vehicle receivedStartSessionMessage:(id)message
{
  vehicleCopy = vehicle;
  messageCopy = message;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self receivedStartSessionMessage:messageCopy fromVehicle:vehicleCopy];
  }
}

- (void)accessoryManager:(id)manager didConnectVehicleAccessory:(id)accessory
{
  accessoryCopy = accessory;
  [(CARMessagingServiceConnector *)self _updateCarKeyInformationForVehicleAccessory:?];
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didConnectVehicle:accessoryCopy];
  }
}

- (void)accessoryManager:(id)manager didUpdateVehicleAccessory:(id)accessory
{
  accessoryCopy = accessory;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didUpdateVehicle:accessoryCopy];
  }
}

- (void)accessoryManager:(id)manager didDisconnectVehicleAccessory:(id)accessory
{
  accessoryCopy = accessory;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didDisconnectVehicle:accessoryCopy];
  }
}

- (void)accessoryManager:(id)manager didConnectUnsupportedAccessoryWithBluetoothAddress:(id)address
{
  addressCopy = address;
  delegate = [(CARMessagingServiceConnector *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate serviceConnector:self didConnectUnsupportedAccessoryWithBluetoothAddress:addressCopy];
  }
}

- (void)_updateCarKeyInformationForVehicleAccessory:(id)accessory
{
  accessoryCopy = accessory;
  coreAccessoriesEndpointUUID = [accessoryCopy coreAccessoriesEndpointUUID];
  v6 = sub_100002A68(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = coreAccessoriesEndpointUUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fetching digital car info for endpoint: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_1000118D4;
  v26 = sub_1000118E4;
  v27 = 0;
  v7 = dispatch_semaphore_create(0);
  coreAccessoriesManager = [(CARMessagingServiceConnector *)self coreAccessoriesManager];
  v9 = kACCProperties_Endpoint_DigitalCarKey_Group;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000118EC;
  v18 = &unk_1000DD718;
  p_buf = &buf;
  v10 = v7;
  v19 = v10;
  [coreAccessoriesManager accessoryProperty:v9 forEndpoint:coreAccessoriesEndpointUUID connection:&stru_1000E1378 withReply:&v15];

  v11 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v10, v11))
  {
    v12 = sub_100002A68(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100082048();
    }
  }

  if (*(*(&buf + 1) + 40))
  {
    v13 = sub_100002A68(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(*(&buf + 1) + 40);
      *v21 = 138477827;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "vehicle declared digital car key support: %{private}@", v21, 0xCu);
    }

    [accessoryCopy setDigitalCarKeyInformation:{*(*(&buf + 1) + 40), v15, v16, v17, v18}];
  }

  _Block_object_dispose(&buf, 8);
}

- (CARMessagingServiceConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end