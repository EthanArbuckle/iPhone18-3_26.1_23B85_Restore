@interface CRCarKitServiceAgent
+ (id)_pairingIdentifierForMessagingVehicle:(id)vehicle;
+ (id)_pairingIdentifierForPromptFlow:(id)flow;
+ (unint64_t)_declineTypeForOOBPairingMessagingVehicle:(id)vehicle;
+ (unint64_t)_pairingDeclineCountForIdentifier:(id)identifier;
+ (void)_incrementPairingDeclineCountForIdentifier:(id)identifier;
- (BOOL)_currentlyConnectedVehicleSupportsMixableAudio;
- (BOOL)_isRestricted:(id *)restricted;
- (BOOL)_requestWiFiCredentialsIfNecessaryForApprovedMessagingVehicle:(id)vehicle;
- (BOOL)_sendDeviceIdentifiersForMessagingVehicle:(id)vehicle pairingStatus:(unint64_t)status;
- (BOOL)_shouldPromptEnhancedIntegrationForStoredVehicle:(id)vehicle messagingVehicle:(id)messagingVehicle;
- (BOOL)attemptConnectionWithVehicles:(id)vehicles;
- (BOOL)enhancedIntegrationSupportedForPairingPromptFlow:(id)flow;
- (BOOL)hasExistingBluetoothPairingForPairingPromptFlow:(id)flow;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)needsBluetoothTurnedOnForPairingPromptFlow:(id)flow;
- (BOOL)needsWiFiTurnedOnForPairingPromptFlow:(id)flow;
- (BOOL)postInCarNotificationForVehicle:(id)vehicle;
- (BOOL)postOutOfCarNotificationForVehicle:(id)vehicle;
- (BOOL)removeVehicle:(id)vehicle;
- (BOOL)startSessionRequestSupportedForPairingPromptFlow:(id)flow;
- (BOOL)supportsThemeAssetsForPairingPromptFlow:(id)flow;
- (CRCarKitMonitoringServiceAgent)monitoringService;
- (CRCarKitServiceAgent)initWithVehicleStore:(id)store sessionStatus:(id)status bluetoothManager:(id)manager preferences:(id)preferences connectionTimeServiceAgent:(id)agent;
- (CRHeadUnitPairingPresenterDelegate)headUnitPairingDelegate;
- (CRSetupPromptDirectorAgent)setupPromptDirector;
- (CRVehicleAssetManaging)vehicleAssetManager;
- (id)_presentedReconnectionEnableWiFiAlertForVehicle:(id)vehicle;
- (id)_wirelessPairingAnalyticsDescriptionForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle;
- (id)accessoryRadarDescription:(id)description;
- (id)assetProgressForPairingPromptFlow:(id)flow;
- (id)carKeyInfoForPairingPromptFlow:(id)flow;
- (id)pairedVehiclesConnectedOnBluetooth;
- (id)saveVehicle:(id)vehicle;
- (id)storedVehicleForSession:(id)session;
- (id)vehicleMatchingMessagingVehicle:(id)vehicle inVehicles:(id)vehicles;
- (unint64_t)outOfBandPairingDeclineCountForPairingPromptFlow:(id)flow;
- (void)_beginWiredPairingWithMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle;
- (void)_dismissApprovalAlertForMessagingVehicle:(id)vehicle;
- (void)_dismissApprovalAlerts;
- (void)_dismissEnhancedIntegrationAlertForMessagingVehicle:(id)vehicle;
- (void)_dismissEnhancedIntegrationAlerts;
- (void)_dismissPairingAlertForMessagingVehicle:(id)vehicle;
- (void)_dismissPairingAlerts;
- (void)_dismissPairingPromptFlow:(id)flow;
- (void)_dismissReconnectionEnableWiFiAlertExceptForVehicle:(id)vehicle;
- (void)_dismissReconnectionEnableWiFiAlertForVehicle:(id)vehicle;
- (void)_enhancedIntegrationUpdatedForMessagingVehicle:(id)vehicle status:(unint64_t)status;
- (void)_findWirelessPairedVehicleForAccessoryConnectionIdentifier:(unint64_t)identifier result:(id)result;
- (void)_findWirelessPairedVehicleForMessagingVehicle:(id)vehicle result:(id)result;
- (void)_handleCarPlayAllowedDidChange;
- (void)_mainQueue_startSessionForHost:(id)host reply:(id)reply;
- (void)_mainQueue_updateClusterAssetIdentifier:(id)identifier assetVersion:(id)version sdkVersion:(id)sdkVersion forVehicle:(id)vehicle;
- (void)_presentApprovalIfNecessaryForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle;
- (void)_presentApprovalUsingAlertsForMessagingVehicle:(id)vehicle;
- (void)_presentCarPlaySetupForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle;
- (void)_presentEnhancedIntegrationAlertForMessagingVehicle:(id)vehicle;
- (void)_presentReconnectionEnableWiFiAlertForVehicle:(id)vehicle;
- (void)_presentWiredBluetoothPairingAlertForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle;
- (void)_saveWiFiCredentials:(id)credentials forAccessoryConnectionIdentifier:(unint64_t)identifier result:(id)result;
- (void)_saveWiFiCredentials:(id)credentials fromMessagingVehicle:(id)vehicle forWirelessPairedVehicle:(id)pairedVehicle result:(id)result;
- (void)_sendCarPlayAvailabilityForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle;
- (void)_setVehiclePairingStatus:(unint64_t)status forPromptFlow:(id)flow;
- (void)_setupStartSessionTimerIfNeeded;
- (void)allowsConnectionsForCertificateSerial:(id)serial reply:(id)reply;
- (void)allowsConnectionsForWiFiUUID:(id)d reply:(id)reply;
- (void)bluetoothManager:(id)manager didChangePowerState:(BOOL)state;
- (void)bluetoothManager:(id)manager requestsConfirmationForDeviceAddress:(id)address name:(id)name numericCode:(id)code responseHandler:(id)handler;
- (void)collectVehicleLogs:(id)logs;
- (void)dealloc;
- (void)deviceSupportedCarPlayFeaturesWithReply:(id)reply;
- (void)didCompletePairingPromptFlow:(id)flow;
- (void)didFailToHeadUnitPairWithBluetoothAddress:(id)address error:(id)error;
- (void)didHeadUnitPairWithBluetoothAddress:(id)address;
- (void)disablesCarPlayFeatures:(unint64_t)features forVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)enumerateStoredVehiclesForMessagingVehicles:(id)vehicles usingBlock:(id)block;
- (void)fetchAllVehiclesWithReply:(id)reply;
- (void)fetchAppClipIdentifiersForPairingPromptFlow:(id)flow completion:(id)completion;
- (void)fetchInstrumentClusterURLsWithReply:(id)reply;
- (void)fetchOverrideCanvasSizeWithCertificateSerialNumber:(id)number displays:(id)displays reply:(id)reply;
- (void)fetchScaledDisplaysWithCertificateSerialNumber:(id)number displays:(id)displays reply:(id)reply;
- (void)fetchScaledDisplaysWithReply:(id)reply reply:(id)a4;
- (void)fetchViewAreasForVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)handleAnyMessagingConnectionsToVehicles;
- (void)handleBluetoothClassicPairingCompletedForDeviceAddress:(id)address name:(id)name preApproved:(BOOL)approved reply:(id)reply;
- (void)handleCarPlayAllowedDidChange;
- (void)handleCarPlayConnectionRequestForConnectionID:(unsigned int)d startSessionProperties:(id)properties reply:(id)reply;
- (void)handleCarPlayDiagnosticsWithDeviceScreenshotURL:(id)l carScreenshotURL:(id)rL attachmentURLs:(id)ls activeBundleIdentifier:(id)identifier reply:(id)reply;
- (void)handleCarPlayRestrictionChangedWithReply:(id)reply;
- (void)handleDidConnectBluetoothAddress:(id)address reply:(id)reply;
- (void)handleDidConnectMessagingToVehicles:(id)vehicles;
- (void)handleDidDisconnectBluetoothAddress:(id)address reply:(id)reply;
- (void)handleVehicleStoreAvailabiltyDidChange:(id)change;
- (void)hasVehiclesWithReply:(id)reply;
- (void)incrementOutOfBandPairingDeclineCountForPairingPromptFlow:(id)flow;
- (void)isBluetoothInCarWithReply:(id)reply;
- (void)isCarPlayAllowedWithReply:(id)reply;
- (void)isEnhancedIntegrationEnabledWithCertificateSerial:(id)serial reply:(id)reply;
- (void)isPairedWithCertificateSerial:(id)serial reply:(id)reply;
- (void)isPreflightThemeAssetEnabledWithReply:(id)reply;
- (void)notifyFoundNoMatchingAssetForVehicleIdentifier:(id)identifier nextRequiredCompatibilityVersion:(id)version requestDescription:(id)description;
- (void)pairingPromptFlow:(id)flow didCancelWithRequiredStepsRemaining:(BOOL)remaining;
- (void)pairingPromptFlow:(id)flow receivedAllowWhileLockedResponse:(BOOL)response;
- (void)pairingPromptFlow:(id)flow receivedConnectCarPlayResponse:(BOOL)response turnOnWiFi:(BOOL)fi;
- (void)pairingPromptFlow:(id)flow receivedEnhancedIntegrationResponse:(BOOL)response;
- (void)pairingPromptFlow:(id)flow receivedUseWirelessResponse:(BOOL)response turnOnBluetooth:(BOOL)bluetooth turnOnWiFi:(BOOL)fi;
- (void)pairingPromptFlow:(id)flow wantsToPerformPresentation:(id)presentation;
- (void)postBannerToPhone:(id)phone notificationMessage:(id)message reply:(id)reply;
- (void)postIconBannerToPhone:(id)phone notificationMessage:(id)message defaultActionURL:(id)l;
- (void)removeVehicle:(id)vehicle reply:(id)reply;
- (void)saveVehicle:(id)vehicle reply:(id)reply;
- (void)saveViewAreas:(id)areas forVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)saveWiFiCredentials:(id)credentials forAccessoryConnectionIdentifier:(unint64_t)identifier reply:(id)reply;
- (void)serviceConnector:(id)connector completedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name;
- (void)serviceConnector:(id)connector didConnectUnsupportedAccessoryWithBluetoothAddress:(id)address;
- (void)serviceConnector:(id)connector didConnectVehicle:(id)vehicle;
- (void)serviceConnector:(id)connector didDisconnectVehicle:(id)vehicle;
- (void)serviceConnector:(id)connector didUpdateVehicle:(id)vehicle;
- (void)serviceConnector:(id)connector failedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name error:(id)error;
- (void)serviceConnector:(id)connector receivedStartSessionMessage:(id)message fromVehicle:(id)vehicle;
- (void)serviceConnector:(id)connector requestsPairingConfirmationForBluetoothLEIdentifier:(id)identifier name:(id)name numericCode:(id)code responseHandler:(id)handler;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setCarPlayFeatures:(unint64_t)features disabled:(BOOL)disabled forVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)setCarPlaySimulatorActive:(BOOL)active;
- (void)setPreflightThemeAssetEnabled:(BOOL)enabled reply:(id)reply;
- (void)setRemoteDeviceConnected:(BOOL)connected;
- (void)setVideoDiagnosticsEnabled:(BOOL)enabled forVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)setVideoSubtitleSettings:(id)settings forVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)startBluetoothClassicPairingForDeviceAddress:(id)address deviceName:(id)name numericCode:(id)code showBluetoothOnlyOption:(BOOL)option reply:(id)reply;
- (void)startBluetoothLEPairingForIdentifier:(id)identifier deviceName:(id)name reply:(id)reply;
- (void)stopSessionWithSessionIdentifier:(id)identifier reason:(unint64_t)reason reply:(id)reply;
- (void)supportedAirPlayFeaturesForVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)supportedCarPlayFeaturesForCertificateSerial:(id)serial reply:(id)reply;
- (void)updateIncompletePairingsMatchingMessagingVehicles:(id)vehicles;
- (void)updateStoredVehicle:(id)vehicle usingMessagingVehicle:(id)messagingVehicle;
- (void)vehicleIdentifierForCertificateSerial:(id)serial reply:(id)reply;
- (void)videoAnalyticsForVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)videoDiagnosticsEnabledForVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)videoLicensesTextForVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)videoSubtitleSettingsForVehicleIdentifier:(id)identifier reply:(id)reply;
- (void)wantsCarPlayControlAdvertisingForUSBWithReply:(id)reply;
- (void)wantsCarPlayControlAdvertisingForWiFiUUID:(id)d reply:(id)reply;
@end

@implementation CRCarKitServiceAgent

- (CRCarKitServiceAgent)initWithVehicleStore:(id)store sessionStatus:(id)status bluetoothManager:(id)manager preferences:(id)preferences connectionTimeServiceAgent:(id)agent
{
  storeCopy = store;
  statusCopy = status;
  managerCopy = manager;
  preferencesCopy = preferences;
  agentCopy = agent;
  v44.receiver = self;
  v44.super_class = CRCarKitServiceAgent;
  v17 = [(CRCarKitServiceAgent *)&v44 init];
  v18 = v17;
  if (v17)
  {
    [(CRCarKitServiceAgent *)v17 setVehicleStore:storeCopy];
    [(CRCarKitServiceAgent *)v18 setSessionStatus:statusCopy];
    [statusCopy addSessionObserver:v18];
    v19 = [[CARMessagingServiceConnector alloc] initWithVehicleStore:storeCopy];
    [(CRCarKitServiceAgent *)v18 setMessagingConnector:v19];
    [(CARMessagingServiceConnector *)v19 setDelegate:v18];
    v20 = [[CRWirelessSessionAssertionManager alloc] initWithSessionStatus:statusCopy connectionTimeServiceAgent:agentCopy messagingConnector:v19];
    [(CRWirelessSessionAssertionManager *)v20 setStoredVehicleProvider:v18];
    [(CRCarKitServiceAgent *)v18 setAssertionManager:v20];
    v21 = +[CARAnalytics sharedInstance];
    [v21 setConnectionTimeServiceAgent:agentCopy];

    [(CRCarKitServiceAgent *)v18 setBluetoothManager:managerCopy];
    bluetoothManager = [(CRCarKitServiceAgent *)v18 bluetoothManager];
    [bluetoothManager addObserver:v18];

    bluetoothManager2 = [(CRCarKitServiceAgent *)v18 bluetoothManager];
    [bluetoothManager2 setPairingDelegate:v18];

    v24 = objc_alloc_init(CARSessionRequestClient);
    [(CRCarKitServiceAgent *)v18 setSessionRequestClient:v24];

    [(CRCarKitServiceAgent *)v18 setPreferencesManager:preferencesCopy];
    preferencesManager = [(CRCarKitServiceAgent *)v18 preferencesManager];
    [preferencesManager setPreferencesDelegate:v18];

    v26 = [[CRFeaturesAvailabilityAgent alloc] initWithPreferencesManager:preferencesCopy vehicleStore:storeCopy];
    [(CRCarKitServiceAgent *)v18 setFeaturesAvailabilityAgent:v26];

    v27 = objc_alloc_init(CRWiFiCarManager);
    [(CRCarKitServiceAgent *)v18 setWifiManager:v27];

    v28 = +[NSMutableArray array];
    [(CRCarKitServiceAgent *)v18 setOutstandingApprovalAlerts:v28];

    v29 = +[NSMutableArray array];
    [(CRCarKitServiceAgent *)v18 setOutstandingPairingAlerts:v29];

    v30 = +[NSMutableArray array];
    [(CRCarKitServiceAgent *)v18 setOutstandingEnableWiFiAlerts:v30];

    v31 = +[NSMutableArray array];
    [(CRCarKitServiceAgent *)v18 setOutstandingEnhancedIntegrationAlerts:v31];

    v32 = objc_alloc_init(NSMutableDictionary);
    [(CRCarKitServiceAgent *)v18 setServiceCountDuringAlertForBluetoothAddress:v32];

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v18 selector:"handleVehicleStoreAvailabiltyDidChange:" name:CRVehicleStoreAvailabilityDidChangeNotification object:0];

    vehicleStore = [(CRCarKitServiceAgent *)v18 vehicleStore];
    allStoredVehicles = [vehicleStore allStoredVehicles];

    v36 = [[CRLoggingChannelManager alloc] initWithSessionStatus:statusCopy];
    loggingChannelManager = v18->_loggingChannelManager;
    v18->_loggingChannelManager = v36;

    objc_storeStrong(&v18->_connectionTimeServiceAgent, agent);
    v38 = _os_feature_enabled_impl();
    v39 = 0;
    if (v38)
    {
      v39 = [[CRVideoSettingsSessionController alloc] initWithSessionStatus:statusCopy storedVehicleProvider:v18];
    }

    videoSettingSessionController = v18->_videoSettingSessionController;
    v18->_videoSettingSessionController = v39;

    v41 = [[_TtC7carkitd16CRSessionBooster alloc] initWithSessionStatus:statusCopy];
    sessionBooster = v18->_sessionBooster;
    v18->_sessionBooster = v41;
  }

  return v18;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRCarKitServiceAgent;
  [(CRCarKitServiceAgent *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.carkit"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CRCarKitService];
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    [v8 setClasses:v10 forSelector:"fetchAllVehiclesWithReply:" argumentIndex:0 ofReply:1];

    v11 = [NSSet setWithObject:objc_opt_class()];
    [v8 setClasses:v11 forSelector:"handleCarPlayDiagnosticsWithDeviceScreenshotURL:carScreenshotURL:attachmentURLs:activeBundleIdentifier:reply:" argumentIndex:0 ofReply:0];

    v12 = [NSSet setWithObject:objc_opt_class()];
    [v8 setClasses:v12 forSelector:"handleCarPlayDiagnosticsWithDeviceScreenshotURL:carScreenshotURL:attachmentURLs:activeBundleIdentifier:reply:" argumentIndex:1 ofReply:0];

    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    [v8 setClasses:v14 forSelector:"handleCarPlayDiagnosticsWithDeviceScreenshotURL:carScreenshotURL:attachmentURLs:activeBundleIdentifier:reply:" argumentIndex:2 ofReply:0];

    v15 = [NSSet setWithObject:objc_opt_class()];
    [v8 setClasses:v15 forSelector:"handleCarPlayDiagnosticsWithDeviceScreenshotURL:carScreenshotURL:attachmentURLs:activeBundleIdentifier:reply:" argumentIndex:3 ofReply:0];

    v16 = [NSSet setWithObjects:objc_opt_class(), 0];
    [v8 setClasses:v16 forSelector:"collectVehicleLogs:" argumentIndex:0 ofReply:1];

    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
    [v8 setClasses:v18 forSelector:"fetchInstrumentClusterURLsWithReply:" argumentIndex:0 ofReply:1];

    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [NSSet setWithObjects:v19, v20, objc_opt_class(), 0];
    [v8 setClasses:v21 forSelector:"fetchScaledDisplaysWithReply:reply:" argumentIndex:0 ofReply:1];

    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = [NSSet setWithObjects:v22, v23, objc_opt_class(), 0];
    [v8 setClasses:v24 forSelector:"fetchOverrideCanvasSizeWithCertificateSerialNumber:displays:reply:" argumentIndex:0 ofReply:1];

    v25 = objc_opt_class();
    v26 = [NSSet setWithObjects:v25, objc_opt_class(), 0];
    [v8 setClasses:v26 forSelector:"fetchViewAreasForVehicleIdentifier:reply:" argumentIndex:0 ofReply:1];

    v27 = objc_opt_class();
    v28 = [NSSet setWithObjects:v27, objc_opt_class(), 0];
    [v8 setClasses:v28 forSelector:"saveViewAreas:forVehicleIdentifier:reply:" argumentIndex:0 ofReply:1];

    v29 = objc_opt_class();
    v30 = [NSSet setWithObjects:v29, objc_opt_class(), 0];
    [v8 setClasses:v30 forSelector:"saveViewAreas:forVehicleIdentifier:reply:" argumentIndex:0 ofReply:0];

    [connectionCopy setExportedInterface:v8];
    [connectionCopy setExportedObject:self];
    v31 = CarGeneralLogging();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [connectionCopy serviceName];
      v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [connectionCopy processIdentifier]);
      *buf = 138412802;
      v36 = connectionCopy;
      v37 = 2112;
      v38 = serviceName;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Receiving CarKit service connection %@ to service %@ from %@", buf, 0x20u);
    }

    [connectionCopy resume];
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000840C8(connectionCopy);
    }
  }

  return bOOLValue;
}

- (void)saveVehicle:(id)vehicle reply:(id)reply
{
  vehicleCopy = vehicle;
  replyCopy = reply;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSXPCConnection currentConnection];
    *buf = 67109379;
    *&buf[4] = [v9 processIdentifier];
    LOWORD(v15) = 2113;
    *(&v15 + 2) = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "saveVehicle from process %i, vehicle: %{private}@", buf, 0x12u);
  }

  *buf = 0;
  *&v15 = buf;
  *(&v15 + 1) = 0x3032000000;
  v16 = sub_100022D08;
  v17 = sub_100022D18;
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022D20;
  block[3] = &unk_1000DDE60;
  v13 = buf;
  block[4] = self;
  v10 = vehicleCopy;
  v12 = v10;
  dispatch_sync(&_dispatch_main_q, block);
  (*(replyCopy + 2))(replyCopy, *(v15 + 40), 0);

  _Block_object_dispose(buf, 8);
}

- (void)removeVehicle:(id)vehicle reply:(id)reply
{
  vehicleCopy = vehicle;
  replyCopy = reply;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSXPCConnection currentConnection];
    *buf = 67109379;
    *&buf[4] = [v9 processIdentifier];
    LOWORD(v15) = 2113;
    *(&v15 + 2) = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "removeVehicle from process %i, vehicle: %{private}@", buf, 0x12u);
  }

  *buf = 0;
  *&v15 = buf;
  *(&v15 + 1) = 0x2020000000;
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022F38;
  block[3] = &unk_1000DDE60;
  v13 = buf;
  block[4] = self;
  v10 = vehicleCopy;
  v12 = v10;
  dispatch_sync(&_dispatch_main_q, block);
  (*(replyCopy + 2))(replyCopy, *(v15 + 24), 0);

  _Block_object_dispose(buf, 8);
}

- (void)fetchAllVehiclesWithReply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100022D08;
  v16 = sub_100022D18;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100022D08;
  v10 = sub_100022D18;
  v11 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000230DC;
  block[3] = &unk_1000DDE88;
  block[4] = self;
  block[5] = &v6;
  block[6] = &v12;
  dispatch_sync(&_dispatch_main_q, block);
  replyCopy[2](replyCopy, v13[5], v7[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

- (void)hasVehiclesWithReply:(id)reply
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023200;
  v5[3] = &unk_1000DDEB0;
  replyCopy = reply;
  v4 = replyCopy;
  [(CRCarKitServiceAgent *)self fetchAllVehiclesWithReply:v5];
}

- (void)handleDidConnectBluetoothAddress:(id)address reply:(id)reply
{
  addressCopy = address;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100022D08;
  v25 = sub_100022D18;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100022D08;
  v19 = sub_100022D18;
  v20 = 0;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = addressCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "attempting fast-reconnection with %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000234E0;
  block[3] = &unk_1000DDED8;
  block[4] = self;
  v12 = &v15;
  v9 = addressCopy;
  v11 = v9;
  v13 = &v21;
  v14 = &v27;
  dispatch_sync(&_dispatch_main_q, block);
  replyCopy[2](replyCopy, *(v28 + 24), v22[5], v16[5]);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

- (void)handleDidDisconnectBluetoothAddress:(id)address reply:(id)reply
{
  addressCopy = address;
  replyCopy = reply;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000239B4;
  block[3] = &unk_1000DDF00;
  block[4] = self;
  v8 = addressCopy;
  v10 = v8;
  v11 = &v12;
  dispatch_sync(&_dispatch_main_q, block);
  (*(replyCopy + 2))(replyCopy, *(v13 + 24), 0);

  _Block_object_dispose(&v12, 8);
}

- (void)isBluetoothInCarWithReply:(id)reply
{
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100022D08;
  v16 = sub_100022D18;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100022D08;
  v10 = sub_100022D18;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023BF8;
  v5[3] = &unk_1000DDF28;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = &v18;
  v5[7] = &v12;
  dispatch_sync(&_dispatch_main_q, v5);
  replyCopy[2](replyCopy, *(v19 + 24), v13[5], v7[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

- (void)handleBluetoothClassicPairingCompletedForDeviceAddress:(id)address name:(id)name preApproved:(BOOL)approved reply:(id)reply
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100022D08;
  v20[4] = sub_100022D18;
  v21 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100023E80;
  v13[3] = &unk_1000DDF50;
  addressCopy = address;
  nameCopy = name;
  replyCopy = reply;
  v18 = v20;
  selfCopy = self;
  approvedCopy = approved;
  v10 = replyCopy;
  v11 = nameCopy;
  v12 = addressCopy;
  dispatch_sync(&_dispatch_main_q, v13);

  _Block_object_dispose(v20, 8);
}

- (void)startBluetoothLEPairingForIdentifier:(id)identifier deviceName:(id)name reply:(id)reply
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024180;
  v11[3] = &unk_1000DDFA0;
  identifierCopy = identifier;
  nameCopy = name;
  selfCopy = self;
  replyCopy = reply;
  v8 = replyCopy;
  v9 = nameCopy;
  v10 = identifierCopy;
  dispatch_sync(&_dispatch_main_q, v11);
}

- (void)startBluetoothClassicPairingForDeviceAddress:(id)address deviceName:(id)name numericCode:(id)code showBluetoothOnlyOption:(BOOL)option reply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024628;
  block[3] = &unk_1000DDFC8;
  optionCopy = option;
  addressCopy = address;
  selfCopy = self;
  codeCopy = code;
  replyCopy = reply;
  v10 = codeCopy;
  v11 = replyCopy;
  v12 = addressCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)handleCarPlayConnectionRequestForConnectionID:(unsigned int)d startSessionProperties:(id)properties reply:(id)reply
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100024B20;
  v10[3] = &unk_1000DE040;
  propertiesCopy = properties;
  selfCopy = self;
  replyCopy = reply;
  dCopy = d;
  v8 = replyCopy;
  v9 = propertiesCopy;
  dispatch_sync(&_dispatch_main_q, v10);
}

- (void)_setupStartSessionTimerIfNeeded
{
  setupPromptDirector = [(CRCarKitServiceAgent *)self setupPromptDirector];

  if (setupPromptDirector)
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startSessionTimer setup", buf, 2u);
    }

    startSessionTimer = [(CRCarKitServiceAgent *)self startSessionTimer];
    [startSessionTimer invalidate];

    [(CRCarKitServiceAgent *)self setStartSessionTimer:0];
    objc_initWeak(buf, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100025998;
    v7[3] = &unk_1000DE068;
    objc_copyWeak(&v8, buf);
    v6 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v7 block:15.0];
    [(CRCarKitServiceAgent *)self setStartSessionTimer:v6];

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)postBannerToPhone:(id)phone notificationMessage:(id)message reply:(id)reply
{
  replyCopy = reply;
  messageCopy = message;
  phoneCopy = phone;
  v10 = +[CARDNDManager sharedManager];
  alertManager = [v10 alertManager];

  [alertManager postBannerWithTitle:phoneCopy message:messageCopy destinations:3];
  replyCopy[2](replyCopy);
}

- (void)postIconBannerToPhone:(id)phone notificationMessage:(id)message defaultActionURL:(id)l
{
  lCopy = l;
  messageCopy = message;
  phoneCopy = phone;
  v10 = +[CARDNDManager sharedManager];
  alertManager = [v10 alertManager];

  [alertManager postIconBannerWithTitle:phoneCopy message:messageCopy defaultActionURL:lCopy destinations:3];
}

- (void)wantsCarPlayControlAdvertisingForUSBWithReply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100022D08;
  v10 = sub_100022D18;
  v11 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025CFC;
  block[3] = &unk_1000DDE88;
  block[4] = self;
  block[5] = &v6;
  block[6] = &v12;
  dispatch_sync(&_dispatch_main_q, block);
  replyCopy[2](replyCopy, *(v13 + 24), v7[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

- (void)wantsCarPlayControlAdvertisingForWiFiUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100022D08;
  v18 = sub_100022D18;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002600C;
  v9[3] = &unk_1000DE090;
  v8 = dCopy;
  v10 = v8;
  selfCopy = self;
  v12 = &v14;
  v13 = &v20;
  dispatch_sync(&_dispatch_main_q, v9);
  replyCopy[2](replyCopy, *(v21 + 24), v15[5]);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)saveWiFiCredentials:(id)credentials forAccessoryConnectionIdentifier:(unint64_t)identifier reply:(id)reply
{
  credentialsCopy = credentials;
  replyCopy = reply;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100022D08;
  v27 = sub_100022D18;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100022D08;
  v21 = sub_100022D18;
  v22 = 0;
  v10 = CarGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received WiFi credentials for connectionID %lu", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026518;
  block[3] = &unk_1000DE0E0;
  block[4] = self;
  v11 = credentialsCopy;
  v13 = v11;
  v14 = &v23;
  v15 = &v17;
  identifierCopy2 = identifier;
  dispatch_sync(&_dispatch_main_q, block);
  replyCopy[2](replyCopy, v24[5] != 0, v18[5]);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)allowsConnectionsForWiFiUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100022D08;
  v17 = sub_100022D18;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002678C;
  v9[3] = &unk_1000DE108;
  v9[4] = self;
  v11 = &v13;
  v12 = &v19;
  v8 = dCopy;
  v10 = v8;
  dispatch_sync(&_dispatch_main_q, v9);
  replyCopy[2](replyCopy, *(v20 + 24), v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)saveViewAreas:(id)areas forVehicleIdentifier:(id)identifier reply:(id)reply
{
  areasCopy = areas;
  identifierCopy = identifier;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100022D08;
  v29 = sub_100022D18;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100022D08;
  v23 = sub_100022D18;
  v24 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026B10;
  v13[3] = &unk_1000DE130;
  v13[4] = self;
  v17 = &v25;
  replyCopy = reply;
  v16 = replyCopy;
  v11 = identifierCopy;
  v14 = v11;
  v12 = areasCopy;
  v15 = v12;
  v18 = &v19;
  dispatch_sync(&_dispatch_main_q, v13);
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, v20[5], v26[5]);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)fetchViewAreasForVehicleIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100022D08;
  v24 = sub_100022D18;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100022D08;
  v18 = sub_100022D18;
  v19 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026F70;
  block[3] = &unk_1000DE158;
  block[4] = self;
  v12 = &v20;
  replyCopy = reply;
  v11 = replyCopy;
  v8 = identifierCopy;
  v10 = v8;
  v13 = &v14;
  dispatch_sync(&_dispatch_main_q, block);
  (*(replyCopy + 2))(replyCopy, v15[5], v21[5]);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)allowsConnectionsForCertificateSerial:(id)serial reply:(id)reply
{
  serialCopy = serial;
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100022D08;
  v17 = sub_100022D18;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100027204;
  v9[3] = &unk_1000DE108;
  v9[4] = self;
  v11 = &v13;
  v12 = &v19;
  v8 = serialCopy;
  v10 = v8;
  dispatch_sync(&_dispatch_main_q, v9);
  replyCopy[2](replyCopy, *(v20 + 24), v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)isPairedWithCertificateSerial:(id)serial reply:(id)reply
{
  serialCopy = serial;
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100022D08;
  v17 = sub_100022D18;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100027520;
  v9[3] = &unk_1000DDA28;
  v9[4] = self;
  v11 = &v13;
  v8 = serialCopy;
  v10 = v8;
  v12 = &v19;
  dispatch_sync(&_dispatch_main_q, v9);
  replyCopy[2](replyCopy, *(v20 + 24), v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)isEnhancedIntegrationEnabledWithCertificateSerial:(id)serial reply:(id)reply
{
  serialCopy = serial;
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100022D08;
  v17 = sub_100022D18;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100027828;
  v9[3] = &unk_1000DDA28;
  v9[4] = self;
  v11 = &v13;
  v8 = serialCopy;
  v10 = v8;
  v12 = &v19;
  dispatch_sync(&_dispatch_main_q, v9);
  replyCopy[2](replyCopy, v20[3], v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)handleCarPlayRestrictionChangedWithReply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027A50;
  block[3] = &unk_1000DD480;
  block[4] = self;
  replyCopy = reply;
  dispatch_sync(&_dispatch_main_q, block);
  replyCopy[2](replyCopy);
}

- (void)isCarPlayAllowedWithReply:(id)reply
{
  replyCopy = reply;
  preferencesManager = [(CRCarKitServiceAgent *)self preferencesManager];
  (*(reply + 2))(replyCopy, [preferencesManager isCarPlayAllowed], 0);
}

- (void)deviceSupportedCarPlayFeaturesWithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9[0] = &v8;
  v9[1] = 0x2020000000;
  v9[2] = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100027C0C;
  v7[3] = &unk_1000DDA88;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(&_dispatch_main_q, v7);
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10008440C(v9);
  }

  v6 = [NSNumber numberWithUnsignedInteger:*(v9[0] + 24)];
  replyCopy[2](replyCopy, v6, 0);

  _Block_object_dispose(&v8, 8);
}

- (void)disablesCarPlayFeatures:(unint64_t)features forVehicleIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x2020000000;
  v23 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100027DD8;
  v16 = &unk_1000DE180;
  v19 = &v21;
  featuresCopy = features;
  selfCopy = self;
  v10 = identifierCopy;
  v18 = v10;
  dispatch_sync(&_dispatch_main_q, &v13);
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100084478(v22);
  }

  selfCopy = [NSNumber numberWithBool:*(v22[0] + 24), v13, v14, v15, v16, selfCopy];
  replyCopy[2](replyCopy, selfCopy, 0);

  _Block_object_dispose(&v21, 8);
}

- (void)setCarPlayFeatures:(unint64_t)features disabled:(BOOL)disabled forVehicleIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x2020000000;
  v21 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027F94;
  block[3] = &unk_1000DE1A8;
  v16 = &v19;
  featuresCopy = features;
  block[4] = self;
  disabledCopy = disabled;
  v12 = identifierCopy;
  v15 = v12;
  dispatch_sync(&_dispatch_main_q, block);
  v13 = CarGeneralLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10008450C(v20);
  }

  (*(replyCopy + 2))(replyCopy, *(v20[0] + 24), 0);
  _Block_object_dispose(&v19, 8);
}

- (void)supportedCarPlayFeaturesForCertificateSerial:(id)serial reply:(id)reply
{
  serialCopy = serial;
  replyCopy = reply;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000281BC;
  block[3] = &unk_1000DDE60;
  v14 = &v15;
  block[4] = self;
  v8 = serialCopy;
  v13 = v8;
  dispatch_sync(&_dispatch_main_q, block);
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v16[3];
    *buf = 134349056;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "supportedCarPlayFeatures: %{public}lu", buf, 0xCu);
  }

  v11 = [NSNumber numberWithUnsignedInteger:v16[3]];
  replyCopy[2](replyCopy, v11, 0);

  _Block_object_dispose(&v15, 8);
}

- (void)supportedAirPlayFeaturesForVehicleIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100022D08;
  v18 = sub_100022D18;
  v19 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000283EC;
  block[3] = &unk_1000DDE60;
  v13 = &v14;
  block[4] = self;
  v8 = identifierCopy;
  v12 = v8;
  dispatch_sync(&_dispatch_main_q, block);
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v15[5];
    *buf = 138543362;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "supportedAirPlayFeatures: %{public}@", buf, 0xCu);
  }

  replyCopy[2](replyCopy, v15[5], 0);
  _Block_object_dispose(&v14, 8);
}

- (void)videoSubtitleSettingsForVehicleIdentifier:(id)identifier reply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000285DC;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  identifierCopy = identifier;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = identifierCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)setVideoSubtitleSettings:(id)settings forVehicleIdentifier:(id)identifier reply:(id)reply
{
  settingsCopy = settings;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100028898;
  v12[3] = &unk_1000DE220;
  v12[4] = self;
  identifierCopy = identifier;
  v14 = settingsCopy;
  replyCopy = reply;
  v9 = settingsCopy;
  v10 = replyCopy;
  v11 = identifierCopy;
  dispatch_sync(&_dispatch_main_q, v12);
}

- (void)videoDiagnosticsEnabledForVehicleIdentifier:(id)identifier reply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BCC;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  identifierCopy = identifier;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = identifierCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)setVideoDiagnosticsEnabled:(BOOL)enabled forVehicleIdentifier:(id)identifier reply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028E40;
  v9[3] = &unk_1000DE268;
  v9[4] = self;
  identifierCopy = identifier;
  replyCopy = reply;
  enabledCopy = enabled;
  v7 = replyCopy;
  v8 = identifierCopy;
  dispatch_sync(&_dispatch_main_q, v9);
}

- (void)videoAnalyticsForVehicleIdentifier:(id)identifier reply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029194;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  identifierCopy = identifier;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = identifierCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)videoLicensesTextForVehicleIdentifier:(id)identifier reply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000293F0;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  identifierCopy = identifier;
  replyCopy = reply;
  v5 = replyCopy;
  v6 = identifierCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)stopSessionWithSessionIdentifier:(id)identifier reason:(unint64_t)reason reply:(id)reply
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029654;
  v9[3] = &unk_1000DE308;
  v9[4] = self;
  identifierCopy = identifier;
  replyCopy = reply;
  reasonCopy = reason;
  v7 = identifierCopy;
  v8 = replyCopy;
  dispatch_sync(&_dispatch_main_q, v9);
}

- (void)handleCarPlayDiagnosticsWithDeviceScreenshotURL:(id)l carScreenshotURL:(id)rL attachmentURLs:(id)ls activeBundleIdentifier:(id)identifier reply:(id)reply
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002990C;
  v16[3] = &unk_1000DE330;
  v16[4] = self;
  lCopy = l;
  rLCopy = rL;
  lsCopy = ls;
  identifierCopy = identifier;
  replyCopy = reply;
  v11 = replyCopy;
  v12 = identifierCopy;
  v13 = lsCopy;
  v14 = rLCopy;
  v15 = lCopy;
  dispatch_sync(&_dispatch_main_q, v16);
}

- (void)collectVehicleLogs:(id)logs
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029F0C;
  v4[3] = &unk_1000DD988;
  v4[4] = self;
  logsCopy = logs;
  v3 = logsCopy;
  dispatch_sync(&_dispatch_main_q, v4);
}

- (void)fetchInstrumentClusterURLsWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [NSError errorWithDomain:@"com.apple.carkit" code:5 userInfo:0];
  (*(reply + 2))(replyCopy, &__NSArray0__struct, v5);
}

- (id)accessoryRadarDescription:(id)description
{
  descriptionCopy = description;
  name = [descriptionCopy name];
  manufacturer = [descriptionCopy manufacturer];
  modelNumber = [descriptionCopy modelNumber];
  firmwareRevision = [descriptionCopy firmwareRevision];
  hardwareRevision = [descriptionCopy hardwareRevision];
  serialNumber = [descriptionCopy serialNumber];
  ppid = [descriptionCopy ppid];

  v11 = [NSString stringWithFormat:@"Accessory Name: %@\nManufacturer: %@\nModel Number: %@\nFirmware Revision: %@\nHardware Revision: %@\nSerial Number: %@\nPPID: %@\n", name, manufacturer, modelNumber, firmwareRevision, hardwareRevision, serialNumber, ppid];

  return v11;
}

- (void)fetchScaledDisplaysWithReply:(id)reply reply:(id)a4
{
  v5 = a4;
  replyCopy = reply;
  v7 = _os_feature_enabled_impl();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A37C;
  v9[3] = &unk_1000DE380;
  v10 = v5;
  v8 = v5;
  [CRScreenScaleHeuristics scaledDisplays:replyCopy withDisplayScaling:v7 reply:v9];
}

- (void)fetchOverrideCanvasSizeWithCertificateSerialNumber:(id)number displays:(id)displays reply:(id)reply
{
  numberCopy = number;
  displaysCopy = displays;
  replyCopy = reply;
  if (numberCopy && (-[CRCarKitServiceAgent vehicleStore](self, "vehicleStore"), v11 = objc_claimAutoreleasedReturnValue(), [v11 vehicleForCertificateSerial:numberCopy], v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    [v12 displayScaleMode];
    v13 = CRCanvasSizeOverridesWithAirplayDisplays();
    v14 = 0;
    replyCopy[2](replyCopy, v13, v14);
  }

  else
  {
    v15 = CarGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000846D8();
    }

    v12 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
    replyCopy[2](replyCopy, 0, v12);
  }
}

- (void)fetchScaledDisplaysWithCertificateSerialNumber:(id)number displays:(id)displays reply:(id)reply
{
  numberCopy = number;
  displaysCopy = displays;
  replyCopy = reply;
  if (_os_feature_enabled_impl())
  {
    dispatch_assert_queue_not_V2(&_dispatch_main_q);
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "fetchScaledDisplaysWithCertificateSerialNumber: will fetch scaled displays", buf, 2u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10002A6C4;
    v15[3] = &unk_1000DDFA0;
    v12 = v16;
    v16[0] = numberCopy;
    v16[1] = self;
    v17 = displaysCopy;
    v18 = replyCopy;
    v13 = replyCopy;
    dispatch_async(&_dispatch_main_q, v15);
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002A6AC;
    v20[3] = &unk_1000DE380;
    v12 = &v21;
    v21 = replyCopy;
    v14 = replyCopy;
    [CRScreenScaleHeuristics scaledDisplays:displaysCopy withDisplayScaling:0 reply:v20];
  }
}

- (void)isPreflightThemeAssetEnabledWithReply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A944;
  block[3] = &unk_1000DD960;
  replyCopy = reply;
  v3 = replyCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)setPreflightThemeAssetEnabled:(BOOL)enabled reply:(id)reply
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AA50;
  block[3] = &unk_1000DE3A8;
  enabledCopy = enabled;
  block[4] = self;
  replyCopy = reply;
  v4 = replyCopy;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)serviceConnector:(id)connector requestsPairingConfirmationForBluetoothLEIdentifier:(id)identifier name:(id)name numericCode:(id)code responseHandler:(id)handler
{
  identifierCopy = identifier;
  nameCopy = name;
  codeCopy = code;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AD14;
  block[3] = &unk_1000DE3F8;
  block[4] = self;
  v19 = identifierCopy;
  v21 = nameCopy;
  handlerCopy = handler;
  v20 = codeCopy;
  v14 = nameCopy;
  v15 = codeCopy;
  v16 = handlerCopy;
  v17 = identifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)serviceConnector:(id)connector failedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name error:(id)error
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002B0E4;
  v11[3] = &unk_1000DE420;
  v11[4] = self;
  identifierCopy = identifier;
  nameCopy = name;
  errorCopy = error;
  v8 = errorCopy;
  v9 = nameCopy;
  v10 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)serviceConnector:(id)connector completedPairingForBluetoothLEIdentifier:(id)identifier name:(id)name
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B260;
  v7[3] = &unk_1000DD580;
  identifierCopy = identifier;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)serviceConnector:(id)connector didConnectVehicle:(id)vehicle
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B358;
  v5[3] = &unk_1000DD580;
  v5[4] = self;
  vehicleCopy = vehicle;
  v4 = vehicleCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)serviceConnector:(id)connector didUpdateVehicle:(id)vehicle
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B61C;
  v5[3] = &unk_1000DD580;
  v5[4] = self;
  vehicleCopy = vehicle;
  v4 = vehicleCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)serviceConnector:(id)connector receivedStartSessionMessage:(id)message fromVehicle:(id)vehicle
{
  messageCopy = message;
  vehicleCopy = vehicle;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = messageCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlay connection request startSessionMessage: %@", buf, 0xCu);
  }

  if (messageCopy)
  {
    v24 = 0;
    v10 = [(CRCarKitServiceAgent *)self _isRestricted:&v24];
    v11 = v24;
    if (v10)
    {
      pPID = CarGeneralLogging();
      if (os_log_type_enabled(pPID, OS_LOG_TYPE_ERROR))
      {
        sub_1000842B4();
      }
    }

    else
    {
      v13 = +[NSMutableDictionary dictionary];
      sSID = [messageCopy SSID];
      [v13 setObject:sSID forKey:@"SSID_STR"];

      passphrase = [messageCopy passphrase];
      [v13 setObject:passphrase forKey:@"password"];

      channel = [messageCopy channel];
      [v13 setObject:channel forKey:@"CHANNEL"];

      securityType = [messageCopy securityType];
      [v13 setObject:securityType forKey:@"securityType"];

      pPID = [vehicleCopy PPID];
      if (pPID)
      {
        [v13 setObject:pPID forKey:@"CARPLAY_PPID"];
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10002B9C0;
      v19[3] = &unk_1000DE4D8;
      v20 = vehicleCopy;
      selfCopy = self;
      v22 = v13;
      v23 = messageCopy;
      v18 = v13;
      [(CRCarKitServiceAgent *)self _findWirelessPairedVehicleForMessagingVehicle:v20 result:v19];
    }
  }

  else
  {
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100084900();
    }
  }
}

- (void)serviceConnector:(id)connector didDisconnectVehicle:(id)vehicle
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002BF18;
  v5[3] = &unk_1000DD580;
  v5[4] = self;
  vehicleCopy = vehicle;
  v4 = vehicleCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)serviceConnector:(id)connector didConnectUnsupportedAccessoryWithBluetoothAddress:(id)address
{
  addressCopy = address;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = CarPairingLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 141558275;
    v10 = 1752392040;
    v11 = 2113;
    v12 = addressCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "connected an iAP accessory that doesn't support CarPlay: %{private, mask.hash}@", &v9, 0x16u);
  }

  currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];

  if (currentPromptFlowController)
  {
    currentPromptFlowController2 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
    [currentPromptFlowController2 handleUnsupportedMessagingConnectionForDeviceIdentifier:addressCopy];
  }
}

- (void)notifyFoundNoMatchingAssetForVehicleIdentifier:(id)identifier nextRequiredCompatibilityVersion:(id)version requestDescription:(id)description
{
  identifierCopy = identifier;
  versionCopy = version;
  descriptionCopy = description;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  v12 = currentPromptFlowController;
  if (currentPromptFlowController)
  {
    messagingVehicle = [currentPromptFlowController messagingVehicle];
    objc_opt_class();
    userInfo = [v12 userInfo];
    if (userInfo && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = userInfo;
    }

    else
    {
      v15 = 0;
    }

    if (messagingVehicle && v15)
    {
      identifier = [v15 identifier];
      v17 = [identifier isEqual:identifierCopy];

      if (v17)
      {
        if (CRIsInternalInstall())
        {
          descriptionCopy = [NSString stringWithFormat:@"[Internal]\nRequested asset matching:\n%@", descriptionCopy];
          v19 = descriptionCopy;
          if (versionCopy)
          {
            versionCopy = [descriptionCopy stringByAppendingFormat:@"An asset is available but requires CompatibilityVersion %@", versionCopy];

            v19 = versionCopy;
          }
        }

        else
        {
          v19 = 0;
        }

        currentPromptFlowController2 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
        [currentPromptFlowController2 handleFailedToFindThemeAssetForMessagingVehicle:messagingVehicle shouldOfferSoftwareUpdate:versionCopy != 0 description:v19];
      }

      else
      {
        v21 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [v15 identifier];
          *buf = 138543618;
          v25 = identifierCopy;
          v26 = 2114;
          v27 = identifier2;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "did not find an asset for vehicle %{public}@, but ignoring since pairing with vehicle %{public}@", buf, 0x16u);
        }
      }
    }
  }
}

- (void)handleCarPlayAllowedDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C364;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_handleCarPlayAllowedDidChange
{
  v3 = CarGeneralLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CarPlay restriction changed", buf, 2u);
  }

  preferencesManager = [(CRCarKitServiceAgent *)self preferencesManager];
  isCarPlayAllowed = [preferencesManager isCarPlayAllowed];

  cachedCarPlayAllowedChangeValue = [(CRCarKitServiceAgent *)self cachedCarPlayAllowedChangeValue];
  v7 = cachedCarPlayAllowedChangeValue;
  if (!cachedCarPlayAllowedChangeValue || isCarPlayAllowed != [cachedCarPlayAllowedChangeValue BOOLValue])
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"disabled";
      if (isCarPlayAllowed)
      {
        v9 = @"enabled";
      }

      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CarPlay is now %@", buf, 0xCu);
    }

    v10 = [NSNumber numberWithBool:isCarPlayAllowed];
    [(CRCarKitServiceAgent *)self setCachedCarPlayAllowedChangeValue:v10];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.allowed-changed", 0, 0, 1u);
    +[CRVehicleStore postPairingsDidChangeNotification];
    if (isCarPlayAllowed)
    {
      [(CRCarKitServiceAgent *)self handleAnyMessagingConnectionsToVehicles];
    }

    else
    {
      [(CRCarKitServiceAgent *)self _dismissApprovalAlerts];
      [(CRCarKitServiceAgent *)self _dismissPairingAlerts];
      [(CRCarKitServiceAgent *)self _dismissEnhancedIntegrationAlerts];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
      allStoredVehicles = [vehicleStore allStoredVehicles];

      v14 = [allStoredVehicles countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v22;
        do
        {
          v17 = 0;
          do
          {
            if (*v22 != v16)
            {
              objc_enumerationMutation(allStoredVehicles);
            }

            v18 = *(*(&v21 + 1) + 8 * v17);
            monitoringService = [(CRCarKitServiceAgent *)self monitoringService];
            [monitoringService handleUpdatedVehicle:v18 enabled:0 completion:0];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [allStoredVehicles countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      sessionRequestClient = [(CRCarKitServiceAgent *)self sessionRequestClient];
      [sessionRequestClient cancelRequests];
    }
  }
}

- (void)handleVehicleStoreAvailabiltyDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C698;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)postInCarNotificationForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  carplayWiFiUUID = [vehicleCopy carplayWiFiUUID];
  v6 = carplayWiFiUUID;
  if (carplayWiFiUUID)
  {
    v16 = @"CARPLAY_UUID";
    v17 = carplayWiFiUUID;
    v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending iAP in-car wifi notification %@", &v14, 0xCu);
    }

    kdebug_trace();
    wifiManager = [(CRCarKitServiceAgent *)self wifiManager];
    [wifiManager setInCar:1 carPlayUUID:v6];

    if ([vehicleCopy requiresBonjour])
    {
      sessionRequestClient = [(CRCarKitServiceAgent *)self sessionRequestClient];
      [sessionRequestClient startAdvertisingCarPlayControlForWiFiUUID:v6];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.in-car", 0, 0, 1u);
    v12 = +[CARAnalytics sharedInstance];
    [v12 wirelessReconnectStarted];
  }

  return v6 != 0;
}

- (BOOL)postOutOfCarNotificationForVehicle:(id)vehicle
{
  carplayWiFiUUID = [vehicle carplayWiFiUUID];
  v4 = carplayWiFiUUID;
  if (carplayWiFiUUID)
  {
    v11 = @"CARPLAY_UUID";
    v12 = carplayWiFiUUID;
    v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v6 = CarGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending iAP out-of-car wifi notification %@", &v9, 0xCu);
    }

    kdebug_trace();
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.out-of-car", 0, 0, 1u);
  }

  return v4 != 0;
}

- (BOOL)_isRestricted:(id *)restricted
{
  preferencesManager = [(CRCarKitServiceAgent *)self preferencesManager];
  isCarPlayAllowed = [preferencesManager isCarPlayAllowed];

  if (restricted && (isCarPlayAllowed & 1) == 0)
  {
    *restricted = [NSError errorWithDomain:@"com.apple.carkit" code:1 userInfo:0];
  }

  return isCarPlayAllowed ^ 1;
}

- (void)_findWirelessPairedVehicleForAccessoryConnectionIdentifier:(unint64_t)identifier result:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
    v8 = [messagingConnector vehicleAccessoryForiAPConnectionIdentifier:identifier];

    if (!v8)
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000849BC();
      }

      v10 = [NSError errorWithDomain:@"com.apple.carkit" code:3 userInfo:0];
      (*(resultCopy + 2))(resultCopy, 0, 0, v10);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002CBD0;
    v12[3] = &unk_1000DE500;
    v13 = v8;
    v14 = resultCopy;
    v11 = v8;
    [(CRCarKitServiceAgent *)self _findWirelessPairedVehicleForMessagingVehicle:v11 result:v12];
  }
}

- (void)_findWirelessPairedVehicleForMessagingVehicle:(id)vehicle result:(id)result
{
  vehicleCopy = vehicle;
  resultCopy = result;
  if (resultCopy)
  {
    v26 = 0;
    v8 = [(CRCarKitServiceAgent *)self _isRestricted:&v26];
    v9 = v26;
    if (v8)
    {
      resultCopy[2](resultCopy, 0, v9);
LABEL_15:

      goto LABEL_16;
    }

    vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
    allStoredVehicles = [vehicleStore allStoredVehicles];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10002CE88;
    v24 = &unk_1000DE528;
    v12 = vehicleCopy;
    v25 = v12;
    v13 = [allStoredVehicles objectsPassingTest:&v21];

    anyObject = [v13 anyObject];
    v15 = anyObject;
    if (anyObject && ([anyObject isPaired] & 1) != 0)
    {
      bluetoothAddress = [v15 bluetoothAddress];
      if (bluetoothAddress)
      {

LABEL_13:
        (resultCopy)[2](resultCopy, v15, 0);
        goto LABEL_14;
      }

      bluetoothAddress2 = [v12 bluetoothAddress];

      if (bluetoothAddress2)
      {
        goto LABEL_13;
      }

      v17 = CarGeneralLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v15;
        v18 = "Vehicle %@ is not paired for wireless";
        goto LABEL_10;
      }
    }

    else
    {
      v17 = CarGeneralLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v15;
        v18 = "Vehicle %@ is not paired";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      }
    }

    v19 = [NSError errorWithDomain:@"com.apple.carkit" code:1 userInfo:0];
    resultCopy[2](resultCopy, 0, v19);

LABEL_14:
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_saveWiFiCredentials:(id)credentials forAccessoryConnectionIdentifier:(unint64_t)identifier result:(id)result
{
  credentialsCopy = credentials;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002CFC4;
  v11[3] = &unk_1000DE550;
  selfCopy = self;
  resultCopy = result;
  v12 = credentialsCopy;
  v9 = credentialsCopy;
  v10 = resultCopy;
  [(CRCarKitServiceAgent *)self _findWirelessPairedVehicleForAccessoryConnectionIdentifier:identifier result:v11];
}

- (void)_saveWiFiCredentials:(id)credentials fromMessagingVehicle:(id)vehicle forWirelessPairedVehicle:(id)pairedVehicle result:(id)result
{
  credentialsCopy = credentials;
  vehicleCopy = vehicle;
  pairedVehicleCopy = pairedVehicle;
  resultCopy = result;
  bluetoothAddress = [vehicleCopy bluetoothAddress];
  bluetoothAddress2 = [pairedVehicleCopy bluetoothAddress];
  v16 = bluetoothAddress2;
  if (bluetoothAddress && bluetoothAddress2)
  {
    v17 = [bluetoothAddress2 isEqual:bluetoothAddress];

    if (v17)
    {
LABEL_4:
      v18 = 0;
      goto LABEL_7;
    }
  }

  else
  {

    if (!bluetoothAddress)
    {
      goto LABEL_4;
    }
  }

  [pairedVehicleCopy setBluetoothAddress:bluetoothAddress];
  v18 = 1;
LABEL_7:
  carplayWiFiUUID = [pairedVehicleCopy carplayWiFiUUID];
  if (carplayWiFiUUID)
  {
    uUIDString = carplayWiFiUUID;
    if (!v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = +[NSUUID UUID];
    uUIDString = [v21 UUIDString];

    [pairedVehicleCopy setCarplayWiFiUUID:uUIDString];
  }

  v22 = CarGeneralLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = pairedVehicleCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Saving vehicle %@ for Bluetooth address or Wi-Fi UUID update", &v34, 0xCu);
  }

  vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
  v24 = [vehicleStore saveVehicle:pairedVehicleCopy];

  if (!v24)
  {
    v31 = CarGeneralLogging();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10008439C();
    }

    if (!resultCopy)
    {
      goto LABEL_35;
    }

LABEL_30:
    v32 = [NSError errorWithDomain:@"com.apple.carkit" code:2 userInfo:0];
    resultCopy[2](resultCopy, 0, v32);

    goto LABEL_35;
  }

  pairedVehicleCopy = v24;
LABEL_15:
  wifiManager = [(CRCarKitServiceAgent *)self wifiManager];
  v26 = [wifiManager saveNetworkCredentials:credentialsCopy forCarPlayUUID:uUIDString];

  v27 = CarGeneralLogging();
  v28 = v27;
  if ((v26 & 1) == 0)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100084A2C(pairedVehicleCopy);
    }

    if (!resultCopy)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = pairedVehicleCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "saved WiFi credentials for %@", &v34, 0xCu);
  }

  if ([vehicleCopy transportType] == 2 || objc_msgSend(vehicleCopy, "transportType") == 4)
  {
    pairedVehiclesConnectedOnBluetooth = [(CRCarKitServiceAgent *)self pairedVehiclesConnectedOnBluetooth];
    v30 = [pairedVehiclesConnectedOnBluetooth containsObject:pairedVehicleCopy];

    if (v30)
    {
      kdebug_trace();
      [(CRCarKitServiceAgent *)self postInCarNotificationForVehicle:pairedVehicleCopy];
      if (!resultCopy)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  v33 = CarGeneralLogging();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_100084AB8();
  }

  if (resultCopy)
  {
LABEL_34:
    (resultCopy)[2](resultCopy, uUIDString, 0);
  }

LABEL_35:
}

- (void)_mainQueue_startSessionForHost:(id)host reply:(id)reply
{
  replyCopy = reply;
  hostCopy = host;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CRLocalizedStringForKey();
  [hostCopy setDisplayName:v8];

  deviceIdentifier = [hostCopy deviceIdentifier];
  [(CRCarKitServiceAgent *)self setLastStartSessionDeviceID:deviceIdentifier];

  v10 = +[NSUUID UUID];
  sessionRequestClient = [(CRCarKitServiceAgent *)self sessionRequestClient];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002D624;
  v13[3] = &unk_1000DD850;
  v14 = replyCopy;
  v12 = replyCopy;
  [sessionRequestClient startSessionWithHost:hostCopy requestIdentifier:v10 completion:v13];
}

- (void)_mainQueue_updateClusterAssetIdentifier:(id)identifier assetVersion:(id)version sdkVersion:(id)sdkVersion forVehicle:(id)vehicle
{
  identifierCopy = identifier;
  versionCopy = version;
  sdkVersionCopy = sdkVersion;
  vehicleCopy = vehicle;
  vehicleAssetManager = [(CRCarKitServiceAgent *)self vehicleAssetManager];
  if (vehicleAssetManager && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [vehicleAssetManager receivedClusterAssetIdentifier:identifierCopy assetVersion:versionCopy sdkVersion:sdkVersionCopy forVehicle:vehicleCopy];
  }

  else
  {
    v15 = CarGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100084B80();
    }
  }
}

- (BOOL)_shouldPromptEnhancedIntegrationForStoredVehicle:(id)vehicle messagingVehicle:(id)messagingVehicle
{
  vehicleCopy = vehicle;
  messagingVehicleCopy = messagingVehicle;
  if ([vehicleCopy enhancedIntegrationStatus])
  {
LABEL_2:
    v7 = 0;
    goto LABEL_8;
  }

  if (([vehicleCopy supportsEnhancedIntegration] & 1) == 0 && !objc_msgSend(messagingVehicleCopy, "supportsEnhancedIntegration"))
  {
    cf = 0;
    FigEndpointCopyActiveCarPlayEndpoint();
    v10 = CarGeneralLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100084C54();
    }

    goto LABEL_2;
  }

  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    buf = 138412290;
    *buf_4 = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "vehicle %@ declares enhanced integration support", &buf, 0xCu);
  }

  v7 = 1;
LABEL_8:

  return v7;
}

- (void)handleAnyMessagingConnectionsToVehicles
{
  messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
  connectedVehicles = [messagingConnector connectedVehicles];

  [(CRCarKitServiceAgent *)self handleDidConnectMessagingToVehicles:connectedVehicles];
}

- (void)handleDidConnectMessagingToVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = vehiclesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handling connected vehicles: %@", buf, 0xCu);
  }

  if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    preferencesManager = [(CRCarKitServiceAgent *)self preferencesManager];
    isCarPlayAllowed = [preferencesManager isCarPlayAllowed];

    if (isCarPlayAllowed)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = vehiclesCopy;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            if ([v13 transportType] == 1 && objc_msgSend(v13, "supportsUSBCarPlay") && (objc_msgSend(v13, "supportsCarPlayConnectionRequest") & 1) == 0)
            {
              sessionRequestClient = [(CRCarKitServiceAgent *)self sessionRequestClient];
              [sessionRequestClient startAdvertisingCarPlayControlForUSB];

              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.starting-wired-connection", 0, 0, 1u);
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v10);
      }

      [(CRCarKitServiceAgent *)self updateIncompletePairingsMatchingMessagingVehicles:v8];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_10002DF3C;
      v23[3] = &unk_1000DE488;
      v23[4] = self;
      [(CRCarKitServiceAgent *)self enumerateStoredVehiclesForMessagingVehicles:v8 usingBlock:v23];
    }

    else
    {
      v17 = CarGeneralLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "CarPlay is not available", buf, 2u);
      }

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v18 = vehiclesCopy;
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          for (j = 0; j != v20; j = j + 1)
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(CRCarKitServiceAgent *)self _sendCarPlayAvailabilityForMessagingVehicle:*(*(&v28 + 1) + 8 * j) storedVehicle:0];
          }

          v20 = [v18 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v20);
      }
    }
  }

  else
  {
    v16 = CarGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = vehiclesCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring connect message, vehicle store isn't available, messagingVehicle: %@", buf, 0xCu);
    }
  }
}

- (id)_wirelessPairingAnalyticsDescriptionForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle
{
  storedVehicleCopy = storedVehicle;
  vehicleCopy = vehicle;
  analyticsDescription = [vehicleCopy analyticsDescription];
  v9 = [analyticsDescription mutableCopy];

  sessionStatus = [(CRCarKitServiceAgent *)self sessionStatus];
  currentSession = [sessionStatus currentSession];

  pPID = [vehicleCopy PPID];
  v13 = pPID;
  if (pPID)
  {
    v14 = pPID;
  }

  else
  {
    v14 = @"Unknown";
  }

  [v9 setObject:v14 forKeyedSubscript:@"ppid"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [vehicleCopy supportsWiredBluetoothPairing]);
  [v9 setObject:v15 forKeyedSubscript:@"supportsOOBPairing"];

  sourceVersion = [currentSession sourceVersion];
  v17 = sourceVersion;
  if (sourceVersion)
  {
    v18 = sourceVersion;
  }

  else
  {
    v18 = @"Unknown";
  }

  [v9 setObject:v18 forKeyedSubscript:@"SourceVersion"];

  vehicleName = [storedVehicleCopy vehicleName];
  v20 = vehicleName;
  if (vehicleName)
  {
    v21 = vehicleName;
  }

  else
  {
    v21 = @"Unknown";
  }

  [v9 setObject:v21 forKeyedSubscript:@"vehicleName"];

  vehicleModelName = [storedVehicleCopy vehicleModelName];
  v23 = vehicleModelName;
  if (vehicleModelName)
  {
    v24 = vehicleModelName;
  }

  else
  {
    v24 = @"Unknown";
  }

  [v9 setObject:v24 forKeyedSubscript:@"vehicleModel"];

  transportType = [vehicleCopy transportType];
  if ((transportType - 1) > 3)
  {
    v26 = @"unknown";
  }

  else
  {
    v26 = *(&off_1000DE7A0 + (transportType - 1));
  }

  [v9 setObject:v26 forKeyedSubscript:@"transportType"];
  supportsStartSessionRequest = [storedVehicleCopy supportsStartSessionRequest];
  if ([supportsStartSessionRequest BOOLValue])
  {
    v28 = @"StartSession";
  }

  else
  {
    v28 = @"Bonjour";
  }

  [v9 setObject:v28 forKeyedSubscript:@"sessionType"];

  if ([storedVehicleCopy supportsBluetoothLE])
  {
    v29 = @"BLE";
  }

  else
  {
    v29 = @"BT Classic";
  }

  [v9 setObject:v29 forKeyedSubscript:@"bluetoothType"];
  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [storedVehicleCopy supportsUSBCarPlay]);
  [v9 setObject:v30 forKeyedSubscript:@"supportsUSBCarPlay"];

  configuration = [currentSession configuration];
  v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configuration supportsVehicleData]);
  [v9 setObject:v32 forKeyedSubscript:@"nextGenCarPlaySession"];

  v33 = [NSDictionary dictionaryWithDictionary:v9];

  return v33;
}

- (void)updateIncompletePairingsMatchingMessagingVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [vehiclesCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v36;
    v30 = v34;
    *&v6 = 138412290;
    v29 = v6;
    v31 = *v36;
    v32 = vehiclesCopy;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(vehiclesCopy);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        bluetoothAddress = [v10 bluetoothAddress];
        vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
        v13 = [vehicleStore vehicleForBluetoothAddress:bluetoothAddress];

        if (v13)
        {
          certificateSerialNumber = [v13 certificateSerialNumber];

          if (!certificateSerialNumber)
          {
            preferencesManager = [(CRCarKitServiceAgent *)self preferencesManager];
            isCarPlaySetupEnabled = [preferencesManager isCarPlaySetupEnabled];

            if (!isCarPlaySetupEnabled)
            {
              v17 = [(CRCarKitServiceAgent *)self _wirelessPairingAnalyticsDescriptionForMessagingVehicle:v10 storedVehicle:v13];
              v18 = +[CARAnalytics sharedInstance];
              [v18 userCreatedWirelessPairingWithSource:@"Settings" payload:v17];
            }

            certificateSerialNumber2 = [v10 certificateSerialNumber];
            if (certificateSerialNumber2)
            {
              v20 = CarGeneralLogging();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v29;
                v40 = bluetoothAddress;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "First accessory attach for %@, adding certificateSerial", buf, 0xCu);
              }

              [v13 setCertificateSerialNumber:certificateSerialNumber2];
              vehicleStore2 = [(CRCarKitServiceAgent *)self vehicleStore];
              v33[0] = _NSConcreteStackBlock;
              v33[1] = 3221225472;
              v34[0] = sub_10002E730;
              v34[1] = &unk_1000DE578;
              v34[2] = self;
              v22 = [vehicleStore2 saveVehicle:v13 withMergePolicy:v33];
            }

            currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];
            v24 = currentPromptFlowController;
            if (currentPromptFlowController)
            {
              bluetoothDeviceIdentifier = [currentPromptFlowController bluetoothDeviceIdentifier];
              v26 = [bluetoothAddress isEqual:bluetoothDeviceIdentifier];

              if (v26)
              {
                v27 = CarPairingLogging();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "adding connected accessory to prompt flow", buf, 2u);
                }

                [v24 setUserInfo:v13];
                if ([v13 pairingStatus])
                {
                  v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v13 pairingStatus] == 2);
                }

                else
                {
                  v28 = 0;
                }

                [v24 handleConnectedMessagingVehicle:v10 pairingAccepted:v28];
              }
            }

            v8 = v31;
            vehiclesCopy = v32;
          }
        }
      }

      v7 = [vehiclesCopy countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }
}

- (id)vehicleMatchingMessagingVehicle:(id)vehicle inVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  certificateSerialNumber = [vehicle certificateSerialNumber];
  if (certificateSerialNumber)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = vehiclesCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          certificateSerialNumber2 = [v11 certificateSerialNumber];
          if (certificateSerialNumber2)
          {
            v13 = certificateSerialNumber2;
            certificateSerialNumber3 = [v11 certificateSerialNumber];
            v15 = [certificateSerialNumber isEqualToData:certificateSerialNumber3];

            if (v15)
            {
              v8 = v11;
              goto LABEL_14;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)enumerateStoredVehiclesForMessagingVehicles:(id)vehicles usingBlock:(id)block
{
  vehiclesCopy = vehicles;
  blockCopy = block;
  if (blockCopy)
  {
    vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
    allStoredVehicles = [vehicleStore allStoredVehicles];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = vehiclesCopy;
    v10 = vehiclesCopy;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [(CRCarKitServiceAgent *)self vehicleMatchingMessagingVehicle:v15 inVehicles:allStoredVehicles];
          blockCopy[2](blockCopy, v15, v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    vehiclesCopy = v17;
  }
}

- (void)updateStoredVehicle:(id)vehicle usingMessagingVehicle:(id)messagingVehicle
{
  vehicleCopy = vehicle;
  messagingVehicleCopy = messagingVehicle;
  vehicleName = [messagingVehicleCopy vehicleName];
  accessoryProtocols = [messagingVehicleCopy accessoryProtocols];
  v10 = [NSSet setWithArray:accessoryProtocols];

  if (vehicleName && ([vehicleCopy vehicleName], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(vehicleName, "isEqualToString:", v11), v11, (v12 & 1) == 0))
  {
    [vehicleCopy setVehicleName:vehicleName];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  accessoryProtocols2 = [vehicleCopy accessoryProtocols];
  v15 = [v10 isEqualToSet:accessoryProtocols2];

  if ((v15 & 1) == 0)
  {
    [vehicleCopy setAccessoryProtocols:v10];
    v13 = 1;
  }

  if ([messagingVehicleCopy transportType] != 3)
  {
    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messagingVehicleCopy supportsCarPlayConnectionRequest]);
    supportsStartSessionRequest = [vehicleCopy supportsStartSessionRequest];
    v18 = [v16 isEqual:supportsStartSessionRequest];

    if ((v18 & 1) == 0)
    {
      v19 = CarGeneralLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (v16)
        {
          bOOLValue = [v16 BOOLValue];
          v21 = @"NO";
          if (bOOLValue)
          {
            v21 = @"YES";
          }
        }

        else
        {
          v21 = @"unset";
        }

        *buf = 138543618;
        v48 = v21;
        v49 = 2112;
        v50 = vehicleCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating supportsStartSessionRequest to %{public}@ for %@", buf, 0x16u);
      }

      [vehicleCopy setSupportsStartSessionRequest:v16];
      v13 = 1;
    }

    supportsBluetoothLE = [vehicleCopy supportsBluetoothLE];
    if (supportsBluetoothLE != [messagingVehicleCopy supportsBluetoothLE])
    {
      v23 = CarGeneralLogging();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        supportsBluetoothLE2 = [messagingVehicleCopy supportsBluetoothLE];
        v25 = @"NO";
        if (supportsBluetoothLE2)
        {
          v25 = @"YES";
        }

        *buf = 138543618;
        v48 = v25;
        v49 = 2112;
        v50 = vehicleCopy;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating supportsBluetoothLE to %{public}@ for %@", buf, 0x16u);
      }

      [vehicleCopy setSupportsBluetoothLE:{objc_msgSend(messagingVehicleCopy, "supportsBluetoothLE")}];
      v13 = 1;
    }

    supportsThemeAssets = [vehicleCopy supportsThemeAssets];
    if (!supportsThemeAssets)
    {
      goto LABEL_25;
    }

    v27 = supportsThemeAssets;
    supportsThemeAssets2 = [vehicleCopy supportsThemeAssets];
    v46 = vehicleName;
    v29 = v10;
    v30 = v16;
    selfCopy = self;
    bOOLValue2 = [supportsThemeAssets2 BOOLValue];
    supportsThemeAssets3 = [messagingVehicleCopy supportsThemeAssets];

    v34 = bOOLValue2 == supportsThemeAssets3;
    self = selfCopy;
    v16 = v30;
    v10 = v29;
    vehicleName = v46;
    if (!v34)
    {
LABEL_25:
      v35 = CarGeneralLogging();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        supportsThemeAssets4 = [messagingVehicleCopy supportsThemeAssets];
        v37 = @"NO";
        if (supportsThemeAssets4)
        {
          v37 = @"YES";
        }

        *buf = 138543618;
        v48 = v37;
        v49 = 2112;
        v50 = vehicleCopy;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Updating supportsThemeAssets to %{public}@ for %@", buf, 0x16u);
      }

      v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [messagingVehicleCopy supportsThemeAssets]);
      [vehicleCopy setSupportsThemeAssets:v38];

      v13 = 1;
    }
  }

  supportsUSBCarPlay = [vehicleCopy supportsUSBCarPlay];
  if (supportsUSBCarPlay != [messagingVehicleCopy supportsUSBCarPlay])
  {
    [vehicleCopy setSupportsUSBCarPlay:{objc_msgSend(messagingVehicleCopy, "supportsUSBCarPlay")}];
    v13 = 1;
  }

  supportsWirelessCarPlay = [vehicleCopy supportsWirelessCarPlay];
  if (supportsWirelessCarPlay != [messagingVehicleCopy supportsWirelessCarPlay])
  {
    [vehicleCopy setSupportsWirelessCarPlay:{objc_msgSend(messagingVehicleCopy, "supportsWirelessCarPlay")}];
    v13 = 1;
  }

  _currentlyConnectedVehicleSupportsMixableAudio = [(CRCarKitServiceAgent *)self _currentlyConnectedVehicleSupportsMixableAudio];
  if (_currentlyConnectedVehicleSupportsMixableAudio == [vehicleCopy supportsMixableAudio])
  {
    if ((CRIsInternalInstall() & 1) == 0)
    {
      if (!v13)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else
  {
    [vehicleCopy setSupportsMixableAudio:_currentlyConnectedVehicleSupportsMixableAudio];
    if (!CRIsInternalInstall())
    {
      goto LABEL_40;
    }
  }

  v42 = +[NSDate date];
  [vehicleCopy setLastConnectedDate:v42];

  vehicleModelName = [messagingVehicleCopy vehicleModelName];
  [vehicleCopy setVehicleModelName:vehicleModelName];

LABEL_40:
  vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
  v45 = [vehicleStore saveVehicle:vehicleCopy];

LABEL_41:
}

- (id)pairedVehiclesConnectedOnBluetooth
{
  v3 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  bluetoothManager = [(CRCarKitServiceAgent *)self bluetoothManager];
  connectedBluetoothAddresses = [bluetoothManager connectedBluetoothAddresses];

  v6 = [connectedBluetoothAddresses countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(connectedBluetoothAddresses);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
        v12 = [vehicleStore vehicleForBluetoothAddress:v10];

        if (v12 && [v12 isPaired])
        {
          [v3 addObject:v12];
        }
      }

      v7 = [connectedBluetoothAddresses countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v7);
  }

  messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
  connectedVehicles = [messagingConnector connectedVehicles];

  v15 = [NSPredicate predicateWithBlock:&stru_1000DE5B8];
  v16 = [connectedVehicles filteredSetUsingPredicate:v15];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v28 + 1) + 8 * j);
        vehicleStore2 = [(CRCarKitServiceAgent *)self vehicleStore];
        bluetoothAddress = [v22 bluetoothAddress];
        v25 = [vehicleStore2 vehicleForBluetoothAddress:bluetoothAddress];

        if (v25 && [v25 isPaired])
        {
          [v3 addObject:v25];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v19);
  }

  v26 = CarGeneralLogging();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "BT connected vehicles: %@", buf, 0xCu);
  }

  return v3;
}

- (BOOL)_currentlyConnectedVehicleSupportsMixableAudio
{
  sessionStatus = [(CRCarKitServiceAgent *)self sessionStatus];
  currentSession = [sessionStatus currentSession];

  if (currentSession)
  {
    configuration = [currentSession configuration];
    supportsSiriMixable = [configuration supportsSiriMixable];
  }

  else
  {
    supportsSiriMixable = 0;
  }

  return supportsSiriMixable;
}

- (id)saveVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  if (vehicleCopy)
  {
    vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
    identifier = [vehicleCopy identifier];
    v7 = [vehicleStore vehicleForIdentifier:identifier];

    if (v7)
    {
      isPaired = [v7 isPaired];
    }

    else
    {
      isPaired = 0;
    }

    vehicleStore2 = [(CRCarKitServiceAgent *)self vehicleStore];
    v9 = [vehicleStore2 saveVehicle:vehicleCopy];

    isPaired2 = [v9 isPaired];
    v13 = CarGeneralLogging();
    v14 = v13;
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Saved vehicle %@", buf, 0xCu);
      }

      if (isPaired != isPaired2)
      {
        v15 = CarGeneralLogging();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [v9 identifier];
          v17 = identifier2;
          v18 = @"NO";
          if (isPaired)
          {
            v19 = @"YES";
          }

          else
          {
            v19 = @"NO";
          }

          *buf = 138543874;
          *&buf[4] = identifier2;
          *&buf[14] = v19;
          *&buf[12] = 2114;
          if (isPaired2)
          {
            v18 = @"YES";
          }

          *&buf[22] = 2114;
          v28 = v18;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "vehicle %{public}@ changed pairing status from %{public}@ to: %{public}@", buf, 0x20u);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v28 = sub_100022D08;
        v29 = sub_100022D18;
        v30 = os_transaction_create();
        v20 = dispatch_time(0, 100000000);
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_10002F830;
        v23[3] = &unk_1000DE608;
        v23[4] = self;
        v26 = isPaired2;
        v24 = v9;
        v25 = buf;
        dispatch_after(v20, &_dispatch_main_q, v23);

        _Block_object_dispose(buf, 8);
      }

      v21 = v9;
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100084CC4();
      }
    }

    v10 = v9;
  }

  else
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100084D34();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)removeVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = CarGeneralLogging();
  carplayWiFiUUID = v5;
  if (vehicleCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = vehicleCopy;
      _os_log_impl(&_mh_execute_header, carplayWiFiUUID, OS_LOG_TYPE_DEFAULT, "Removing vehicle %@", &buf, 0xCu);
    }

    vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
    v8 = [vehicleStore removeVehicle:vehicleCopy];

    carplayWiFiUUID = [vehicleCopy carplayWiFiUUID];
    if (carplayWiFiUUID)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v25 = 0x3032000000;
      v26 = sub_100022D08;
      v27 = sub_100022D18;
      v28 = os_transaction_create();
      v9 = dispatch_time(0, 100000000);
      v16 = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_10002FED8;
      v19 = &unk_1000DE630;
      selfCopy = self;
      v21 = vehicleCopy;
      v22 = carplayWiFiUUID;
      p_buf = &buf;
      dispatch_after(v9, &_dispatch_main_q, &v16);

      _Block_object_dispose(&buf, 8);
    }

    bluetoothAddress = [vehicleCopy bluetoothAddress];
    if (bluetoothAddress)
    {
      if ([vehicleCopy supportsBluetoothLE])
      {
        bluetoothManager = [[NSUUID alloc] initWithUUIDString:bluetoothAddress];
        if (bluetoothManager)
        {
          messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
          v13 = [messagingConnector unpairWithBluetoothLEIdentifier:bluetoothManager];
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        bluetoothManager = [(CRCarKitServiceAgent *)self bluetoothManager];
        v13 = [bluetoothManager unpairWithBluetoothAddress:bluetoothAddress];
      }
    }

    else
    {
      v13 = 1;
    }

    v14 = v8 & v13;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100084E00();
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)attemptConnectionWithVehicles:(id)vehicles
{
  vehiclesCopy = vehicles;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = vehiclesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "attemptConnectionForVehicles %@", buf, 0xCu);
  }

  if (![(CRCarKitServiceAgent *)self _isRestricted:0])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = vehiclesCopy;
    obj = vehiclesCopy;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v7)
    {
      v26 = 0;
      goto LABEL_36;
    }

    v8 = v7;
    v26 = 0;
    v9 = *v35;
    v27 = *v35;
    while (1)
    {
      v10 = 0;
      v28 = v8;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        if ([v11 isPaired])
        {
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
          connectedVehicles = [messagingConnector connectedVehicles];

          v14 = [connectedVehicles countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v31;
LABEL_13:
            v17 = 0;
            while (1)
            {
              if (*v31 != v16)
              {
                objc_enumerationMutation(connectedVehicles);
              }

              v18 = *(*(&v30 + 1) + 8 * v17);
              v19 = [NSSet setWithObject:v11];
              v20 = [(CRCarKitServiceAgent *)self vehicleMatchingMessagingVehicle:v18 inVehicles:v19];

              if (v20)
              {
                break;
              }

              if (v15 == ++v17)
              {
                v15 = [connectedVehicles countByEnumeratingWithState:&v30 objects:v38 count:16];
                if (v15)
                {
                  goto LABEL_13;
                }

                goto LABEL_19;
              }
            }

            if ([v18 supportsCarPlayConnectionRequest])
            {
              [(CRCarKitServiceAgent *)self _sendCarPlayAvailabilityForMessagingVehicle:v18 storedVehicle:v11];
              v26 = 1;
              goto LABEL_27;
            }

            v8 = v28;
            if ([v18 supportsWirelessCarPlay])
            {
              messagingConnector2 = [(CRCarKitServiceAgent *)self messagingConnector];
              [messagingConnector2 requestWiFiCredentialsFromVehicle:v18];
            }

            v26 = 1;
          }

          else
          {
LABEL_19:

            connectedVehicles = [v11 bluetoothAddress];
            if (!connectedVehicles)
            {
LABEL_27:
              v9 = v27;
              v8 = v28;
              goto LABEL_32;
            }

            v21 = CarGeneralLogging();
            v8 = v28;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v41 = connectedVehicles;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "attempting Bluetooth connection to %@", buf, 0xCu);
            }

            bluetoothManager = [(CRCarKitServiceAgent *)self bluetoothManager];
            [bluetoothManager connectWithBluetoothAddress:connectedVehicles];
          }

          v9 = v27;
        }

        else
        {
          connectedVehicles = CarGeneralLogging();
          if (os_log_type_enabled(connectedVehicles, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v11;
            _os_log_impl(&_mh_execute_header, connectedVehicles, OS_LOG_TYPE_DEFAULT, "no WiFi credentials request necessary for %@", buf, 0xCu);
          }
        }

LABEL_32:

        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (!v8)
      {
LABEL_36:

        vehiclesCopy = v25;
        v6 = v26;
        goto LABEL_37;
      }
    }
  }

  v6 = 0;
LABEL_37:

  return v6 & 1;
}

- (void)_sendCarPlayAvailabilityForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle
{
  vehicleCopy = vehicle;
  storedVehicleCopy = storedVehicle;
  if ([vehicleCopy supportsCarPlayConnectionRequest])
  {
    preferencesManager = [(CRCarKitServiceAgent *)self preferencesManager];
    isCarPlayAllowed = [preferencesManager isCarPlayAllowed];

    if (isCarPlayAllowed)
    {
      if (storedVehicleCopy)
      {
        bluetoothAddress = [storedVehicleCopy bluetoothAddress];
        v10 = bluetoothAddress != 0;

        pairingStatus = [storedVehicleCopy pairingStatus];
      }

      else
      {
        v10 = 0;
        pairingStatus = 0;
      }

      v14 = [vehicleCopy transportType] == 2 || objc_msgSend(vehicleCopy, "transportType") == 4;
      if ([vehicleCopy supportsThemeAssets])
      {
        if (pairingStatus == 2 || ((v15 = [(CRCarKitServiceAgent *)self carPlaySimulatorActive]) == 0 ? (messagingConnector3 = &__kCFBooleanFalse) : (messagingConnector3 = &__kCFBooleanTrue), storedVehicleCopy && v15))
        {
          featuresAvailabilityAgent = [(CRCarKitServiceAgent *)self featuresAvailabilityAgent];
          identifier = [storedVehicleCopy identifier];
          messagingConnector3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", CRCarPlayFeaturesAllFerriteFeatures() & [featuresAvailabilityAgent supportedCarPlayFeaturesForVehicleIdentifier:identifier]);
        }

        if (v14)
        {
          goto LABEL_22;
        }
      }

      else
      {
        messagingConnector3 = 0;
        if (v14)
        {
LABEL_22:
          if (pairingStatus)
          {
            v18 = v10;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
            v20 = pairingStatus == 2;
            if (pairingStatus == 2)
            {
              v21 = &__kCFBooleanTrue;
            }

            else
            {
              v21 = 0;
            }

            v22 = [NSNumber numberWithBool:v20];
            [messagingConnector sendWiredCarPlayAvailable:v21 wirelessCarPlayAvailable:v22 themeAssetsAvailable:messagingConnector3 toVehicle:vehicleCopy];
          }

          goto LABEL_35;
        }
      }

      messagingConnector2 = [(CRCarKitServiceAgent *)self messagingConnector];
      v24 = messagingConnector2;
      if (v10)
      {
        v25 = [NSNumber numberWithBool:pairingStatus == 2];
        [v24 sendWiredCarPlayAvailable:&__kCFBooleanTrue wirelessCarPlayAvailable:v25 themeAssetsAvailable:messagingConnector3 toVehicle:vehicleCopy];
      }

      else
      {
        [messagingConnector2 sendWiredCarPlayAvailable:&__kCFBooleanTrue wirelessCarPlayAvailable:0 themeAssetsAvailable:messagingConnector3 toVehicle:vehicleCopy];
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.starting-wired-connection", 0, 0, 1u);
    }

    else
    {
      messagingConnector3 = [(CRCarKitServiceAgent *)self messagingConnector];
      if ([vehicleCopy supportsThemeAssets])
      {
        v13 = &__kCFBooleanFalse;
      }

      else
      {
        v13 = 0;
      }

      [messagingConnector3 sendWiredCarPlayAvailable:&__kCFBooleanFalse wirelessCarPlayAvailable:&__kCFBooleanFalse themeAssetsAvailable:v13 toVehicle:vehicleCopy];
    }

LABEL_35:
  }
}

- (BOOL)_sendDeviceIdentifiersForMessagingVehicle:(id)vehicle pairingStatus:(unint64_t)status
{
  vehicleCopy = vehicle;
  if ([vehicleCopy supportsCarPlayConnectionRequest])
  {
    goto LABEL_7;
  }

  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100084E3C();
  }

  if (!-[CRCarKitServiceAgent _isRestricted:](self, "_isRestricted:", 0) && ((v8 = [vehicleCopy transportType], status == 2) || v8 == 1))
  {
    messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
    [messagingConnector sendDeviceTransportIdentifiersToVehicle:vehicleCopy];

    v9 = 1;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

  return v9;
}

- (BOOL)_requestWiFiCredentialsIfNecessaryForApprovedMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  if ([vehicleCopy transportType] == 2 && objc_msgSend(vehicleCopy, "supportsWirelessCarPlay") && (objc_msgSend(vehicleCopy, "supportsCarPlayConnectionRequest") & 1) == 0)
  {
    messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
    [messagingConnector requestWiFiCredentialsFromVehicle:vehicleCopy];

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasExistingBluetoothPairingForPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  messagingVehicle = [flowCopy messagingVehicle];
  bluetoothAddress = [messagingVehicle bluetoothAddress];

  if (!bluetoothAddress)
  {
    bluetoothDeviceIdentifier = [flowCopy bluetoothDeviceIdentifier];
    if (!bluetoothDeviceIdentifier)
    {
      v7 = 0;
      goto LABEL_5;
    }

    bluetoothAddress = bluetoothDeviceIdentifier;
  }

  v7 = [CRBluetoothManager hasPairingWithAddress:bluetoothAddress];

LABEL_5:
  return v7;
}

- (BOOL)startSessionRequestSupportedForPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];

  v5 = userInfo;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  supportsStartSessionRequest = [v6 supportsStartSessionRequest];
  bOOLValue = [supportsStartSessionRequest BOOLValue];

  return bOOLValue;
}

- (BOOL)enhancedIntegrationSupportedForPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];
  if (userInfo && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = userInfo;
  }

  else
  {
    v6 = 0;
  }

  messagingVehicle = [flowCopy messagingVehicle];
  v8 = [(CRCarKitServiceAgent *)self _shouldPromptEnhancedIntegrationForStoredVehicle:v6 messagingVehicle:messagingVehicle];

  return v8;
}

- (BOOL)needsBluetoothTurnedOnForPairingPromptFlow:(id)flow
{
  bluetoothManager = [(CRCarKitServiceAgent *)self bluetoothManager];
  isPowered = [bluetoothManager isPowered];

  return isPowered ^ 1;
}

- (BOOL)needsWiFiTurnedOnForPairingPromptFlow:(id)flow
{
  wifiManager = [(CRCarKitServiceAgent *)self wifiManager];
  isPowered = [wifiManager isPowered];

  return isPowered ^ 1;
}

- (BOOL)supportsThemeAssetsForPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  messagingVehicle = [flowCopy messagingVehicle];
  messagingVehicle2 = [flowCopy messagingVehicle];

  certificateSerialNumber = [messagingVehicle2 certificateSerialNumber];

  featuresAvailabilityAgent = [(CRCarKitServiceAgent *)self featuresAvailabilityAgent];
  v9 = [featuresAvailabilityAgent supportedCarPlayFeaturesForCertificateSerial:certificateSerialNumber];

  v10 = CRCarPlayFeaturesAllFerriteFeatures() & v9;
  v11 = CRCarPlayFeaturesAllFerriteFeatures();
  v12 = CarPairingLogging();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v16 = 134218240;
    v17 = v9;
    v18 = 1024;
    v19 = v10 == v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "features: %lu, supportsThemeAssets: %u", &v16, 0x12u);
  }

  supportsThemeAssets = [messagingVehicle supportsThemeAssets];
  if (v10 == v11)
  {
    v14 = supportsThemeAssets;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)outOfBandPairingDeclineCountForPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  v4 = [objc_opt_class() _pairingIdentifierForPromptFlow:flowCopy];

  if (v4)
  {
    v5 = [objc_opt_class() _pairingDeclineCountForIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)incrementOutOfBandPairingDeclineCountForPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  v4 = [objc_opt_class() _pairingIdentifierForPromptFlow:flowCopy];

  if (v4)
  {
    [objc_opt_class() _incrementPairingDeclineCountForIdentifier:v4];
  }
}

- (id)carKeyInfoForPairingPromptFlow:(id)flow
{
  messagingVehicle = [flow messagingVehicle];
  digitalCarKeyInformation = [messagingVehicle digitalCarKeyInformation];

  return digitalCarKeyInformation;
}

- (id)assetProgressForPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];

  v6 = userInfo;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  vehicleAssetManager = [(CRCarKitServiceAgent *)self vehicleAssetManager];
  v9 = [vehicleAssetManager assetProgressForVehicle:v7];

  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "prompt flow using asset progress: %@", &v12, 0xCu);
  }

  return v9;
}

- (void)fetchAppClipIdentifiersForPairingPromptFlow:(id)flow completion:(id)completion
{
  completionCopy = completion;
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];

  v8 = userInfo;
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  identifier = [v9 identifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000311F4;
  v12[3] = &unk_1000DE380;
  v13 = completionCopy;
  v11 = completionCopy;
  [CRAppClipsDeclarationClient fetchSupportedAppClipsForPairedVehicleIdentifier:identifier completion:v12];
}

- (void)pairingPromptFlow:(id)flow wantsToPerformPresentation:(id)presentation
{
  flowCopy = flow;
  presentationCopy = presentation;
  setupPromptDirector = [(CRCarKitServiceAgent *)self setupPromptDirector];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000314FC;
  v13[3] = &unk_1000DE680;
  v14 = flowCopy;
  v15 = presentationCopy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003161C;
  v11[3] = &unk_1000DD348;
  v12 = v14;
  v9 = v14;
  v10 = presentationCopy;
  [setupPromptDirector performWithPromptPresenter:v13 errorHandler:v11];
}

- (void)_dismissPairingPromptFlow:(id)flow
{
  flowCopy = flow;
  bluetoothDeviceIdentifier = [flowCopy bluetoothDeviceIdentifier];
  currentBluetoothConfirmationHandler = [(CRCarKitServiceAgent *)self currentBluetoothConfirmationHandler];
  v6 = currentBluetoothConfirmationHandler;
  if (currentBluetoothConfirmationHandler && bluetoothDeviceIdentifier)
  {
    (*(currentBluetoothConfirmationHandler + 16))(currentBluetoothConfirmationHandler, bluetoothDeviceIdentifier, 0);
  }

  [(CRCarKitServiceAgent *)self setCurrentBluetoothConfirmationHandler:0];
  [(CRCarKitServiceAgent *)self _invokeCurrentBluetoothPairingCompletionWithDeviceIdentifier:bluetoothDeviceIdentifier success:0 error:0];
  if ([flowCopy startedFromCarKey])
  {
    objc_opt_class();
    userInfo = [flowCopy userInfo];
    if (userInfo && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = userInfo;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      isPaired = [v8 isPaired];
    }

    else
    {
      isPaired = 0;
    }

    [(CRCarKitServiceAgent *)self _delegateHeadUnitPairingDidCompletePairingFlow:isPaired forBluetoothAddress:bluetoothDeviceIdentifier error:0];
  }

  currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  [currentPromptFlowController invalidate];

  [(CRCarKitServiceAgent *)self setCurrentPromptFlowController:0];
  setupPromptDirector = [(CRCarKitServiceAgent *)self setupPromptDirector];
  [setupPromptDirector dismissPromptPresenter];
}

- (void)pairingPromptFlow:(id)flow didCancelWithRequiredStepsRemaining:(BOOL)remaining
{
  remainingCopy = remaining;
  flowCopy = flow;
  v7 = CarPairingLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (remainingCopy)
    {
      v8 = @"YES";
    }

    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "canceling setup prompt flow, required steps remaining: %{public}@", &v15, 0xCu);
  }

  if (remainingCopy)
  {
    objc_opt_class();
    userInfo = [flowCopy userInfo];
    if (userInfo && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = userInfo;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v11 = [(CRCarKitServiceAgent *)self removeVehicle:v10];
      v12 = CarPairingLogging();
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = 138412290;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "canceling setup prompt flow: removed vehicle %@", &v15, 0xCu);
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100084F94();
      }
    }
  }

  [(CRCarKitServiceAgent *)self _dismissPairingPromptFlow:flowCopy];
  v14 = CarPairingLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "canceled setup prompt flow", &v15, 2u);
  }
}

- (void)didCompletePairingPromptFlow:(id)flow
{
  flowCopy = flow;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "completed setup prompt flow", v6, 2u);
  }

  [(CRCarKitServiceAgent *)self _dismissPairingPromptFlow:flowCopy];
}

- (void)_setVehiclePairingStatus:(unint64_t)status forPromptFlow:(id)flow
{
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];
  if (userInfo && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = userInfo;
  }

  else
  {
    v7 = 0;
  }

  if ([v7 pairingStatus] != status)
  {
    [v7 setPairingStatus:status];
    vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
    v9 = [vehicleStore saveVehicle:v7];

    [flowCopy setUserInfo:v9];
  }
}

- (void)pairingPromptFlow:(id)flow receivedAllowWhileLockedResponse:(BOOL)response
{
  responseCopy = response;
  flowCopy = flow;
  v7 = CarGeneralLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (responseCopy)
  {
    if (v8)
    {
      *buf = 0;
      v9 = 2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "allow while locked accepted", buf, 2u);
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "allow while locked declined", v10, 2u);
    }

    v9 = 1;
  }

  [(CRCarKitServiceAgent *)self _setVehiclePairingStatus:v9 forPromptFlow:flowCopy];
}

- (void)pairingPromptFlow:(id)flow receivedUseWirelessResponse:(BOOL)response turnOnBluetooth:(BOOL)bluetooth turnOnWiFi:(BOOL)fi
{
  fiCopy = fi;
  bluetoothCopy = bluetooth;
  responseCopy = response;
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];
  if (userInfo && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = userInfo;
  }

  else
  {
    v12 = 0;
  }

  messagingVehicle = [flowCopy messagingVehicle];
  if (bluetoothCopy)
  {
    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "turning on Bluetooth due to OOB pairing alert acceptance", buf, 2u);
    }

    bluetoothManager = [(CRCarKitServiceAgent *)self bluetoothManager];
    [bluetoothManager setPowered:1];
  }

  if (fiCopy)
  {
    v16 = CarGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "turning on Wi-Fi due to OOB pairing alert acceptance", v22, 2u);
    }

    wifiManager = [(CRCarKitServiceAgent *)self wifiManager];
    [wifiManager setPowered:1];
  }

  v18 = CarGeneralLogging();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (responseCopy)
  {
    if (v19)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Wired BT pairing alert accepted", v21, 2u);
    }

    [(CRCarKitServiceAgent *)self _setVehiclePairingStatus:2 forPromptFlow:flowCopy];
    [(CRCarKitServiceAgent *)self _beginWiredPairingWithMessagingVehicle:messagingVehicle storedVehicle:v12];
  }

  else
  {
    if (v19)
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Wired BT pairing alert declined", v20, 2u);
    }
  }
}

- (void)pairingPromptFlow:(id)flow receivedConnectCarPlayResponse:(BOOL)response turnOnWiFi:(BOOL)fi
{
  fiCopy = fi;
  responseCopy = response;
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];
  if (userInfo && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = userInfo;
  }

  else
  {
    v10 = 0;
  }

  messagingVehicle = [flowCopy messagingVehicle];
  if (fiCopy)
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "turning on Wi-Fi due to connect alert acceptance", buf, 2u);
    }

    wifiManager = [(CRCarKitServiceAgent *)self wifiManager];
    [wifiManager setPowered:1];
  }

  v14 = CarPairingLogging();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (responseCopy)
  {
    if (v15)
    {
      *v22 = 0;
      v16 = 2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connect CarPlay accepted", v22, 2u);
    }

    else
    {
      v16 = 2;
    }
  }

  else
  {
    if (v15)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connect CarPlay declined", v21, 2u);
    }

    v16 = 1;
  }

  [(CRCarKitServiceAgent *)self _setVehiclePairingStatus:v16 forPromptFlow:flowCopy];
  supportsCarPlayConnectionRequest = [messagingVehicle supportsCarPlayConnectionRequest];
  transportType = [messagingVehicle transportType];
  if (supportsCarPlayConnectionRequest)
  {
    if (transportType == 2 || [messagingVehicle transportType] == 4)
    {
      [(CRCarKitServiceAgent *)self _sendCarPlayAvailabilityForMessagingVehicle:messagingVehicle storedVehicle:v10];
    }
  }

  else if (transportType == 2)
  {
    [(CRCarKitServiceAgent *)self _sendDeviceIdentifiersForMessagingVehicle:messagingVehicle pairingStatus:v16];
    if ([v10 isPaired])
    {
      [(CRCarKitServiceAgent *)self _requestWiFiCredentialsIfNecessaryForApprovedMessagingVehicle:messagingVehicle];
    }
  }

  if (responseCopy)
  {
    v19 = [(CRCarKitServiceAgent *)self _wirelessPairingAnalyticsDescriptionForMessagingVehicle:messagingVehicle storedVehicle:v10];
    v20 = +[CARAnalytics sharedInstance];
    [v20 userCreatedWirelessPairingWithSource:@"Settings" payload:v19];
  }
}

- (void)pairingPromptFlow:(id)flow receivedEnhancedIntegrationResponse:(BOOL)response
{
  responseCopy = response;
  messagingVehicle = [flow messagingVehicle];
  v7 = CarGeneralLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (responseCopy)
  {
    if (v8)
    {
      *buf = 0;
      v9 = 2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enhanced integration alert accepted", buf, 2u);
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    if (v8)
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enhanced integration alert declined", v10, 2u);
    }

    v9 = 1;
  }

  [(CRCarKitServiceAgent *)self _enhancedIntegrationUpdatedForMessagingVehicle:messagingVehicle status:v9];
}

- (void)didHeadUnitPairWithBluetoothAddress:(id)address
{
  addressCopy = address;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  bluetoothDeviceIdentifier = [currentPromptFlowController bluetoothDeviceIdentifier];

  if (!bluetoothDeviceIdentifier)
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000850D0();
    }

    goto LABEL_10;
  }

  v7 = [bluetoothDeviceIdentifier isEqual:addressCopy];
  v8 = CarPairingLogging();
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100085040();
    }

LABEL_10:

    [(CRCarKitServiceAgent *)self _delegateHeadUnitPairingDidCompletePairingFlow:0 forBluetoothAddress:addressCopy error:0];
    goto LABEL_11;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 141558275;
    v11 = 1752392040;
    v12 = 2113;
    v13 = addressCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "head unit pairing succeeded for Bluetooth addresses %{private, mask.hash}@", &v10, 0x16u);
  }

LABEL_11:
}

- (void)didFailToHeadUnitPairWithBluetoothAddress:(id)address error:(id)error
{
  addressCopy = address;
  errorCopy = error;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10008510C();
  }

  currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  v10 = currentPromptFlowController;
  if (currentPromptFlowController)
  {
    [currentPromptFlowController handleCarKeyInitiatedPairingFailed];
  }

  else
  {
    v11 = CarPairingLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100085194();
    }
  }
}

- (void)_presentApprovalIfNecessaryForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle
{
  vehicleCopy = vehicle;
  storedVehicleCopy = storedVehicle;
  v7 = storedVehicleCopy;
  if (!storedVehicleCopy || ![storedVehicleCopy pairingStatus])
  {
    preferencesManager = [(CRCarKitServiceAgent *)self preferencesManager];
    isCarPlaySetupEnabled = [preferencesManager isCarPlaySetupEnabled];
    bOOLValue = [isCarPlaySetupEnabled BOOLValue];

    if (bOOLValue)
    {
      [(CRCarKitServiceAgent *)self _presentCarPlaySetupForMessagingVehicle:vehicleCopy storedVehicle:v7];
    }

    else
    {
      [(CRCarKitServiceAgent *)self _presentApprovalUsingAlertsForMessagingVehicle:vehicleCopy];
    }
  }
}

- (void)_presentCarPlaySetupForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle
{
  vehicleCopy = vehicle;
  storedVehicleCopy = storedVehicle;
  if (storedVehicleCopy)
  {
    v8 = storedVehicleCopy;
    if ([storedVehicleCopy pairingStatus])
    {
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pairingStatus] == 2);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [CRVehicle vehicleForMessagingVehicle:vehicleCopy];
    v8 = [(CRCarKitServiceAgent *)self saveVehicle:v10];

    v11 = CarPairingLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "saved vehicle for first pairing flow: %@", &v16, 0xCu);
    }
  }

  v9 = 0;
LABEL_8:
  currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  if (currentPromptFlowController)
  {
    v13 = currentPromptFlowController;
    v14 = CarPairingLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "connected messaging vehicle again, dismissing the first pairing flow", &v16, 2u);
    }

    [(CRCarKitServiceAgent *)self _dismissPairingPromptFlow:v13];
  }

  v15 = objc_alloc_init(CRPairingPromptFlowController);
  [(CRPairingPromptFlowController *)v15 setPromptDelegate:self];
  [(CRCarKitServiceAgent *)self setCurrentPromptFlowController:v15];
  [(CRPairingPromptFlowController *)v15 setUserInfo:v8];
  [(CRPairingPromptFlowController *)v15 handleConnectedMessagingVehicle:vehicleCopy pairingAccepted:v9];
}

- (void)_presentApprovalUsingAlertsForMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  if ([vehicleCopy transportType] == 2 || objc_msgSend(vehicleCopy, "transportType") == 4)
  {
    v5 = CROutstandingWirelessVehicleApprovalAlert;
LABEL_4:
    v6 = [[v5 alloc] initWithMessagingVehicle:vehicleCopy];
    goto LABEL_5;
  }

  if ([vehicleCopy supportsUSBCarPlay])
  {
    v5 = CROutstandingWiredVehicleApprovalAlert;
    goto LABEL_4;
  }

  if ([vehicleCopy supportsWirelessCarPlay] && objc_msgSend(vehicleCopy, "supportsWiredBluetoothPairing"))
  {
    [(CRCarKitServiceAgent *)self _presentWiredBluetoothPairingAlertForMessagingVehicle:vehicleCopy storedVehicle:0];
  }

  v6 = 0;
LABEL_5:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  outstandingApprovalAlerts = [(CRCarKitServiceAgent *)self outstandingApprovalAlerts];
  v8 = [outstandingApprovalAlerts countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = *v40;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(outstandingApprovalAlerts);
        }

        messagingVehicle = [*(*(&v39 + 1) + 8 * v10) messagingVehicle];
        v12 = [messagingVehicle isEqual:vehicleCopy];

        if (v12)
        {

          goto LABEL_17;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [outstandingApprovalAlerts countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = sub_100022D08;
  v37[4] = sub_100022D18;
  v38 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100033088;
  v34[3] = &unk_1000DDE60;
  v36 = v37;
  v34[4] = self;
  v13 = v6;
  v35 = v13;
  v14 = objc_retainBlock(v34);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100022D08;
  v32 = sub_100022D18;
  v33 = [CRVehicle vehicleForMessagingVehicle:vehicleCopy];
  v15 = [(CRCarKitServiceAgent *)self saveVehicle:v29[5]];
  v16 = v29[5];
  v29[5] = v15;

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100033130;
  v22 = &unk_1000DE6A8;
  selfCopy = self;
  v17 = v13;
  v24 = v17;
  v26 = &v28;
  v25 = vehicleCopy;
  v27 = v37;
  v18 = objc_retainBlock(&v19);
  if ([v17 presentAlertWithCompletion:{v18, v19, v20, v21, v22, selfCopy}])
  {
    (v14[2])(v14);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v37, 8);

LABEL_17:
}

- (void)_dismissApprovalAlertForMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  outstandingApprovalAlerts = [(CRCarKitServiceAgent *)self outstandingApprovalAlerts];
  v6 = [outstandingApprovalAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(outstandingApprovalAlerts);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        messagingVehicle = [v10 messagingVehicle];
        v12 = [messagingVehicle isEqual:vehicleCopy];

        if (v12)
        {
          [v10 dismissAlert];
        }
      }

      v7 = [outstandingApprovalAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_dismissApprovalAlerts
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  outstandingApprovalAlerts = [(CRCarKitServiceAgent *)self outstandingApprovalAlerts];
  v3 = [outstandingApprovalAlerts countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(outstandingApprovalAlerts);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissAlert];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [outstandingApprovalAlerts countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)_pairingIdentifierForMessagingVehicle:(id)vehicle
{
  bluetoothAddress = [vehicle bluetoothAddress];
  v4 = bluetoothAddress;
  if (bluetoothAddress)
  {
    v5 = bluetoothAddress;
  }

  else
  {
    v5 = @"CarPlay";
  }

  v6 = v5;

  return v5;
}

+ (id)_pairingIdentifierForPromptFlow:(id)flow
{
  flowCopy = flow;
  objc_opt_class();
  userInfo = [flowCopy userInfo];

  v5 = userInfo;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    identifier = [v6 identifier];
    uUIDString = [identifier UUIDString];
  }

  else
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100085248();
    }

    uUIDString = 0;
  }

  return uUIDString;
}

+ (unint64_t)_pairingDeclineCountForIdentifier:(id)identifier
{
  v3 = [CRVehicleStore payloadForVehicleWithIdentifier:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OOB decline count: %@", &v8, 0xCu);
    }
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (void)_incrementPairingDeclineCountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self _pairingDeclineCountForIdentifier:identifierCopy];
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:v5];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Incrementing OOB decline count from %{public}@", &v9, 0xCu);
  }

  v8 = [NSNumber numberWithUnsignedInteger:v5 + 1];
  [CRVehicleStore setPayload:v8 forVehicleWithIdentifier:identifierCopy];
}

+ (unint64_t)_declineTypeForOOBPairingMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  if (([vehicleCopy supportsWiredBluetoothPairing] & 1) == 0)
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Doesn't support wired BT pairing.";
      v7 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v8 = 0;
    goto LABEL_12;
  }

  if ([vehicleCopy supportsUSBCarPlay])
  {
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v6 = "Supports USB - setting USB decline type.";
      v7 = &v12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = [self _pairingIdentifierForMessagingVehicle:vehicleCopy];
  v10 = [self _pairingDeclineCountForIdentifier:v9];

  if (v10 <= 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

LABEL_12:

  return v8;
}

- (void)_presentWiredBluetoothPairingAlertForMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle
{
  vehicleCopy = vehicle;
  storedVehicleCopy = storedVehicle;
  v8 = [(CRMessagingVehicleAlert *)[CROutstandingVehiclePairingAlert alloc] initWithMessagingVehicle:vehicleCopy];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100022D08;
  v27[4] = sub_100022D18;
  v28 = 0;
  bluetoothManager = [(CRCarKitServiceAgent *)self bluetoothManager];
  isPowered = [bluetoothManager isPowered];

  [(CROutstandingVehiclePairingAlert *)v8 setShouldEnableBluetooth:isPowered ^ 1];
  v11 = [objc_opt_class() _declineTypeForOOBPairingMessagingVehicle:vehicleCopy];
  [(CROutstandingVehiclePairingAlert *)v8 setDeclineType:v11];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100033D64;
  v24[3] = &unk_1000DDE60;
  v26 = v27;
  v24[4] = self;
  v12 = v8;
  v25 = v12;
  v13 = objc_retainBlock(v24);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100033E0C;
  v18[3] = &unk_1000DE6D0;
  v18[4] = self;
  v14 = v12;
  v19 = v14;
  v23 = v11;
  v15 = vehicleCopy;
  v20 = v15;
  v16 = storedVehicleCopy;
  v21 = v16;
  v22 = v27;
  v17 = objc_retainBlock(v18);
  if ([(CRMessagingVehicleAlert *)v14 presentAlertWithCompletion:v17])
  {
    (v13[2])(v13);
  }

  _Block_object_dispose(v27, 8);
}

- (void)_beginWiredPairingWithMessagingVehicle:(id)vehicle storedVehicle:(id)storedVehicle
{
  vehicleCopy = vehicle;
  storedVehicleCopy = storedVehicle;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = vehicleCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "starting wired Bluetooth pairing with %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_100022D08;
  v22 = sub_100022D18;
  v23 = os_transaction_create();
  objc_initWeak(&location, self);
  messagingConnector = [(CRCarKitServiceAgent *)self messagingConnector];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034258;
  v12[3] = &unk_1000DE6F8;
  v10 = storedVehicleCopy;
  v13 = v10;
  v11 = vehicleCopy;
  v14 = v11;
  objc_copyWeak(&v17, &location);
  selfCopy = self;
  p_buf = &buf;
  [messagingConnector beginWiredBluetoothPairingWithVehicle:v11 completion:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

- (void)_dismissPairingAlertForMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  outstandingPairingAlerts = [(CRCarKitServiceAgent *)self outstandingPairingAlerts];
  v6 = [outstandingPairingAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(outstandingPairingAlerts);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        messagingVehicle = [v10 messagingVehicle];
        v12 = [messagingVehicle isEqual:vehicleCopy];

        if (v12)
        {
          [v10 dismissAlert];
        }
      }

      v7 = [outstandingPairingAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_dismissPairingAlerts
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  outstandingPairingAlerts = [(CRCarKitServiceAgent *)self outstandingPairingAlerts];
  v3 = [outstandingPairingAlerts countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(outstandingPairingAlerts);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissAlert];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [outstandingPairingAlerts countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_presentReconnectionEnableWiFiAlertForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presenting alert to ask to turn on Wi-Fi", buf, 2u);
  }

  v6 = [[CRReconnectionEnableWiFiAlert alloc] initWithVehicle:vehicleCopy];
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_100022D08;
  v23 = sub_100022D18;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000348F4;
  v16[3] = &unk_1000DDE60;
  v18 = buf;
  v16[4] = self;
  v7 = v6;
  v17 = v7;
  v8 = objc_retainBlock(v16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10003499C;
  v12[3] = &unk_1000DE720;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v10 = vehicleCopy;
  v14 = v10;
  v15 = buf;
  v11 = objc_retainBlock(v12);
  if ([(CRReconnectionEnableWiFiAlert *)v9 presentAlertWithCompletion:v11])
  {
    (v8[2])(v8);
  }

  _Block_object_dispose(buf, 8);
}

- (id)_presentedReconnectionEnableWiFiAlertForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  outstandingEnableWiFiAlerts = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
  v6 = [outstandingEnableWiFiAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(outstandingEnableWiFiAlerts);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        vehicle = [v9 vehicle];
        v11 = [vehicle isEqual:vehicleCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [outstandingEnableWiFiAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_dismissReconnectionEnableWiFiAlertForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  outstandingEnableWiFiAlerts = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
  v6 = [outstandingEnableWiFiAlerts copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        vehicle = [v12 vehicle];
        v14 = [vehicle isEqual:vehicleCopy];

        if (v14)
        {
          [v12 dismissAlert];
          outstandingEnableWiFiAlerts2 = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
          [outstandingEnableWiFiAlerts2 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_dismissReconnectionEnableWiFiAlertExceptForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  outstandingEnableWiFiAlerts = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
  v6 = [outstandingEnableWiFiAlerts copy];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        vehicle = [v12 vehicle];
        v14 = [vehicle isEqual:vehicleCopy];

        if ((v14 & 1) == 0)
        {
          [v12 dismissAlert];
          outstandingEnableWiFiAlerts2 = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
          [outstandingEnableWiFiAlerts2 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)vehicleIdentifierForCertificateSerial:(id)serial reply:(id)reply
{
  serialCopy = serial;
  replyCopy = reply;
  v26 = 0;
  v8 = [(CRCarKitServiceAgent *)self _isRestricted:&v26];
  v9 = v26;
  if (v8)
  {
    replyCopy[2](replyCopy, 0, v9);
    goto LABEL_16;
  }

  if (!serialCopy)
  {
LABEL_15:
    v21 = [NSError errorWithDomain:NSCocoaErrorDomain code:-99 userInfo:0];
    replyCopy[2](replyCopy, 0, v21);

    goto LABEL_16;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
  allStoredVehicles = [vehicleStore allStoredVehicles];

  v12 = [allStoredVehicles countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v12)
  {
LABEL_12:

    goto LABEL_15;
  }

  v13 = v12;
  v14 = *v23;
LABEL_6:
  v15 = 0;
  while (1)
  {
    if (*v23 != v14)
    {
      objc_enumerationMutation(allStoredVehicles);
    }

    v16 = *(*(&v22 + 1) + 8 * v15);
    certificateSerialNumber = [v16 certificateSerialNumber];
    v18 = [serialCopy isEqualToData:certificateSerialNumber];

    if (v18)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [allStoredVehicles countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  identifier = [v16 identifier];
  uUIDString = [identifier UUIDString];

  if (!uUIDString)
  {
    goto LABEL_15;
  }

  (replyCopy)[2](replyCopy, uUIDString, 0);

LABEL_16:
}

- (void)_enhancedIntegrationUpdatedForMessagingVehicle:(id)vehicle status:(unint64_t)status
{
  v6 = [CRVehicle vehicleForMessagingVehicle:vehicle];
  [v6 setSupportsEnhancedIntegration:1];
  [v6 setEnhancedIntegrationStatus:status];
  vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
  v8 = [vehicleStore saveVehicle:v6];

  v9 = +[NSDistributedNotificationCenter defaultCenter];
  v10 = CREnhancedIntegrationConsentDidChangeNotification;
  v14 = CREnhancedIntegrationConsentDidChangeNotificationVehicleCertificateSerialKey;
  certificateSerialNumber = [v8 certificateSerialNumber];
  v12 = certificateSerialNumber;
  if (!certificateSerialNumber)
  {
    v12 = +[NSData data];
  }

  v15 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v9 postNotificationName:v10 object:0 userInfo:v13];

  if (!certificateSerialNumber)
  {
  }
}

- (void)_presentEnhancedIntegrationAlertForMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting enhanced integration alert", buf, 2u);
  }

  v6 = [(CRMessagingVehicleAlert *)[CRVehicleEnhancedIntegrationAlert alloc] initWithMessagingVehicle:vehicleCopy];
  *buf = 0;
  v20 = buf;
  v21 = 0x3032000000;
  v22 = sub_100022D08;
  v23 = sub_100022D18;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000354D0;
  v16[3] = &unk_1000DDE60;
  v18 = buf;
  v16[4] = self;
  v7 = v6;
  v17 = v7;
  v8 = objc_retainBlock(v16);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100035544;
  v12[3] = &unk_1000DE720;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v10 = vehicleCopy;
  v14 = v10;
  v15 = buf;
  v11 = objc_retainBlock(v12);
  if ([(CRMessagingVehicleAlert *)v9 presentAlertWithCompletion:v11])
  {
    (v8[2])(v8);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_dismissEnhancedIntegrationAlertForMessagingVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  outstandingEnhancedIntegrationAlerts = [(CRCarKitServiceAgent *)self outstandingEnhancedIntegrationAlerts];
  v6 = [outstandingEnhancedIntegrationAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(outstandingEnhancedIntegrationAlerts);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        messagingVehicle = [v10 messagingVehicle];
        v12 = [messagingVehicle isEqual:vehicleCopy];

        if (v12)
        {
          [v10 dismissAlert];
        }
      }

      v7 = [outstandingEnhancedIntegrationAlerts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_dismissEnhancedIntegrationAlerts
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  outstandingEnhancedIntegrationAlerts = [(CRCarKitServiceAgent *)self outstandingEnhancedIntegrationAlerts];
  v3 = [outstandingEnhancedIntegrationAlerts countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(outstandingEnhancedIntegrationAlerts);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissAlert];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [outstandingEnhancedIntegrationAlerts countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)bluetoothManager:(id)manager didChangePowerState:(BOOL)state
{
  if (state)
  {
    bTPowerMessagingVehicle = [(CRCarKitServiceAgent *)self BTPowerMessagingVehicle];
    if (bTPowerMessagingVehicle)
    {
      v6 = bTPowerMessagingVehicle;
      bTPowerStoredVehicle = [(CRCarKitServiceAgent *)self BTPowerStoredVehicle];

      if (bTPowerStoredVehicle)
      {
        bTPowerMessagingVehicle2 = [(CRCarKitServiceAgent *)self BTPowerMessagingVehicle];
        bTPowerStoredVehicle2 = [(CRCarKitServiceAgent *)self BTPowerStoredVehicle];
        [(CRCarKitServiceAgent *)self _beginWiredPairingWithMessagingVehicle:bTPowerMessagingVehicle2 storedVehicle:bTPowerStoredVehicle2];
      }
    }
  }
}

- (void)bluetoothManager:(id)manager requestsConfirmationForDeviceAddress:(id)address name:(id)name numericCode:(id)code responseHandler:(id)handler
{
  managerCopy = manager;
  addressCopy = address;
  nameCopy = name;
  codeCopy = code;
  handlerCopy = handler;
  currentPromptFlowController = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  if (currentPromptFlowController)
  {
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100035B7C;
    v22[3] = &unk_1000DE748;
    objc_copyWeak(&v25, &location);
    v18 = addressCopy;
    v23 = v18;
    v24 = handlerCopy;
    [(CRCarKitServiceAgent *)self setCurrentBluetoothConfirmationHandler:v22];
    v19 = CarPairingLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "showing numeric confirmation in pairing prompt flow", v21, 2u);
    }

    [currentPromptFlowController handleBluetoothPairingConfirmationRequestForDeviceIdentifier:v18 vehicleName:nameCopy numericCode:codeCopy];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = CarPairingLogging();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100085284();
    }
  }
}

- (void)sessionDidConnect:(id)connect
{
  startSessionTimer = [(CRCarKitServiceAgent *)self startSessionTimer];

  if (startSessionTimer)
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startSessionTimer invalidate", v7, 2u);
    }

    startSessionTimer2 = [(CRCarKitServiceAgent *)self startSessionTimer];
    [startSessionTimer2 invalidate];

    [(CRCarKitServiceAgent *)self setStartSessionTimer:0];
  }
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  configuration = [disconnectCopy configuration];
  deviceIdentifier = [configuration deviceIdentifier];

  lastStartSessionDeviceID = [(CRCarKitServiceAgent *)self lastStartSessionDeviceID];
  v8 = [lastStartSessionDeviceID isEqualToString:deviceIdentifier];

  if (v8)
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "calling stoppedSessionForHostIdentifier: via last started deviceID", buf, 2u);
    }

    sessionRequestClient = [(CRCarKitServiceAgent *)self sessionRequestClient];
    [sessionRequestClient stoppedSessionForHostIdentifier:deviceIdentifier];
  }

  else
  {
    vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
    mFiCertificateSerialNumber = [disconnectCopy MFiCertificateSerialNumber];
    sessionRequestClient = [vehicleStore vehicleForCertificateSerial:mFiCertificateSerialNumber];

    if (sessionRequestClient)
    {
      supportsStartSessionRequest = [sessionRequestClient supportsStartSessionRequest];
      bOOLValue = [supportsStartSessionRequest BOOLValue];

      if (bOOLValue)
      {
        v15 = CarGeneralLogging();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "calling stoppedSessionForHostIdentifier: via vehicle record", v33, 2u);
        }

        sessionRequestClient2 = [(CRCarKitServiceAgent *)self sessionRequestClient];
        [sessionRequestClient2 stoppedSessionForHostIdentifier:deviceIdentifier];
      }
    }
  }

  if ((+[CRCarPlayPreferences hasShownEditWidgetsNotification]& 1) == 0)
  {
    configuration2 = [disconnectCopy configuration];
    lodWidgetsMode = [configuration2 lodWidgetsMode];

    if (lodWidgetsMode != 1)
    {
      vehicleStore2 = [(CRCarKitServiceAgent *)self vehicleStore];
      mFiCertificateSerialNumber2 = [disconnectCopy MFiCertificateSerialNumber];
      v21 = [vehicleStore2 vehicleForCertificateSerial:mFiCertificateSerialNumber2];

      identifier = [v21 identifier];
      uUIDString = [identifier UUIDString];
      v24 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.General/CARPLAY/vehicle/%@/widgets", uUIDString];

      v25 = [NSURL URLWithString:v24];
      v26 = CRLocalizedStringForKey();
      v27 = CRLocalizedStringForKey();
      [(CRCarKitServiceAgent *)self postIconBannerToPhone:v26 notificationMessage:v27 defaultActionURL:v25];

      [CRCarPlayPreferences setHasShownEditWidgetsNotification:1];
    }
  }

  [(CRCarKitServiceAgent *)self setLastStartSessionDeviceID:0];
  if ([(CRCarKitServiceAgent *)self shouldDisconnectOnSessionDisconnect])
  {
    vehicleStore3 = [(CRCarKitServiceAgent *)self vehicleStore];
    mFiCertificateSerialNumber3 = [disconnectCopy MFiCertificateSerialNumber];
    v30 = [vehicleStore3 vehicleForCertificateSerial:mFiCertificateSerialNumber3];

    wifiManager = [(CRCarKitServiceAgent *)self wifiManager];
    carplayWiFiUUID = [v30 carplayWiFiUUID];
    [wifiManager disassociateFromNetworkWithCarPlayUUID:carplayWiFiUUID];
  }

  [(CRCarKitServiceAgent *)self setShouldDisconnectOnSessionDisconnect:0];
}

- (id)storedVehicleForSession:(id)session
{
  mFiCertificateSerialNumber = [session MFiCertificateSerialNumber];
  if (mFiCertificateSerialNumber)
  {
    vehicleStore = [(CRCarKitServiceAgent *)self vehicleStore];
    v6 = [vehicleStore vehicleForCertificateSerial:mFiCertificateSerialNumber];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCarPlaySimulatorActive:(BOOL)active
{
  if (self->_carPlaySimulatorActive != active)
  {
    if (self->_carPlaySimulatorActive)
    {
      sessionRequestClient = [(CRCarKitServiceAgent *)self sessionRequestClient];
      [sessionRequestClient cancelRequests];
    }

    self->_carPlaySimulatorActive = active;
  }
}

- (void)setRemoteDeviceConnected:(BOOL)connected
{
  if (self->_remoteDeviceConnected != connected)
  {
    self->_remoteDeviceConnected = connected;
  }
}

- (CRHeadUnitPairingPresenterDelegate)headUnitPairingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headUnitPairingDelegate);

  return WeakRetained;
}

- (CRCarKitMonitoringServiceAgent)monitoringService
{
  WeakRetained = objc_loadWeakRetained(&self->_monitoringService);

  return WeakRetained;
}

- (CRSetupPromptDirectorAgent)setupPromptDirector
{
  WeakRetained = objc_loadWeakRetained(&self->_setupPromptDirector);

  return WeakRetained;
}

- (CRVehicleAssetManaging)vehicleAssetManager
{
  WeakRetained = objc_loadWeakRetained(&self->_vehicleAssetManager);

  return WeakRetained;
}

@end