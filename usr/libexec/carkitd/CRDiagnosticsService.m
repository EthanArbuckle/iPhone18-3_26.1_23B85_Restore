@interface CRDiagnosticsService
+ (BOOL)_accessorySupportsLocationDeadReckoning;
+ (id)sharedInstance;
- (BOOL)shouldTriggerSysdiagnose;
- (CRDiagnosticsService)init;
- (CRDiagnosticsService)initWithLocationManager:(id)a3 sleepInterval:(unsigned int)a4;
- (CRLoggingFileReceiver)loggingFileReceiver;
- (id)_INFOResponseURL;
- (id)_collectCarConfigurationForSession:(id)a3 supportingStartSession:(BOOL)a4;
- (id)_currentSiriAccount;
- (id)_extensionIdentifiersForDiagnosticsData:(id)a3;
- (id)_keywordsToAttachForDiagnosticsData:(id)a3;
- (id)_stringForScreens:(id)a3;
- (id)_stringForViewArea:(id)a3;
- (id)radarDescriptionForData:(id)a3;
- (id)radarDraftFromDiagnosticsData:(id)a3;
- (id)radarTitleTagsForData:(id)a3;
- (void)_backgroundQueue_finishDiagnosticsOperationSemaphore:(id)a3 transaction:(id)a4;
- (void)_beginDictationWithCompletion:(id)a3;
- (void)_collectCAFToolTree:(id)a3;
- (void)_configureDiagnosticsData:(id)a3 withAttachmentURLs:(id)a4 withAdditionalDescription:(id)a5;
- (void)_mainQueue_displayDraftCountBanner;
- (void)_mainQueue_displayDraftErrorBanner;
- (void)_mainQueue_displayFetchingVehicleLogsBannerWithCompletion:(id)a3;
- (void)_mainQueue_gatherVehicleLogsThenPerformSysdiagnoseWithDiagnosticData:(id)a3 isInternal:(BOOL)a4 completion:(id)a5;
- (void)_mainQueue_gatherVehicleLogsWithCompletion:(id)a3;
- (void)_mainQueue_performSysdiagnoseIncludingData:(id)a3 isInternal:(BOOL)a4 completion:(id)a5;
- (void)_mainQueue_presentCarAlertWithTitle:(id)a3 dismissTime:(double)a4 completion:(id)a5;
- (void)_mainQueue_presentDictationBannerWithCompletion:(id)a3;
- (void)_mainQueue_promptForInternalSysdiagnoseForDiagnosticData:(id)a3 completion:(id)a4;
- (void)_mainQueue_startDiagnosticsOperation:(id)a3;
- (void)_performVibrate;
- (void)collectDiagnosticsWithSession:(id)a3 displayReason:(id)a4 additionalDescription:(id)a5 attachmentURLs:(id)a6 completionHandler:(id)a7;
- (void)collectVehicleLogsWithReceiver:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)session:(id)a3 didUpdateConfiguration:(id)a4;
- (void)sessionDidDisconnect:(id)a3;
- (void)setSessionStatus:(id)a3;
@end

@implementation CRDiagnosticsService

+ (id)sharedInstance
{
  if (qword_100107FB8 != -1)
  {
    sub_100088938();
  }

  v3 = qword_100107FB0;

  return v3;
}

- (CRDiagnosticsService)init
{
  v3 = [CLLocationManager alloc];
  v4 = CRAutomaticDNDLocationBundle();
  v5 = [v3 initWithEffectiveBundle:v4];
  v6 = [(CRDiagnosticsService *)self initWithLocationManager:v5 sleepInterval:0];

  return v6;
}

- (void)dealloc
{
  v3 = [(CRDiagnosticsService *)self locationManager];
  [v3 stopUpdatingLocation];

  v4.receiver = self;
  v4.super_class = CRDiagnosticsService;
  [(CRDiagnosticsService *)&v4 dealloc];
}

- (void)setSessionStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [(CARSessionStatus *)v4 addSessionObserver:self];
  }

  sessionStatus = self->_sessionStatus;
  self->_sessionStatus = v5;
}

- (CRDiagnosticsService)initWithLocationManager:(id)a3 sleepInterval:(unsigned int)a4
{
  v7 = a3;
  v15.receiver = self;
  v15.super_class = CRDiagnosticsService;
  v8 = [(CRDiagnosticsService *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, a3);
    [(CLLocationManager *)v9->_locationManager setDelegate:v9];
    [(CLLocationManager *)v9->_locationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    [(CLLocationManager *)v9->_locationManager setActivityType:2];
    v9->_sleepInterval = a4;
    v9->_initialDiagnosticsBannerPresented = 0;
    v10 = dispatch_queue_create("com.apple.CarKit.DiagnosticsSerialQueue", 0);
    diagnosticsSerialQueue = v9->_diagnosticsSerialQueue;
    v9->_diagnosticsSerialQueue = v10;

    v9->_pendingDrafts = 0;
    v12 = [DNDStateService serviceForClientIdentifier:@"com.apple.carkitd.assertion-service"];
    dndStateService = v9->_dndStateService;
    v9->_dndStateService = v12;
  }

  return v9;
}

- (void)collectDiagnosticsWithSession:(id)a3 displayReason:(id)a4 additionalDescription:(id)a5 attachmentURLs:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  [(CRDiagnosticsService *)self setLastSession:v12];
  v17 = objc_alloc_init(CRDiagnosticsData);
  [(CRDiagnosticsService *)self setCurrentDiagnosticsData:v17];
  v18 = [v12 transportType];
  v19 = v18;
  if (v18)
  {
    if ([v18 isEqualToString:kFigEndpointTransportType_AWDL] & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", kFigEndpointTransportType_WiFi))
    {
      v20 = 3;
    }

    else if ([v19 isEqualToString:kFigEndpointTransportType_Ethernet])
    {
      v20 = 2;
    }

    else
    {
      v20 = [v19 isEqualToString:kFigEndpointTransportType_USB];
    }
  }

  else
  {
    v20 = 0;
  }

  [(CRDiagnosticsData *)v17 setTransportType:v20];
  if (CRIsInternalInstall() && objc_opt_class())
  {
    v21 = +[NSMutableString string];
    v22 = v21;
    if (v14)
    {
      [v21 appendFormat:@"%@\n", v14];
    }

    v31 = v13;
    v23 = [v12 transportType];
    [v22 appendFormat:@"Transport Type: %@", v23];

    v24 = [v12 vehicleInformation];

    if (v24)
    {
      v25 = [v12 vehicleInformation];
      [v22 appendFormat:@"Vehicle Information: %@", v25];
    }

    [(CRDiagnosticsService *)self _configureDiagnosticsData:v17 withAttachmentURLs:v15 withAdditionalDescription:v22];
    v26 = [(CRDiagnosticsService *)self shouldTriggerSysdiagnose];
    v27 = CarDiagnosticsLogging();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Starting to take a sysdiagnose", buf, 2u);
      }

      v29 = [(CRDiagnosticsService *)self radarDraftFromDiagnosticsData:v17];
      v30 = +[TapToRadarService shared];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_10005E2E8;
      v32[3] = &unk_1000DF780;
      v32[4] = self;
      v33 = v16;
      [v30 createDraft:v29 forProcessNamed:@"CarPlay" withDisplayReason:v31 completionHandler:v32];

      v13 = v31;
    }

    else
    {
      v13 = v31;
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No need for sysdiagnose now", buf, 2u);
      }

      v16[2](v16);
    }
  }
}

- (void)collectVehicleLogsWithReceiver:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [(CRDiagnosticsService *)self sessionStatus];
  v9 = [v8 currentSession];

  if (v9)
  {
    v10 = [v9 configuration];
    [(CRDiagnosticsService *)self setLastConfiguration:v10];
    [(CRDiagnosticsService *)self setLoggingFileReceiver:v6];
    if ([v10 supportsVehicleData])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10005E690;
      v13[3] = &unk_1000DF7F0;
      v13[4] = self;
      v14 = v7;
      [(CRDiagnosticsService *)self _mainQueue_startDiagnosticsOperation:v13];
    }

    else
    {
      v12 = CarDiagnosticsLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Trying to collect vehicle logs but currentSession doesn't support vehicle data", buf, 2u);
      }

      (*(v7 + 2))(v7, 0);
    }
  }

  else
  {
    v11 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Trying to collect vehicle logs but currentSession is nil", buf, 2u);
    }

    (*(v7 + 2))(v7, 0);
  }
}

- (void)_configureDiagnosticsData:(id)a3 withAttachmentURLs:(id)a4 withAdditionalDescription:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        [v8 addAttachment:*(*(&v20 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = [(CRDiagnosticsService *)self _currentSiriAccount];
  [v8 setSiriAccount:v15];

  [v8 setAdditionalDescription:v10];
  dndStateService = self->_dndStateService;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005E9FC;
  v18[3] = &unk_1000DF818;
  v19 = v8;
  v17 = v8;
  [(DNDStateService *)dndStateService queryCurrentStateWithCompletionHandler:v18];
}

- (void)_mainQueue_promptForInternalSysdiagnoseForDiagnosticData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005ECF4;
  v10[3] = &unk_1000DF840;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(CRDiagnosticsService *)self _mainQueue_presentDictationBannerWithCompletion:v10];
}

- (void)_mainQueue_gatherVehicleLogsThenPerformSysdiagnoseWithDiagnosticData:(id)a3 isInternal:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005EEA0;
  v12[3] = &unk_1000DF8B8;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(CRDiagnosticsService *)self _mainQueue_startDiagnosticsOperation:v12];
}

- (void)_mainQueue_startDiagnosticsOperation:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = dispatch_semaphore_create(0);
  v6 = os_transaction_create();
  v7 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    description = os_transaction_get_description();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "began idle-exit transaction for CarPlay diagnostics: %s", buf, 0xCu);
  }

  v8 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "waiting on previous diagnostics", buf, 2u);
  }

  v9 = [(CRDiagnosticsService *)self diagnosticsSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F394;
  block[3] = &unk_1000DF8E0;
  v15 = v6;
  v16 = v4;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  v12 = v4;
  dispatch_async(v9, block);
}

- (void)_backgroundQueue_finishDiagnosticsOperationSemaphore:(id)a3 transaction:(id)a4
{
  v5 = a4;
  dispatch_semaphore_signal(a3);
  v6 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    description = os_transaction_get_description();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ended idle-exit transaction for CarPlay diagnostics: %s", &v7, 0xCu);
  }
}

- (void)_mainQueue_gatherVehicleLogsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = [(CRDiagnosticsService *)self loggingFileReceiver];

  v6 = CarDiagnosticsLogging();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting vehicle log archive", buf, 2u);
    }

    v8 = [(CRDiagnosticsService *)self loggingFileReceiver];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005F734;
    v9[3] = &unk_1000DE358;
    v10 = v4;
    [v8 requestLogsWithCompletion:v9];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "logging file receiver not supported", buf, 2u);
    }

    (*(v4 + 2))(v4, 0);
  }
}

- (void)_mainQueue_performSysdiagnoseIncludingData:(id)a3 isInternal:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting to take a sysdiagnose", buf, 2u);
  }

  v11 = CarDiagnosticsLogging();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "internal version of sysdiagnose", buf, 2u);
    }

    v13 = [(CRDiagnosticsService *)self radarDraftFromDiagnosticsData:v8];
    v14 = +[TapToRadarService shared];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005F9D4;
    v19[3] = &unk_1000DF780;
    v19[4] = self;
    v20 = v9;
    v15 = v9;
    [v14 createDraft:v13 forProcessNamed:@"CarPlay" withDisplayReason:0 completionHandler:v19];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "public version of sysdiagnose", buf, 2u);
    }

    [(CRDiagnosticsService *)self _performVibrate];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10005FBC4;
    v16[3] = &unk_1000DF908;
    v17 = 0;
    v18 = v9;
    v13 = v9;
    [Libsysdiagnose sysdiagnoseWithMetadata:&__NSDictionary0__struct onCompletion:v16];

    v15 = v17;
  }
}

- (id)_currentSiriAccount
{
  v2 = objc_alloc_init(AFSettingsConnection);
  v3 = [v2 accounts];
  v4 = [v3 sortedArrayUsingComparator:&stru_1000DF948];

  v5 = [v4 firstObject];

  return v5;
}

- (void)_mainQueue_displayDraftCountBanner
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v3 = [NSString stringWithFormat:@"Number of Drafts Scheduled: %ld", [(CRDiagnosticsService *)self pendingDrafts]];
  [(CRDiagnosticsService *)self _mainQueue_presentCarAlertWithTitle:v3 dismissTime:0 completion:3.0];
}

- (void)_mainQueue_displayDraftErrorBanner
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(CRDiagnosticsService *)self _mainQueue_presentCarAlertWithTitle:@"ERROR: Failed to create a draft!" dismissTime:0 completion:3.0];
}

- (void)_mainQueue_displayFetchingVehicleLogsBannerWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005FE80;
  v6[3] = &unk_1000DE970;
  v7 = v4;
  v5 = v4;
  [(CRDiagnosticsService *)self _mainQueue_presentCarAlertWithTitle:@"Fetching vehicle logs dismissTime:please wait..." completion:v6, 3.0];
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed fetching diagnostics device location with %@", buf, 0xCu);
  }

  v9 = [v7 location];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005FFD4;
  v11[3] = &unk_1000DD580;
  v11[4] = self;
  v12 = v9;
  v10 = v9;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received diagnostics location manager update response.", buf, 2u);
  }

  [v7 stopUpdatingLocation];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006021C;
  v10[3] = &unk_1000DD580;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);
}

- (BOOL)shouldTriggerSysdiagnose
{
  v2 = NSClassFromString(@"XCTestCase");
  if (v2)
  {
    v3 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping sysdiagnose in testing context.", v5, 2u);
    }
  }

  return v2 == 0;
}

- (void)_mainQueue_presentDictationBannerWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = +[CRDictationService sharedInstance];
  v6 = [v5 dictationEnabled];

  if (v6)
  {
    v7 = +[CRDictationService sharedInstance];
    v8 = [v7 dictationEnabledInKeyboardSettings];

    if (v8)
    {
      v9 = +[CRDictationService sharedInstance];
      v10 = [v9 dictationAvailable];

      if (v10)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000606CC;
        v20[3] = &unk_1000DF970;
        v20[4] = self;
        v21 = v4;
        [(CRDiagnosticsService *)self _mainQueue_presentCarAlertWithTitle:@"Tap to Dictate Issue" dismissTime:v20 completion:10.0];
        v11 = v21;
      }

      else
      {
        v14 = CarDiagnosticsLogging();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dictation is not available", buf, 2u);
        }

        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10006079C;
        v17[3] = &unk_1000DE970;
        v18 = v4;
        [(CRDiagnosticsService *)self _mainQueue_presentCarAlertWithTitle:@"Dictation Not Available" dismissTime:v17 completion:3.0];
        v11 = v18;
      }
    }

    else
    {
      v13 = CarDiagnosticsLogging();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Dictation is not enabled in keyboard settings", buf, 2u);
      }

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000607B0;
      v15[3] = &unk_1000DE970;
      v16 = v4;
      [(CRDiagnosticsService *)self _mainQueue_presentCarAlertWithTitle:@"Dictation Not Enabled In Settings" dismissTime:v15 completion:3.0];
      v11 = v16;
    }
  }

  else
  {
    v12 = CarDiagnosticsLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dictation is not enabled via user preference", buf, 2u);
    }

    (*(v4 + 2))(v4, 0);
  }
}

- (void)_beginDictationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[CRDictationService sharedInstance];
  [v5 reset];

  v6 = +[CRDictationService sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100060894;
  v8[3] = &unk_1000DFA00;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 beginRecordingWithCompletion:v8];
}

- (void)_performVibrate
{
  v2 = dispatch_get_global_queue(25, 0);
  dispatch_async(v2, &stru_1000DFA20);
}

- (void)_mainQueue_presentCarAlertWithTitle:(id)a3 dismissTime:(double)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v7;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Presenting diagnostics alert: %@, timeOut Interval: %f", &v11, 0x16u);
  }

  v10 = objc_alloc_init(CRDiagnosticsAlert);
  [(CRDiagnosticsAlert *)v10 setTimeoutInterval:a4];
  [(CRDiagnosticsAlert *)v10 setBannerMessage:v7];
  [(CRAlert *)v10 presentAlertWithCompletion:v8];
}

- (id)_keywordsToAttachForDiagnosticsData:(id)a3
{
  v4 = a3;
  v5 = [NSMutableArray arrayWithObjects:&off_1000E7B58, &off_1000E7B70, 0];
  [&off_1000E8D50 allKeys];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1000614D4;
  v6 = v35 = &unk_1000DFA48;
  v36 = v6;
  v37 = &off_1000E8D50;
  v7 = objc_retainBlock(&v32);
  v8 = [(CRDiagnosticsService *)self lastConfiguration];
  v9 = [v8 vehicleManufacturer];

  if (v9)
  {
    v10 = [v8 vehicleManufacturer];
    v11 = (v7[2])(v7, v10);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  v12 = [v8 manufacturerName];

  if (v12)
  {
    v13 = [v8 manufacturerName];
    v11 = (v7[2])(v7, v13);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  v14 = [v8 vehicleName];

  if (v14)
  {
    v15 = [v8 vehicleName];
    v11 = (v7[2])(v7, v15);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  v16 = [v8 name];

  if (v16)
  {
    v17 = [v8 name];
    v11 = (v7[2])(v7, v17);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  v18 = [v8 vehicleModelName];

  if (v18)
  {
    v19 = [v8 vehicleModelName];
    v11 = (v7[2])(v7, v19);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  v20 = [v8 modelName];

  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = [v8 modelName];
  v11 = (v7[2])(v7, v21);

  if (v11)
  {
LABEL_13:
    [v5 addObject:v11];
  }

  else
  {
LABEL_30:
    v11 = CarGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not resolve a model keyword for %@", buf, 0xCu);
    }
  }

  v22 = [NSDictionary alloc];
  v23 = [v22 initWithObjectsAndKeys:{&off_1000E7F78, @"com.apple.iBooks", &off_1000E7F90, @"com.apple.MobileSMS", &off_1000E7FA8, @"com.apple.Music", &off_1000E7FC0, @"com.apple.mobilephone", &off_1000E7FC0, @"com.apple.InCallService", &off_1000E7FD8, @"com.apple.podcasts", &off_1000E7FF0, @"com.apple.mobilecal", &off_1000E8008, @"com.apple.CarPlaySettings", &off_1000E8020, @"com.apple.internal.Neatline", &off_1000E8038, &off_1000E8050, &off_1000E8068, &off_1000E8080, 0, v32, v33, v34, v35}];
  v24 = [v4 activeBundleIdentifier];

  if (v24)
  {
    v25 = [v4 activeBundleIdentifier];
    v26 = [v23 objectForKey:v25];

    if (v26)
    {
      [v5 addObject:v26];
    }
  }

  v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 transportType]);
  v28 = [v23 objectForKey:v27];

  if (v28)
  {
    [v5 addObject:v28];
  }

  if ([v4 vehicleSupportsStartSession])
  {
    v29 = &off_1000E8098;
  }

  else
  {
    v29 = &off_1000E80B0;
  }

  [v5 addObject:v29];
  if ([v8 hasGaugeClusterScreen])
  {
    [v5 addObject:&off_1000E80C8];
    [v5 addObject:&off_1000E80E0];
  }

  v30 = [(CRDiagnosticsService *)self lastSession];
  if (v30)
  {
    [v5 addObject:&off_1000E80F8];
    [v5 addObject:&off_1000E8110];
  }

  return v5;
}

- (id)_stringForViewArea:(id)a3
{
  v3 = a3;
  [v3 visibleFrame];
  v4 = NSStringFromRect(v11);
  [v3 safeFrame];
  v5 = NSStringFromRect(v12);
  v6 = [v3 displaysTransitionControl];

  v7 = @"NO";
  if (v6)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"\t\t\tVisible Frame: %@\n\t\t\tSafe Frame: %@\n\t\t\tDisplays Transition Control: %@\n", v4, v5, v7];

  return v8;
}

- (id)_stringForScreens:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"Number of screens: %lu\n", [v4 count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v30)
  {
    v29 = *v38;
    v6 = 1;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v38 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        [v5 appendFormat:@"\t{\n\t\tScreen %d\n", v6];
        v9 = [v8 identifier];
        [v5 appendFormat:@"\t\tIdentifier: %@\n", v9];
        v10 = [v8 screenType];
        v11 = @"Secondary";
        if (!v10)
        {
          v11 = @"Primary";
        }

        [v5 appendFormat:@"\t\tType: %@\n", v11];
        v12 = [v8 descriptionForAvailableInteractionModels];
        [v5 appendFormat:@"\t\tAvailable Interaction Models: %@\n", v12];
        v13 = [v8 descriptionForPrimaryInteractionModel];
        [v5 appendFormat:@"\t\tPrimary Interaction Model: %@\n", v13];
        [v8 physicalSize];
        v14 = NSStringFromSize(v44);
        [v5 appendFormat:@"\t\tPhysical Size: %@\n", v14];

        [v8 pixelSize];
        v15 = NSStringFromSize(v45);
        [v5 appendFormat:@"\t\tPixel Size: %@\n", v15];

        v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 maxFramesPerSecond]);
        [v5 appendFormat:@"\t\tMax FPS: %@\n", v16];

        v17 = [v8 supportsHighFidelityTouch];
        v18 = @"NO";
        if (v17)
        {
          v18 = @"YES";
        }

        [v5 appendFormat:@"\t\tSupports HiFi Touch: %@\n", v18];
        v19 = [v8 viewAreas];
        v20 = [v19 count];

        if (v20)
        {
          v31 = v12;
          v32 = v9;
          [v5 appendFormat:@"\t\tView Areas:\n"];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v21 = [v8 viewAreas];
          v22 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v34;
            do
            {
              for (j = 0; j != v23; j = j + 1)
              {
                if (*v34 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = [(CRDiagnosticsService *)self _stringForViewArea:*(*(&v33 + 1) + 8 * j)];
                [v5 appendString:v26];
              }

              v23 = [v21 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v23);
          }

          v12 = v31;
          v9 = v32;
        }

        [v5 appendFormat:@"\t}\n"];
        v6 = (v6 + 1);
      }

      v30 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v30);
  }

  return v5;
}

- (void)_collectCAFToolTree:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061BB8;
  block[3] = &unk_1000DD960;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

+ (BOOL)_accessorySupportsLocationDeadReckoning
{
  v2 = CLGetAccessoryTypeBitSet();
  v3 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [NSNumber numberWithUnsignedInt:v2];
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Received location bitset %@", &v7, 0xCu);
  }

  return (v2 >> 3) & 1;
}

- (id)_INFOResponseURL
{
  v2 = [(CRDiagnosticsService *)self lastConfiguration];
  v3 = [v2 infoResponse];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 temporaryDirectory];
  v6 = [v5 URLByAppendingPathComponent:@"INFOResponse.plist"];

  v7 = [v6 path];
  if (v7)
  {
    [v3 writeToFile:v7 atomically:1];
  }

  return v6;
}

- (id)_collectCarConfigurationForSession:(id)a3 supportingStartSession:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 configuration];
  v7 = [@"Connected CarPlay Session\n\n" stringByAppendingString:@"Session Configuration\n"];
  v85 = [v6 vehicleName];
  v8 = [v7 stringByAppendingFormat:@"Name: %@\n", v85];

  v9 = [v6 vehicleFirmwareVersion];
  v10 = [v8 stringByAppendingFormat:@"Firmware Version: %@\n", v9];

  v11 = [v6 vehicleHardwareVersion];
  v12 = [v10 stringByAppendingFormat:@"Hardware Version: %@\n", v11];

  v84 = [v6 vehicleModelName];
  v13 = [v12 stringByAppendingFormat:@"Model Name: %@\n", v84];

  v14 = [v6 modelName];
  v15 = [v13 stringByAppendingFormat:@"Model Name (AirPlay): %@\n", v14];

  v83 = [v6 vehicleManufacturer];
  v16 = [v15 stringByAppendingFormat:@"Manufacturer: %@\n", v83];

  v17 = [v6 manufacturerName];
  v18 = [v16 stringByAppendingFormat:@"Manufacturer (AirPlay): %@\n", v17];

  v19 = [v6 vehicleSerialNumber];
  v20 = [v18 stringByAppendingFormat:@"Serial Number: %@\n", v19];

  v21 = [v6 PPID];
  v22 = [v20 stringByAppendingFormat:@"PPID: %@\n", v21];

  v23 = [v6 endpointIdentifier];
  v24 = [v22 stringByAppendingFormat:@"Endpoint Identifier: %@\n", v23];

  v25 = [v6 descriptionForTransportType];
  v81 = v25;
  v26 = @"Bonjour";
  if (v4)
  {
    v26 = @"Start Session";
  }

  v27 = [v24 stringByAppendingFormat:@"Transport types: %@\nSession Type: %@\n", v25, v26];

  if ([v6 nightModeSupported])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v29 = [v27 stringByAppendingFormat:@"Night Mode Supported: %@\n", v28];

  v30 = [v6 descriptionForLimitableUserInterfaces];
  v31 = [v29 stringByAppendingFormat:@"Limitable UI Types: %@\n", v30];

  v32 = [v5 limitUserInterfaces];
  v33 = [v32 BOOLValue];

  if (v33)
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v35 = [v31 stringByAppendingFormat:@"Limited UI Enabled: %@\n", v34];

  if ([v6 supportsElectronicTollCollection])
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v37 = [v35 stringByAppendingFormat:@"ETC Supported: %@\n", v36];

  if ([v6 rightHandDrive])
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  v39 = [v37 stringByAppendingFormat:@"Right Hand Drive: %@\n", v38];

  v40 = +[CARSessionConfiguration descriptionForCapability:](CARSessionConfiguration, "descriptionForCapability:", [v6 nowPlayingAlbumArtMode]);
  v41 = [v39 stringByAppendingFormat:@"Capability - Album Art : %@\n", v40];

  v42 = +[CARSessionConfiguration descriptionForUserInterfaceStyle:](CARSessionConfiguration, "descriptionForUserInterfaceStyle:", [v6 userInterfaceStyle]);
  v43 = [v41 stringByAppendingFormat:@"Capability - User Interface Style: %@\n", v42];

  [v6 viewAreaInsets];
  v44 = [CARSessionConfiguration descriptionForEdgeInsets:?];
  v45 = [v43 stringByAppendingFormat:@"Capability - Safe Area Insets: %@\n", v44];

  [v6 dashboardRoundedCorners];
  v46 = [CARSessionConfiguration descriptionForEdgeInsets:?];
  v47 = [v45 stringByAppendingFormat:@"Capability - Dashboard Rounded Corners: %@\n", v46];

  if ([v6 supportsACBack])
  {
    v48 = @"YES";
  }

  else
  {
    v48 = @"NO";
  }

  v49 = [v47 stringByAppendingFormat:@"Supports AC_BACK: %@\n", v48];

  if ([v6 vehicleSupportsDestinationSharing])
  {
    v50 = @"YES";
  }

  else
  {
    v50 = @"NO";
  }

  v51 = [v49 stringByAppendingFormat:@"Supports Destination Sharing: %@\n", v50];

  if ([v6 supportsSiriZLL])
  {
    v52 = @"YES";
  }

  else
  {
    v52 = @"NO";
  }

  v53 = [v51 stringByAppendingFormat:@"Supports Siri ZLL: %@\n", v52];

  if ([v6 supportsSiriZLLButton])
  {
    v54 = @"YES";
  }

  else
  {
    v54 = @"NO";
  }

  v55 = [v53 stringByAppendingFormat:@"Supports Siri ZLL Button: %@\n", v54];

  if ([v6 supportsSiriMixable])
  {
    v56 = @"YES";
  }

  else
  {
    v56 = @"NO";
  }

  v57 = [v55 stringByAppendingFormat:@"Supports Siri Mixable: %@\n", v56];

  [v5 voiceTriggerMode];
  v58 = CARStringFromVoiceTriggerMode();
  v59 = [v57 stringByAppendingFormat:@"Voice Trigger Mode: %@\n", v58];

  v60 = [v59 stringByAppendingString:@"\nManufacturer Icons\n"];

  v61 = [v6 manufacturerIconLabel];
  v62 = [v60 stringByAppendingFormat:@"Icon Label: %@\n", v61];

  if ([v6 manufacturerIconVisible])
  {
    v63 = @"YES";
  }

  else
  {
    v63 = @"NO";
  }

  v64 = [v62 stringByAppendingFormat:@"Icon Visible: %@\n", v63];

  v65 = [v6 screens];
  v66 = [(CRDiagnosticsService *)self _stringForScreens:v65];
  v67 = [v64 stringByAppendingString:v66];

  v68 = [v67 stringByAppendingString:@"\nCurrent session info\n"];

  v69 = [v5 systemNightMode];
  LODWORD(v64) = [v69 BOOLValue];

  if (v64)
  {
    v70 = @"YES";
  }

  else
  {
    v70 = @"NO";
  }

  v71 = [v68 stringByAppendingFormat:@"Night Mode Enabled (without fallbacks): %@\n", v70];

  v72 = [v5 nightMode];
  v73 = [v72 BOOLValue];

  if (v73)
  {
    v74 = @"YES";
  }

  else
  {
    v74 = @"NO";
  }

  v75 = [v71 stringByAppendingFormat:@"Night Mode Enabled (with fallbacks): %@\n", v74];

  v76 = [v5 electronicTollCollectionAvailable];

  v77 = [v76 BOOLValue];
  if (v77)
  {
    v78 = @"YES";
  }

  else
  {
    v78 = @"NO";
  }

  v79 = [v75 stringByAppendingFormat:@"ETC Enabled: %@\n", v78];

  return v79;
}

- (id)_extensionIdentifiersForDiagnosticsData:(id)a3
{
  v3 = a3;
  v4 = [v3 activeBundleIdentifier];
  v5 = +[NSMutableArray array];
  v6 = [v3 isMapsActive];

  if (v6)
  {
    [v5 addObjectsFromArray:&off_1000E8CB8];
    if ([v4 isEqualToString:@"com.apple.Maps"])
    {
      [v5 addObject:@"com.apple.CoreRoutine.RTDiagnosticExtension"];
    }
  }

  if ([v4 isEqualToString:@"com.apple.podcasts"])
  {
    v7 = @"com.apple.podcasts.DiagnosticExtension";
  }

  else
  {
    if (![v4 isEqualToString:@"com.apple.Music"])
    {
      goto LABEL_9;
    }

    v7 = @"com.apple.MediaPlayer.DiagnosticExtension";
  }

  [v5 addObject:v7];
LABEL_9:
  [v5 addObject:@"com.apple.DiagnosticExtensions.Cellular"];
  [v5 addObject:@"com.apple.voiceservices.diagnosticextension"];
  [v5 addObject:@"com.apple.DiagnosticExtensions.ConnectivityDE"];

  return v5;
}

- (id)radarTitleTagsForData:(id)a3
{
  v4 = a3;
  if ([v4 isVehicleDataSession])
  {
    v5 = @"[CarPlay Ultra]";
  }

  else
  {
    v5 = @"[CarPlay]";
  }

  v6 = [(CRDiagnosticsService *)self lastSession];
  if (v6)
  {
    v7 = [v4 additionalDescription];
    v8 = [v7 containsString:@"Total Reconnection Time"];

    if (v8)
    {
      v5 = [(__CFString *)v5 stringByAppendingString:@" Connection Time Issue"];
    }
  }

  return v5;
}

- (id)radarDescriptionForData:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 transcription];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v3 transcription];
    [v4 appendFormat:@"Dictated description: %@\n\n", v7];
  }

  else
  {
    [v4 appendString:@"Please provide a brief description of this radar.\n\n"];
  }

  if ([v3 isVehicleDataSession])
  {
    v8 = CRLocalizedInternalStringForKey();
    [v4 appendString:v8];
  }

  v9 = [v3 activeBundleIdentifier];
  [v4 appendFormat:@"\n\nActive App: %@", v9];

  v10 = [v3 siriAccount];
  v11 = [v10 hostname];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v3 siriAccount];
    v14 = [v13 hostname];
    [v4 appendFormat:@"\nSiri Server Hostname: %@", v14];
  }

  v15 = [v3 focusModeDescription];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [v3 focusModeDescription];
    [v4 appendFormat:@"\nActive Focus Mode: %@", v17];
  }

  v18 = [v3 timestamp];
  [v4 appendFormat:@"\nTimestamp: %@", v18];

  v19 = [v3 locationDescription];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [v3 locationDescription];
    [v4 appendFormat:@"\n\nLast known location (for Maps/location investigation):\n%@", v21];
  }

  v22 = [v3 vehicleSupportsStartSession];
  v23 = @"Bonjour";
  if (v22)
  {
    v23 = @"Start Session";
  }

  [v4 appendFormat:@"\nSession Type: %@", v23];
  v24 = +[CARAnalytics sharedInstance];
  v25 = [v24 wifiChannel];

  if (v25)
  {
    v26 = +[CARAnalytics sharedInstance];
    v27 = [v26 wifiChannel];
    [v4 appendFormat:@"\nWiFi Channel number: %@", v27];
  }

  v28 = [v3 additionalDescription];
  v29 = [v28 length];

  if (v29)
  {
    v30 = [v3 additionalDescription];
    [v4 appendFormat:@"\n\n%@", v30];
  }

  v31 = [v4 copy];

  return v31;
}

- (id)radarDraftFromDiagnosticsData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(RadarDraft);
  v6 = [(CRDiagnosticsService *)self radarTitleTagsForData:v4];
  [v5 setTitle:v6];

  v7 = [(CRDiagnosticsService *)self radarDescriptionForData:v4];
  [v5 setProblemDescription:v7];

  LODWORD(v7) = [v4 isVehicleDataSession];
  v8 = [RadarComponent alloc];
  v9 = v8;
  if (v7)
  {
    v10 = CRLocalizedInternalStringForKey();
    v11 = [v9 initWithName:v10 version:@"New Bugs" identifier:1529811];
    [v5 setComponent:v11];
  }

  else
  {
    v10 = [v8 initWithName:@"CarPlay" version:@"(New Bugs)" identifier:597444];
    [v5 setComponent:v10];
  }

  v12 = [v4 attachmentURLs];
  [v5 setAttachments:v12];

  v13 = [(CRDiagnosticsService *)self _extensionIdentifiersForDiagnosticsData:v4];
  [v5 setDiagnosticExtensionIDs:v13];

  v14 = [(CRDiagnosticsService *)self _keywordsToAttachForDiagnosticsData:v4];
  [v5 setKeywords:v14];

  [v5 setAutoDiagnostics:1];
  v15 = [v4 date];
  [v5 setTimeOfIssue:v15];

  [v5 setIsUserInitiated:1];

  return v5;
}

- (void)session:(id)a3 didUpdateConfiguration:(id)a4
{
  v5 = a4;
  if (CRIsInternalInstall())
  {
    [(CRDiagnosticsService *)self setLastConfiguration:v5];
  }
}

- (void)sessionDidDisconnect:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100063330;
  block[3] = &unk_1000DD480;
  block[4] = self;
  dispatch_sync(&_dispatch_main_q, block);
}

- (CRLoggingFileReceiver)loggingFileReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_loggingFileReceiver);

  return WeakRetained;
}

@end