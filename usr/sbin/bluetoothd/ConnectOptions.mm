@interface ConnectOptions
+ (id)alertOptionsWithConnectionAlerts:(BOOL)alerts disconnectionAlerts:(BOOL)disconnectionAlerts notificationAlerts:(BOOL)notificationAlerts delay:(int64_t)delay bridgeTransport:(BOOL)transport;
- (ConnectOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ConnectOptions

+ (id)alertOptionsWithConnectionAlerts:(BOOL)alerts disconnectionAlerts:(BOOL)disconnectionAlerts notificationAlerts:(BOOL)notificationAlerts delay:(int64_t)delay bridgeTransport:(BOOL)transport
{
  transportCopy = transport;
  notificationAlertsCopy = notificationAlerts;
  disconnectionAlertsCopy = disconnectionAlerts;
  alertsCopy = alerts;
  v12 = objc_alloc_init(ConnectOptions);
  [(ConnectOptions *)v12 setConnectionAlerts:alertsCopy];
  [(ConnectOptions *)v12 setDisconnectionAlerts:disconnectionAlertsCopy];
  [(ConnectOptions *)v12 setNotificationAlerts:notificationAlertsCopy];
  [(ConnectOptions *)v12 setDelay:delay];
  [(ConnectOptions *)v12 setEnableTransportBridging:transportCopy];
  [(ConnectOptions *)v12 setDisableLeGATT:0];
  [(ConnectOptions *)v12 setCtkdChosenTransport:0];
  v13 = +[NSData data];
  [(ConnectOptions *)v12 setTemporaryLTK:v13];

  v14 = +[NSArray array];
  [(ConnectOptions *)v12 setConnectingClients:v14];

  [(ConnectOptions *)v12 setOpportunistic:0];
  [(ConnectOptions *)v12 setEnableAutoReconnect:0];
  [(ConnectOptions *)v12 setRequiresLowLatency:0];

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ConnectOptions allocWithZone:?]];
  [(ConnectOptions *)v4 setPHYOptions:[(ConnectOptions *)self PHYOptions]];
  [(ConnectOptions *)v4 setAncsRequired:[(ConnectOptions *)self ancsRequired]];
  clientBundleID = [(ConnectOptions *)self clientBundleID];
  [(ConnectOptions *)v4 setClientBundleID:clientBundleID];

  [(ConnectOptions *)v4 setConnectionAlerts:[(ConnectOptions *)self connectionAlerts]];
  [(ConnectOptions *)v4 setDisconnectionAlerts:[(ConnectOptions *)self disconnectionAlerts]];
  [(ConnectOptions *)v4 setNotificationAlerts:[(ConnectOptions *)self notificationAlerts]];
  [(ConnectOptions *)v4 setDelay:[(ConnectOptions *)self delay]];
  [(ConnectOptions *)v4 setWantsObjectDiscoveryData:[(ConnectOptions *)self wantsObjectDiscoveryData]];
  [(ConnectOptions *)v4 setEnableTransportBridging:[(ConnectOptions *)self enableTransportBridging]];
  [(ConnectOptions *)v4 setDisableLeGATT:[(ConnectOptions *)self disableLeGATT]];
  [(ConnectOptions *)v4 setHideFromBTSettings:[(ConnectOptions *)self hideFromBTSettings]];
  [(ConnectOptions *)v4 setInitPHYs:[(ConnectOptions *)self initPHYs]];
  [(ConnectOptions *)v4 setEnableControllerBTClockUpdates:[(ConnectOptions *)self enableControllerBTClockUpdates]];
  clientProcessID = [(ConnectOptions *)self clientProcessID];
  [(ConnectOptions *)v4 setClientProcessID:clientProcessID];

  [(ConnectOptions *)v4 setConnectionUseCase:[(ConnectOptions *)self connectionUseCase]];
  [(ConnectOptions *)v4 setMaxAllowedConnectionDelay:[(ConnectOptions *)self maxAllowedConnectionDelay]];
  [(ConnectOptions *)v4 setWaitForConnectionPoll:[(ConnectOptions *)self waitForConnectionPoll]];
  [(ConnectOptions *)v4 setMinRSSILevelForConnection:[(ConnectOptions *)self minRSSILevelForConnection]];
  [(ConnectOptions *)v4 setEnableScanCore:[(ConnectOptions *)self enableScanCore]];
  [(ConnectOptions *)v4 setIsLatencyCritical:[(ConnectOptions *)self isLatencyCritical]];
  [(ConnectOptions *)v4 setCtkdChosenTransport:[(ConnectOptions *)self ctkdChosenTransport]];
  temporaryLTK = [(ConnectOptions *)self temporaryLTK];
  [(ConnectOptions *)v4 setTemporaryLTK:temporaryLTK];

  connectingClients = [(ConnectOptions *)self connectingClients];
  [(ConnectOptions *)v4 setConnectingClients:connectingClients];

  [(ConnectOptions *)v4 setOpportunistic:[(ConnectOptions *)self opportunistic]];
  useCaseList = [(ConnectOptions *)self useCaseList];
  [(ConnectOptions *)v4 setUseCaseList:useCaseList];

  [(ConnectOptions *)v4 setRequiresLowLatency:[(ConnectOptions *)self requiresLowLatency]];
  [(ConnectOptions *)v4 setTxPowerConnectInd:[(ConnectOptions *)self txPowerConnectInd]];
  [(ConnectOptions *)v4 setTxPowerAuxConnectReq:[(ConnectOptions *)self txPowerAuxConnectReq]];
  [(ConnectOptions *)v4 setMrcEnable:[(ConnectOptions *)self mrcEnable]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_connectionAlerts forKey:@"connectionAlerts"];
  [coderCopy encodeBool:self->_disconnectionAlerts forKey:@"disconnectionAlerts"];
  [coderCopy encodeBool:self->_notificationAlerts forKey:@"notificationAlerts"];
  [coderCopy encodeInteger:self->_delay forKey:@"delay"];
  [coderCopy encodeBool:self->_enableTransportBridging forKey:@"enableTransportBridging"];
}

- (ConnectOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ConnectOptions;
  v5 = [(ConnectOptions *)&v7 init];
  if (v5)
  {
    v5->_connectionAlerts = [coderCopy decodeBoolForKey:@"connectionAlerts"];
    v5->_disconnectionAlerts = [coderCopy decodeBoolForKey:@"disconnectionAlerts"];
    v5->_notificationAlerts = [coderCopy decodeBoolForKey:@"notificationAlerts"];
    v5->_delay = [coderCopy decodeIntegerForKey:@"delay"];
    v5->_enableTransportBridging = [coderCopy decodeBoolForKey:@"enableTransportBridging"];
  }

  return v5;
}

- (id)description
{
  v3 = sub_10000E92C();
  v4 = (*(*v3 + 8))(v3);
  connectionAlerts = self->_connectionAlerts;
  disconnectionAlerts = self->_disconnectionAlerts;
  notificationAlerts = self->_notificationAlerts;
  delay = self->_delay;
  wantsObjectDiscoveryData = self->_wantsObjectDiscoveryData;
  enableTransportBridging = self->_enableTransportBridging;
  disableLeGATT = self->_disableLeGATT;
  ancsRequired = self->_ancsRequired;
  if (v4)
  {
    hideFromBTSettings = self->_hideFromBTSettings;
    initPHYs = self->_initPHYs;
    PHYOptions = self->_PHYOptions;
    enableControllerBTClockUpdates = self->_enableControllerBTClockUpdates;
    connectionUseCase = self->_connectionUseCase;
    waitForConnectionPoll = self->_waitForConnectionPoll;
    minRSSILevelForConnection = self->_minRSSILevelForConnection;
    ctkdChosenTransport = self->_ctkdChosenTransport;
    connectingClients = self->_connectingClients;
    opportunistic = self->_opportunistic;
    if (self->_requiresLowLatency)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    [NSString stringWithFormat:@"(connect:%d disconnect:%d notify:%d delay:%ld wantsObjectDiscoverData:%d transportBridging:%d disableLeGATT:%d ancsRequired:%d hideFromBTSettings:%d initPHYs:%ld PHYoptions:%ld enableControllerBTClockUpdates:%d connectionUseCase:%ld _minRSSILevelForConnection:%ld _waitForConnectionPoll:%d ctkdChosenTransport:%lu) connectingBundles:%@ opportunistic:%d requiresLowLatency:%@", connectionAlerts, disconnectionAlerts, notificationAlerts, delay, wantsObjectDiscoveryData, enableTransportBridging, disableLeGATT, ancsRequired, hideFromBTSettings, initPHYs, PHYOptions, enableControllerBTClockUpdates, connectionUseCase, minRSSILevelForConnection, waitForConnectionPoll, ctkdChosenTransport, connectingClients, opportunistic, v23];
  }

  else
  {
    [NSString stringWithFormat:@"(connect:%d disconnect:%d notify:%d delay:%ld wantsObjectDiscoverData:%d transportBridging:%d disableLeGATT:%d ancsRequired:%d)", connectionAlerts, disconnectionAlerts, notificationAlerts, delay, wantsObjectDiscoveryData, enableTransportBridging, self->_disableLeGATT, ancsRequired, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36];
  }
  v24 = ;

  return v24;
}

@end