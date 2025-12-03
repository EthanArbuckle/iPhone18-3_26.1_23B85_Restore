@interface DeviceManagementEndpoint
- (DeviceManagementEndpoint)init;
- (void)addPipe:(id)pipe;
- (void)connectDevice:(id)device quickDisconnectEnabled:(id)enabled;
- (void)disconnectDevice:(id)device;
- (void)handleClassicDeviceUnexpectedDisconnectionCommand:(id)command message:(id)message;
- (void)handleClassicPairStateRequestCommand:(id)command message:(id)message;
- (void)handleClassicPairStateResponseCommand:(id)command message:(id)message;
- (void)handleConnectClassicDeviceCommand:(id)command message:(id)message;
- (void)handleDisconnectClassicDeviceCommand:(id)command message:(id)message;
- (void)handleLeaEasyPairRequestCommand:(id)command message:(id)message;
- (void)handleLeaEasyPairResponseCommand:(id)command message:(id)message;
- (void)handleLeaStoreBondingInfoRequestCommand:(id)command message:(id)message;
- (void)handleLeaStoreBondingInfoResponseCommand:(id)command message:(id)message;
- (void)handleNotifyPrimaryBudSideCommand:(id)command message:(id)message;
- (void)handleStoreClassicDeviceSettingsCommand:(id)command message:(id)message;
- (void)handleStoreClassicLinkKeyRequestCommand:(id)command message:(id)message;
- (void)handleStoreClassicLinkKeyRequestExtendedCommand:(id)command message:(id)message;
- (void)handleStoreClassicLinkKeyResponseCommand:(id)command message:(id)message;
- (void)handleVersionInfoRequestCommand:(id)command message:(id)message;
- (void)handleVersionInfoResponseCommand:(id)command message:(id)message;
- (void)notifyPrimaryBudSide:(id)side device:(id)device;
- (void)removePipe:(id)pipe;
- (void)requestLeaEasyPair:(id)pair deviceIdentifier:(id)identifier deviceTags:(id)tags;
- (void)requestLeaStoreBondingInfo:(id)info rand:(id)rand ltk:(id)ltk irk:(id)irk name:(id)name device:(id)device;
- (void)requestPairStateForDevice:(id)device;
- (void)requestStoreLinkKey:(id)key name:(id)name device:(id)device;
- (void)requestStoreLinkKeyExtended:(id)extended name:(id)name device:(id)device deviceServiceMask:(id)mask classOfDevice:(id)ofDevice;
- (void)requestVersionInfo:(id)info cloudAccount:(id)account;
- (void)respondToLeaEasyPair:(id)pair device:(id)device;
- (void)respondToLeaStoreBondingInfo:(id)info device:(id)device;
- (void)respondToPairState:(id)state device:(id)device;
- (void)respondToStoreLinkKey:(id)key device:(id)device;
- (void)respondVersionInfo:(id)info cloudAccount:(id)account easyPairingStatus:(id)status;
- (void)storeDeviceSettings:(id)settings inEarEnable:(id)enable doubleTapMode:(id)mode deviceSettings:(id)deviceSettings deviceName:(id)name device:(id)device;
- (void)unexpectedDisconnection:(id)disconnection;
@end

@implementation DeviceManagementEndpoint

- (DeviceManagementEndpoint)init
{
  v3 = [NSSet setWithObjects:@"ConnectClassicDevice", @"DisconnectClassicDevice", @"ClassicDeviceUnexpectedDisconnection", @"VersionInfoRequest", @"VersionInfoResponse", @"ClassicPairStateRequest", @"ClassicPairStateResponse", @"StoreClassicLinkKeyRequest", @"StoreClassicLinkKeyRequestExtended", @"StoreClassicLinkKeyResponse", @"StoreClassicDeviceSettings", @"NotifyPrimaryBudSide", @"LeaEasyPairRequest", @"LeaEasyPairResponse", @"LeaStoreBondingInfoRequest", @"LeaStoreBondingInfoResponse", 0];
  v6.receiver = self;
  v6.super_class = DeviceManagementEndpoint;
  v4 = [(Endpoint *)&v6 initWithIdentifier:@"com.apple.BTLEServer.classic" supportedCommands:v3];

  if (v4)
  {
    [(Endpoint *)v4 setType:1];
  }

  return v4;
}

- (void)addPipe:(id)pipe
{
  v7.receiver = self;
  v7.super_class = DeviceManagementEndpoint;
  pipeCopy = pipe;
  [(Endpoint *)&v7 addPipe:pipeCopy];
  peer = [pipeCopy peer];

  identifier = [peer identifier];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007276C();
    if (!identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (identifier)
  {
LABEL_3:
    v6 = +[BTLEXpcServer instance];
    [v6 sendDevMgmtPipeConnectedMsg:identifier];
  }

LABEL_4:
}

- (void)removePipe:(id)pipe
{
  v7.receiver = self;
  v7.super_class = DeviceManagementEndpoint;
  pipeCopy = pipe;
  [(Endpoint *)&v7 removePipe:pipeCopy];
  peer = [pipeCopy peer];

  identifier = [peer identifier];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000727AC();
    if (!identifier)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (identifier)
  {
LABEL_3:
    v6 = +[BTLEXpcServer instance];
    [v6 sendDevMgmtPipeDisconnectedMsg:identifier];
  }

LABEL_4:
}

- (void)connectDevice:(id)device quickDisconnectEnabled:(id)enabled
{
  deviceCopy = device;
  enabledCopy = enabled;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'connect classic device' message for device %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(Endpoint *)self pipes];
  v9 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v22[1] = enabledCopy;
        v23 = @"ConnectClassicDevice";
        v21[0] = @"kDeviceAddress";
        v21[1] = @"kQuickDisconnectEnabled";
        v22[0] = deviceCopy;
        v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v24 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v13 sendMessage:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)disconnectDevice:(id)device
{
  deviceCopy = device;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'disconnect classic device' message for device %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [(Endpoint *)self pipes];
  v6 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v19 = deviceCopy;
        v20 = @"DisconnectClassicDevice";
        v18 = @"kDeviceAddress";
        v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v21 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [v10 sendMessage:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)unexpectedDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = disconnectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'unexpected disconnection' message for device %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [(Endpoint *)self pipes];
  v6 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v19 = disconnectionCopy;
        v20 = @"ClassicDeviceUnexpectedDisconnection";
        v18 = @"kDeviceAddress";
        v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v21 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [v10 sendMessage:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)requestVersionInfo:(id)info cloudAccount:(id)account
{
  infoCopy = info;
  accountCopy = account;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'version info request' message", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(Endpoint *)self pipes];
  v9 = [obj countByEnumeratingWithState:&v17 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v23[1] = accountCopy;
        v24 = @"VersionInfoRequest";
        v22[0] = @"kEasyPairingVersion";
        v22[1] = @"kCloudAccount";
        v23[0] = infoCopy;
        v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
        v25 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        [v13 sendMessage:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v17 objects:v26 count:16];
    }

    while (v10);
  }
}

- (void)respondVersionInfo:(id)info cloudAccount:(id)account easyPairingStatus:(id)status
{
  infoCopy = info;
  accountCopy = account;
  statusCopy = status;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending 'version info response' message", buf, 2u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(Endpoint *)self pipes];
  v12 = [obj countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v26[2] = statusCopy;
        v27 = @"VersionInfoResponse";
        v25[0] = @"kEasyPairingVersion";
        v25[1] = @"kCloudAccount";
        v26[0] = infoCopy;
        v26[1] = accountCopy;
        v25[2] = @"kEasyPairingStatus";
        v17 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
        v28 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        [v16 sendMessage:v18];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v13);
  }
}

- (void)requestPairStateForDevice:(id)device
{
  deviceCopy = device;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending 'classic pair state request' message for device %@", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [(Endpoint *)self pipes];
  v6 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v19 = deviceCopy;
        v20 = @"ClassicPairStateRequest";
        v18 = @"kDeviceAddress";
        v11 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v21 = v11;
        v12 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        [v10 sendMessage:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)respondToPairState:(id)state device:(id)device
{
  stateCopy = state;
  deviceCopy = device;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'classic pair state response' message for device %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(Endpoint *)self pipes];
  v9 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v22[1] = deviceCopy;
        v23 = @"ClassicPairStateResponse";
        v21[0] = @"kDevicePairState";
        v21[1] = @"kDeviceAddress";
        v22[0] = stateCopy;
        v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v24 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v13 sendMessage:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)requestStoreLinkKey:(id)key name:(id)name device:(id)device
{
  keyCopy = key;
  nameCopy = name;
  deviceCopy = device;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending 'store classic link key request' message for device %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(Endpoint *)self pipes];
  v12 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v25[2] = keyCopy;
        v26 = @"StoreClassicLinkKeyRequest";
        v24[0] = @"kDeviceAddress";
        v24[1] = @"kDeviceName";
        v25[0] = deviceCopy;
        v25[1] = nameCopy;
        v24[2] = @"kDeviceLinkKey";
        v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
        v27 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v16 sendMessage:v18];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }
}

- (void)requestStoreLinkKeyExtended:(id)extended name:(id)name device:(id)device deviceServiceMask:(id)mask classOfDevice:(id)ofDevice
{
  extendedCopy = extended;
  nameCopy = name;
  deviceCopy = device;
  maskCopy = mask;
  ofDeviceCopy = ofDevice;
  v15 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending 'store classic link key request extended' message for device %@", buf, 0xCu);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(Endpoint *)self pipes];
  v16 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      v19 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v26 + 1) + 8 * v19);
        v32 = @"StoreClassicLinkKeyRequestExtended";
        v30[0] = @"kDeviceAddress";
        v30[1] = @"kDeviceName";
        v31[0] = deviceCopy;
        v31[1] = nameCopy;
        v30[2] = @"kDeviceLinkKey";
        v30[3] = @"kDeviceServiceMask";
        v31[2] = extendedCopy;
        v31[3] = maskCopy;
        v30[4] = @"kClassOfDeviceMask";
        v31[4] = ofDeviceCopy;
        v21 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:5];
        v33 = v21;
        v22 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [v20 sendMessage:v22];

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }
}

- (void)respondToStoreLinkKey:(id)key device:(id)device
{
  keyCopy = key;
  deviceCopy = device;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'store classic link key response' message for device %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(Endpoint *)self pipes];
  v9 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v22[1] = deviceCopy;
        v23 = @"StoreClassicLinkKeyResponse";
        v21[0] = @"kStoreClassicLinkKeyResult";
        v21[1] = @"kDeviceAddress";
        v22[0] = keyCopy;
        v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v24 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v13 sendMessage:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)storeDeviceSettings:(id)settings inEarEnable:(id)enable doubleTapMode:(id)mode deviceSettings:(id)deviceSettings deviceName:(id)name device:(id)device
{
  settingsCopy = settings;
  enableCopy = enable;
  modeCopy = mode;
  deviceSettingsCopy = deviceSettings;
  nameCopy = name;
  deviceCopy = device;
  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = deviceCopy;
    v40 = 2112;
    v41 = nameCopy;
    v42 = 2112;
    v43 = modeCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending 'store classic device settings' message for device %@, devName = %@, doubleTap = %@", buf, 0x20u);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(Endpoint *)self pipes];
  v18 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v29 + 1) + 8 * v21);
        v35 = @"StoreClassicDeviceSettings";
        v33[0] = @"kClassicDeviceMicMode";
        v33[1] = @"kClassicDeviceInEarEnable";
        v34[0] = settingsCopy;
        v34[1] = enableCopy;
        v33[2] = @"kClassicDeviceDoubleTapMode";
        v33[3] = @"kClassicDeviceSettings";
        v34[2] = modeCopy;
        v34[3] = deviceSettingsCopy;
        v33[4] = @"kDeviceName";
        v33[5] = @"kDeviceAddress";
        v34[4] = nameCopy;
        v34[5] = deviceCopy;
        v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:6];
        v36 = v23;
        v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v22 sendMessage:v24];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }
}

- (void)notifyPrimaryBudSide:(id)side device:(id)device
{
  sideCopy = side;
  deviceCopy = device;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'notifiy primary bud side' message for device %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(Endpoint *)self pipes];
  v9 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v22[1] = deviceCopy;
        v23 = @"NotifyPrimaryBudSide";
        v21[0] = @"kPrimaryBudSide";
        v21[1] = @"kDeviceAddress";
        v22[0] = sideCopy;
        v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v24 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v13 sendMessage:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)requestLeaEasyPair:(id)pair deviceIdentifier:(id)identifier deviceTags:(id)tags
{
  pairCopy = pair;
  identifierCopy = identifier;
  tagsCopy = tags;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = pairCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending 'LEA easy pair request' message for device %@", buf, 0xCu);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(Endpoint *)self pipes];
  v12 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v25[2] = tagsCopy;
        v26 = @"LeaEasyPairRequest";
        v24[0] = @"kLeaDeviceAddress";
        v24[1] = @"kLeaDeviceIdentifier";
        v25[0] = pairCopy;
        v25[1] = identifierCopy;
        v24[2] = @"kLeaDeviceTags";
        v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
        v27 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        [v16 sendMessage:v18];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }
}

- (void)respondToLeaEasyPair:(id)pair device:(id)device
{
  pairCopy = pair;
  deviceCopy = device;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'LEA easy pair response' message for device %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(Endpoint *)self pipes];
  v9 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v22[1] = deviceCopy;
        v23 = @"LeaEasyPairResponse";
        v21[0] = @"kLeaDevicePairState";
        v21[1] = @"kLeaDeviceAddress";
        v22[0] = pairCopy;
        v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v24 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v13 sendMessage:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)requestLeaStoreBondingInfo:(id)info rand:(id)rand ltk:(id)ltk irk:(id)irk name:(id)name device:(id)device
{
  infoCopy = info;
  randCopy = rand;
  ltkCopy = ltk;
  irkCopy = irk;
  nameCopy = name;
  deviceCopy = device;
  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending 'LEA store bonding info request' message for device %@", buf, 0xCu);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(Endpoint *)self pipes];
  v18 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      v21 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v29 + 1) + 8 * v21);
        v35 = @"LeaStoreBondingInfoRequest";
        v33[0] = @"kLeaDeviceAddress";
        v33[1] = @"kLeaDeviceName";
        v34[0] = deviceCopy;
        v34[1] = nameCopy;
        v33[2] = @"kLeaDeviceEdiv";
        v33[3] = @"kLeaDeviceRand";
        v34[2] = infoCopy;
        v34[3] = randCopy;
        v33[4] = @"kLeaDeviceLtk";
        v33[5] = @"kLeaDeviceIrk";
        v34[4] = ltkCopy;
        v34[5] = irkCopy;
        v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:6];
        v36 = v23;
        v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [v22 sendMessage:v24];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v19);
  }
}

- (void)respondToLeaStoreBondingInfo:(id)info device:(id)device
{
  infoCopy = info;
  deviceCopy = device;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending 'LEA store bonding info response' message for device %@", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(Endpoint *)self pipes];
  v9 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        v22[1] = deviceCopy;
        v23 = @"LeaStoreBondingInfoResponse";
        v21[0] = @"kLeaStoreBondingInfoResult";
        v21[1] = @"kLeaDeviceAddress";
        v22[0] = infoCopy;
        v14 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
        v24 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        [v13 sendMessage:v15];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v10);
  }
}

- (void)handleConnectClassicDeviceCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kQuickDisconnectEnabled"];

  v7 = qword_1000DDBC8;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'connect classic device' message for device %@", buf, 0xCu);
    }

    v8 = +[BTLEXpcServer instance];
    v10[0] = @"kDeviceAddress";
    v10[1] = @"kQuickDisconnectEnabled";
    v11[0] = v5;
    v11[1] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v8 sendMsg:@"ConnectClassicDevice" args:v9];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000727EC();
  }
}

- (void)handleDisconnectClassicDeviceCommand:(id)command message:(id)message
{
  v4 = [message objectForKeyedSubscript:@"kDeviceAddress"];
  v5 = qword_1000DDBC8;
  if (v4)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'disconnect classic device' message for device %@", buf, 0xCu);
    }

    v6 = +[BTLEXpcServer instance];
    v8 = @"kDeviceAddress";
    v9 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v6 sendMsg:@"DisconnectClassicDevice" args:v7];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072820();
  }
}

- (void)handleClassicDeviceUnexpectedDisconnectionCommand:(id)command message:(id)message
{
  v4 = [message objectForKeyedSubscript:@"kDeviceAddress"];
  v5 = qword_1000DDBC8;
  if (v4)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'classic device unexpected disconnection' message for device %@", buf, 0xCu);
    }

    v6 = +[BTLEXpcServer instance];
    v8 = @"kDeviceAddress";
    v9 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v6 sendMsg:@"ClassicDeviceUnexpectedDisconnection" args:v7];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072854();
  }
}

- (void)handleVersionInfoRequestCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kEasyPairingVersion"];
  v6 = [messageCopy objectForKeyedSubscript:@"kCloudAccount"];

  v7 = qword_1000DDBC8;
  if (v5)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'version info request' message", v10, 2u);
    }

    v8 = +[BTLEXpcServer instance];
    v11[0] = @"kEasyPairingVersion";
    v11[1] = @"kCloudAccount";
    v12[0] = v5;
    v12[1] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
    [v8 sendMsg:@"VersionInfoRequest" args:v9];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072888();
  }
}

- (void)handleVersionInfoResponseCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kEasyPairingVersion"];
  v7 = [messageCopy objectForKeyedSubscript:@"kCloudAccount"];
  v8 = [messageCopy objectForKeyedSubscript:@"kEasyPairingStatus"];

  v9 = qword_1000DDBC8;
  if (v6 && v8)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received 'version info response' message", v12, 2u);
    }

    v10 = +[BTLEXpcServer instance];
    v13[0] = @"kEasyPairingVersion";
    v13[1] = @"kCloudAccount";
    v14[0] = v6;
    v14[1] = v7;
    v13[2] = @"kEasyPairingStatus";
    v14[2] = v8;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    [v10 sendMsg:@"VersionInfoResponse" args:v11];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000728BC();
  }
}

- (void)handleClassicPairStateRequestCommand:(id)command message:(id)message
{
  v4 = [message objectForKeyedSubscript:@"kDeviceAddress"];
  v5 = qword_1000DDBC8;
  if (v4)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received 'classic pair state request' message for device %@", buf, 0xCu);
    }

    v6 = +[BTLEXpcServer instance];
    v8 = @"kDeviceAddress";
    v9 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [v6 sendMsg:@"ClassicPairStateRequest" args:v7];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000728F0();
  }
}

- (void)handleClassicPairStateResponseCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kDevicePairState"];

  v7 = qword_1000DDBC8;
  if (v5 && v6)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'classic pair state response' message for device %@", buf, 0xCu);
    }

    v8 = +[BTLEXpcServer instance];
    v10[0] = @"kDeviceAddress";
    v10[1] = @"kDevicePairState";
    v11[0] = v5;
    v11[1] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v8 sendMsg:@"ClassicPairStateResponse" args:v9];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072924();
  }
}

- (void)handleStoreClassicLinkKeyRequestCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kDeviceLinkKey"];
  v7 = [messageCopy objectForKeyedSubscript:@"kDeviceName"];

  v8 = qword_1000DDBC8;
  if (v5 && v6 && v7)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'store classic link key request' message for device %@", buf, 0xCu);
    }

    v9 = +[BTLEXpcServer instance];
    v11[0] = @"kDeviceAddress";
    v11[1] = @"kDeviceName";
    v12[0] = v5;
    v12[1] = v7;
    v11[2] = @"kDeviceLinkKey";
    v12[2] = v6;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v9 sendMsg:@"StoreClassicLinkKeyRequest" args:v10];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072958();
  }
}

- (void)handleStoreClassicLinkKeyRequestExtendedCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kDeviceLinkKey"];
  v7 = [messageCopy objectForKeyedSubscript:@"kDeviceName"];
  v8 = [messageCopy objectForKeyedSubscript:@"kDeviceServiceMask"];
  v9 = [messageCopy objectForKeyedSubscript:@"kClassOfDeviceMask"];

  v10 = qword_1000DDBC8;
  if (v5 && v6 && v7 && v8)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Received 'store classic link key request extended' message for device %@", buf, 0xCu);
    }

    v11 = +[BTLEXpcServer instance];
    v13[0] = @"kDeviceAddress";
    v13[1] = @"kDeviceName";
    v14[0] = v5;
    v14[1] = v7;
    v13[2] = @"kDeviceLinkKey";
    v13[3] = @"kDeviceServiceMask";
    v14[2] = v6;
    v14[3] = v8;
    v13[4] = @"kClassOfDeviceMask";
    v14[4] = v9;
    v12 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:5];
    [v11 sendMsg:@"StoreClassicLinkKeyRequestExtended" args:v12];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072958();
  }
}

- (void)handleStoreClassicLinkKeyResponseCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kStoreClassicLinkKeyResult"];

  v7 = qword_1000DDBC8;
  if (v5 && v6)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'store classic link key response' message for device %@", buf, 0xCu);
    }

    v8 = +[BTLEXpcServer instance];
    v10[0] = @"kDeviceAddress";
    v10[1] = @"kStoreClassicLinkKeyResult";
    v11[0] = v5;
    v11[1] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v8 sendMsg:@"StoreClassicLinkKeyResponse" args:v9];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_10007298C();
  }
}

- (void)handleStoreClassicDeviceSettingsCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kDeviceName"];
  v7 = [messageCopy objectForKeyedSubscript:@"kClassicDeviceMicMode"];
  v8 = [messageCopy objectForKeyedSubscript:@"kClassicDeviceInEarEnable"];
  v9 = [messageCopy objectForKeyedSubscript:@"kClassicDeviceDoubleTapMode"];
  v10 = [messageCopy objectForKeyedSubscript:@"kClassicDeviceSettings"];

  v11 = qword_1000DDBC8;
  if (v5 && v7 && v8 && v9 && v6)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v40 = v5;
      v41 = 2112;
      v42 = v6;
      v43 = 2112;
      v44 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'store classic device settings' message for device %@, devName = %@, doubleTap = %@", buf, 0x20u);
    }

    v12 = +[BTLEXpcServer instance];
    if (v10)
    {
      v27 = @"kDeviceAddress";
      v28 = @"kClassicDeviceMicMode";
      v29 = @"kClassicDeviceInEarEnable";
      v33 = v5;
      v34 = v7;
      v30 = @"kClassicDeviceDoubleTapMode";
      v31 = @"kClassicDeviceSettings";
      v35 = v8;
      v36 = v9;
      v32 = @"kDeviceName";
      v37 = v10;
      v38 = v6;
      v13 = &v33;
      v14 = &v27;
      v15 = 6;
    }

    else
    {
      v17 = @"kDeviceAddress";
      v18 = @"kClassicDeviceMicMode";
      v19 = @"kClassicDeviceInEarEnable";
      v22 = v5;
      v23 = v7;
      v24 = v8;
      v25 = v9;
      v20 = @"kClassicDeviceDoubleTapMode";
      v21 = @"kDeviceName";
      v26 = v6;
      v13 = &v22;
      v14 = &v17;
      v15 = 5;
    }

    v16 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38];
    [v12 sendMsg:@"StoreClassicDeviceSettings" args:v16];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000729C0();
  }
}

- (void)handleNotifyPrimaryBudSideCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kPrimaryBudSide"];

  v7 = qword_1000DDBC8;
  if (v5 && v6)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'notifiy primary bud side' message for device %@", buf, 0xCu);
    }

    v8 = +[BTLEXpcServer instance];
    v10[0] = @"kDeviceAddress";
    v10[1] = @"kPrimaryBudSide";
    v11[0] = v5;
    v11[1] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v8 sendMsg:@"NotifyPrimaryBudSide" args:v9];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000729F4();
  }
}

- (void)handleLeaEasyPairRequestCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceAddress"];
  if (v5)
  {
    v6 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceIdentifier"];
    v7 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceTags"];
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'LEA easy pair request' message for device %@", buf, 0xCu);
    }

    v9 = +[BTLEXpcServer instance];
    v11[0] = @"kLeaDeviceAddress";
    v11[1] = @"kLeaDeviceIdentifier";
    v12[0] = v5;
    v12[1] = v6;
    v11[2] = @"kLeaDeviceTags";
    v12[2] = v7;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v9 sendMsg:@"LeaEasyPairRequest" args:v10];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072A28();
  }
}

- (void)handleLeaEasyPairResponseCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kLeaDevicePairState"];

  v7 = qword_1000DDBC8;
  if (v5 && v6)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'LEA easypair response' message for device %@", buf, 0xCu);
    }

    v8 = +[BTLEXpcServer instance];
    v10[0] = @"kLeaDeviceAddress";
    v10[1] = @"kLeaDevicePairState";
    v11[0] = v5;
    v11[1] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v8 sendMsg:@"LeaEasyPairResponse" args:v9];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072A5C();
  }
}

- (void)handleLeaStoreBondingInfoRequestCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceEdiv"];
  v7 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceRand"];
  v8 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceLtk"];
  v9 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceIrk"];
  v10 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceName"];

  v11 = qword_1000DDBC8;
  if (v5 && v6 && v7 && v8 && v9 && v10)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received 'LEA store bonding info request' message for device %@", buf, 0xCu);
    }

    v12 = +[BTLEXpcServer instance];
    v14[0] = @"kLeaDeviceAddress";
    v14[1] = @"kLeaDeviceName";
    v15[0] = v5;
    v15[1] = v10;
    v14[2] = @"kLeaDeviceEdiv";
    v14[3] = @"kLeaDeviceRand";
    v15[2] = v6;
    v15[3] = v7;
    v14[4] = @"kLeaDeviceLtk";
    v14[5] = @"kLeaDeviceIrk";
    v15[4] = v8;
    v15[5] = v9;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:6];
    [v12 sendMsg:@"LeaStoreBondingInfoRequest" args:v13];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072A90();
  }
}

- (void)handleLeaStoreBondingInfoResponseCommand:(id)command message:(id)message
{
  messageCopy = message;
  v5 = [messageCopy objectForKeyedSubscript:@"kLeaDeviceAddress"];
  v6 = [messageCopy objectForKeyedSubscript:@"kLeaStoreBondingInfoResult"];

  v7 = qword_1000DDBC8;
  if (v5 && v6)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received 'LEA store bonding info response' message for device %@", buf, 0xCu);
    }

    v8 = +[BTLEXpcServer instance];
    v10[0] = @"kLeaDeviceAddress";
    v10[1] = @"kLeaStoreBondingInfoResult";
    v11[0] = v5;
    v11[1] = v6;
    v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v8 sendMsg:@"LeaStoreBondingInfoResponse" args:v9];
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_100072AC4();
  }
}

@end