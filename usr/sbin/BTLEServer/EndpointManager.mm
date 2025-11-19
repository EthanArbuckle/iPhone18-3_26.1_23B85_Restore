@interface EndpointManager
+ (id)instance;
- (EndpointManager)init;
- (id)endpointForPipe:(id)a3;
- (id)scalablePipeManagerStateString;
- (void)connectDevice:(id)a3 quickDisconnectEnabled:(id)a4;
- (void)disconnectDevice:(id)a3;
- (void)notifyPrimaryBudSide:(id)a3 device:(id)a4;
- (void)refreshPersistanceAssertion;
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
- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5;
- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4;
- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5;
- (void)scalablePipeManagerDidUpdateState:(id)a3;
- (void)storeDeviceSettings:(id)a3 inEarEnable:(id)a4 doubleTapMode:(id)a5 deviceSettings:(id)a6 deviceName:(id)a7 device:(id)a8;
- (void)unexpectedDisconnection:(id)a3;
@end

@implementation EndpointManager

+ (id)instance
{
  if (qword_1000DDA68 != -1)
  {
    sub_100071E8C();
  }

  v3 = qword_1000DDA60;

  return v3;
}

- (void)connectDevice:(id)a3 quickDisconnectEnabled:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EndpointManager *)self deviceManagementEndpoint];
  [v8 connectDevice:v7 quickDisconnectEnabled:v6];
}

- (void)disconnectDevice:(id)a3
{
  v4 = a3;
  v5 = [(EndpointManager *)self deviceManagementEndpoint];
  [v5 disconnectDevice:v4];
}

- (void)unexpectedDisconnection:(id)a3
{
  v4 = a3;
  v5 = [(EndpointManager *)self deviceManagementEndpoint];
  [v5 unexpectedDisconnection:v4];
}

- (void)requestVersionInfo:(id)a3 cloudAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EndpointManager *)self deviceManagementEndpoint];
  [v8 requestVersionInfo:v7 cloudAccount:v6];
}

- (void)respondVersionInfo:(id)a3 cloudAccount:(id)a4 easyPairingStatus:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(EndpointManager *)self deviceManagementEndpoint];
  [v11 respondVersionInfo:v10 cloudAccount:v9 easyPairingStatus:v8];
}

- (void)requestPairStateForDevice:(id)a3
{
  v4 = a3;
  v5 = [(EndpointManager *)self deviceManagementEndpoint];
  [v5 requestPairStateForDevice:v4];
}

- (void)respondToPairState:(id)a3 device:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EndpointManager *)self deviceManagementEndpoint];
  [v8 respondToPairState:v7 device:v6];
}

- (void)requestStoreLinkKey:(id)a3 name:(id)a4 device:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(EndpointManager *)self deviceManagementEndpoint];
  [v11 requestStoreLinkKey:v10 name:v9 device:v8];
}

- (void)requestStoreLinkKeyExtended:(id)a3 name:(id)a4 device:(id)a5 deviceServiceMask:(id)a6 classOfDevice:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(EndpointManager *)self deviceManagementEndpoint];
  [v17 requestStoreLinkKeyExtended:v16 name:v15 device:v14 deviceServiceMask:v13 classOfDevice:v12];
}

- (void)respondToStoreLinkKey:(id)a3 device:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EndpointManager *)self deviceManagementEndpoint];
  [v8 respondToStoreLinkKey:v7 device:v6];
}

- (void)storeDeviceSettings:(id)a3 inEarEnable:(id)a4 doubleTapMode:(id)a5 deviceSettings:(id)a6 deviceName:(id)a7 device:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(EndpointManager *)self deviceManagementEndpoint];
  [v20 storeDeviceSettings:v19 inEarEnable:v18 doubleTapMode:v17 deviceSettings:v16 deviceName:v15 device:v14];
}

- (void)notifyPrimaryBudSide:(id)a3 device:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EndpointManager *)self deviceManagementEndpoint];
  [v8 notifyPrimaryBudSide:v7 device:v6];
}

- (void)requestLeaEasyPair:(id)a3 deviceIdentifier:(id)a4 deviceTags:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(EndpointManager *)self deviceManagementEndpoint];
  [v11 requestLeaEasyPair:v10 deviceIdentifier:v9 deviceTags:v8];
}

- (void)respondToLeaEasyPair:(id)a3 device:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EndpointManager *)self deviceManagementEndpoint];
  [v8 respondToLeaEasyPair:v7 device:v6];
}

- (void)requestLeaStoreBondingInfo:(id)a3 rand:(id)a4 ltk:(id)a5 irk:(id)a6 name:(id)a7 device:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(EndpointManager *)self deviceManagementEndpoint];
  [v20 requestLeaStoreBondingInfo:v19 rand:v18 ltk:v17 irk:v16 name:v15 device:v14];
}

- (void)respondToLeaStoreBondingInfo:(id)a3 device:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EndpointManager *)self deviceManagementEndpoint];
  [v8 respondToLeaStoreBondingInfo:v7 device:v6];
}

- (EndpointManager)init
{
  v6.receiver = self;
  v6.super_class = EndpointManager;
  v2 = [(EndpointManager *)&v6 init];
  if (v2)
  {
    v3 = [[CBScalablePipeManager alloc] initWithDelegate:v2 queue:&_dispatch_main_q];
    pipeManager = v2->_pipeManager;
    v2->_pipeManager = v3;
  }

  return v2;
}

- (void)refreshPersistanceAssertion
{
  v3 = [(EndpointManager *)self pipeManager];
  if ([v3 state] == 4)
  {

LABEL_6:

    [(EndpointManager *)self setPersistanceAssertion:0];
    return;
  }

  v4 = [(EndpointManager *)self shouldPersist];

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = [(EndpointManager *)self persistanceAssertion];

  if (!v5)
  {
    v8 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    v6 = v8;
    [v8 UTF8String];
    v7 = os_transaction_create();
    [(EndpointManager *)self setPersistanceAssertion:v7];
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(EndpointManager *)self scalablePipeManagerStateString];
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ScalablePipeManager state is now %@", &v17, 0xCu);
  }

  [(EndpointManager *)self refreshPersistanceAssertion];
  v8 = [(EndpointManager *)self pipeManager];
  v9 = [v8 state];

  if (v9 == 5)
  {
    v10 = objc_alloc_init(DeviceManagementEndpoint);
    [(EndpointManager *)self setDeviceManagementEndpoint:v10];

    v11 = [(EndpointManager *)self pipeManager];
    v12 = [(EndpointManager *)self deviceManagementEndpoint];
    v13 = [v12 identifier];
    v14 = [(EndpointManager *)self deviceManagementEndpoint];
    v15 = [v14 type];
    v16 = [(EndpointManager *)self deviceManagementEndpoint];
    [v11 registerEndpoint:v13 type:v15 priority:{objc_msgSend(v16, "priority")}];
  }

  else
  {
    [(EndpointManager *)self setDeviceManagementEndpoint:0];
    v11 = [(EndpointManager *)self pipeManager];
    [v11 unregisterAllEndpoints];
  }
}

- (void)scalablePipeManager:(id)a3 didRegisterEndpoint:(id)a4 error:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = qword_1000DDBC8;
  if (v9)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071EA0(v8, v9, v10);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully registered endpoint %@", &v11, 0xCu);
  }
}

- (void)scalablePipeManager:(id)a3 didUnregisterEndpoint:(id)a4
{
  v4 = a4;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unregistered endpoint %@", &v6, 0xCu);
  }
}

- (void)scalablePipeManager:(id)a3 pipeDidConnect:(id)a4
{
  v5 = a4;
  v6 = [(EndpointManager *)self endpointForPipe:v5];
  v7 = v6;
  if (v6)
  {
    [v6 addPipe:v5];
  }

  else
  {
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071F28(v5, v8);
    }
  }
}

- (void)scalablePipeManager:(id)a3 pipeDidDisconnect:(id)a4 error:(id)a5
{
  v6 = a4;
  v7 = [(EndpointManager *)self endpointForPipe:v6];
  v8 = v7;
  if (v7)
  {
    [v7 removePipe:v6];
  }

  else
  {
    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071FA0(v6, v9);
    }
  }
}

- (id)endpointForPipe:(id)a3
{
  v4 = a3;
  v5 = [(EndpointManager *)self deviceManagementEndpoint];
  v6 = [v5 identifier];
  v7 = [v4 name];

  LODWORD(v4) = [v6 isEqualToString:v7];
  if (v4)
  {
    v8 = [(EndpointManager *)self deviceManagementEndpoint];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)scalablePipeManagerStateString
{
  v2 = [(EndpointManager *)self pipeManager];
  v3 = [v2 state];

  if ((v3 - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1000BD4F8[(v3 - 1)];
  }
}

@end