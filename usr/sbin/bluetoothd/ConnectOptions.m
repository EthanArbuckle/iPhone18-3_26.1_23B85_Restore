@interface ConnectOptions
+ (id)alertOptionsWithConnectionAlerts:(BOOL)a3 disconnectionAlerts:(BOOL)a4 notificationAlerts:(BOOL)a5 delay:(int64_t)a6 bridgeTransport:(BOOL)a7;
- (ConnectOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ConnectOptions

+ (id)alertOptionsWithConnectionAlerts:(BOOL)a3 disconnectionAlerts:(BOOL)a4 notificationAlerts:(BOOL)a5 delay:(int64_t)a6 bridgeTransport:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(ConnectOptions);
  [(ConnectOptions *)v12 setConnectionAlerts:v11];
  [(ConnectOptions *)v12 setDisconnectionAlerts:v10];
  [(ConnectOptions *)v12 setNotificationAlerts:v9];
  [(ConnectOptions *)v12 setDelay:a6];
  [(ConnectOptions *)v12 setEnableTransportBridging:v7];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ConnectOptions allocWithZone:?]];
  [(ConnectOptions *)v4 setPHYOptions:[(ConnectOptions *)self PHYOptions]];
  [(ConnectOptions *)v4 setAncsRequired:[(ConnectOptions *)self ancsRequired]];
  v5 = [(ConnectOptions *)self clientBundleID];
  [(ConnectOptions *)v4 setClientBundleID:v5];

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
  v6 = [(ConnectOptions *)self clientProcessID];
  [(ConnectOptions *)v4 setClientProcessID:v6];

  [(ConnectOptions *)v4 setConnectionUseCase:[(ConnectOptions *)self connectionUseCase]];
  [(ConnectOptions *)v4 setMaxAllowedConnectionDelay:[(ConnectOptions *)self maxAllowedConnectionDelay]];
  [(ConnectOptions *)v4 setWaitForConnectionPoll:[(ConnectOptions *)self waitForConnectionPoll]];
  [(ConnectOptions *)v4 setMinRSSILevelForConnection:[(ConnectOptions *)self minRSSILevelForConnection]];
  [(ConnectOptions *)v4 setEnableScanCore:[(ConnectOptions *)self enableScanCore]];
  [(ConnectOptions *)v4 setIsLatencyCritical:[(ConnectOptions *)self isLatencyCritical]];
  [(ConnectOptions *)v4 setCtkdChosenTransport:[(ConnectOptions *)self ctkdChosenTransport]];
  v7 = [(ConnectOptions *)self temporaryLTK];
  [(ConnectOptions *)v4 setTemporaryLTK:v7];

  v8 = [(ConnectOptions *)self connectingClients];
  [(ConnectOptions *)v4 setConnectingClients:v8];

  [(ConnectOptions *)v4 setOpportunistic:[(ConnectOptions *)self opportunistic]];
  v9 = [(ConnectOptions *)self useCaseList];
  [(ConnectOptions *)v4 setUseCaseList:v9];

  [(ConnectOptions *)v4 setRequiresLowLatency:[(ConnectOptions *)self requiresLowLatency]];
  [(ConnectOptions *)v4 setTxPowerConnectInd:[(ConnectOptions *)self txPowerConnectInd]];
  [(ConnectOptions *)v4 setTxPowerAuxConnectReq:[(ConnectOptions *)self txPowerAuxConnectReq]];
  [(ConnectOptions *)v4 setMrcEnable:[(ConnectOptions *)self mrcEnable]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_connectionAlerts forKey:@"connectionAlerts"];
  [v4 encodeBool:self->_disconnectionAlerts forKey:@"disconnectionAlerts"];
  [v4 encodeBool:self->_notificationAlerts forKey:@"notificationAlerts"];
  [v4 encodeInteger:self->_delay forKey:@"delay"];
  [v4 encodeBool:self->_enableTransportBridging forKey:@"enableTransportBridging"];
}

- (ConnectOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ConnectOptions;
  v5 = [(ConnectOptions *)&v7 init];
  if (v5)
  {
    v5->_connectionAlerts = [v4 decodeBoolForKey:@"connectionAlerts"];
    v5->_disconnectionAlerts = [v4 decodeBoolForKey:@"disconnectionAlerts"];
    v5->_notificationAlerts = [v4 decodeBoolForKey:@"notificationAlerts"];
    v5->_delay = [v4 decodeIntegerForKey:@"delay"];
    v5->_enableTransportBridging = [v4 decodeBoolForKey:@"enableTransportBridging"];
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