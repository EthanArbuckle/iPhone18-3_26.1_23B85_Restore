@interface EndpointManager
+ (id)instance;
- (EndpointManager)init;
- (id)endpointForPipe:(id)pipe;
- (id)scalablePipeManagerStateString;
- (void)connectDevice:(id)device quickDisconnectEnabled:(id)enabled;
- (void)disconnectDevice:(id)device;
- (void)notifyPrimaryBudSide:(id)side device:(id)device;
- (void)refreshPersistanceAssertion;
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
- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error;
- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint;
- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect;
- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error;
- (void)scalablePipeManagerDidUpdateState:(id)state;
- (void)storeDeviceSettings:(id)settings inEarEnable:(id)enable doubleTapMode:(id)mode deviceSettings:(id)deviceSettings deviceName:(id)name device:(id)device;
- (void)unexpectedDisconnection:(id)disconnection;
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

- (void)connectDevice:(id)device quickDisconnectEnabled:(id)enabled
{
  enabledCopy = enabled;
  deviceCopy = device;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint connectDevice:deviceCopy quickDisconnectEnabled:enabledCopy];
}

- (void)disconnectDevice:(id)device
{
  deviceCopy = device;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint disconnectDevice:deviceCopy];
}

- (void)unexpectedDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint unexpectedDisconnection:disconnectionCopy];
}

- (void)requestVersionInfo:(id)info cloudAccount:(id)account
{
  accountCopy = account;
  infoCopy = info;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint requestVersionInfo:infoCopy cloudAccount:accountCopy];
}

- (void)respondVersionInfo:(id)info cloudAccount:(id)account easyPairingStatus:(id)status
{
  statusCopy = status;
  accountCopy = account;
  infoCopy = info;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint respondVersionInfo:infoCopy cloudAccount:accountCopy easyPairingStatus:statusCopy];
}

- (void)requestPairStateForDevice:(id)device
{
  deviceCopy = device;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint requestPairStateForDevice:deviceCopy];
}

- (void)respondToPairState:(id)state device:(id)device
{
  deviceCopy = device;
  stateCopy = state;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint respondToPairState:stateCopy device:deviceCopy];
}

- (void)requestStoreLinkKey:(id)key name:(id)name device:(id)device
{
  deviceCopy = device;
  nameCopy = name;
  keyCopy = key;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint requestStoreLinkKey:keyCopy name:nameCopy device:deviceCopy];
}

- (void)requestStoreLinkKeyExtended:(id)extended name:(id)name device:(id)device deviceServiceMask:(id)mask classOfDevice:(id)ofDevice
{
  ofDeviceCopy = ofDevice;
  maskCopy = mask;
  deviceCopy = device;
  nameCopy = name;
  extendedCopy = extended;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint requestStoreLinkKeyExtended:extendedCopy name:nameCopy device:deviceCopy deviceServiceMask:maskCopy classOfDevice:ofDeviceCopy];
}

- (void)respondToStoreLinkKey:(id)key device:(id)device
{
  deviceCopy = device;
  keyCopy = key;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint respondToStoreLinkKey:keyCopy device:deviceCopy];
}

- (void)storeDeviceSettings:(id)settings inEarEnable:(id)enable doubleTapMode:(id)mode deviceSettings:(id)deviceSettings deviceName:(id)name device:(id)device
{
  deviceCopy = device;
  nameCopy = name;
  deviceSettingsCopy = deviceSettings;
  modeCopy = mode;
  enableCopy = enable;
  settingsCopy = settings;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint storeDeviceSettings:settingsCopy inEarEnable:enableCopy doubleTapMode:modeCopy deviceSettings:deviceSettingsCopy deviceName:nameCopy device:deviceCopy];
}

- (void)notifyPrimaryBudSide:(id)side device:(id)device
{
  deviceCopy = device;
  sideCopy = side;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint notifyPrimaryBudSide:sideCopy device:deviceCopy];
}

- (void)requestLeaEasyPair:(id)pair deviceIdentifier:(id)identifier deviceTags:(id)tags
{
  tagsCopy = tags;
  identifierCopy = identifier;
  pairCopy = pair;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint requestLeaEasyPair:pairCopy deviceIdentifier:identifierCopy deviceTags:tagsCopy];
}

- (void)respondToLeaEasyPair:(id)pair device:(id)device
{
  deviceCopy = device;
  pairCopy = pair;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint respondToLeaEasyPair:pairCopy device:deviceCopy];
}

- (void)requestLeaStoreBondingInfo:(id)info rand:(id)rand ltk:(id)ltk irk:(id)irk name:(id)name device:(id)device
{
  deviceCopy = device;
  nameCopy = name;
  irkCopy = irk;
  ltkCopy = ltk;
  randCopy = rand;
  infoCopy = info;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint requestLeaStoreBondingInfo:infoCopy rand:randCopy ltk:ltkCopy irk:irkCopy name:nameCopy device:deviceCopy];
}

- (void)respondToLeaStoreBondingInfo:(id)info device:(id)device
{
  deviceCopy = device;
  infoCopy = info;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  [deviceManagementEndpoint respondToLeaStoreBondingInfo:infoCopy device:deviceCopy];
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
  pipeManager = [(EndpointManager *)self pipeManager];
  if ([pipeManager state] == 4)
  {

LABEL_6:

    [(EndpointManager *)self setPersistanceAssertion:0];
    return;
  }

  shouldPersist = [(EndpointManager *)self shouldPersist];

  if (!shouldPersist)
  {
    goto LABEL_6;
  }

  persistanceAssertion = [(EndpointManager *)self persistanceAssertion];

  if (!persistanceAssertion)
  {
    v8 = [NSString stringWithFormat:@"com.apple.%@", objc_opt_class()];
    v6 = v8;
    [v8 UTF8String];
    v7 = os_transaction_create();
    [(EndpointManager *)self setPersistanceAssertion:v7];
  }
}

- (void)scalablePipeManagerDidUpdateState:(id)state
{
  stateCopy = state;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    scalablePipeManagerStateString = [(EndpointManager *)self scalablePipeManagerStateString];
    v17 = 138412290;
    v18 = scalablePipeManagerStateString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ScalablePipeManager state is now %@", &v17, 0xCu);
  }

  [(EndpointManager *)self refreshPersistanceAssertion];
  pipeManager = [(EndpointManager *)self pipeManager];
  state = [pipeManager state];

  if (state == 5)
  {
    v10 = objc_alloc_init(DeviceManagementEndpoint);
    [(EndpointManager *)self setDeviceManagementEndpoint:v10];

    pipeManager2 = [(EndpointManager *)self pipeManager];
    deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
    identifier = [deviceManagementEndpoint identifier];
    deviceManagementEndpoint2 = [(EndpointManager *)self deviceManagementEndpoint];
    type = [deviceManagementEndpoint2 type];
    deviceManagementEndpoint3 = [(EndpointManager *)self deviceManagementEndpoint];
    [pipeManager2 registerEndpoint:identifier type:type priority:{objc_msgSend(deviceManagementEndpoint3, "priority")}];
  }

  else
  {
    [(EndpointManager *)self setDeviceManagementEndpoint:0];
    pipeManager2 = [(EndpointManager *)self pipeManager];
    [pipeManager2 unregisterAllEndpoints];
  }
}

- (void)scalablePipeManager:(id)manager didRegisterEndpoint:(id)endpoint error:(id)error
{
  managerCopy = manager;
  endpointCopy = endpoint;
  errorCopy = error;
  v10 = qword_1000DDBC8;
  if (errorCopy)
  {
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071EA0(endpointCopy, errorCopy, v10);
    }
  }

  else if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Successfully registered endpoint %@", &v11, 0xCu);
  }
}

- (void)scalablePipeManager:(id)manager didUnregisterEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unregistered endpoint %@", &v6, 0xCu);
  }
}

- (void)scalablePipeManager:(id)manager pipeDidConnect:(id)connect
{
  connectCopy = connect;
  v6 = [(EndpointManager *)self endpointForPipe:connectCopy];
  v7 = v6;
  if (v6)
  {
    [v6 addPipe:connectCopy];
  }

  else
  {
    v8 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071F28(connectCopy, v8);
    }
  }
}

- (void)scalablePipeManager:(id)manager pipeDidDisconnect:(id)disconnect error:(id)error
{
  disconnectCopy = disconnect;
  v7 = [(EndpointManager *)self endpointForPipe:disconnectCopy];
  v8 = v7;
  if (v7)
  {
    [v7 removePipe:disconnectCopy];
  }

  else
  {
    v9 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      sub_100071FA0(disconnectCopy, v9);
    }
  }
}

- (id)endpointForPipe:(id)pipe
{
  pipeCopy = pipe;
  deviceManagementEndpoint = [(EndpointManager *)self deviceManagementEndpoint];
  identifier = [deviceManagementEndpoint identifier];
  name = [pipeCopy name];

  LODWORD(pipeCopy) = [identifier isEqualToString:name];
  if (pipeCopy)
  {
    deviceManagementEndpoint2 = [(EndpointManager *)self deviceManagementEndpoint];
  }

  else
  {
    deviceManagementEndpoint2 = 0;
  }

  return deviceManagementEndpoint2;
}

- (id)scalablePipeManagerStateString
{
  pipeManager = [(EndpointManager *)self pipeManager];
  state = [pipeManager state];

  if ((state - 1) > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1000BD4F8[(state - 1)];
  }
}

@end