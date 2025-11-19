@interface BTLEXpcConnection
+ (id)createNSDictionaryFromXpcDictionary:(id)a3;
- (BTLEXpcConnection)initWithConnection:(id)a3;
- (id)bundleIdentifier;
- (void)authenticationDidFail:(id)a3;
- (void)authenticationDidSucceed:(id)a3;
- (void)handleCATTBatteryServiceDeviceConnectedMsg:(id)a3;
- (void)handleClassicDeviceUnexpectedDisconnectionMsg:(id)a3;
- (void)handleClassicPairStateRequestMsg:(id)a3;
- (void)handleClassicPairStateResponseMsg:(id)a3;
- (void)handleConnectAlwaysMsg:(id)a3;
- (void)handleConnectClassicDeviceMsg:(id)a3;
- (void)handleConnectOnceMsg:(id)a3;
- (void)handleDOAPDeviceConnectedMsg:(id)a3;
- (void)handleDisconnectClassicDeviceMsg:(id)a3;
- (void)handleDisconnection;
- (void)handleEvent:(id)a3;
- (void)handleHRMDeviceConnectedMsg:(id)a3;
- (void)handleLeaEasyPairRequestMsg:(id)a3;
- (void)handleLeaEasyPairResponseMsg:(id)a3;
- (void)handleLeaStoreBondingInfoRequestMsg:(id)a3;
- (void)handleLeaStoreBondingInfoResponseMsg:(id)a3;
- (void)handleMFiAccessoryAuthMsg:(id)a3;
- (void)handleMsg:(id)a3;
- (void)handleNotifyPiconetClockMsg:(id)a3;
- (void)handleNotifyPrimaryBudSideMsg:(id)a3;
- (void)handlePersistServerServicesMsg:(id)a3;
- (void)handlePreWarmMFiAccessoryAuthMsg:(id)a3;
- (void)handleStoreClassicDeviceSettingsMsg:(id)a3;
- (void)handleStoreClassicLinkKeyRequestExtendedMsg:(id)a3;
- (void)handleStoreClassicLinkKeyRequestMsg:(id)a3;
- (void)handleStoreClassicLinkKeyResponseMsg:(id)a3;
- (void)handleUARPAACPTransportChangeMsg:(id)a3;
- (void)handleUARPDataOverAACPMsg:(id)a3;
- (void)handleUARPDeviceConnectedMsg:(id)a3;
- (void)handleVersionInfoRequestMsg:(id)a3;
- (void)handleVersionInfoResponseMsg:(id)a3;
- (void)peerIsNotUsingBuiltinService:(id)a3;
- (void)peerIsUsingBuiltinService:(id)a3;
- (void)sendMsg:(id)a3 args:(id)a4;
@end

@implementation BTLEXpcConnection

- (BTLEXpcConnection)initWithConnection:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074350();
  }

  v17.receiver = self;
  v17.super_class = BTLEXpcConnection;
  v6 = [(BTLEXpcConnection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    xpc_connection_set_target_queue(v7->_connection, &_dispatch_main_q);
    connection = v7->_connection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002A32C;
    handler[3] = &unk_1000BDAE0;
    v9 = v7;
    v16 = v9;
    xpc_connection_set_event_handler(connection, handler);
    xpc_connection_resume(v7->_connection);
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v9 selector:"authenticationDidSucceed:" name:@"AuthenticationServiceAuthDidSucceedNotification" object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v9 selector:"authenticationDidFail:" name:@"AuthenticationServiceAuthDidFailNotification" object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v9 selector:"peerIsUsingBuiltinService:" name:@"PeerIsUsingBuiltinServiceNotification" object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v9 selector:"peerIsNotUsingBuiltinService:" name:@"PeerIsNotUsingBuiltinServiceNotification" object:0];
  }

  return v7;
}

- (id)bundleIdentifier
{
  v14 = 0u;
  v15 = 0u;
  connection = self->_connection;
  xpc_connection_get_audit_token();
  memset(&token, 0, sizeof(token));
  v3 = SecTaskCreateWithAuditToken(0, &token);
  if (v3)
  {
    v4 = v3;
    *token.val = 0;
    v5 = SecTaskCopySigningIdentifier(v3, &token);
    v6 = v5;
    if (*token.val)
    {
      v7 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to copy signing ID - using framework-provided bundle identifier!", buf, 2u);
      }

      CFRelease(*token.val);
      if (!v6)
      {
        goto LABEL_12;
      }

      CFRelease(v6);
    }

    else
    {
      if (v5)
      {
        goto LABEL_12;
      }

      v11 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to retrieve signing ID - using framework-provided bundle identifier!", buf, 2u);
      }
    }

    v6 = 0;
LABEL_12:
    CFRelease(v4);
    goto LABEL_13;
  }

  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(token.val[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to allocate security task - using framework-provided bundle identifier!", &token, 2u);
  }

  v6 = 0;
LABEL_13:
  if (![v6 length])
  {
    v9 = [NSString stringWithFormat:@"UNKNOWN-%0000x", arc4random_uniform(0xFFFFu)];

    v6 = v9;
  }

  return v6;
}

- (void)handleEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_dictionary)
  {
    [(BTLEXpcConnection *)self handleMsg:v4];
  }

  else if (type == &_xpc_type_error)
  {
    if (v4 == &_xpc_error_connection_invalid)
    {
      [(BTLEXpcConnection *)self handleDisconnection];
    }

    else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100074438();
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
  {
    sub_1000743C4();
  }
}

- (void)handleDisconnection
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000744AC(v3, self);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = +[BTLEXpcServer instance];
  [v5 handleXpcDisconnection:self];
}

- (void)handleMsg:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074540(v5, v4);
  }

  string = xpc_dictionary_get_string(v4, "kMsgId");
  v7 = xpc_dictionary_get_value(v4, "kMsgArgs");
  v8 = [NSString stringWithFormat:@"handle%sMsg:", string];
  v9 = NSSelectorFromString(v8);

  if (xpc_dictionary_expects_reply())
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  [self v9];
}

- (void)handleConnectOnceMsg:(id)a3
{
  xuuid = xpc_dictionary_get_value(a3, "kPeerIdentifier");
  v3 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(xuuid)];
  v4 = +[ConnectionManager instance];
  [v4 connectOnce:v3];
}

- (void)handleConnectAlwaysMsg:(id)a3
{
  v3 = xpc_dictionary_get_value(a3, "kPeerIdentifiers");
  +[NSMutableArray array];
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10002A8C0;
  v7 = applier[3] = &unk_1000BDB08;
  v4 = v7;
  xpc_array_apply(v3, applier);
  v5 = +[ConnectionManager instance];
  [v5 connectAlways:v4];
}

- (void)handlePersistServerServicesMsg:(id)a3
{
  v3 = xpc_dictionary_get_BOOL(a3, "kPersist");
  v4 = +[ServerServiceManager instance];
  [v4 setPersist:v3];

  v5 = +[EndpointManager instance];
  [v5 setPersist:v3];
}

- (void)handleNotifyPiconetClockMsg:(id)a3
{
  v3 = a3;
  uint64 = xpc_dictionary_get_uint64(v3, "kPiconetClock");
  v5 = xpc_dictionary_get_uint64(v3, "kPiconetPhaseClock");

  v6 = +[NSNotificationCenter defaultCenter];
  v10[0] = @"PiconetClockUserInfoKey";
  v7 = [NSNumber numberWithUnsignedLongLong:uint64];
  v11[0] = v7;
  v10[1] = @"PiconetPhaseClockUserInfoKey";
  v8 = [NSNumber numberWithUnsignedLongLong:v5];
  v11[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v6 postNotificationName:@"PiconetClockNotification" object:0 userInfo:v9];
}

- (void)handleConnectClassicDeviceMsg:(id)a3
{
  v3 = a3;
  v7 = +[EndpointManager instance];
  v4 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kDeviceAddress")];
  uint64 = xpc_dictionary_get_uint64(v3, "kQuickDisconnectEnabled");

  v6 = [NSNumber numberWithUnsignedLongLong:uint64];
  [v7 connectDevice:v4 quickDisconnectEnabled:v6];
}

- (void)handleDisconnectClassicDeviceMsg:(id)a3
{
  v3 = a3;
  v6 = +[EndpointManager instance];
  string = xpc_dictionary_get_string(v3, "kDeviceAddress");

  v5 = [NSString stringWithUTF8String:string];
  [v6 disconnectDevice:v5];
}

- (void)handleClassicDeviceUnexpectedDisconnectionMsg:(id)a3
{
  v3 = a3;
  v6 = +[EndpointManager instance];
  string = xpc_dictionary_get_string(v3, "kDeviceAddress");

  v5 = [NSString stringWithUTF8String:string];
  [v6 unexpectedDisconnection:v5];
}

- (void)handleVersionInfoRequestMsg:(id)a3
{
  v3 = a3;
  v7 = +[EndpointManager instance];
  v4 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kEasyPairingVersion")];
  string = xpc_dictionary_get_string(v3, "kCloudAccount");

  v6 = [NSString stringWithUTF8String:string];
  [v7 requestVersionInfo:v4 cloudAccount:v6];
}

- (void)handleVersionInfoResponseMsg:(id)a3
{
  v3 = a3;
  v8 = +[EndpointManager instance];
  v4 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kEasyPairingVersion")];
  v5 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kCloudAccount")];
  uint64 = xpc_dictionary_get_uint64(v3, "kEasyPairingStatus");

  v7 = [NSNumber numberWithUnsignedLongLong:uint64];
  [v8 respondVersionInfo:v4 cloudAccount:v5 easyPairingStatus:v7];
}

- (void)handleClassicPairStateRequestMsg:(id)a3
{
  v3 = a3;
  v6 = +[EndpointManager instance];
  string = xpc_dictionary_get_string(v3, "kDeviceAddress");

  v5 = [NSString stringWithUTF8String:string];
  [v6 requestPairStateForDevice:v5];
}

- (void)handleClassicPairStateResponseMsg:(id)a3
{
  v3 = a3;
  v7 = +[EndpointManager instance];
  v4 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kDevicePairState")];
  string = xpc_dictionary_get_string(v3, "kDeviceAddress");

  v6 = [NSString stringWithUTF8String:string];
  [v7 respondToPairState:v4 device:v6];
}

- (void)handleStoreClassicLinkKeyRequestMsg:(id)a3
{
  v3 = a3;
  length = 0;
  data = xpc_dictionary_get_data(v3, "kDeviceLinkKey", &length);
  if (length)
  {
    v5 = data;
    v6 = +[NSArray array];
    v7 = v6;
    if (length)
    {
      for (i = 0; i < length; ++i)
      {
        v9 = [NSNumber numberWithUnsignedChar:v5[i]];
        v10 = [v7 arrayByAddingObject:v9];

        v7 = v10;
      }
    }

    else
    {
      v10 = v6;
    }

    v11 = +[EndpointManager instance];
    v12 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kDeviceName")];
    v13 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kDeviceAddress")];
    [v11 requestStoreLinkKey:v10 name:v12 device:v13];
  }
}

- (void)handleStoreClassicLinkKeyRequestExtendedMsg:(id)a3
{
  v3 = a3;
  length = 0;
  data = xpc_dictionary_get_data(v3, "kDeviceLinkKey", &length);
  if (length)
  {
    v5 = data;
    v6 = +[NSArray array];
    v7 = v6;
    if (length)
    {
      for (i = 0; i < length; ++i)
      {
        v9 = [NSNumber numberWithUnsignedChar:v5[i]];
        v10 = [v7 arrayByAddingObject:v9];

        v7 = v10;
      }
    }

    else
    {
      v10 = v6;
    }

    v11 = +[EndpointManager instance];
    v12 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kDeviceName")];
    v13 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kDeviceAddress")];
    v14 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kDeviceServiceMask")];
    v15 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kClassOfDevice")];
    [v11 requestStoreLinkKeyExtended:v10 name:v12 device:v13 deviceServiceMask:v14 classOfDevice:v15];
  }
}

- (void)handleStoreClassicLinkKeyResponseMsg:(id)a3
{
  v3 = a3;
  v7 = +[EndpointManager instance];
  v4 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kStoreClassicLinkKeyResult")];
  string = xpc_dictionary_get_string(v3, "kDeviceAddress");

  v6 = [NSString stringWithUTF8String:string];
  [v7 respondToStoreLinkKey:v4 device:v6];
}

- (void)handleStoreClassicDeviceSettingsMsg:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_get_value(v3, "kClassicDeviceSettings");
  v5 = &MGGetBoolAnswer_ptr;
  xdict = v4;
  if (v4)
  {
    v6 = xpc_dictionary_get_value(v4, "kCfgDoubleClickInt");
    v37 = v6;
    if (v6)
    {
      value = xpc_int64_get_value(v6);
    }

    else
    {
      value = 0xFFFFFFFFLL;
    }

    v9 = xpc_dictionary_get_value(xdict, "kCfgClickHold");
    v36 = v9;
    if (v9)
    {
      v10 = xpc_int64_get_value(v9);
    }

    else
    {
      v10 = 0xFFFFFFFFLL;
    }

    v11 = xpc_dictionary_get_value(xdict, "kCfgClickHoldInt");
    v35 = v11;
    if (v11)
    {
      v12 = xpc_int64_get_value(v11);
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

    v13 = xpc_dictionary_get_value(xdict, "kCfgListenModeCfgs");
    v34 = v13;
    if (v13)
    {
      v14 = xpc_int64_get_value(v13);
    }

    else
    {
      v14 = 0xFFFFFFFFLL;
    }

    v15 = xpc_dictionary_get_value(xdict, "kCfgOneBudANCMode");
    v16 = v15;
    if (v15)
    {
      v17 = xpc_int64_get_value(v15);
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    v18 = xpc_dictionary_get_value(xdict, "kCfgListenMode");
    v19 = v18;
    if (v18)
    {
      v20 = xpc_int64_get_value(v18);
    }

    else
    {
      v20 = 0xFFFFFFFFLL;
    }

    v8 = objc_alloc_init(NSMutableDictionary);
    if (value != -1)
    {
      v21 = [NSNumber numberWithInt:value];
      [v8 setObject:v21 forKey:@"kCfgDoubleClickInt"];
    }

    if (v10 != -1)
    {
      v22 = [NSNumber numberWithInt:v10];
      [v8 setObject:v22 forKey:@"kCfgClickHold"];
    }

    v5 = &MGGetBoolAnswer_ptr;
    if (v12 != -1)
    {
      v23 = [NSNumber numberWithInt:v12];
      [v8 setObject:v23 forKey:@"kCfgClickHoldInt"];
    }

    if (v14 != -1)
    {
      v24 = [NSNumber numberWithInt:v14];
      [v8 setObject:v24 forKey:@"kCfgListenModeCfgs"];
    }

    if (v17 != -1)
    {
      v25 = [NSNumber numberWithInt:v17];
      [v8 setObject:v25 forKey:@"kCfgOneBudANCMode"];
    }

    if (v20 != -1)
    {
      v26 = [NSNumber numberWithInt:v20];
      [v8 setObject:v26 forKey:@"kCfgListenMode"];
    }
  }

  else
  {
    v8 = 0;
  }

  v27 = +[EndpointManager instance];
  v28 = [v5[502] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v3, "kClassicDeviceMicMode")}];
  v29 = [v5[502] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v3, "kClassicDeviceInEarEnable")}];
  v30 = [v5[502] numberWithUnsignedLongLong:{xpc_dictionary_get_uint64(v3, "kClassicDeviceDoubleTapMode")}];
  v31 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kDeviceName")];
  string = xpc_dictionary_get_string(v3, "kDeviceAddress");

  v33 = [NSString stringWithUTF8String:string];
  [v27 storeDeviceSettings:v28 inEarEnable:v29 doubleTapMode:v30 deviceSettings:v8 deviceName:v31 device:v33];
}

- (void)handleNotifyPrimaryBudSideMsg:(id)a3
{
  v3 = a3;
  v7 = +[EndpointManager instance];
  v4 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kPrimaryBudSide")];
  string = xpc_dictionary_get_string(v3, "kDeviceAddress");

  v6 = [NSString stringWithUTF8String:string];
  [v7 notifyPrimaryBudSide:v4 device:v6];
}

- (void)handleMFiAccessoryAuthMsg:(id)a3
{
  xuuid = xpc_dictionary_get_value(a3, "kPeerIdentifier");
  v3 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(xuuid)];
  v4 = +[ConnectionManager instance];
  [v4 performMFiAuth:v3];
}

- (void)handlePreWarmMFiAccessoryAuthMsg:(id)a3
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PreWarmMFiAuth : Launch accessoryd", v5, 2u);
  }

  v4 = +[ACCTransportClient sharedClient];
  [v4 launchServer];
}

- (void)handleDOAPDeviceConnectedMsg:(id)a3
{
  v3 = +[CattManager instance];
  [v3 registerServices];
}

- (void)handleUARPDeviceConnectedMsg:(id)a3
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "UARP device connected", v5, 2u);
  }

  v4 = +[CattManager instance];
  [v4 registerServices];
}

- (void)handleUARPAACPTransportChangeMsg:(id)a3
{
  v3 = xpc_dictionary_get_value(a3, "kUARPDeviceUUID");
  v4 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v3)];
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000745D4(v5, v4);
  }

  v6 = +[UARPServiceUARPControllerManager instance];
  v7 = [NSNumber numberWithBool:1];
  [v6 addUARPTransportDict:v4 UARPAACPSupported:v7];
}

- (void)handleUARPDataOverAACPMsg:(id)a3
{
  length = 0;
  v3 = a3;
  v4 = xpc_dictionary_get_value(v3, "kUARPDeviceUUID");
  v5 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
  data = xpc_dictionary_get_data(v3, "kUARPData", &length);

  v7 = [NSData dataWithBytes:data length:length];
  v8 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074670(v8, v5, &length);
  }

  v9 = +[UARPServiceUARPControllerManager instance];
  [v9 relayAACPUARP:v5 uarpMsg:v7 error:0];
}

- (void)handleCATTBatteryServiceDeviceConnectedMsg:(id)a3
{
  xdict = a3;
  if (_os_feature_enabled_impl())
  {
    v3 = xpc_dictionary_get_value(xdict, "kPeerIdentifier");
    bytes = xpc_uuid_get_bytes(v3);
    if (bytes)
    {
      v5 = [[NSUUID alloc] initWithUUIDBytes:bytes];
      v6 = [NSUUID alloc];
      v7 = [v5 UUIDString];
      v8 = [v6 initWithUUIDString:v7];

      if (v8)
      {
        v9 = +[CattManager instance];
        [v9 batteryServiceDeviceConnected:v8];
      }
    }
  }

  _objc_release_x2();
}

- (void)handleHRMDeviceConnectedMsg:(id)a3
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HRM Classic device connected", v5, 2u);
  }

  v4 = +[CattManager instance];
  [v4 registerServices];
}

- (void)handleLeaEasyPairRequestMsg:(id)a3
{
  xdict = a3;
  v3 = xpc_dictionary_get_value(xdict, "kLeaDeviceTags");
  if (v3)
  {
    v4 = +[NSMutableArray array];
    if (xpc_array_get_count(v3))
    {
      v5 = 0;
      do
      {
        v6 = xpc_array_get_value(v3, v5);
        v7 = [NSString stringWithCString:xpc_string_get_string_ptr(v6) encoding:1];
        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < xpc_array_get_count(v3));
    }

    v8 = +[EndpointManager instance];
    v9 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, "kLeaDeviceAddress")];
    v10 = [NSString stringWithUTF8String:xpc_dictionary_get_string(xdict, "kLeaDeviceIdentifier")];
    [v8 requestLeaEasyPair:v9 deviceIdentifier:v10 deviceTags:v4];
  }
}

- (void)handleLeaEasyPairResponseMsg:(id)a3
{
  v3 = a3;
  v7 = +[EndpointManager instance];
  v4 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kLeaDevicePairState")];
  string = xpc_dictionary_get_string(v3, "kLeaDeviceAddress");

  v6 = [NSString stringWithUTF8String:string];
  [v7 respondToLeaEasyPair:v4 device:v6];
}

- (void)handleLeaStoreBondingInfoRequestMsg:(id)a3
{
  v3 = a3;
  v27 = 0;
  length = 0;
  v26 = 0;
  data = xpc_dictionary_get_data(v3, "kLeaDeviceRand", &length);
  v5 = xpc_dictionary_get_data(v3, "kLeaDeviceLtk", &v27);
  v6 = xpc_dictionary_get_data(v3, "kLeaDeviceIrk", &v26);
  v7 = +[NSArray array];
  v8 = v7;
  if (length)
  {
    for (i = 0; i < length; ++i)
    {
      v10 = [NSNumber numberWithUnsignedChar:data[i]];
      v11 = [v8 arrayByAddingObject:v10];

      v8 = v11;
    }
  }

  else
  {
    v11 = v7;
  }

  v12 = +[NSArray array];
  v13 = v12;
  if (v27)
  {
    for (j = 0; j < v27; ++j)
    {
      v15 = [NSNumber numberWithUnsignedChar:v5[j]];
      v16 = [v13 arrayByAddingObject:v15];

      v13 = v16;
    }
  }

  else
  {
    v16 = v12;
  }

  v17 = +[NSArray array];
  v18 = v17;
  if (v26)
  {
    for (k = 0; k < v26; ++k)
    {
      v20 = [NSNumber numberWithUnsignedChar:v6[k]];
      v21 = [v18 arrayByAddingObject:v20];

      v18 = v21;
    }
  }

  else
  {
    v21 = v17;
  }

  v22 = +[EndpointManager instance];
  v23 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kLeaDeviceEdiv")];
  v24 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kLeaDeviceName")];
  v25 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v3, "kLeaDeviceAddress")];
  [v22 requestLeaStoreBondingInfo:v23 rand:v11 ltk:v16 irk:v21 name:v24 device:v25];
}

- (void)handleLeaStoreBondingInfoResponseMsg:(id)a3
{
  v3 = a3;
  v7 = +[EndpointManager instance];
  v4 = [NSNumber numberWithUnsignedLongLong:xpc_dictionary_get_uint64(v3, "kLeaStoreBondingInfoResult")];
  string = xpc_dictionary_get_string(v3, "kLeaDeviceAddress");

  v6 = [NSString stringWithUTF8String:string];
  [v7 respondToLeaStoreBondingInfo:v4 device:v6];
}

+ (id)createNSDictionaryFromXpcDictionary:(id)a3
{
  v3 = a3;
  count = xpc_dictionary_get_count(v3);
  v5 = 8 * count;
  v6 = applier - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v6, 8 * count);
  bzero(v6, 8 * count);
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_10002C680;
  applier[3] = &unk_1000BDB30;
  applier[4] = v12;
  applier[5] = v6;
  applier[6] = v6;
  xpc_dictionary_apply(v3, applier);
  v7 = [[NSDictionary alloc] initWithObjects:v6 forKeys:v6 count:count];
  _Block_object_dispose(v12, 8);
  if (count)
  {
    v8 = 8 * count;
    do
    {

      v8 -= 8;
    }

    while (v8);
    v9 = v6 - 8;
    do
    {

      v5 -= 8;
    }

    while (v5);
  }

  return v7;
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = [v7 UTF8String];

  xpc_dictionary_set_string(v8, "kMsgId", v9);
  if (v6)
  {
    v10 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v8, "kMsgArgs", v10);
  }

  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEBUG))
  {
    sub_100074738();
  }

  v11 = [(BTLEXpcConnection *)self connection];
  xpc_connection_send_message(v11, v8);
}

- (void)authenticationDidSucceed:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"AuthenticationServiceCertClassUserInfoKey"];

    v13[0] = @"kPeerIdentifier";
    v9 = [v5 msgIdentifier];
    v13[1] = @"kCertClass";
    v14[0] = v9;
    v14[1] = v8;
    v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [(BTLEXpcConnection *)self sendMsg:@"AuthenticationDidSucceed" args:v10];
  }

  else
  {
    v11 = @"kPeerIdentifier";
    v8 = [v5 msgIdentifier];
    v12 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [(BTLEXpcConnection *)self sendMsg:@"AuthenticationDidSucceed" args:v9];
  }
}

- (void)authenticationDidFail:(id)a3
{
  v4 = [a3 object];
  v7 = @"kPeerIdentifier";
  v5 = [v4 msgIdentifier];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(BTLEXpcConnection *)self sendMsg:@"AuthenticationDidFail" args:v6];
}

- (void)peerIsUsingBuiltinService:(id)a3
{
  v4 = [a3 object];
  v7 = @"kPeerIdentifier";
  v5 = [v4 msgIdentifier];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(BTLEXpcConnection *)self sendMsg:@"PeerIsUsingBuiltinService" args:v6];
}

- (void)peerIsNotUsingBuiltinService:(id)a3
{
  v4 = [a3 object];
  v7 = @"kPeerIdentifier";
  v5 = [v4 msgIdentifier];
  v8 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  [(BTLEXpcConnection *)self sendMsg:@"PeerIsNotUsingBuiltinService" args:v6];
}

@end