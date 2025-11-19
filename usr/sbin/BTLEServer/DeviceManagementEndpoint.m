@interface DeviceManagementEndpoint
- (DeviceManagementEndpoint)init;
- (void)addPipe:(id)a3;
- (void)connectDevice:(id)a3 quickDisconnectEnabled:(id)a4;
- (void)disconnectDevice:(id)a3;
- (void)handleClassicDeviceUnexpectedDisconnectionCommand:(id)a3 message:(id)a4;
- (void)handleClassicPairStateRequestCommand:(id)a3 message:(id)a4;
- (void)handleClassicPairStateResponseCommand:(id)a3 message:(id)a4;
- (void)handleConnectClassicDeviceCommand:(id)a3 message:(id)a4;
- (void)handleDisconnectClassicDeviceCommand:(id)a3 message:(id)a4;
- (void)handleLeaEasyPairRequestCommand:(id)a3 message:(id)a4;
- (void)handleLeaEasyPairResponseCommand:(id)a3 message:(id)a4;
- (void)handleLeaStoreBondingInfoRequestCommand:(id)a3 message:(id)a4;
- (void)handleLeaStoreBondingInfoResponseCommand:(id)a3 message:(id)a4;
- (void)handleNotifyPrimaryBudSideCommand:(id)a3 message:(id)a4;
- (void)handleStoreClassicDeviceSettingsCommand:(id)a3 message:(id)a4;
- (void)handleStoreClassicLinkKeyRequestCommand:(id)a3 message:(id)a4;
- (void)handleStoreClassicLinkKeyRequestExtendedCommand:(id)a3 message:(id)a4;
- (void)handleStoreClassicLinkKeyResponseCommand:(id)a3 message:(id)a4;
- (void)handleVersionInfoRequestCommand:(id)a3 message:(id)a4;
- (void)handleVersionInfoResponseCommand:(id)a3 message:(id)a4;
- (void)notifyPrimaryBudSide:(id)a3 device:(id)a4;
- (void)removePipe:(id)a3;
- (void)requestLeaEasyPair:(id)a3 deviceIdentifier:(id)a4 deviceTags:(id)a5;
- (void)requestLeaStoreBondingInfo:(id)a3 rand:(id)a4 ltk:(id)a5 irk:(id)a6 name:(id)a7 device:(id)a8;
- (void)requestPairStateForDevice:(id)a3;
- (void)requestStoreLinkKey:(id)a3 name:(id)a4 device:(id)a5;
- (void)requestStoreLinkKeyExtended:(id)a3 name:(id)a4 device:(id)a5 deviceServiceMask:(id)a6 classOfDevice:(id)a7;
- (void)requestVersionInfo:(id)a3 cloudAccount:(id)a4;
- (void)respondToLeaEasyPair:(id)a3 device:(id)a4;
- (void)respondToLeaStoreBondingInfo:(id)a3 device:(id)a4;
- (void)respondToPairState:(id)a3 device:(id)a4;
- (void)respondToStoreLinkKey:(id)a3 device:(id)a4;
- (void)respondVersionInfo:(id)a3 cloudAccount:(id)a4 easyPairingStatus:(id)a5;
- (void)storeDeviceSettings:(id)a3 inEarEnable:(id)a4 doubleTapMode:(id)a5 deviceSettings:(id)a6 deviceName:(id)a7 device:(id)a8;
- (void)unexpectedDisconnection:(id)a3;
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

- (void)addPipe:(id)a3
{
  v7.receiver = self;
  v7.super_class = DeviceManagementEndpoint;
  v3 = a3;
  [(Endpoint *)&v7 addPipe:v3];
  v4 = [v3 peer];

  v5 = [v4 identifier];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_10007276C();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5)
  {
LABEL_3:
    v6 = +[BTLEXpcServer instance];
    [v6 sendDevMgmtPipeConnectedMsg:v5];
  }

LABEL_4:
}

- (void)removePipe:(id)a3
{
  v7.receiver = self;
  v7.super_class = DeviceManagementEndpoint;
  v3 = a3;
  [(Endpoint *)&v7 removePipe:v3];
  v4 = [v3 peer];

  v5 = [v4 identifier];

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000727AC();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v5)
  {
LABEL_3:
    v6 = +[BTLEXpcServer instance];
    [v6 sendDevMgmtPipeDisconnectedMsg:v5];
  }

LABEL_4:
}

- (void)connectDevice:(id)a3 quickDisconnectEnabled:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
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
        v22[1] = v7;
        v23 = @"ConnectClassicDevice";
        v21[0] = @"kDeviceAddress";
        v21[1] = @"kQuickDisconnectEnabled";
        v22[0] = v6;
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

- (void)disconnectDevice:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
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
        v19 = v4;
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

- (void)unexpectedDisconnection:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
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
        v19 = v4;
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

- (void)requestVersionInfo:(id)a3 cloudAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
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
        v23[1] = v7;
        v24 = @"VersionInfoRequest";
        v22[0] = @"kEasyPairingVersion";
        v22[1] = @"kCloudAccount";
        v23[0] = v6;
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

- (void)respondVersionInfo:(id)a3 cloudAccount:(id)a4 easyPairingStatus:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
        v26[2] = v10;
        v27 = @"VersionInfoResponse";
        v25[0] = @"kEasyPairingVersion";
        v25[1] = @"kCloudAccount";
        v26[0] = v8;
        v26[1] = v9;
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

- (void)requestPairStateForDevice:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
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
        v19 = v4;
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

- (void)respondToPairState:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
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
        v22[1] = v7;
        v23 = @"ClassicPairStateResponse";
        v21[0] = @"kDevicePairState";
        v21[1] = @"kDeviceAddress";
        v22[0] = v6;
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

- (void)requestStoreLinkKey:(id)a3 name:(id)a4 device:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v10;
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
        v25[2] = v8;
        v26 = @"StoreClassicLinkKeyRequest";
        v24[0] = @"kDeviceAddress";
        v24[1] = @"kDeviceName";
        v25[0] = v10;
        v25[1] = v9;
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

- (void)requestStoreLinkKeyExtended:(id)a3 name:(id)a4 device:(id)a5 deviceServiceMask:(id)a6 classOfDevice:(id)a7
{
  v25 = a3;
  v24 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v12;
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
        v31[0] = v12;
        v31[1] = v24;
        v30[2] = @"kDeviceLinkKey";
        v30[3] = @"kDeviceServiceMask";
        v31[2] = v25;
        v31[3] = v13;
        v30[4] = @"kClassOfDeviceMask";
        v31[4] = v14;
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

- (void)respondToStoreLinkKey:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
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
        v22[1] = v7;
        v23 = @"StoreClassicLinkKeyResponse";
        v21[0] = @"kStoreClassicLinkKeyResult";
        v21[1] = @"kDeviceAddress";
        v22[0] = v6;
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

- (void)storeDeviceSettings:(id)a3 inEarEnable:(id)a4 doubleTapMode:(id)a5 deviceSettings:(id)a6 deviceName:(id)a7 device:(id)a8
{
  v27 = a3;
  v26 = a4;
  v28 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v39 = v16;
    v40 = 2112;
    v41 = v15;
    v42 = 2112;
    v43 = v28;
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
        v34[0] = v27;
        v34[1] = v26;
        v33[2] = @"kClassicDeviceDoubleTapMode";
        v33[3] = @"kClassicDeviceSettings";
        v34[2] = v28;
        v34[3] = v14;
        v33[4] = @"kDeviceName";
        v33[5] = @"kDeviceAddress";
        v34[4] = v15;
        v34[5] = v16;
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

- (void)notifyPrimaryBudSide:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
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
        v22[1] = v7;
        v23 = @"NotifyPrimaryBudSide";
        v21[0] = @"kPrimaryBudSide";
        v21[1] = @"kDeviceAddress";
        v22[0] = v6;
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

- (void)requestLeaEasyPair:(id)a3 deviceIdentifier:(id)a4 deviceTags:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v8;
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
        v25[2] = v10;
        v26 = @"LeaEasyPairRequest";
        v24[0] = @"kLeaDeviceAddress";
        v24[1] = @"kLeaDeviceIdentifier";
        v25[0] = v8;
        v25[1] = v9;
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

- (void)respondToLeaEasyPair:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
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
        v22[1] = v7;
        v23 = @"LeaEasyPairResponse";
        v21[0] = @"kLeaDevicePairState";
        v21[1] = @"kLeaDeviceAddress";
        v22[0] = v6;
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

- (void)requestLeaStoreBondingInfo:(id)a3 rand:(id)a4 ltk:(id)a5 irk:(id)a6 name:(id)a7 device:(id)a8
{
  v28 = a3;
  v27 = a4;
  v26 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v16;
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
        v34[0] = v16;
        v34[1] = v15;
        v33[2] = @"kLeaDeviceEdiv";
        v33[3] = @"kLeaDeviceRand";
        v34[2] = v28;
        v34[3] = v27;
        v33[4] = @"kLeaDeviceLtk";
        v33[5] = @"kLeaDeviceIrk";
        v34[4] = v26;
        v34[5] = v14;
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

- (void)respondToLeaStoreBondingInfo:(id)a3 device:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
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
        v22[1] = v7;
        v23 = @"LeaStoreBondingInfoResponse";
        v21[0] = @"kLeaStoreBondingInfoResult";
        v21[1] = @"kLeaDeviceAddress";
        v22[0] = v6;
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

- (void)handleConnectClassicDeviceCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kQuickDisconnectEnabled"];

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

- (void)handleDisconnectClassicDeviceCommand:(id)a3 message:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:@"kDeviceAddress"];
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

- (void)handleClassicDeviceUnexpectedDisconnectionCommand:(id)a3 message:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:@"kDeviceAddress"];
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

- (void)handleVersionInfoRequestCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kEasyPairingVersion"];
  v6 = [v4 objectForKeyedSubscript:@"kCloudAccount"];

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

- (void)handleVersionInfoResponseCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kEasyPairingVersion"];
  v7 = [v4 objectForKeyedSubscript:@"kCloudAccount"];
  v8 = [v4 objectForKeyedSubscript:@"kEasyPairingStatus"];

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

- (void)handleClassicPairStateRequestCommand:(id)a3 message:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:@"kDeviceAddress"];
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

- (void)handleClassicPairStateResponseCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kDevicePairState"];

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

- (void)handleStoreClassicLinkKeyRequestCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kDeviceLinkKey"];
  v7 = [v4 objectForKeyedSubscript:@"kDeviceName"];

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

- (void)handleStoreClassicLinkKeyRequestExtendedCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kDeviceLinkKey"];
  v7 = [v4 objectForKeyedSubscript:@"kDeviceName"];
  v8 = [v4 objectForKeyedSubscript:@"kDeviceServiceMask"];
  v9 = [v4 objectForKeyedSubscript:@"kClassOfDeviceMask"];

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

- (void)handleStoreClassicLinkKeyResponseCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kStoreClassicLinkKeyResult"];

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

- (void)handleStoreClassicDeviceSettingsCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kDeviceName"];
  v7 = [v4 objectForKeyedSubscript:@"kClassicDeviceMicMode"];
  v8 = [v4 objectForKeyedSubscript:@"kClassicDeviceInEarEnable"];
  v9 = [v4 objectForKeyedSubscript:@"kClassicDeviceDoubleTapMode"];
  v10 = [v4 objectForKeyedSubscript:@"kClassicDeviceSettings"];

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

- (void)handleNotifyPrimaryBudSideCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kPrimaryBudSide"];

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

- (void)handleLeaEasyPairRequestCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kLeaDeviceAddress"];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"kLeaDeviceIdentifier"];
    v7 = [v4 objectForKeyedSubscript:@"kLeaDeviceTags"];
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

- (void)handleLeaEasyPairResponseCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kLeaDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kLeaDevicePairState"];

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

- (void)handleLeaStoreBondingInfoRequestCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kLeaDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kLeaDeviceEdiv"];
  v7 = [v4 objectForKeyedSubscript:@"kLeaDeviceRand"];
  v8 = [v4 objectForKeyedSubscript:@"kLeaDeviceLtk"];
  v9 = [v4 objectForKeyedSubscript:@"kLeaDeviceIrk"];
  v10 = [v4 objectForKeyedSubscript:@"kLeaDeviceName"];

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

- (void)handleLeaStoreBondingInfoResponseCommand:(id)a3 message:(id)a4
{
  v4 = a4;
  v5 = [v4 objectForKeyedSubscript:@"kLeaDeviceAddress"];
  v6 = [v4 objectForKeyedSubscript:@"kLeaStoreBondingInfoResult"];

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