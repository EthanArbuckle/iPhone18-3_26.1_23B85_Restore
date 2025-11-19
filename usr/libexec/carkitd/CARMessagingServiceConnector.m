@interface CARMessagingServiceConnector
- (BOOL)unpairWithBluetoothLEIdentifier:(id)a3;
- (CARMessagingServiceConnector)initWithVehicleStore:(id)a3;
- (CARMessagingServiceConnectorDelegate)delegate;
- (NSSet)connectedVehicles;
- (id)_usbSerialNumber;
- (id)vehicleAccessoryForCertificateSerial:(id)a3;
- (id)vehicleAccessoryForiAPConnectionIdentifier:(unint64_t)a3;
- (void)_updateCarKeyInformationForVehicleAccessory:(id)a3;
- (void)accessoryManager:(id)a3 didConnectUnsupportedAccessoryWithBluetoothAddress:(id)a4;
- (void)accessoryManager:(id)a3 didConnectVehicleAccessory:(id)a4;
- (void)accessoryManager:(id)a3 didDisconnectVehicleAccessory:(id)a4;
- (void)accessoryManager:(id)a3 didUpdateVehicleAccessory:(id)a4;
- (void)beginWiredBluetoothPairingWithVehicle:(id)a3 completion:(id)a4;
- (void)connectWithBluetoothLEIdentifier:(id)a3;
- (void)pairWithBluetoothLEIdentifier:(id)a3 deviceName:(id)a4;
- (void)requestWiFiCredentialsFromVehicle:(id)a3;
- (void)sendDeviceTransportIdentifiersToVehicle:(id)a3;
- (void)sendWiredCarPlayAvailable:(id)a3 wirelessCarPlayAvailable:(id)a4 themeAssetsAvailable:(id)a5 toVehicle:(id)a6;
- (void)serviceConnector:(id)a3 completedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5;
- (void)serviceConnector:(id)a3 didConnectVehicle:(id)a4;
- (void)serviceConnector:(id)a3 didDisconnectVehicle:(id)a4;
- (void)serviceConnector:(id)a3 failedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5 error:(id)a6;
- (void)serviceConnector:(id)a3 requestsPairingConfirmationForBluetoothLEIdentifier:(id)a4 name:(id)a5 numericCode:(id)a6 responseHandler:(id)a7;
- (void)serviceVehicle:(id)a3 receivedStartSessionMessage:(id)a4;
@end

@implementation CARMessagingServiceConnector

- (NSSet)connectedVehicles
{
  v3 = [(CARMessagingServiceConnector *)self accessoryManager];
  v4 = [v3 connectedVehicleAccessories];

  v5 = [(CARMessagingServiceConnector *)self serviceConnector];
  v6 = [v5 connectedVehicles];

  if ([v4 count] && objc_msgSend(v6, "count"))
  {
    v7 = [v4 setByAddingObjectsFromSet:v6];
  }

  else if ([v4 count])
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (CARMessagingServiceConnector)initWithVehicleStore:(id)a3
{
  v4 = a3;
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
    v10 = [[CARCarPlayServiceConnector alloc] initWithVehicleStore:v4];
    serviceConnector = v5->_serviceConnector;
    v5->_serviceConnector = v10;

    [(CARCarPlayServiceConnector *)v5->_serviceConnector setDelegate:v5];
  }

  return v5;
}

- (void)pairWithBluetoothLEIdentifier:(id)a3 deviceName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CARMessagingServiceConnector *)self serviceConnector];
  [v8 pairWithBluetoothLEIdentifier:v7 deviceName:v6];
}

- (void)connectWithBluetoothLEIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CARMessagingServiceConnector *)self serviceConnector];
  [v5 connectWithBluetoothLEIdentifier:v4];
}

- (BOOL)unpairWithBluetoothLEIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CARMessagingServiceConnector *)self serviceConnector];
  v6 = [v5 unpairWithBluetoothLEIdentifier:v4];

  return v6;
}

- (void)beginWiredBluetoothPairingWithVehicle:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 beginWiredBluetoothPairing:v6];
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

- (void)requestWiFiCredentialsFromVehicle:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 requestWiFiCredentials];
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

- (void)sendDeviceTransportIdentifiersToVehicle:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 sendDeviceTransportIdentifiers];
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

- (void)sendWiredCarPlayAvailable:(id)a3 wirelessCarPlayAvailable:(id)a4 themeAssetsAvailable:(id)a5 toVehicle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 BOOLValue])
  {
    v14 = [(CARMessagingServiceConnector *)self _usbSerialNumber];
  }

  else
  {
    v14 = 0;
  }

  if ([v11 BOOLValue])
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
    if (v10)
    {
      if (![v10 BOOLValue])
      {
        v18 = @"NO";
      }

      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v18 = @"unset";
      if (v11)
      {
LABEL_12:
        if ([v11 BOOLValue])
        {
          v17 = @"YES";
        }

        goto LABEL_17;
      }
    }

    v17 = @"unset";
LABEL_17:
    if (v12)
    {
      if ([v12 BOOLValue])
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
    v24 = v14;
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
    [v13 sendWiredCarPlayAvailable:v10 usbIdentifier:v14 wirelessCarPlayAvailable:v11 bluetoothIdentifier:v15 themeAssetsAvailable:v12];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[CARCarPlayServiceMessageAvailability alloc] initWithWirelessAvailable:v11 != 0 wiredAvailable:v10 usbIdentifier:v14 themeAssetsAvailable:v12];
      [v13 sendCarPlayAvailability:v20];
    }
  }
}

- (id)vehicleAccessoryForiAPConnectionIdentifier:(unint64_t)a3
{
  v4 = [(CARMessagingServiceConnector *)self accessoryManager];
  v5 = [v4 vehicleAccessoryForiAPConnectionIdentifier:a3];

  return v5;
}

- (id)vehicleAccessoryForCertificateSerial:(id)a3
{
  v4 = a3;
  v5 = [(CARMessagingServiceConnector *)self accessoryManager];
  v6 = [v5 vehicleAccessoryForCertificateSerial:v4];

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

- (void)serviceConnector:(id)a3 requestsPairingConfirmationForBluetoothLEIdentifier:(id)a4 name:(id)a5 numericCode:(id)a6 responseHandler:(id)a7
{
  v15 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = [(CARMessagingServiceConnector *)self delegate];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 serviceConnector:self requestsPairingConfirmationForBluetoothLEIdentifier:v15 name:v11 numericCode:v12 responseHandler:v13];
  }
}

- (void)serviceConnector:(id)a3 failedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5 error:(id)a6
{
  v12 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(CARMessagingServiceConnector *)self delegate];
  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v11 serviceConnector:self failedPairingForBluetoothLEIdentifier:v12 name:v9 error:v10];
  }
}

- (void)serviceConnector:(id)a3 completedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(CARMessagingServiceConnector *)self delegate];
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v8 serviceConnector:self completedPairingForBluetoothLEIdentifier:v9 name:v7];
  }
}

- (void)serviceConnector:(id)a3 didConnectVehicle:(id)a4
{
  v6 = a4;
  [v6 setDelegate:self];
  v5 = [(CARMessagingServiceConnector *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 serviceConnector:self didConnectVehicle:v6];
  }
}

- (void)serviceConnector:(id)a3 didDisconnectVehicle:(id)a4
{
  v6 = a4;
  v5 = [(CARMessagingServiceConnector *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 serviceConnector:self didDisconnectVehicle:v6];
  }
}

- (void)serviceVehicle:(id)a3 receivedStartSessionMessage:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(CARMessagingServiceConnector *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 serviceConnector:self receivedStartSessionMessage:v6 fromVehicle:v8];
  }
}

- (void)accessoryManager:(id)a3 didConnectVehicleAccessory:(id)a4
{
  v6 = a4;
  [(CARMessagingServiceConnector *)self _updateCarKeyInformationForVehicleAccessory:?];
  v5 = [(CARMessagingServiceConnector *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 serviceConnector:self didConnectVehicle:v6];
  }
}

- (void)accessoryManager:(id)a3 didUpdateVehicleAccessory:(id)a4
{
  v6 = a4;
  v5 = [(CARMessagingServiceConnector *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 serviceConnector:self didUpdateVehicle:v6];
  }
}

- (void)accessoryManager:(id)a3 didDisconnectVehicleAccessory:(id)a4
{
  v6 = a4;
  v5 = [(CARMessagingServiceConnector *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 serviceConnector:self didDisconnectVehicle:v6];
  }
}

- (void)accessoryManager:(id)a3 didConnectUnsupportedAccessoryWithBluetoothAddress:(id)a4
{
  v6 = a4;
  v5 = [(CARMessagingServiceConnector *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 serviceConnector:self didConnectUnsupportedAccessoryWithBluetoothAddress:v6];
  }
}

- (void)_updateCarKeyInformationForVehicleAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 coreAccessoriesEndpointUUID];
  v6 = sub_100002A68(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "fetching digital car info for endpoint: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_1000118D4;
  v26 = sub_1000118E4;
  v27 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [(CARMessagingServiceConnector *)self coreAccessoriesManager];
  v9 = kACCProperties_Endpoint_DigitalCarKey_Group;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000118EC;
  v18 = &unk_1000DD718;
  p_buf = &buf;
  v10 = v7;
  v19 = v10;
  [v8 accessoryProperty:v9 forEndpoint:v5 connection:&stru_1000E1378 withReply:&v15];

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

    [v4 setDigitalCarKeyInformation:{*(*(&buf + 1) + 40), v15, v16, v17, v18}];
  }

  _Block_object_dispose(&buf, 8);
}

- (CARMessagingServiceConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end