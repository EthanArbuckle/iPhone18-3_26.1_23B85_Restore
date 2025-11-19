@interface CRCarKitServiceAgent
+ (id)_pairingIdentifierForMessagingVehicle:(id)a3;
+ (id)_pairingIdentifierForPromptFlow:(id)a3;
+ (unint64_t)_declineTypeForOOBPairingMessagingVehicle:(id)a3;
+ (unint64_t)_pairingDeclineCountForIdentifier:(id)a3;
+ (void)_incrementPairingDeclineCountForIdentifier:(id)a3;
- (BOOL)_currentlyConnectedVehicleSupportsMixableAudio;
- (BOOL)_isRestricted:(id *)a3;
- (BOOL)_requestWiFiCredentialsIfNecessaryForApprovedMessagingVehicle:(id)a3;
- (BOOL)_sendDeviceIdentifiersForMessagingVehicle:(id)a3 pairingStatus:(unint64_t)a4;
- (BOOL)_shouldPromptEnhancedIntegrationForStoredVehicle:(id)a3 messagingVehicle:(id)a4;
- (BOOL)attemptConnectionWithVehicles:(id)a3;
- (BOOL)enhancedIntegrationSupportedForPairingPromptFlow:(id)a3;
- (BOOL)hasExistingBluetoothPairingForPairingPromptFlow:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)needsBluetoothTurnedOnForPairingPromptFlow:(id)a3;
- (BOOL)needsWiFiTurnedOnForPairingPromptFlow:(id)a3;
- (BOOL)postInCarNotificationForVehicle:(id)a3;
- (BOOL)postOutOfCarNotificationForVehicle:(id)a3;
- (BOOL)removeVehicle:(id)a3;
- (BOOL)startSessionRequestSupportedForPairingPromptFlow:(id)a3;
- (BOOL)supportsThemeAssetsForPairingPromptFlow:(id)a3;
- (CRCarKitMonitoringServiceAgent)monitoringService;
- (CRCarKitServiceAgent)initWithVehicleStore:(id)a3 sessionStatus:(id)a4 bluetoothManager:(id)a5 preferences:(id)a6 connectionTimeServiceAgent:(id)a7;
- (CRHeadUnitPairingPresenterDelegate)headUnitPairingDelegate;
- (CRSetupPromptDirectorAgent)setupPromptDirector;
- (CRVehicleAssetManaging)vehicleAssetManager;
- (id)_presentedReconnectionEnableWiFiAlertForVehicle:(id)a3;
- (id)_wirelessPairingAnalyticsDescriptionForMessagingVehicle:(id)a3 storedVehicle:(id)a4;
- (id)accessoryRadarDescription:(id)a3;
- (id)assetProgressForPairingPromptFlow:(id)a3;
- (id)carKeyInfoForPairingPromptFlow:(id)a3;
- (id)pairedVehiclesConnectedOnBluetooth;
- (id)saveVehicle:(id)a3;
- (id)storedVehicleForSession:(id)a3;
- (id)vehicleMatchingMessagingVehicle:(id)a3 inVehicles:(id)a4;
- (unint64_t)outOfBandPairingDeclineCountForPairingPromptFlow:(id)a3;
- (void)_beginWiredPairingWithMessagingVehicle:(id)a3 storedVehicle:(id)a4;
- (void)_dismissApprovalAlertForMessagingVehicle:(id)a3;
- (void)_dismissApprovalAlerts;
- (void)_dismissEnhancedIntegrationAlertForMessagingVehicle:(id)a3;
- (void)_dismissEnhancedIntegrationAlerts;
- (void)_dismissPairingAlertForMessagingVehicle:(id)a3;
- (void)_dismissPairingAlerts;
- (void)_dismissPairingPromptFlow:(id)a3;
- (void)_dismissReconnectionEnableWiFiAlertExceptForVehicle:(id)a3;
- (void)_dismissReconnectionEnableWiFiAlertForVehicle:(id)a3;
- (void)_enhancedIntegrationUpdatedForMessagingVehicle:(id)a3 status:(unint64_t)a4;
- (void)_findWirelessPairedVehicleForAccessoryConnectionIdentifier:(unint64_t)a3 result:(id)a4;
- (void)_findWirelessPairedVehicleForMessagingVehicle:(id)a3 result:(id)a4;
- (void)_handleCarPlayAllowedDidChange;
- (void)_mainQueue_startSessionForHost:(id)a3 reply:(id)a4;
- (void)_mainQueue_updateClusterAssetIdentifier:(id)a3 assetVersion:(id)a4 sdkVersion:(id)a5 forVehicle:(id)a6;
- (void)_presentApprovalIfNecessaryForMessagingVehicle:(id)a3 storedVehicle:(id)a4;
- (void)_presentApprovalUsingAlertsForMessagingVehicle:(id)a3;
- (void)_presentCarPlaySetupForMessagingVehicle:(id)a3 storedVehicle:(id)a4;
- (void)_presentEnhancedIntegrationAlertForMessagingVehicle:(id)a3;
- (void)_presentReconnectionEnableWiFiAlertForVehicle:(id)a3;
- (void)_presentWiredBluetoothPairingAlertForMessagingVehicle:(id)a3 storedVehicle:(id)a4;
- (void)_saveWiFiCredentials:(id)a3 forAccessoryConnectionIdentifier:(unint64_t)a4 result:(id)a5;
- (void)_saveWiFiCredentials:(id)a3 fromMessagingVehicle:(id)a4 forWirelessPairedVehicle:(id)a5 result:(id)a6;
- (void)_sendCarPlayAvailabilityForMessagingVehicle:(id)a3 storedVehicle:(id)a4;
- (void)_setVehiclePairingStatus:(unint64_t)a3 forPromptFlow:(id)a4;
- (void)_setupStartSessionTimerIfNeeded;
- (void)allowsConnectionsForCertificateSerial:(id)a3 reply:(id)a4;
- (void)allowsConnectionsForWiFiUUID:(id)a3 reply:(id)a4;
- (void)bluetoothManager:(id)a3 didChangePowerState:(BOOL)a4;
- (void)bluetoothManager:(id)a3 requestsConfirmationForDeviceAddress:(id)a4 name:(id)a5 numericCode:(id)a6 responseHandler:(id)a7;
- (void)collectVehicleLogs:(id)a3;
- (void)dealloc;
- (void)deviceSupportedCarPlayFeaturesWithReply:(id)a3;
- (void)didCompletePairingPromptFlow:(id)a3;
- (void)didFailToHeadUnitPairWithBluetoothAddress:(id)a3 error:(id)a4;
- (void)didHeadUnitPairWithBluetoothAddress:(id)a3;
- (void)disablesCarPlayFeatures:(unint64_t)a3 forVehicleIdentifier:(id)a4 reply:(id)a5;
- (void)enumerateStoredVehiclesForMessagingVehicles:(id)a3 usingBlock:(id)a4;
- (void)fetchAllVehiclesWithReply:(id)a3;
- (void)fetchAppClipIdentifiersForPairingPromptFlow:(id)a3 completion:(id)a4;
- (void)fetchInstrumentClusterURLsWithReply:(id)a3;
- (void)fetchOverrideCanvasSizeWithCertificateSerialNumber:(id)a3 displays:(id)a4 reply:(id)a5;
- (void)fetchScaledDisplaysWithCertificateSerialNumber:(id)a3 displays:(id)a4 reply:(id)a5;
- (void)fetchScaledDisplaysWithReply:(id)a3 reply:(id)a4;
- (void)fetchViewAreasForVehicleIdentifier:(id)a3 reply:(id)a4;
- (void)handleAnyMessagingConnectionsToVehicles;
- (void)handleBluetoothClassicPairingCompletedForDeviceAddress:(id)a3 name:(id)a4 preApproved:(BOOL)a5 reply:(id)a6;
- (void)handleCarPlayAllowedDidChange;
- (void)handleCarPlayConnectionRequestForConnectionID:(unsigned int)a3 startSessionProperties:(id)a4 reply:(id)a5;
- (void)handleCarPlayDiagnosticsWithDeviceScreenshotURL:(id)a3 carScreenshotURL:(id)a4 attachmentURLs:(id)a5 activeBundleIdentifier:(id)a6 reply:(id)a7;
- (void)handleCarPlayRestrictionChangedWithReply:(id)a3;
- (void)handleDidConnectBluetoothAddress:(id)a3 reply:(id)a4;
- (void)handleDidConnectMessagingToVehicles:(id)a3;
- (void)handleDidDisconnectBluetoothAddress:(id)a3 reply:(id)a4;
- (void)handleVehicleStoreAvailabiltyDidChange:(id)a3;
- (void)hasVehiclesWithReply:(id)a3;
- (void)incrementOutOfBandPairingDeclineCountForPairingPromptFlow:(id)a3;
- (void)isBluetoothInCarWithReply:(id)a3;
- (void)isCarPlayAllowedWithReply:(id)a3;
- (void)isEnhancedIntegrationEnabledWithCertificateSerial:(id)a3 reply:(id)a4;
- (void)isPairedWithCertificateSerial:(id)a3 reply:(id)a4;
- (void)isPreflightThemeAssetEnabledWithReply:(id)a3;
- (void)notifyFoundNoMatchingAssetForVehicleIdentifier:(id)a3 nextRequiredCompatibilityVersion:(id)a4 requestDescription:(id)a5;
- (void)pairingPromptFlow:(id)a3 didCancelWithRequiredStepsRemaining:(BOOL)a4;
- (void)pairingPromptFlow:(id)a3 receivedAllowWhileLockedResponse:(BOOL)a4;
- (void)pairingPromptFlow:(id)a3 receivedConnectCarPlayResponse:(BOOL)a4 turnOnWiFi:(BOOL)a5;
- (void)pairingPromptFlow:(id)a3 receivedEnhancedIntegrationResponse:(BOOL)a4;
- (void)pairingPromptFlow:(id)a3 receivedUseWirelessResponse:(BOOL)a4 turnOnBluetooth:(BOOL)a5 turnOnWiFi:(BOOL)a6;
- (void)pairingPromptFlow:(id)a3 wantsToPerformPresentation:(id)a4;
- (void)postBannerToPhone:(id)a3 notificationMessage:(id)a4 reply:(id)a5;
- (void)postIconBannerToPhone:(id)a3 notificationMessage:(id)a4 defaultActionURL:(id)a5;
- (void)removeVehicle:(id)a3 reply:(id)a4;
- (void)saveVehicle:(id)a3 reply:(id)a4;
- (void)saveViewAreas:(id)a3 forVehicleIdentifier:(id)a4 reply:(id)a5;
- (void)saveWiFiCredentials:(id)a3 forAccessoryConnectionIdentifier:(unint64_t)a4 reply:(id)a5;
- (void)serviceConnector:(id)a3 completedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5;
- (void)serviceConnector:(id)a3 didConnectUnsupportedAccessoryWithBluetoothAddress:(id)a4;
- (void)serviceConnector:(id)a3 didConnectVehicle:(id)a4;
- (void)serviceConnector:(id)a3 didDisconnectVehicle:(id)a4;
- (void)serviceConnector:(id)a3 didUpdateVehicle:(id)a4;
- (void)serviceConnector:(id)a3 failedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5 error:(id)a6;
- (void)serviceConnector:(id)a3 receivedStartSessionMessage:(id)a4 fromVehicle:(id)a5;
- (void)serviceConnector:(id)a3 requestsPairingConfirmationForBluetoothLEIdentifier:(id)a4 name:(id)a5 numericCode:(id)a6 responseHandler:(id)a7;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)setCarPlayFeatures:(unint64_t)a3 disabled:(BOOL)a4 forVehicleIdentifier:(id)a5 reply:(id)a6;
- (void)setCarPlaySimulatorActive:(BOOL)a3;
- (void)setPreflightThemeAssetEnabled:(BOOL)a3 reply:(id)a4;
- (void)setRemoteDeviceConnected:(BOOL)a3;
- (void)setVideoDiagnosticsEnabled:(BOOL)a3 forVehicleIdentifier:(id)a4 reply:(id)a5;
- (void)setVideoSubtitleSettings:(id)a3 forVehicleIdentifier:(id)a4 reply:(id)a5;
- (void)startBluetoothClassicPairingForDeviceAddress:(id)a3 deviceName:(id)a4 numericCode:(id)a5 showBluetoothOnlyOption:(BOOL)a6 reply:(id)a7;
- (void)startBluetoothLEPairingForIdentifier:(id)a3 deviceName:(id)a4 reply:(id)a5;
- (void)stopSessionWithSessionIdentifier:(id)a3 reason:(unint64_t)a4 reply:(id)a5;
- (void)supportedAirPlayFeaturesForVehicleIdentifier:(id)a3 reply:(id)a4;
- (void)supportedCarPlayFeaturesForCertificateSerial:(id)a3 reply:(id)a4;
- (void)updateIncompletePairingsMatchingMessagingVehicles:(id)a3;
- (void)updateStoredVehicle:(id)a3 usingMessagingVehicle:(id)a4;
- (void)vehicleIdentifierForCertificateSerial:(id)a3 reply:(id)a4;
- (void)videoAnalyticsForVehicleIdentifier:(id)a3 reply:(id)a4;
- (void)videoDiagnosticsEnabledForVehicleIdentifier:(id)a3 reply:(id)a4;
- (void)videoLicensesTextForVehicleIdentifier:(id)a3 reply:(id)a4;
- (void)videoSubtitleSettingsForVehicleIdentifier:(id)a3 reply:(id)a4;
- (void)wantsCarPlayControlAdvertisingForUSBWithReply:(id)a3;
- (void)wantsCarPlayControlAdvertisingForWiFiUUID:(id)a3 reply:(id)a4;
@end

@implementation CRCarKitServiceAgent

- (CRCarKitServiceAgent)initWithVehicleStore:(id)a3 sessionStatus:(id)a4 bluetoothManager:(id)a5 preferences:(id)a6 connectionTimeServiceAgent:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v44.receiver = self;
  v44.super_class = CRCarKitServiceAgent;
  v17 = [(CRCarKitServiceAgent *)&v44 init];
  v18 = v17;
  if (v17)
  {
    [(CRCarKitServiceAgent *)v17 setVehicleStore:v12];
    [(CRCarKitServiceAgent *)v18 setSessionStatus:v13];
    [v13 addSessionObserver:v18];
    v19 = [[CARMessagingServiceConnector alloc] initWithVehicleStore:v12];
    [(CRCarKitServiceAgent *)v18 setMessagingConnector:v19];
    [(CARMessagingServiceConnector *)v19 setDelegate:v18];
    v20 = [[CRWirelessSessionAssertionManager alloc] initWithSessionStatus:v13 connectionTimeServiceAgent:v16 messagingConnector:v19];
    [(CRWirelessSessionAssertionManager *)v20 setStoredVehicleProvider:v18];
    [(CRCarKitServiceAgent *)v18 setAssertionManager:v20];
    v21 = +[CARAnalytics sharedInstance];
    [v21 setConnectionTimeServiceAgent:v16];

    [(CRCarKitServiceAgent *)v18 setBluetoothManager:v14];
    v22 = [(CRCarKitServiceAgent *)v18 bluetoothManager];
    [v22 addObserver:v18];

    v23 = [(CRCarKitServiceAgent *)v18 bluetoothManager];
    [v23 setPairingDelegate:v18];

    v24 = objc_alloc_init(CARSessionRequestClient);
    [(CRCarKitServiceAgent *)v18 setSessionRequestClient:v24];

    [(CRCarKitServiceAgent *)v18 setPreferencesManager:v15];
    v25 = [(CRCarKitServiceAgent *)v18 preferencesManager];
    [v25 setPreferencesDelegate:v18];

    v26 = [[CRFeaturesAvailabilityAgent alloc] initWithPreferencesManager:v15 vehicleStore:v12];
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

    v34 = [(CRCarKitServiceAgent *)v18 vehicleStore];
    v35 = [v34 allStoredVehicles];

    v36 = [[CRLoggingChannelManager alloc] initWithSessionStatus:v13];
    loggingChannelManager = v18->_loggingChannelManager;
    v18->_loggingChannelManager = v36;

    objc_storeStrong(&v18->_connectionTimeServiceAgent, a7);
    v38 = _os_feature_enabled_impl();
    v39 = 0;
    if (v38)
    {
      v39 = [[CRVideoSettingsSessionController alloc] initWithSessionStatus:v13 storedVehicleProvider:v18];
    }

    videoSettingSessionController = v18->_videoSettingSessionController;
    v18->_videoSettingSessionController = v39;

    v41 = [[_TtC7carkitd16CRSessionBooster alloc] initWithSessionStatus:v13];
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.carkit"];
  v7 = [v6 BOOLValue];

  if (v7)
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

    [v5 setExportedInterface:v8];
    [v5 setExportedObject:self];
    v31 = CarGeneralLogging();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v5 serviceName];
      v33 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v5 processIdentifier]);
      *buf = 138412802;
      v36 = v5;
      v37 = 2112;
      v38 = v32;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Receiving CarKit service connection %@ to service %@ from %@", buf, 0x20u);
    }

    [v5 resume];
  }

  else
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000840C8(v5);
    }
  }

  return v7;
}

- (void)saveVehicle:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSXPCConnection currentConnection];
    *buf = 67109379;
    *&buf[4] = [v9 processIdentifier];
    LOWORD(v15) = 2113;
    *(&v15 + 2) = v6;
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
  v10 = v6;
  v12 = v10;
  dispatch_sync(&_dispatch_main_q, block);
  (*(v7 + 2))(v7, *(v15 + 40), 0);

  _Block_object_dispose(buf, 8);
}

- (void)removeVehicle:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSXPCConnection currentConnection];
    *buf = 67109379;
    *&buf[4] = [v9 processIdentifier];
    LOWORD(v15) = 2113;
    *(&v15 + 2) = v6;
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
  v10 = v6;
  v12 = v10;
  dispatch_sync(&_dispatch_main_q, block);
  (*(v7 + 2))(v7, *(v15 + 24), 0);

  _Block_object_dispose(buf, 8);
}

- (void)fetchAllVehiclesWithReply:(id)a3
{
  v4 = a3;
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
  v4[2](v4, v13[5], v7[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

- (void)hasVehiclesWithReply:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023200;
  v5[3] = &unk_1000DDEB0;
  v6 = a3;
  v4 = v6;
  [(CRCarKitServiceAgent *)self fetchAllVehiclesWithReply:v5];
}

- (void)handleDidConnectBluetoothAddress:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "attempting fast-reconnection with %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000234E0;
  block[3] = &unk_1000DDED8;
  block[4] = self;
  v12 = &v15;
  v9 = v6;
  v11 = v9;
  v13 = &v21;
  v14 = &v27;
  dispatch_sync(&_dispatch_main_q, block);
  v7[2](v7, *(v28 + 24), v22[5], v16[5]);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

- (void)handleDidDisconnectBluetoothAddress:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000239B4;
  block[3] = &unk_1000DDF00;
  block[4] = self;
  v8 = v6;
  v10 = v8;
  v11 = &v12;
  dispatch_sync(&_dispatch_main_q, block);
  (*(v7 + 2))(v7, *(v13 + 24), 0);

  _Block_object_dispose(&v12, 8);
}

- (void)isBluetoothInCarWithReply:(id)a3
{
  v4 = a3;
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
  v4[2](v4, *(v19 + 24), v13[5], v7[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

- (void)handleBluetoothClassicPairingCompletedForDeviceAddress:(id)a3 name:(id)a4 preApproved:(BOOL)a5 reply:(id)a6
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
  v14 = a3;
  v15 = a4;
  v17 = a6;
  v18 = v20;
  v16 = self;
  v19 = a5;
  v10 = v17;
  v11 = v15;
  v12 = v14;
  dispatch_sync(&_dispatch_main_q, v13);

  _Block_object_dispose(v20, 8);
}

- (void)startBluetoothLEPairingForIdentifier:(id)a3 deviceName:(id)a4 reply:(id)a5
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100024180;
  v11[3] = &unk_1000DDFA0;
  v12 = a3;
  v13 = a4;
  v14 = self;
  v15 = a5;
  v8 = v15;
  v9 = v13;
  v10 = v12;
  dispatch_sync(&_dispatch_main_q, v11);
}

- (void)startBluetoothClassicPairingForDeviceAddress:(id)a3 deviceName:(id)a4 numericCode:(id)a5 showBluetoothOnlyOption:(BOOL)a6 reply:(id)a7
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024628;
  block[3] = &unk_1000DDFC8;
  v18 = a6;
  v14 = a3;
  v15 = self;
  v16 = a5;
  v17 = a7;
  v10 = v16;
  v11 = v17;
  v12 = v14;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)handleCarPlayConnectionRequestForConnectionID:(unsigned int)a3 startSessionProperties:(id)a4 reply:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100024B20;
  v10[3] = &unk_1000DE040;
  v11 = a4;
  v12 = self;
  v13 = a5;
  v14 = a3;
  v8 = v13;
  v9 = v11;
  dispatch_sync(&_dispatch_main_q, v10);
}

- (void)_setupStartSessionTimerIfNeeded
{
  v3 = [(CRCarKitServiceAgent *)self setupPromptDirector];

  if (v3)
  {
    v4 = CarPairingLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "startSessionTimer setup", buf, 2u);
    }

    v5 = [(CRCarKitServiceAgent *)self startSessionTimer];
    [v5 invalidate];

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

- (void)postBannerToPhone:(id)a3 notificationMessage:(id)a4 reply:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[CARDNDManager sharedManager];
  v11 = [v10 alertManager];

  [v11 postBannerWithTitle:v9 message:v8 destinations:3];
  v7[2](v7);
}

- (void)postIconBannerToPhone:(id)a3 notificationMessage:(id)a4 defaultActionURL:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[CARDNDManager sharedManager];
  v11 = [v10 alertManager];

  [v11 postIconBannerWithTitle:v9 message:v8 defaultActionURL:v7 destinations:3];
}

- (void)wantsCarPlayControlAdvertisingForUSBWithReply:(id)a3
{
  v4 = a3;
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
  v4[2](v4, *(v13 + 24), v7[5]);
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
}

- (void)wantsCarPlayControlAdvertisingForWiFiUUID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v10 = v8;
  v11 = self;
  v12 = &v14;
  v13 = &v20;
  dispatch_sync(&_dispatch_main_q, v9);
  v7[2](v7, *(v21 + 24), v15[5]);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)saveWiFiCredentials:(id)a3 forAccessoryConnectionIdentifier:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
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
    v30 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "received WiFi credentials for connectionID %lu", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026518;
  block[3] = &unk_1000DE0E0;
  block[4] = self;
  v11 = v8;
  v13 = v11;
  v14 = &v23;
  v15 = &v17;
  v16 = a4;
  dispatch_sync(&_dispatch_main_q, block);
  v9[2](v9, v24[5] != 0, v18[5]);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)allowsConnectionsForWiFiUUID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v10 = v8;
  dispatch_sync(&_dispatch_main_q, v9);
  v7[2](v7, *(v20 + 24), v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)saveViewAreas:(id)a3 forVehicleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = a5;
  v16 = v10;
  v11 = v9;
  v14 = v11;
  v12 = v8;
  v15 = v12;
  v18 = &v19;
  dispatch_sync(&_dispatch_main_q, v13);
  if (v10)
  {
    (*(v10 + 2))(v10, v20[5], v26[5]);
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)fetchViewAreasForVehicleIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
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
  v7 = a4;
  v11 = v7;
  v8 = v6;
  v10 = v8;
  v13 = &v14;
  dispatch_sync(&_dispatch_main_q, block);
  (*(v7 + 2))(v7, v15[5], v21[5]);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)allowsConnectionsForCertificateSerial:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v10 = v8;
  dispatch_sync(&_dispatch_main_q, v9);
  v7[2](v7, *(v20 + 24), v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)isPairedWithCertificateSerial:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v10 = v8;
  v12 = &v19;
  dispatch_sync(&_dispatch_main_q, v9);
  v7[2](v7, *(v20 + 24), v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)isEnhancedIntegrationEnabledWithCertificateSerial:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v10 = v8;
  v12 = &v19;
  dispatch_sync(&_dispatch_main_q, v9);
  v7[2](v7, v20[3], v14[5]);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);
}

- (void)handleCarPlayRestrictionChangedWithReply:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027A50;
  block[3] = &unk_1000DD480;
  block[4] = self;
  v3 = a3;
  dispatch_sync(&_dispatch_main_q, block);
  v3[2](v3);
}

- (void)isCarPlayAllowedWithReply:(id)a3
{
  v5 = a3;
  v6 = [(CRCarKitServiceAgent *)self preferencesManager];
  (*(a3 + 2))(v5, [v6 isCarPlayAllowed], 0);
}

- (void)deviceSupportedCarPlayFeaturesWithReply:(id)a3
{
  v4 = a3;
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
  v4[2](v4, v6, 0);

  _Block_object_dispose(&v8, 8);
}

- (void)disablesCarPlayFeatures:(unint64_t)a3 forVehicleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v21 = 0;
  v22[0] = &v21;
  v22[1] = 0x2020000000;
  v23 = 0;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100027DD8;
  v16 = &unk_1000DE180;
  v19 = &v21;
  v20 = a3;
  v17 = self;
  v10 = v8;
  v18 = v10;
  dispatch_sync(&_dispatch_main_q, &v13);
  v11 = CarGeneralLogging();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100084478(v22);
  }

  v12 = [NSNumber numberWithBool:*(v22[0] + 24), v13, v14, v15, v16, v17];
  v9[2](v9, v12, 0);

  _Block_object_dispose(&v21, 8);
}

- (void)setCarPlayFeatures:(unint64_t)a3 disabled:(BOOL)a4 forVehicleIdentifier:(id)a5 reply:(id)a6
{
  v10 = a5;
  v11 = a6;
  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x2020000000;
  v21 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027F94;
  block[3] = &unk_1000DE1A8;
  v16 = &v19;
  v17 = a3;
  block[4] = self;
  v18 = a4;
  v12 = v10;
  v15 = v12;
  dispatch_sync(&_dispatch_main_q, block);
  v13 = CarGeneralLogging();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10008450C(v20);
  }

  (*(v11 + 2))(v11, *(v20[0] + 24), 0);
  _Block_object_dispose(&v19, 8);
}

- (void)supportedCarPlayFeaturesForCertificateSerial:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
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
  v7[2](v7, v11, 0);

  _Block_object_dispose(&v15, 8);
}

- (void)supportedAirPlayFeaturesForVehicleIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
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

  v7[2](v7, v15[5], 0);
  _Block_object_dispose(&v14, 8);
}

- (void)videoSubtitleSettingsForVehicleIdentifier:(id)a3 reply:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000285DC;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)setVideoSubtitleSettings:(id)a3 forVehicleIdentifier:(id)a4 reply:(id)a5
{
  v8 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100028898;
  v12[3] = &unk_1000DE220;
  v12[4] = self;
  v13 = a4;
  v14 = v8;
  v15 = a5;
  v9 = v8;
  v10 = v15;
  v11 = v13;
  dispatch_sync(&_dispatch_main_q, v12);
}

- (void)videoDiagnosticsEnabledForVehicleIdentifier:(id)a3 reply:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028BCC;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)setVideoDiagnosticsEnabled:(BOOL)a3 forVehicleIdentifier:(id)a4 reply:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100028E40;
  v9[3] = &unk_1000DE268;
  v9[4] = self;
  v10 = a4;
  v11 = a5;
  v12 = a3;
  v7 = v11;
  v8 = v10;
  dispatch_sync(&_dispatch_main_q, v9);
}

- (void)videoAnalyticsForVehicleIdentifier:(id)a3 reply:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100029194;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)videoLicensesTextForVehicleIdentifier:(id)a3 reply:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000293F0;
  block[3] = &unk_1000DE1D0;
  block[4] = self;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)stopSessionWithSessionIdentifier:(id)a3 reason:(unint64_t)a4 reply:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100029654;
  v9[3] = &unk_1000DE308;
  v9[4] = self;
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v7 = v10;
  v8 = v11;
  dispatch_sync(&_dispatch_main_q, v9);
}

- (void)handleCarPlayDiagnosticsWithDeviceScreenshotURL:(id)a3 carScreenshotURL:(id)a4 attachmentURLs:(id)a5 activeBundleIdentifier:(id)a6 reply:(id)a7
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002990C;
  v16[3] = &unk_1000DE330;
  v16[4] = self;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v11 = v21;
  v12 = v20;
  v13 = v19;
  v14 = v18;
  v15 = v17;
  dispatch_sync(&_dispatch_main_q, v16);
}

- (void)collectVehicleLogs:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100029F0C;
  v4[3] = &unk_1000DD988;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_sync(&_dispatch_main_q, v4);
}

- (void)fetchInstrumentClusterURLsWithReply:(id)a3
{
  v4 = a3;
  v5 = [NSError errorWithDomain:@"com.apple.carkit" code:5 userInfo:0];
  (*(a3 + 2))(v4, &__NSArray0__struct, v5);
}

- (id)accessoryRadarDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [v3 manufacturer];
  v6 = [v3 modelNumber];
  v7 = [v3 firmwareRevision];
  v8 = [v3 hardwareRevision];
  v9 = [v3 serialNumber];
  v10 = [v3 ppid];

  v11 = [NSString stringWithFormat:@"Accessory Name: %@\nManufacturer: %@\nModel Number: %@\nFirmware Revision: %@\nHardware Revision: %@\nSerial Number: %@\nPPID: %@\n", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)fetchScaledDisplaysWithReply:(id)a3 reply:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = _os_feature_enabled_impl();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002A37C;
  v9[3] = &unk_1000DE380;
  v10 = v5;
  v8 = v5;
  [CRScreenScaleHeuristics scaledDisplays:v6 withDisplayScaling:v7 reply:v9];
}

- (void)fetchOverrideCanvasSizeWithCertificateSerialNumber:(id)a3 displays:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (-[CRCarKitServiceAgent vehicleStore](self, "vehicleStore"), v11 = objc_claimAutoreleasedReturnValue(), [v11 vehicleForCertificateSerial:v8], v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
  {
    [v12 displayScaleMode];
    v13 = CRCanvasSizeOverridesWithAirplayDisplays();
    v14 = 0;
    v10[2](v10, v13, v14);
  }

  else
  {
    v15 = CarGeneralLogging();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1000846D8();
    }

    v12 = [NSError errorWithDomain:@"com.apple.carkit" code:6 userInfo:0];
    v10[2](v10, 0, v12);
  }
}

- (void)fetchScaledDisplaysWithCertificateSerialNumber:(id)a3 displays:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
    v16[0] = v8;
    v16[1] = self;
    v17 = v9;
    v18 = v10;
    v13 = v10;
    dispatch_async(&_dispatch_main_q, v15);
  }

  else
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10002A6AC;
    v20[3] = &unk_1000DE380;
    v12 = &v21;
    v21 = v10;
    v14 = v10;
    [CRScreenScaleHeuristics scaledDisplays:v9 withDisplayScaling:0 reply:v20];
  }
}

- (void)isPreflightThemeAssetEnabledWithReply:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002A944;
  block[3] = &unk_1000DD960;
  v5 = a3;
  v3 = v5;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)setPreflightThemeAssetEnabled:(BOOL)a3 reply:(id)a4
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AA50;
  block[3] = &unk_1000DE3A8;
  v7 = a3;
  block[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_sync(&_dispatch_main_q, block);
}

- (void)serviceConnector:(id)a3 requestsPairingConfirmationForBluetoothLEIdentifier:(id)a4 name:(id)a5 numericCode:(id)a6 responseHandler:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AD14;
  block[3] = &unk_1000DE3F8;
  block[4] = self;
  v19 = v11;
  v21 = v12;
  v22 = a7;
  v20 = v13;
  v14 = v12;
  v15 = v13;
  v16 = v22;
  v17 = v11;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)serviceConnector:(id)a3 failedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5 error:(id)a6
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002B0E4;
  v11[3] = &unk_1000DE420;
  v11[4] = self;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v8 = v14;
  v9 = v13;
  v10 = v12;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)serviceConnector:(id)a3 completedPairingForBluetoothLEIdentifier:(id)a4 name:(id)a5
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002B260;
  v7[3] = &unk_1000DD580;
  v8 = a4;
  v9 = self;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)serviceConnector:(id)a3 didConnectVehicle:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B358;
  v5[3] = &unk_1000DD580;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)serviceConnector:(id)a3 didUpdateVehicle:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002B61C;
  v5[3] = &unk_1000DD580;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)serviceConnector:(id)a3 receivedStartSessionMessage:(id)a4 fromVehicle:(id)a5
{
  v7 = a4;
  v8 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = CarGeneralLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "CarPlay connection request startSessionMessage: %@", buf, 0xCu);
  }

  if (v7)
  {
    v24 = 0;
    v10 = [(CRCarKitServiceAgent *)self _isRestricted:&v24];
    v11 = v24;
    if (v10)
    {
      v12 = CarGeneralLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1000842B4();
      }
    }

    else
    {
      v13 = +[NSMutableDictionary dictionary];
      v14 = [v7 SSID];
      [v13 setObject:v14 forKey:@"SSID_STR"];

      v15 = [v7 passphrase];
      [v13 setObject:v15 forKey:@"password"];

      v16 = [v7 channel];
      [v13 setObject:v16 forKey:@"CHANNEL"];

      v17 = [v7 securityType];
      [v13 setObject:v17 forKey:@"securityType"];

      v12 = [v8 PPID];
      if (v12)
      {
        [v13 setObject:v12 forKey:@"CARPLAY_PPID"];
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10002B9C0;
      v19[3] = &unk_1000DE4D8;
      v20 = v8;
      v21 = self;
      v22 = v13;
      v23 = v7;
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

- (void)serviceConnector:(id)a3 didDisconnectVehicle:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002BF18;
  v5[3] = &unk_1000DD580;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)serviceConnector:(id)a3 didConnectUnsupportedAccessoryWithBluetoothAddress:(id)a4
{
  v5 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = CarPairingLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 141558275;
    v10 = 1752392040;
    v11 = 2113;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "connected an iAP accessory that doesn't support CarPlay: %{private, mask.hash}@", &v9, 0x16u);
  }

  v7 = [(CRCarKitServiceAgent *)self currentPromptFlowController];

  if (v7)
  {
    v8 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
    [v8 handleUnsupportedMessagingConnectionForDeviceIdentifier:v5];
  }
}

- (void)notifyFoundNoMatchingAssetForVehicleIdentifier:(id)a3 nextRequiredCompatibilityVersion:(id)a4 requestDescription:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v11 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 messagingVehicle];
    objc_opt_class();
    v14 = [v12 userInfo];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v13 && v15)
    {
      v16 = [v15 identifier];
      v17 = [v16 isEqual:v8];

      if (v17)
      {
        if (CRIsInternalInstall())
        {
          v18 = [NSString stringWithFormat:@"[Internal]\nRequested asset matching:\n%@", v10];
          v19 = v18;
          if (v9)
          {
            v20 = [v18 stringByAppendingFormat:@"An asset is available but requires CompatibilityVersion %@", v9];

            v19 = v20;
          }
        }

        else
        {
          v19 = 0;
        }

        v23 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
        [v23 handleFailedToFindThemeAssetForMessagingVehicle:v13 shouldOfferSoftwareUpdate:v9 != 0 description:v19];
      }

      else
      {
        v21 = CarThemeAssetsLogging();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v15 identifier];
          *buf = 138543618;
          v25 = v8;
          v26 = 2114;
          v27 = v22;
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

  v4 = [(CRCarKitServiceAgent *)self preferencesManager];
  v5 = [v4 isCarPlayAllowed];

  v6 = [(CRCarKitServiceAgent *)self cachedCarPlayAllowedChangeValue];
  v7 = v6;
  if (!v6 || v5 != [v6 BOOLValue])
  {
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"disabled";
      if (v5)
      {
        v9 = @"enabled";
      }

      *buf = 138412290;
      v27 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CarPlay is now %@", buf, 0xCu);
    }

    v10 = [NSNumber numberWithBool:v5];
    [(CRCarKitServiceAgent *)self setCachedCarPlayAllowedChangeValue:v10];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.allowed-changed", 0, 0, 1u);
    +[CRVehicleStore postPairingsDidChangeNotification];
    if (v5)
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
      v12 = [(CRCarKitServiceAgent *)self vehicleStore];
      v13 = [v12 allStoredVehicles];

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v21 + 1) + 8 * v17);
            v19 = [(CRCarKitServiceAgent *)self monitoringService];
            [v19 handleUpdatedVehicle:v18 enabled:0 completion:0];

            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v15);
      }

      v20 = [(CRCarKitServiceAgent *)self sessionRequestClient];
      [v20 cancelRequests];
    }
  }
}

- (void)handleVehicleStoreAvailabiltyDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002C698;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)postInCarNotificationForVehicle:(id)a3
{
  v4 = a3;
  v5 = [v4 carplayWiFiUUID];
  v6 = v5;
  if (v5)
  {
    v16 = @"CARPLAY_UUID";
    v17 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v8 = CarGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending iAP in-car wifi notification %@", &v14, 0xCu);
    }

    kdebug_trace();
    v9 = [(CRCarKitServiceAgent *)self wifiManager];
    [v9 setInCar:1 carPlayUUID:v6];

    if ([v4 requiresBonjour])
    {
      v10 = [(CRCarKitServiceAgent *)self sessionRequestClient];
      [v10 startAdvertisingCarPlayControlForWiFiUUID:v6];
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.in-car", 0, 0, 1u);
    v12 = +[CARAnalytics sharedInstance];
    [v12 wirelessReconnectStarted];
  }

  return v6 != 0;
}

- (BOOL)postOutOfCarNotificationForVehicle:(id)a3
{
  v3 = [a3 carplayWiFiUUID];
  v4 = v3;
  if (v3)
  {
    v11 = @"CARPLAY_UUID";
    v12 = v3;
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

- (BOOL)_isRestricted:(id *)a3
{
  v4 = [(CRCarKitServiceAgent *)self preferencesManager];
  v5 = [v4 isCarPlayAllowed];

  if (a3 && (v5 & 1) == 0)
  {
    *a3 = [NSError errorWithDomain:@"com.apple.carkit" code:1 userInfo:0];
  }

  return v5 ^ 1;
}

- (void)_findWirelessPairedVehicleForAccessoryConnectionIdentifier:(unint64_t)a3 result:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = [(CRCarKitServiceAgent *)self messagingConnector];
    v8 = [v7 vehicleAccessoryForiAPConnectionIdentifier:a3];

    if (!v8)
    {
      v9 = CarGeneralLogging();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000849BC();
      }

      v10 = [NSError errorWithDomain:@"com.apple.carkit" code:3 userInfo:0];
      (*(v6 + 2))(v6, 0, 0, v10);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10002CBD0;
    v12[3] = &unk_1000DE500;
    v13 = v8;
    v14 = v6;
    v11 = v8;
    [(CRCarKitServiceAgent *)self _findWirelessPairedVehicleForMessagingVehicle:v11 result:v12];
  }
}

- (void)_findWirelessPairedVehicleForMessagingVehicle:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v26 = 0;
    v8 = [(CRCarKitServiceAgent *)self _isRestricted:&v26];
    v9 = v26;
    if (v8)
    {
      v7[2](v7, 0, v9);
LABEL_15:

      goto LABEL_16;
    }

    v10 = [(CRCarKitServiceAgent *)self vehicleStore];
    v11 = [v10 allStoredVehicles];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_10002CE88;
    v24 = &unk_1000DE528;
    v12 = v6;
    v25 = v12;
    v13 = [v11 objectsPassingTest:&v21];

    v14 = [v13 anyObject];
    v15 = v14;
    if (v14 && ([v14 isPaired] & 1) != 0)
    {
      v16 = [v15 bluetoothAddress];
      if (v16)
      {

LABEL_13:
        (v7)[2](v7, v15, 0);
        goto LABEL_14;
      }

      v20 = [v12 bluetoothAddress];

      if (v20)
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
    v7[2](v7, 0, v19);

LABEL_14:
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_saveWiFiCredentials:(id)a3 forAccessoryConnectionIdentifier:(unint64_t)a4 result:(id)a5
{
  v8 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002CFC4;
  v11[3] = &unk_1000DE550;
  v13 = self;
  v14 = a5;
  v12 = v8;
  v9 = v8;
  v10 = v14;
  [(CRCarKitServiceAgent *)self _findWirelessPairedVehicleForAccessoryConnectionIdentifier:a4 result:v11];
}

- (void)_saveWiFiCredentials:(id)a3 fromMessagingVehicle:(id)a4 forWirelessPairedVehicle:(id)a5 result:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 bluetoothAddress];
  v15 = [v12 bluetoothAddress];
  v16 = v15;
  if (v14 && v15)
  {
    v17 = [v15 isEqual:v14];

    if (v17)
    {
LABEL_4:
      v18 = 0;
      goto LABEL_7;
    }
  }

  else
  {

    if (!v14)
    {
      goto LABEL_4;
    }
  }

  [v12 setBluetoothAddress:v14];
  v18 = 1;
LABEL_7:
  v19 = [v12 carplayWiFiUUID];
  if (v19)
  {
    v20 = v19;
    if (!v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v21 = +[NSUUID UUID];
    v20 = [v21 UUIDString];

    [v12 setCarplayWiFiUUID:v20];
  }

  v22 = CarGeneralLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Saving vehicle %@ for Bluetooth address or Wi-Fi UUID update", &v34, 0xCu);
  }

  v23 = [(CRCarKitServiceAgent *)self vehicleStore];
  v24 = [v23 saveVehicle:v12];

  if (!v24)
  {
    v31 = CarGeneralLogging();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10008439C();
    }

    if (!v13)
    {
      goto LABEL_35;
    }

LABEL_30:
    v32 = [NSError errorWithDomain:@"com.apple.carkit" code:2 userInfo:0];
    v13[2](v13, 0, v32);

    goto LABEL_35;
  }

  v12 = v24;
LABEL_15:
  v25 = [(CRCarKitServiceAgent *)self wifiManager];
  v26 = [v25 saveNetworkCredentials:v10 forCarPlayUUID:v20];

  v27 = CarGeneralLogging();
  v28 = v27;
  if ((v26 & 1) == 0)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100084A2C(v12);
    }

    if (!v13)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412290;
    v35 = v12;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "saved WiFi credentials for %@", &v34, 0xCu);
  }

  if ([v11 transportType] == 2 || objc_msgSend(v11, "transportType") == 4)
  {
    v29 = [(CRCarKitServiceAgent *)self pairedVehiclesConnectedOnBluetooth];
    v30 = [v29 containsObject:v12];

    if (v30)
    {
      kdebug_trace();
      [(CRCarKitServiceAgent *)self postInCarNotificationForVehicle:v12];
      if (!v13)
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

  if (v13)
  {
LABEL_34:
    (v13)[2](v13, v20, 0);
  }

LABEL_35:
}

- (void)_mainQueue_startSessionForHost:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CRLocalizedStringForKey();
  [v7 setDisplayName:v8];

  v9 = [v7 deviceIdentifier];
  [(CRCarKitServiceAgent *)self setLastStartSessionDeviceID:v9];

  v10 = +[NSUUID UUID];
  v11 = [(CRCarKitServiceAgent *)self sessionRequestClient];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002D624;
  v13[3] = &unk_1000DD850;
  v14 = v6;
  v12 = v6;
  [v11 startSessionWithHost:v7 requestIdentifier:v10 completion:v13];
}

- (void)_mainQueue_updateClusterAssetIdentifier:(id)a3 assetVersion:(id)a4 sdkVersion:(id)a5 forVehicle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CRCarKitServiceAgent *)self vehicleAssetManager];
  if (v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v14 receivedClusterAssetIdentifier:v10 assetVersion:v11 sdkVersion:v12 forVehicle:v13];
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

- (BOOL)_shouldPromptEnhancedIntegrationForStoredVehicle:(id)a3 messagingVehicle:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 enhancedIntegrationStatus])
  {
LABEL_2:
    v7 = 0;
    goto LABEL_8;
  }

  if (([v5 supportsEnhancedIntegration] & 1) == 0 && !objc_msgSend(v6, "supportsEnhancedIntegration"))
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
    *buf_4 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "vehicle %@ declares enhanced integration support", &buf, 0xCu);
  }

  v7 = 1;
LABEL_8:

  return v7;
}

- (void)handleAnyMessagingConnectionsToVehicles
{
  v3 = [(CRCarKitServiceAgent *)self messagingConnector];
  v4 = [v3 connectedVehicles];

  [(CRCarKitServiceAgent *)self handleDidConnectMessagingToVehicles:v4];
}

- (void)handleDidConnectMessagingToVehicles:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "handling connected vehicles: %@", buf, 0xCu);
  }

  if (+[CRVehicleStoreAvailability isVehicleStoreAvailable])
  {
    v6 = [(CRCarKitServiceAgent *)self preferencesManager];
    v7 = [v6 isCarPlayAllowed];

    if (v7)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = v4;
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
              v14 = [(CRCarKitServiceAgent *)self sessionRequestClient];
              [v14 startAdvertisingCarPlayControlForUSB];

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
      v18 = v4;
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
      v35 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring connect message, vehicle store isn't available, messagingVehicle: %@", buf, 0xCu);
    }
  }
}

- (id)_wirelessPairingAnalyticsDescriptionForMessagingVehicle:(id)a3 storedVehicle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 analyticsDescription];
  v9 = [v8 mutableCopy];

  v10 = [(CRCarKitServiceAgent *)self sessionStatus];
  v11 = [v10 currentSession];

  v12 = [v7 PPID];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"Unknown";
  }

  [v9 setObject:v14 forKeyedSubscript:@"ppid"];

  v15 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsWiredBluetoothPairing]);
  [v9 setObject:v15 forKeyedSubscript:@"supportsOOBPairing"];

  v16 = [v11 sourceVersion];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"Unknown";
  }

  [v9 setObject:v18 forKeyedSubscript:@"SourceVersion"];

  v19 = [v6 vehicleName];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = @"Unknown";
  }

  [v9 setObject:v21 forKeyedSubscript:@"vehicleName"];

  v22 = [v6 vehicleModelName];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"Unknown";
  }

  [v9 setObject:v24 forKeyedSubscript:@"vehicleModel"];

  v25 = [v7 transportType];
  if ((v25 - 1) > 3)
  {
    v26 = @"unknown";
  }

  else
  {
    v26 = *(&off_1000DE7A0 + (v25 - 1));
  }

  [v9 setObject:v26 forKeyedSubscript:@"transportType"];
  v27 = [v6 supportsStartSessionRequest];
  if ([v27 BOOLValue])
  {
    v28 = @"StartSession";
  }

  else
  {
    v28 = @"Bonjour";
  }

  [v9 setObject:v28 forKeyedSubscript:@"sessionType"];

  if ([v6 supportsBluetoothLE])
  {
    v29 = @"BLE";
  }

  else
  {
    v29 = @"BT Classic";
  }

  [v9 setObject:v29 forKeyedSubscript:@"bluetoothType"];
  v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 supportsUSBCarPlay]);
  [v9 setObject:v30 forKeyedSubscript:@"supportsUSBCarPlay"];

  v31 = [v11 configuration];
  v32 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v31 supportsVehicleData]);
  [v9 setObject:v32 forKeyedSubscript:@"nextGenCarPlaySession"];

  v33 = [NSDictionary dictionaryWithDictionary:v9];

  return v33;
}

- (void)updateIncompletePairingsMatchingMessagingVehicles:(id)a3
{
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v36;
    v30 = v34;
    *&v6 = 138412290;
    v29 = v6;
    v31 = *v36;
    v32 = v4;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [v10 bluetoothAddress];
        v12 = [(CRCarKitServiceAgent *)self vehicleStore];
        v13 = [v12 vehicleForBluetoothAddress:v11];

        if (v13)
        {
          v14 = [v13 certificateSerialNumber];

          if (!v14)
          {
            v15 = [(CRCarKitServiceAgent *)self preferencesManager];
            v16 = [v15 isCarPlaySetupEnabled];

            if (!v16)
            {
              v17 = [(CRCarKitServiceAgent *)self _wirelessPairingAnalyticsDescriptionForMessagingVehicle:v10 storedVehicle:v13];
              v18 = +[CARAnalytics sharedInstance];
              [v18 userCreatedWirelessPairingWithSource:@"Settings" payload:v17];
            }

            v19 = [v10 certificateSerialNumber];
            if (v19)
            {
              v20 = CarGeneralLogging();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v29;
                v40 = v11;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "First accessory attach for %@, adding certificateSerial", buf, 0xCu);
              }

              [v13 setCertificateSerialNumber:v19];
              v21 = [(CRCarKitServiceAgent *)self vehicleStore];
              v33[0] = _NSConcreteStackBlock;
              v33[1] = 3221225472;
              v34[0] = sub_10002E730;
              v34[1] = &unk_1000DE578;
              v34[2] = self;
              v22 = [v21 saveVehicle:v13 withMergePolicy:v33];
            }

            v23 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
            v24 = v23;
            if (v23)
            {
              v25 = [v23 bluetoothDeviceIdentifier];
              v26 = [v11 isEqual:v25];

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
            v4 = v32;
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }
}

- (id)vehicleMatchingMessagingVehicle:(id)a3 inVehicles:(id)a4
{
  v5 = a4;
  v6 = [a3 certificateSerialNumber];
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
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
          v12 = [v11 certificateSerialNumber];
          if (v12)
          {
            v13 = v12;
            v14 = [v11 certificateSerialNumber];
            v15 = [v6 isEqualToData:v14];

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

- (void)enumerateStoredVehiclesForMessagingVehicles:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(CRCarKitServiceAgent *)self vehicleStore];
    v9 = [v8 allStoredVehicles];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = v6;
    v10 = v6;
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
          v16 = [(CRCarKitServiceAgent *)self vehicleMatchingMessagingVehicle:v15 inVehicles:v9];
          v7[2](v7, v15, v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v6 = v17;
  }
}

- (void)updateStoredVehicle:(id)a3 usingMessagingVehicle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 vehicleName];
  v9 = [v7 accessoryProtocols];
  v10 = [NSSet setWithArray:v9];

  if (v8 && ([v6 vehicleName], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v8, "isEqualToString:", v11), v11, (v12 & 1) == 0))
  {
    [v6 setVehicleName:v8];
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v6 accessoryProtocols];
  v15 = [v10 isEqualToSet:v14];

  if ((v15 & 1) == 0)
  {
    [v6 setAccessoryProtocols:v10];
    v13 = 1;
  }

  if ([v7 transportType] != 3)
  {
    v16 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsCarPlayConnectionRequest]);
    v17 = [v6 supportsStartSessionRequest];
    v18 = [v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      v19 = CarGeneralLogging();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        if (v16)
        {
          v20 = [v16 BOOLValue];
          v21 = @"NO";
          if (v20)
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
        v50 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Updating supportsStartSessionRequest to %{public}@ for %@", buf, 0x16u);
      }

      [v6 setSupportsStartSessionRequest:v16];
      v13 = 1;
    }

    v22 = [v6 supportsBluetoothLE];
    if (v22 != [v7 supportsBluetoothLE])
    {
      v23 = CarGeneralLogging();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v7 supportsBluetoothLE];
        v25 = @"NO";
        if (v24)
        {
          v25 = @"YES";
        }

        *buf = 138543618;
        v48 = v25;
        v49 = 2112;
        v50 = v6;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Updating supportsBluetoothLE to %{public}@ for %@", buf, 0x16u);
      }

      [v6 setSupportsBluetoothLE:{objc_msgSend(v7, "supportsBluetoothLE")}];
      v13 = 1;
    }

    v26 = [v6 supportsThemeAssets];
    if (!v26)
    {
      goto LABEL_25;
    }

    v27 = v26;
    v28 = [v6 supportsThemeAssets];
    v46 = v8;
    v29 = v10;
    v30 = v16;
    v31 = self;
    v32 = [v28 BOOLValue];
    v33 = [v7 supportsThemeAssets];

    v34 = v32 == v33;
    self = v31;
    v16 = v30;
    v10 = v29;
    v8 = v46;
    if (!v34)
    {
LABEL_25:
      v35 = CarGeneralLogging();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v7 supportsThemeAssets];
        v37 = @"NO";
        if (v36)
        {
          v37 = @"YES";
        }

        *buf = 138543618;
        v48 = v37;
        v49 = 2112;
        v50 = v6;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Updating supportsThemeAssets to %{public}@ for %@", buf, 0x16u);
      }

      v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v7 supportsThemeAssets]);
      [v6 setSupportsThemeAssets:v38];

      v13 = 1;
    }
  }

  v39 = [v6 supportsUSBCarPlay];
  if (v39 != [v7 supportsUSBCarPlay])
  {
    [v6 setSupportsUSBCarPlay:{objc_msgSend(v7, "supportsUSBCarPlay")}];
    v13 = 1;
  }

  v40 = [v6 supportsWirelessCarPlay];
  if (v40 != [v7 supportsWirelessCarPlay])
  {
    [v6 setSupportsWirelessCarPlay:{objc_msgSend(v7, "supportsWirelessCarPlay")}];
    v13 = 1;
  }

  v41 = [(CRCarKitServiceAgent *)self _currentlyConnectedVehicleSupportsMixableAudio];
  if (v41 == [v6 supportsMixableAudio])
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
    [v6 setSupportsMixableAudio:v41];
    if (!CRIsInternalInstall())
    {
      goto LABEL_40;
    }
  }

  v42 = +[NSDate date];
  [v6 setLastConnectedDate:v42];

  v43 = [v7 vehicleModelName];
  [v6 setVehicleModelName:v43];

LABEL_40:
  v44 = [(CRCarKitServiceAgent *)self vehicleStore];
  v45 = [v44 saveVehicle:v6];

LABEL_41:
}

- (id)pairedVehiclesConnectedOnBluetooth
{
  v3 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [(CRCarKitServiceAgent *)self bluetoothManager];
  v5 = [v4 connectedBluetoothAddresses];

  v6 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [(CRCarKitServiceAgent *)self vehicleStore];
        v12 = [v11 vehicleForBluetoothAddress:v10];

        if (v12 && [v12 isPaired])
        {
          [v3 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v7);
  }

  v13 = [(CRCarKitServiceAgent *)self messagingConnector];
  v14 = [v13 connectedVehicles];

  v15 = [NSPredicate predicateWithBlock:&stru_1000DE5B8];
  v16 = [v14 filteredSetUsingPredicate:v15];

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
        v23 = [(CRCarKitServiceAgent *)self vehicleStore];
        v24 = [v22 bluetoothAddress];
        v25 = [v23 vehicleForBluetoothAddress:v24];

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
  v2 = [(CRCarKitServiceAgent *)self sessionStatus];
  v3 = [v2 currentSession];

  if (v3)
  {
    v4 = [v3 configuration];
    v5 = [v4 supportsSiriMixable];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)saveVehicle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CRCarKitServiceAgent *)self vehicleStore];
    v6 = [v4 identifier];
    v7 = [v5 vehicleForIdentifier:v6];

    if (v7)
    {
      v8 = [v7 isPaired];
    }

    else
    {
      v8 = 0;
    }

    v11 = [(CRCarKitServiceAgent *)self vehicleStore];
    v9 = [v11 saveVehicle:v4];

    v12 = [v9 isPaired];
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

      if (v8 != v12)
      {
        v15 = CarGeneralLogging();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v9 identifier];
          v17 = v16;
          v18 = @"NO";
          if (v8)
          {
            v19 = @"YES";
          }

          else
          {
            v19 = @"NO";
          }

          *buf = 138543874;
          *&buf[4] = v16;
          *&buf[14] = v19;
          *&buf[12] = 2114;
          if (v12)
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
        v26 = v12;
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

- (BOOL)removeVehicle:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing vehicle %@", &buf, 0xCu);
    }

    v7 = [(CRCarKitServiceAgent *)self vehicleStore];
    v8 = [v7 removeVehicle:v4];

    v6 = [v4 carplayWiFiUUID];
    if (v6)
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
      v20 = self;
      v21 = v4;
      v22 = v6;
      p_buf = &buf;
      dispatch_after(v9, &_dispatch_main_q, &v16);

      _Block_object_dispose(&buf, 8);
    }

    v10 = [v4 bluetoothAddress];
    if (v10)
    {
      if ([v4 supportsBluetoothLE])
      {
        v11 = [[NSUUID alloc] initWithUUIDString:v10];
        if (v11)
        {
          v12 = [(CRCarKitServiceAgent *)self messagingConnector];
          v13 = [v12 unpairWithBluetoothLEIdentifier:v11];
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v11 = [(CRCarKitServiceAgent *)self bluetoothManager];
        v13 = [v11 unpairWithBluetoothAddress:v10];
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

- (BOOL)attemptConnectionWithVehicles:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v41 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "attemptConnectionForVehicles %@", buf, 0xCu);
  }

  if (![(CRCarKitServiceAgent *)self _isRestricted:0])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v25 = v4;
    obj = v4;
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
          v12 = [(CRCarKitServiceAgent *)self messagingConnector];
          v13 = [v12 connectedVehicles];

          v14 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
                objc_enumerationMutation(v13);
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
                v15 = [v13 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
              v23 = [(CRCarKitServiceAgent *)self messagingConnector];
              [v23 requestWiFiCredentialsFromVehicle:v18];
            }

            v26 = 1;
          }

          else
          {
LABEL_19:

            v13 = [v11 bluetoothAddress];
            if (!v13)
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
              v41 = v13;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "attempting Bluetooth connection to %@", buf, 0xCu);
            }

            v22 = [(CRCarKitServiceAgent *)self bluetoothManager];
            [v22 connectWithBluetoothAddress:v13];
          }

          v9 = v27;
        }

        else
        {
          v13 = CarGeneralLogging();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "no WiFi credentials request necessary for %@", buf, 0xCu);
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

        v4 = v25;
        v6 = v26;
        goto LABEL_37;
      }
    }
  }

  v6 = 0;
LABEL_37:

  return v6 & 1;
}

- (void)_sendCarPlayAvailabilityForMessagingVehicle:(id)a3 storedVehicle:(id)a4
{
  v27 = a3;
  v6 = a4;
  if ([v27 supportsCarPlayConnectionRequest])
  {
    v7 = [(CRCarKitServiceAgent *)self preferencesManager];
    v8 = [v7 isCarPlayAllowed];

    if (v8)
    {
      if (v6)
      {
        v9 = [v6 bluetoothAddress];
        v10 = v9 != 0;

        v11 = [v6 pairingStatus];
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v14 = [v27 transportType] == 2 || objc_msgSend(v27, "transportType") == 4;
      if ([v27 supportsThemeAssets])
      {
        if (v11 == 2 || ((v15 = [(CRCarKitServiceAgent *)self carPlaySimulatorActive]) == 0 ? (v12 = &__kCFBooleanFalse) : (v12 = &__kCFBooleanTrue), v6 && v15))
        {
          v16 = [(CRCarKitServiceAgent *)self featuresAvailabilityAgent];
          v17 = [v6 identifier];
          v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", CRCarPlayFeaturesAllFerriteFeatures() & [v16 supportedCarPlayFeaturesForVehicleIdentifier:v17]);
        }

        if (v14)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v12 = 0;
        if (v14)
        {
LABEL_22:
          if (v11)
          {
            v18 = v10;
          }

          else
          {
            v18 = 0;
          }

          if (v18)
          {
            v19 = [(CRCarKitServiceAgent *)self messagingConnector];
            v20 = v11 == 2;
            if (v11 == 2)
            {
              v21 = &__kCFBooleanTrue;
            }

            else
            {
              v21 = 0;
            }

            v22 = [NSNumber numberWithBool:v20];
            [v19 sendWiredCarPlayAvailable:v21 wirelessCarPlayAvailable:v22 themeAssetsAvailable:v12 toVehicle:v27];
          }

          goto LABEL_35;
        }
      }

      v23 = [(CRCarKitServiceAgent *)self messagingConnector];
      v24 = v23;
      if (v10)
      {
        v25 = [NSNumber numberWithBool:v11 == 2];
        [v24 sendWiredCarPlayAvailable:&__kCFBooleanTrue wirelessCarPlayAvailable:v25 themeAssetsAvailable:v12 toVehicle:v27];
      }

      else
      {
        [v23 sendWiredCarPlayAvailable:&__kCFBooleanTrue wirelessCarPlayAvailable:0 themeAssetsAvailable:v12 toVehicle:v27];
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.carplay.starting-wired-connection", 0, 0, 1u);
    }

    else
    {
      v12 = [(CRCarKitServiceAgent *)self messagingConnector];
      if ([v27 supportsThemeAssets])
      {
        v13 = &__kCFBooleanFalse;
      }

      else
      {
        v13 = 0;
      }

      [v12 sendWiredCarPlayAvailable:&__kCFBooleanFalse wirelessCarPlayAvailable:&__kCFBooleanFalse themeAssetsAvailable:v13 toVehicle:v27];
    }

LABEL_35:
  }
}

- (BOOL)_sendDeviceIdentifiersForMessagingVehicle:(id)a3 pairingStatus:(unint64_t)a4
{
  v6 = a3;
  if ([v6 supportsCarPlayConnectionRequest])
  {
    goto LABEL_7;
  }

  v7 = CarGeneralLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100084E3C();
  }

  if (!-[CRCarKitServiceAgent _isRestricted:](self, "_isRestricted:", 0) && ((v8 = [v6 transportType], a4 == 2) || v8 == 1))
  {
    v11 = [(CRCarKitServiceAgent *)self messagingConnector];
    [v11 sendDeviceTransportIdentifiersToVehicle:v6];

    v9 = 1;
  }

  else
  {
LABEL_7:
    v9 = 0;
  }

  return v9;
}

- (BOOL)_requestWiFiCredentialsIfNecessaryForApprovedMessagingVehicle:(id)a3
{
  v4 = a3;
  if ([v4 transportType] == 2 && objc_msgSend(v4, "supportsWirelessCarPlay") && (objc_msgSend(v4, "supportsCarPlayConnectionRequest") & 1) == 0)
  {
    v7 = [(CRCarKitServiceAgent *)self messagingConnector];
    [v7 requestWiFiCredentialsFromVehicle:v4];

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasExistingBluetoothPairingForPairingPromptFlow:(id)a3
{
  v3 = a3;
  v4 = [v3 messagingVehicle];
  v5 = [v4 bluetoothAddress];

  if (!v5)
  {
    v6 = [v3 bluetoothDeviceIdentifier];
    if (!v6)
    {
      v7 = 0;
      goto LABEL_5;
    }

    v5 = v6;
  }

  v7 = [CRBluetoothManager hasPairingWithAddress:v5];

LABEL_5:
  return v7;
}

- (BOOL)startSessionRequestSupportedForPairingPromptFlow:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 userInfo];

  v5 = v4;
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 supportsStartSessionRequest];
  v8 = [v7 BOOLValue];

  return v8;
}

- (BOOL)enhancedIntegrationSupportedForPairingPromptFlow:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 messagingVehicle];
  v8 = [(CRCarKitServiceAgent *)self _shouldPromptEnhancedIntegrationForStoredVehicle:v6 messagingVehicle:v7];

  return v8;
}

- (BOOL)needsBluetoothTurnedOnForPairingPromptFlow:(id)a3
{
  v3 = [(CRCarKitServiceAgent *)self bluetoothManager];
  v4 = [v3 isPowered];

  return v4 ^ 1;
}

- (BOOL)needsWiFiTurnedOnForPairingPromptFlow:(id)a3
{
  v3 = [(CRCarKitServiceAgent *)self wifiManager];
  v4 = [v3 isPowered];

  return v4 ^ 1;
}

- (BOOL)supportsThemeAssetsForPairingPromptFlow:(id)a3
{
  v4 = a3;
  v5 = [v4 messagingVehicle];
  v6 = [v4 messagingVehicle];

  v7 = [v6 certificateSerialNumber];

  v8 = [(CRCarKitServiceAgent *)self featuresAvailabilityAgent];
  v9 = [v8 supportedCarPlayFeaturesForCertificateSerial:v7];

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

  v13 = [v5 supportsThemeAssets];
  if (v10 == v11)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)outOfBandPairingDeclineCountForPairingPromptFlow:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _pairingIdentifierForPromptFlow:v3];

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

- (void)incrementOutOfBandPairingDeclineCountForPairingPromptFlow:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _pairingIdentifierForPromptFlow:v3];

  if (v4)
  {
    [objc_opt_class() _incrementPairingDeclineCountForIdentifier:v4];
  }
}

- (id)carKeyInfoForPairingPromptFlow:(id)a3
{
  v3 = [a3 messagingVehicle];
  v4 = [v3 digitalCarKeyInformation];

  return v4;
}

- (id)assetProgressForPairingPromptFlow:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 userInfo];

  v6 = v5;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(CRCarKitServiceAgent *)self vehicleAssetManager];
  v9 = [v8 assetProgressForVehicle:v7];

  v10 = CarPairingLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "prompt flow using asset progress: %@", &v12, 0xCu);
  }

  return v9;
}

- (void)fetchAppClipIdentifiersForPairingPromptFlow:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  objc_opt_class();
  v7 = [v6 userInfo];

  v8 = v7;
  if (v8 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 identifier];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000311F4;
  v12[3] = &unk_1000DE380;
  v13 = v5;
  v11 = v5;
  [CRAppClipsDeclarationClient fetchSupportedAppClipsForPairedVehicleIdentifier:v10 completion:v12];
}

- (void)pairingPromptFlow:(id)a3 wantsToPerformPresentation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRCarKitServiceAgent *)self setupPromptDirector];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000314FC;
  v13[3] = &unk_1000DE680;
  v14 = v6;
  v15 = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003161C;
  v11[3] = &unk_1000DD348;
  v12 = v14;
  v9 = v14;
  v10 = v7;
  [v8 performWithPromptPresenter:v13 errorHandler:v11];
}

- (void)_dismissPairingPromptFlow:(id)a3
{
  v12 = a3;
  v4 = [v12 bluetoothDeviceIdentifier];
  v5 = [(CRCarKitServiceAgent *)self currentBluetoothConfirmationHandler];
  v6 = v5;
  if (v5 && v4)
  {
    (*(v5 + 16))(v5, v4, 0);
  }

  [(CRCarKitServiceAgent *)self setCurrentBluetoothConfirmationHandler:0];
  [(CRCarKitServiceAgent *)self _invokeCurrentBluetoothPairingCompletionWithDeviceIdentifier:v4 success:0 error:0];
  if ([v12 startedFromCarKey])
  {
    objc_opt_class();
    v7 = [v12 userInfo];
    if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = [v8 isPaired];
    }

    else
    {
      v9 = 0;
    }

    [(CRCarKitServiceAgent *)self _delegateHeadUnitPairingDidCompletePairingFlow:v9 forBluetoothAddress:v4 error:0];
  }

  v10 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  [v10 invalidate];

  [(CRCarKitServiceAgent *)self setCurrentPromptFlowController:0];
  v11 = [(CRCarKitServiceAgent *)self setupPromptDirector];
  [v11 dismissPromptPresenter];
}

- (void)pairingPromptFlow:(id)a3 didCancelWithRequiredStepsRemaining:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CarPairingLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "canceling setup prompt flow, required steps remaining: %{public}@", &v15, 0xCu);
  }

  if (v4)
  {
    objc_opt_class();
    v9 = [v6 userInfo];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
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

  [(CRCarKitServiceAgent *)self _dismissPairingPromptFlow:v6];
  v14 = CarPairingLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "canceled setup prompt flow", &v15, 2u);
  }
}

- (void)didCompletePairingPromptFlow:(id)a3
{
  v4 = a3;
  v5 = CarPairingLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "completed setup prompt flow", v6, 2u);
  }

  [(CRCarKitServiceAgent *)self _dismissPairingPromptFlow:v4];
}

- (void)_setVehiclePairingStatus:(unint64_t)a3 forPromptFlow:(id)a4
{
  v10 = a4;
  objc_opt_class();
  v6 = [v10 userInfo];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if ([v7 pairingStatus] != a3)
  {
    [v7 setPairingStatus:a3];
    v8 = [(CRCarKitServiceAgent *)self vehicleStore];
    v9 = [v8 saveVehicle:v7];

    [v10 setUserInfo:v9];
  }
}

- (void)pairingPromptFlow:(id)a3 receivedAllowWhileLockedResponse:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = CarGeneralLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
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

  [(CRCarKitServiceAgent *)self _setVehiclePairingStatus:v9 forPromptFlow:v6];
}

- (void)pairingPromptFlow:(id)a3 receivedUseWirelessResponse:(BOOL)a4 turnOnBluetooth:(BOOL)a5 turnOnWiFi:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  objc_opt_class();
  v11 = [v10 userInfo];
  if (v11 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 messagingVehicle];
  if (v7)
  {
    v14 = CarGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "turning on Bluetooth due to OOB pairing alert acceptance", buf, 2u);
    }

    v15 = [(CRCarKitServiceAgent *)self bluetoothManager];
    [v15 setPowered:1];
  }

  if (v6)
  {
    v16 = CarGeneralLogging();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "turning on Wi-Fi due to OOB pairing alert acceptance", v22, 2u);
    }

    v17 = [(CRCarKitServiceAgent *)self wifiManager];
    [v17 setPowered:1];
  }

  v18 = CarGeneralLogging();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v19)
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Wired BT pairing alert accepted", v21, 2u);
    }

    [(CRCarKitServiceAgent *)self _setVehiclePairingStatus:2 forPromptFlow:v10];
    [(CRCarKitServiceAgent *)self _beginWiredPairingWithMessagingVehicle:v13 storedVehicle:v12];
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

- (void)pairingPromptFlow:(id)a3 receivedConnectCarPlayResponse:(BOOL)a4 turnOnWiFi:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  objc_opt_class();
  v9 = [v8 userInfo];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v8 messagingVehicle];
  if (v5)
  {
    v12 = CarGeneralLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "turning on Wi-Fi due to connect alert acceptance", buf, 2u);
    }

    v13 = [(CRCarKitServiceAgent *)self wifiManager];
    [v13 setPowered:1];
  }

  v14 = CarPairingLogging();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v6)
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

  [(CRCarKitServiceAgent *)self _setVehiclePairingStatus:v16 forPromptFlow:v8];
  v17 = [v11 supportsCarPlayConnectionRequest];
  v18 = [v11 transportType];
  if (v17)
  {
    if (v18 == 2 || [v11 transportType] == 4)
    {
      [(CRCarKitServiceAgent *)self _sendCarPlayAvailabilityForMessagingVehicle:v11 storedVehicle:v10];
    }
  }

  else if (v18 == 2)
  {
    [(CRCarKitServiceAgent *)self _sendDeviceIdentifiersForMessagingVehicle:v11 pairingStatus:v16];
    if ([v10 isPaired])
    {
      [(CRCarKitServiceAgent *)self _requestWiFiCredentialsIfNecessaryForApprovedMessagingVehicle:v11];
    }
  }

  if (v6)
  {
    v19 = [(CRCarKitServiceAgent *)self _wirelessPairingAnalyticsDescriptionForMessagingVehicle:v11 storedVehicle:v10];
    v20 = +[CARAnalytics sharedInstance];
    [v20 userCreatedWirelessPairingWithSource:@"Settings" payload:v19];
  }
}

- (void)pairingPromptFlow:(id)a3 receivedEnhancedIntegrationResponse:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 messagingVehicle];
  v7 = CarGeneralLogging();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
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

  [(CRCarKitServiceAgent *)self _enhancedIntegrationUpdatedForMessagingVehicle:v6 status:v9];
}

- (void)didHeadUnitPairWithBluetoothAddress:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  v6 = [v5 bluetoothDeviceIdentifier];

  if (!v6)
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000850D0();
    }

    goto LABEL_10;
  }

  v7 = [v6 isEqual:v4];
  v8 = CarPairingLogging();
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100085040();
    }

LABEL_10:

    [(CRCarKitServiceAgent *)self _delegateHeadUnitPairingDidCompletePairingFlow:0 forBluetoothAddress:v4 error:0];
    goto LABEL_11;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 141558275;
    v11 = 1752392040;
    v12 = 2113;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "head unit pairing succeeded for Bluetooth addresses %{private, mask.hash}@", &v10, 0x16u);
  }

LABEL_11:
}

- (void)didFailToHeadUnitPairWithBluetoothAddress:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = CarPairingLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10008510C();
  }

  v9 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  v10 = v9;
  if (v9)
  {
    [v9 handleCarKeyInitiatedPairingFailed];
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

- (void)_presentApprovalIfNecessaryForMessagingVehicle:(id)a3 storedVehicle:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || ![v6 pairingStatus])
  {
    v8 = [(CRCarKitServiceAgent *)self preferencesManager];
    v9 = [v8 isCarPlaySetupEnabled];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      [(CRCarKitServiceAgent *)self _presentCarPlaySetupForMessagingVehicle:v11 storedVehicle:v7];
    }

    else
    {
      [(CRCarKitServiceAgent *)self _presentApprovalUsingAlertsForMessagingVehicle:v11];
    }
  }
}

- (void)_presentCarPlaySetupForMessagingVehicle:(id)a3 storedVehicle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = v7;
    if ([v7 pairingStatus])
    {
      v9 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v8 pairingStatus] == 2);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [CRVehicle vehicleForMessagingVehicle:v6];
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
  v12 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  if (v12)
  {
    v13 = v12;
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
  [(CRPairingPromptFlowController *)v15 handleConnectedMessagingVehicle:v6 pairingAccepted:v9];
}

- (void)_presentApprovalUsingAlertsForMessagingVehicle:(id)a3
{
  v4 = a3;
  if ([v4 transportType] == 2 || objc_msgSend(v4, "transportType") == 4)
  {
    v5 = CROutstandingWirelessVehicleApprovalAlert;
LABEL_4:
    v6 = [[v5 alloc] initWithMessagingVehicle:v4];
    goto LABEL_5;
  }

  if ([v4 supportsUSBCarPlay])
  {
    v5 = CROutstandingWiredVehicleApprovalAlert;
    goto LABEL_4;
  }

  if ([v4 supportsWirelessCarPlay] && objc_msgSend(v4, "supportsWiredBluetoothPairing"))
  {
    [(CRCarKitServiceAgent *)self _presentWiredBluetoothPairingAlertForMessagingVehicle:v4 storedVehicle:0];
  }

  v6 = 0;
LABEL_5:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [(CRCarKitServiceAgent *)self outstandingApprovalAlerts];
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v39 + 1) + 8 * v10) messagingVehicle];
        v12 = [v11 isEqual:v4];

        if (v12)
        {

          goto LABEL_17;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
  v33 = [CRVehicle vehicleForMessagingVehicle:v4];
  v15 = [(CRCarKitServiceAgent *)self saveVehicle:v29[5]];
  v16 = v29[5];
  v29[5] = v15;

  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_100033130;
  v22 = &unk_1000DE6A8;
  v23 = self;
  v17 = v13;
  v24 = v17;
  v26 = &v28;
  v25 = v4;
  v27 = v37;
  v18 = objc_retainBlock(&v19);
  if ([v17 presentAlertWithCompletion:{v18, v19, v20, v21, v22, v23}])
  {
    (v14[2])(v14);
  }

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(v37, 8);

LABEL_17:
}

- (void)_dismissApprovalAlertForMessagingVehicle:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CRCarKitServiceAgent *)self outstandingApprovalAlerts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 messagingVehicle];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          [v10 dismissAlert];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(CRCarKitServiceAgent *)self outstandingApprovalAlerts];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissAlert];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

+ (id)_pairingIdentifierForMessagingVehicle:(id)a3
{
  v3 = [a3 bluetoothAddress];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"CarPlay";
  }

  v6 = v5;

  return v5;
}

+ (id)_pairingIdentifierForPromptFlow:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 userInfo];

  v5 = v4;
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
    v7 = [v6 identifier];
    v8 = [v7 UUIDString];
  }

  else
  {
    v9 = CarPairingLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100085248();
    }

    v8 = 0;
  }

  return v8;
}

+ (unint64_t)_pairingDeclineCountForIdentifier:(id)a3
{
  v3 = [CRVehicleStore payloadForVehicleWithIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 unsignedIntegerValue];
    v5 = CarGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [NSNumber numberWithUnsignedInteger:v4];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "OOB decline count: %@", &v8, 0xCu);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_incrementPairingDeclineCountForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _pairingDeclineCountForIdentifier:v4];
  v6 = CarGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithUnsignedInteger:v5];
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Incrementing OOB decline count from %{public}@", &v9, 0xCu);
  }

  v8 = [NSNumber numberWithUnsignedInteger:v5 + 1];
  [CRVehicleStore setPayload:v8 forVehicleWithIdentifier:v4];
}

+ (unint64_t)_declineTypeForOOBPairingMessagingVehicle:(id)a3
{
  v4 = a3;
  if (([v4 supportsWiredBluetoothPairing] & 1) == 0)
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

  if ([v4 supportsUSBCarPlay])
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

  v9 = [a1 _pairingIdentifierForMessagingVehicle:v4];
  v10 = [a1 _pairingDeclineCountForIdentifier:v9];

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

- (void)_presentWiredBluetoothPairingAlertForMessagingVehicle:(id)a3 storedVehicle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CRMessagingVehicleAlert *)[CROutstandingVehiclePairingAlert alloc] initWithMessagingVehicle:v6];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = sub_100022D08;
  v27[4] = sub_100022D18;
  v28 = 0;
  v9 = [(CRCarKitServiceAgent *)self bluetoothManager];
  v10 = [v9 isPowered];

  [(CROutstandingVehiclePairingAlert *)v8 setShouldEnableBluetooth:v10 ^ 1];
  v11 = [objc_opt_class() _declineTypeForOOBPairingMessagingVehicle:v6];
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
  v15 = v6;
  v20 = v15;
  v16 = v7;
  v21 = v16;
  v22 = v27;
  v17 = objc_retainBlock(v18);
  if ([(CRMessagingVehicleAlert *)v14 presentAlertWithCompletion:v17])
  {
    (v13[2])(v13);
  }

  _Block_object_dispose(v27, 8);
}

- (void)_beginWiredPairingWithMessagingVehicle:(id)a3 storedVehicle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CarGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "starting wired Bluetooth pairing with %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_100022D08;
  v22 = sub_100022D18;
  v23 = os_transaction_create();
  objc_initWeak(&location, self);
  v9 = [(CRCarKitServiceAgent *)self messagingConnector];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100034258;
  v12[3] = &unk_1000DE6F8;
  v10 = v7;
  v13 = v10;
  v11 = v6;
  v14 = v11;
  objc_copyWeak(&v17, &location);
  v15 = self;
  p_buf = &buf;
  [v9 beginWiredBluetoothPairingWithVehicle:v11 completion:v12];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

- (void)_dismissPairingAlertForMessagingVehicle:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CRCarKitServiceAgent *)self outstandingPairingAlerts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 messagingVehicle];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          [v10 dismissAlert];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(CRCarKitServiceAgent *)self outstandingPairingAlerts];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissAlert];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_presentReconnectionEnableWiFiAlertForVehicle:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "presenting alert to ask to turn on Wi-Fi", buf, 2u);
  }

  v6 = [[CRReconnectionEnableWiFiAlert alloc] initWithVehicle:v4];
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
  v10 = v4;
  v14 = v10;
  v15 = buf;
  v11 = objc_retainBlock(v12);
  if ([(CRReconnectionEnableWiFiAlert *)v9 presentAlertWithCompletion:v11])
  {
    (v8[2])(v8);
  }

  _Block_object_dispose(buf, 8);
}

- (id)_presentedReconnectionEnableWiFiAlertForVehicle:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 vehicle];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_dismissReconnectionEnableWiFiAlertForVehicle:(id)a3
{
  v4 = a3;
  v5 = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
  v6 = [v5 copy];

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
        v13 = [v12 vehicle];
        v14 = [v13 isEqual:v4];

        if (v14)
        {
          [v12 dismissAlert];
          v15 = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
          [v15 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)_dismissReconnectionEnableWiFiAlertExceptForVehicle:(id)a3
{
  v4 = a3;
  v5 = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
  v6 = [v5 copy];

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
        v13 = [v12 vehicle];
        v14 = [v13 isEqual:v4];

        if ((v14 & 1) == 0)
        {
          [v12 dismissAlert];
          v15 = [(CRCarKitServiceAgent *)self outstandingEnableWiFiAlerts];
          [v15 removeObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

- (void)vehicleIdentifierForCertificateSerial:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v8 = [(CRCarKitServiceAgent *)self _isRestricted:&v26];
  v9 = v26;
  if (v8)
  {
    v7[2](v7, 0, v9);
    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_15:
    v21 = [NSError errorWithDomain:NSCocoaErrorDomain code:-99 userInfo:0];
    v7[2](v7, 0, v21);

    goto LABEL_16;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(CRCarKitServiceAgent *)self vehicleStore];
  v11 = [v10 allStoredVehicles];

  v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
      objc_enumerationMutation(v11);
    }

    v16 = *(*(&v22 + 1) + 8 * v15);
    v17 = [v16 certificateSerialNumber];
    v18 = [v6 isEqualToData:v17];

    if (v18)
    {
      break;
    }

    if (v13 == ++v15)
    {
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  v19 = [v16 identifier];
  v20 = [v19 UUIDString];

  if (!v20)
  {
    goto LABEL_15;
  }

  (v7)[2](v7, v20, 0);

LABEL_16:
}

- (void)_enhancedIntegrationUpdatedForMessagingVehicle:(id)a3 status:(unint64_t)a4
{
  v6 = [CRVehicle vehicleForMessagingVehicle:a3];
  [v6 setSupportsEnhancedIntegration:1];
  [v6 setEnhancedIntegrationStatus:a4];
  v7 = [(CRCarKitServiceAgent *)self vehicleStore];
  v8 = [v7 saveVehicle:v6];

  v9 = +[NSDistributedNotificationCenter defaultCenter];
  v10 = CREnhancedIntegrationConsentDidChangeNotification;
  v14 = CREnhancedIntegrationConsentDidChangeNotificationVehicleCertificateSerialKey;
  v11 = [v8 certificateSerialNumber];
  v12 = v11;
  if (!v11)
  {
    v12 = +[NSData data];
  }

  v15 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v9 postNotificationName:v10 object:0 userInfo:v13];

  if (!v11)
  {
  }
}

- (void)_presentEnhancedIntegrationAlertForMessagingVehicle:(id)a3
{
  v4 = a3;
  v5 = CarGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Presenting enhanced integration alert", buf, 2u);
  }

  v6 = [(CRMessagingVehicleAlert *)[CRVehicleEnhancedIntegrationAlert alloc] initWithMessagingVehicle:v4];
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
  v10 = v4;
  v14 = v10;
  v15 = buf;
  v11 = objc_retainBlock(v12);
  if ([(CRMessagingVehicleAlert *)v9 presentAlertWithCompletion:v11])
  {
    (v8[2])(v8);
  }

  _Block_object_dispose(buf, 8);
}

- (void)_dismissEnhancedIntegrationAlertForMessagingVehicle:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(CRCarKitServiceAgent *)self outstandingEnhancedIntegrationAlerts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v10 messagingVehicle];
        v12 = [v11 isEqual:v4];

        if (v12)
        {
          [v10 dismissAlert];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v2 = [(CRCarKitServiceAgent *)self outstandingEnhancedIntegrationAlerts];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) dismissAlert];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)bluetoothManager:(id)a3 didChangePowerState:(BOOL)a4
{
  if (a4)
  {
    v5 = [(CRCarKitServiceAgent *)self BTPowerMessagingVehicle];
    if (v5)
    {
      v6 = v5;
      v7 = [(CRCarKitServiceAgent *)self BTPowerStoredVehicle];

      if (v7)
      {
        v9 = [(CRCarKitServiceAgent *)self BTPowerMessagingVehicle];
        v8 = [(CRCarKitServiceAgent *)self BTPowerStoredVehicle];
        [(CRCarKitServiceAgent *)self _beginWiredPairingWithMessagingVehicle:v9 storedVehicle:v8];
      }
    }
  }
}

- (void)bluetoothManager:(id)a3 requestsConfirmationForDeviceAddress:(id)a4 name:(id)a5 numericCode:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CRCarKitServiceAgent *)self currentPromptFlowController];
  if (v17)
  {
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100035B7C;
    v22[3] = &unk_1000DE748;
    objc_copyWeak(&v25, &location);
    v18 = v13;
    v23 = v18;
    v24 = v16;
    [(CRCarKitServiceAgent *)self setCurrentBluetoothConfirmationHandler:v22];
    v19 = CarPairingLogging();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "showing numeric confirmation in pairing prompt flow", v21, 2u);
    }

    [v17 handleBluetoothPairingConfirmationRequestForDeviceIdentifier:v18 vehicleName:v14 numericCode:v15];
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

- (void)sessionDidConnect:(id)a3
{
  v4 = [(CRCarKitServiceAgent *)self startSessionTimer];

  if (v4)
  {
    v5 = CarPairingLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "startSessionTimer invalidate", v7, 2u);
    }

    v6 = [(CRCarKitServiceAgent *)self startSessionTimer];
    [v6 invalidate];

    [(CRCarKitServiceAgent *)self setStartSessionTimer:0];
  }
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 deviceIdentifier];

  v7 = [(CRCarKitServiceAgent *)self lastStartSessionDeviceID];
  v8 = [v7 isEqualToString:v6];

  if (v8)
  {
    v9 = CarGeneralLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "calling stoppedSessionForHostIdentifier: via last started deviceID", buf, 2u);
    }

    v10 = [(CRCarKitServiceAgent *)self sessionRequestClient];
    [v10 stoppedSessionForHostIdentifier:v6];
  }

  else
  {
    v11 = [(CRCarKitServiceAgent *)self vehicleStore];
    v12 = [v4 MFiCertificateSerialNumber];
    v10 = [v11 vehicleForCertificateSerial:v12];

    if (v10)
    {
      v13 = [v10 supportsStartSessionRequest];
      v14 = [v13 BOOLValue];

      if (v14)
      {
        v15 = CarGeneralLogging();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "calling stoppedSessionForHostIdentifier: via vehicle record", v33, 2u);
        }

        v16 = [(CRCarKitServiceAgent *)self sessionRequestClient];
        [v16 stoppedSessionForHostIdentifier:v6];
      }
    }
  }

  if ((+[CRCarPlayPreferences hasShownEditWidgetsNotification]& 1) == 0)
  {
    v17 = [v4 configuration];
    v18 = [v17 lodWidgetsMode];

    if (v18 != 1)
    {
      v19 = [(CRCarKitServiceAgent *)self vehicleStore];
      v20 = [v4 MFiCertificateSerialNumber];
      v21 = [v19 vehicleForCertificateSerial:v20];

      v22 = [v21 identifier];
      v23 = [v22 UUIDString];
      v24 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.General/CARPLAY/vehicle/%@/widgets", v23];

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
    v28 = [(CRCarKitServiceAgent *)self vehicleStore];
    v29 = [v4 MFiCertificateSerialNumber];
    v30 = [v28 vehicleForCertificateSerial:v29];

    v31 = [(CRCarKitServiceAgent *)self wifiManager];
    v32 = [v30 carplayWiFiUUID];
    [v31 disassociateFromNetworkWithCarPlayUUID:v32];
  }

  [(CRCarKitServiceAgent *)self setShouldDisconnectOnSessionDisconnect:0];
}

- (id)storedVehicleForSession:(id)a3
{
  v4 = [a3 MFiCertificateSerialNumber];
  if (v4)
  {
    v5 = [(CRCarKitServiceAgent *)self vehicleStore];
    v6 = [v5 vehicleForCertificateSerial:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setCarPlaySimulatorActive:(BOOL)a3
{
  if (self->_carPlaySimulatorActive != a3)
  {
    if (self->_carPlaySimulatorActive)
    {
      v5 = [(CRCarKitServiceAgent *)self sessionRequestClient];
      [v5 cancelRequests];
    }

    self->_carPlaySimulatorActive = a3;
  }
}

- (void)setRemoteDeviceConnected:(BOOL)a3
{
  if (self->_remoteDeviceConnected != a3)
  {
    self->_remoteDeviceConnected = a3;
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