@interface CRDiagnosticsService
+ (BOOL)_accessorySupportsLocationDeadReckoning;
+ (id)sharedInstance;
- (BOOL)shouldTriggerSysdiagnose;
- (CRDiagnosticsService)init;
- (CRDiagnosticsService)initWithLocationManager:(id)manager sleepInterval:(unsigned int)interval;
- (CRLoggingFileReceiver)loggingFileReceiver;
- (id)_INFOResponseURL;
- (id)_collectCarConfigurationForSession:(id)session supportingStartSession:(BOOL)startSession;
- (id)_currentSiriAccount;
- (id)_extensionIdentifiersForDiagnosticsData:(id)data;
- (id)_keywordsToAttachForDiagnosticsData:(id)data;
- (id)_stringForScreens:(id)screens;
- (id)_stringForViewArea:(id)area;
- (id)radarDescriptionForData:(id)data;
- (id)radarDraftFromDiagnosticsData:(id)data;
- (id)radarTitleTagsForData:(id)data;
- (void)_backgroundQueue_finishDiagnosticsOperationSemaphore:(id)semaphore transaction:(id)transaction;
- (void)_beginDictationWithCompletion:(id)completion;
- (void)_collectCAFToolTree:(id)tree;
- (void)_configureDiagnosticsData:(id)data withAttachmentURLs:(id)ls withAdditionalDescription:(id)description;
- (void)_mainQueue_displayDraftCountBanner;
- (void)_mainQueue_displayDraftErrorBanner;
- (void)_mainQueue_displayFetchingVehicleLogsBannerWithCompletion:(id)completion;
- (void)_mainQueue_gatherVehicleLogsThenPerformSysdiagnoseWithDiagnosticData:(id)data isInternal:(BOOL)internal completion:(id)completion;
- (void)_mainQueue_gatherVehicleLogsWithCompletion:(id)completion;
- (void)_mainQueue_performSysdiagnoseIncludingData:(id)data isInternal:(BOOL)internal completion:(id)completion;
- (void)_mainQueue_presentCarAlertWithTitle:(id)title dismissTime:(double)time completion:(id)completion;
- (void)_mainQueue_presentDictationBannerWithCompletion:(id)completion;
- (void)_mainQueue_promptForInternalSysdiagnoseForDiagnosticData:(id)data completion:(id)completion;
- (void)_mainQueue_startDiagnosticsOperation:(id)operation;
- (void)_performVibrate;
- (void)collectDiagnosticsWithSession:(id)session displayReason:(id)reason additionalDescription:(id)description attachmentURLs:(id)ls completionHandler:(id)handler;
- (void)collectVehicleLogsWithReceiver:(id)receiver completionHandler:(id)handler;
- (void)dealloc;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)session:(id)session didUpdateConfiguration:(id)configuration;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setSessionStatus:(id)status;
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
  locationManager = [(CRDiagnosticsService *)self locationManager];
  [locationManager stopUpdatingLocation];

  v4.receiver = self;
  v4.super_class = CRDiagnosticsService;
  [(CRDiagnosticsService *)&v4 dealloc];
}

- (void)setSessionStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    [(CARSessionStatus *)statusCopy addSessionObserver:self];
  }

  sessionStatus = self->_sessionStatus;
  self->_sessionStatus = v5;
}

- (CRDiagnosticsService)initWithLocationManager:(id)manager sleepInterval:(unsigned int)interval
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = CRDiagnosticsService;
  v8 = [(CRDiagnosticsService *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, manager);
    [(CLLocationManager *)v9->_locationManager setDelegate:v9];
    [(CLLocationManager *)v9->_locationManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    [(CLLocationManager *)v9->_locationManager setActivityType:2];
    v9->_sleepInterval = interval;
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

- (void)collectDiagnosticsWithSession:(id)session displayReason:(id)reason additionalDescription:(id)description attachmentURLs:(id)ls completionHandler:(id)handler
{
  sessionCopy = session;
  reasonCopy = reason;
  descriptionCopy = description;
  lsCopy = ls;
  handlerCopy = handler;
  [(CRDiagnosticsService *)self setLastSession:sessionCopy];
  v17 = objc_alloc_init(CRDiagnosticsData);
  [(CRDiagnosticsService *)self setCurrentDiagnosticsData:v17];
  transportType = [sessionCopy transportType];
  v19 = transportType;
  if (transportType)
  {
    if ([transportType isEqualToString:kFigEndpointTransportType_AWDL] & 1) != 0 || (objc_msgSend(v19, "isEqualToString:", kFigEndpointTransportType_WiFi))
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
    if (descriptionCopy)
    {
      [v21 appendFormat:@"%@\n", descriptionCopy];
    }

    v31 = reasonCopy;
    transportType2 = [sessionCopy transportType];
    [v22 appendFormat:@"Transport Type: %@", transportType2];

    vehicleInformation = [sessionCopy vehicleInformation];

    if (vehicleInformation)
    {
      vehicleInformation2 = [sessionCopy vehicleInformation];
      [v22 appendFormat:@"Vehicle Information: %@", vehicleInformation2];
    }

    [(CRDiagnosticsService *)self _configureDiagnosticsData:v17 withAttachmentURLs:lsCopy withAdditionalDescription:v22];
    shouldTriggerSysdiagnose = [(CRDiagnosticsService *)self shouldTriggerSysdiagnose];
    v27 = CarDiagnosticsLogging();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (shouldTriggerSysdiagnose)
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
      v33 = handlerCopy;
      [v30 createDraft:v29 forProcessNamed:@"CarPlay" withDisplayReason:v31 completionHandler:v32];

      reasonCopy = v31;
    }

    else
    {
      reasonCopy = v31;
      if (v28)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "No need for sysdiagnose now", buf, 2u);
      }

      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)collectVehicleLogsWithReceiver:(id)receiver completionHandler:(id)handler
{
  receiverCopy = receiver;
  handlerCopy = handler;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  sessionStatus = [(CRDiagnosticsService *)self sessionStatus];
  currentSession = [sessionStatus currentSession];

  if (currentSession)
  {
    configuration = [currentSession configuration];
    [(CRDiagnosticsService *)self setLastConfiguration:configuration];
    [(CRDiagnosticsService *)self setLoggingFileReceiver:receiverCopy];
    if ([configuration supportsVehicleData])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10005E690;
      v13[3] = &unk_1000DF7F0;
      v13[4] = self;
      v14 = handlerCopy;
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

      (*(handlerCopy + 2))(handlerCopy, 0);
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

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)_configureDiagnosticsData:(id)data withAttachmentURLs:(id)ls withAdditionalDescription:(id)description
{
  dataCopy = data;
  lsCopy = ls;
  descriptionCopy = description;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [lsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(lsCopy);
        }

        [dataCopy addAttachment:*(*(&v20 + 1) + 8 * v14)];
        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [lsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  _currentSiriAccount = [(CRDiagnosticsService *)self _currentSiriAccount];
  [dataCopy setSiriAccount:_currentSiriAccount];

  [dataCopy setAdditionalDescription:descriptionCopy];
  dndStateService = self->_dndStateService;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10005E9FC;
  v18[3] = &unk_1000DF818;
  v19 = dataCopy;
  v17 = dataCopy;
  [(DNDStateService *)dndStateService queryCurrentStateWithCompletionHandler:v18];
}

- (void)_mainQueue_promptForInternalSysdiagnoseForDiagnosticData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10005ECF4;
  v10[3] = &unk_1000DF840;
  v11 = dataCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = dataCopy;
  [(CRDiagnosticsService *)self _mainQueue_presentDictationBannerWithCompletion:v10];
}

- (void)_mainQueue_gatherVehicleLogsThenPerformSysdiagnoseWithDiagnosticData:(id)data isInternal:(BOOL)internal completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10005EEA0;
  v12[3] = &unk_1000DF8B8;
  v12[4] = self;
  v13 = dataCopy;
  internalCopy = internal;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = dataCopy;
  [(CRDiagnosticsService *)self _mainQueue_startDiagnosticsOperation:v12];
}

- (void)_mainQueue_startDiagnosticsOperation:(id)operation
{
  operationCopy = operation;
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

  diagnosticsSerialQueue = [(CRDiagnosticsService *)self diagnosticsSerialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F394;
  block[3] = &unk_1000DF8E0;
  v15 = v6;
  v16 = operationCopy;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  v12 = operationCopy;
  dispatch_async(diagnosticsSerialQueue, block);
}

- (void)_backgroundQueue_finishDiagnosticsOperationSemaphore:(id)semaphore transaction:(id)transaction
{
  transactionCopy = transaction;
  dispatch_semaphore_signal(semaphore);
  v6 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    description = os_transaction_get_description();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ended idle-exit transaction for CarPlay diagnostics: %s", &v7, 0xCu);
  }
}

- (void)_mainQueue_gatherVehicleLogsWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  loggingFileReceiver = [(CRDiagnosticsService *)self loggingFileReceiver];

  v6 = CarDiagnosticsLogging();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (loggingFileReceiver)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Requesting vehicle log archive", buf, 2u);
    }

    loggingFileReceiver2 = [(CRDiagnosticsService *)self loggingFileReceiver];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005F734;
    v9[3] = &unk_1000DE358;
    v10 = completionCopy;
    [loggingFileReceiver2 requestLogsWithCompletion:v9];
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "logging file receiver not supported", buf, 2u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_mainQueue_performSysdiagnoseIncludingData:(id)data isInternal:(BOOL)internal completion:(id)completion
{
  internalCopy = internal;
  dataCopy = data;
  completionCopy = completion;
  v10 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting to take a sysdiagnose", buf, 2u);
  }

  v11 = CarDiagnosticsLogging();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (internalCopy)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "internal version of sysdiagnose", buf, 2u);
    }

    v13 = [(CRDiagnosticsService *)self radarDraftFromDiagnosticsData:dataCopy];
    v14 = +[TapToRadarService shared];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10005F9D4;
    v19[3] = &unk_1000DF780;
    v19[4] = self;
    v20 = completionCopy;
    v15 = completionCopy;
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
    v18 = completionCopy;
    v13 = completionCopy;
    [Libsysdiagnose sysdiagnoseWithMetadata:&__NSDictionary0__struct onCompletion:v16];

    v15 = v17;
  }
}

- (id)_currentSiriAccount
{
  v2 = objc_alloc_init(AFSettingsConnection);
  accounts = [v2 accounts];
  v4 = [accounts sortedArrayUsingComparator:&stru_1000DF948];

  firstObject = [v4 firstObject];

  return firstObject;
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

- (void)_mainQueue_displayFetchingVehicleLogsBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005FE80;
  v6[3] = &unk_1000DE970;
  v7 = completionCopy;
  v5 = completionCopy;
  [(CRDiagnosticsService *)self _mainQueue_presentCarAlertWithTitle:@"Fetching vehicle logs dismissTime:please wait..." completion:v6, 3.0];
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  errorCopy = error;
  managerCopy = manager;
  v8 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed fetching diagnostics device location with %@", buf, 0xCu);
  }

  location = [managerCopy location];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005FFD4;
  v11[3] = &unk_1000DD580;
  v11[4] = self;
  v12 = location;
  v10 = location;
  dispatch_async(&_dispatch_main_q, v11);
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  locationsCopy = locations;
  managerCopy = manager;
  v8 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received diagnostics location manager update response.", buf, 2u);
  }

  [managerCopy stopUpdatingLocation];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006021C;
  v10[3] = &unk_1000DD580;
  v10[4] = self;
  v11 = locationsCopy;
  v9 = locationsCopy;
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

- (void)_mainQueue_presentDictationBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = +[CRDictationService sharedInstance];
  dictationEnabled = [v5 dictationEnabled];

  if (dictationEnabled)
  {
    v7 = +[CRDictationService sharedInstance];
    dictationEnabledInKeyboardSettings = [v7 dictationEnabledInKeyboardSettings];

    if (dictationEnabledInKeyboardSettings)
    {
      v9 = +[CRDictationService sharedInstance];
      dictationAvailable = [v9 dictationAvailable];

      if (dictationAvailable)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000606CC;
        v20[3] = &unk_1000DF970;
        v20[4] = self;
        v21 = completionCopy;
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
        v18 = completionCopy;
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
      v16 = completionCopy;
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

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_beginDictationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[CRDictationService sharedInstance];
  [v5 reset];

  v6 = +[CRDictationService sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100060894;
  v8[3] = &unk_1000DFA00;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 beginRecordingWithCompletion:v8];
}

- (void)_performVibrate
{
  v2 = dispatch_get_global_queue(25, 0);
  dispatch_async(v2, &stru_1000DFA20);
}

- (void)_mainQueue_presentCarAlertWithTitle:(id)title dismissTime:(double)time completion:(id)completion
{
  titleCopy = title;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v9 = CarDiagnosticsLogging();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = titleCopy;
    v13 = 2048;
    timeCopy = time;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Presenting diagnostics alert: %@, timeOut Interval: %f", &v11, 0x16u);
  }

  v10 = objc_alloc_init(CRDiagnosticsAlert);
  [(CRDiagnosticsAlert *)v10 setTimeoutInterval:time];
  [(CRDiagnosticsAlert *)v10 setBannerMessage:titleCopy];
  [(CRAlert *)v10 presentAlertWithCompletion:completionCopy];
}

- (id)_keywordsToAttachForDiagnosticsData:(id)data
{
  dataCopy = data;
  v5 = [NSMutableArray arrayWithObjects:&off_1000E7B58, &off_1000E7B70, 0];
  [&off_1000E8D50 allKeys];
  v32 = _NSConcreteStackBlock;
  v33 = 3221225472;
  v34 = sub_1000614D4;
  v6 = v35 = &unk_1000DFA48;
  v36 = v6;
  v37 = &off_1000E8D50;
  v7 = objc_retainBlock(&v32);
  lastConfiguration = [(CRDiagnosticsService *)self lastConfiguration];
  vehicleManufacturer = [lastConfiguration vehicleManufacturer];

  if (vehicleManufacturer)
  {
    vehicleManufacturer2 = [lastConfiguration vehicleManufacturer];
    v11 = (v7[2])(v7, vehicleManufacturer2);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  manufacturerName = [lastConfiguration manufacturerName];

  if (manufacturerName)
  {
    manufacturerName2 = [lastConfiguration manufacturerName];
    v11 = (v7[2])(v7, manufacturerName2);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  vehicleName = [lastConfiguration vehicleName];

  if (vehicleName)
  {
    vehicleName2 = [lastConfiguration vehicleName];
    v11 = (v7[2])(v7, vehicleName2);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  name = [lastConfiguration name];

  if (name)
  {
    name2 = [lastConfiguration name];
    v11 = (v7[2])(v7, name2);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  vehicleModelName = [lastConfiguration vehicleModelName];

  if (vehicleModelName)
  {
    vehicleModelName2 = [lastConfiguration vehicleModelName];
    v11 = (v7[2])(v7, vehicleModelName2);

    if (v11)
    {
      goto LABEL_13;
    }
  }

  modelName = [lastConfiguration modelName];

  if (!modelName)
  {
    goto LABEL_30;
  }

  modelName2 = [lastConfiguration modelName];
  v11 = (v7[2])(v7, modelName2);

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
      v39 = lastConfiguration;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Could not resolve a model keyword for %@", buf, 0xCu);
    }
  }

  v22 = [NSDictionary alloc];
  v23 = [v22 initWithObjectsAndKeys:{&off_1000E7F78, @"com.apple.iBooks", &off_1000E7F90, @"com.apple.MobileSMS", &off_1000E7FA8, @"com.apple.Music", &off_1000E7FC0, @"com.apple.mobilephone", &off_1000E7FC0, @"com.apple.InCallService", &off_1000E7FD8, @"com.apple.podcasts", &off_1000E7FF0, @"com.apple.mobilecal", &off_1000E8008, @"com.apple.CarPlaySettings", &off_1000E8020, @"com.apple.internal.Neatline", &off_1000E8038, &off_1000E8050, &off_1000E8068, &off_1000E8080, 0, v32, v33, v34, v35}];
  activeBundleIdentifier = [dataCopy activeBundleIdentifier];

  if (activeBundleIdentifier)
  {
    activeBundleIdentifier2 = [dataCopy activeBundleIdentifier];
    v26 = [v23 objectForKey:activeBundleIdentifier2];

    if (v26)
    {
      [v5 addObject:v26];
    }
  }

  v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [dataCopy transportType]);
  v28 = [v23 objectForKey:v27];

  if (v28)
  {
    [v5 addObject:v28];
  }

  if ([dataCopy vehicleSupportsStartSession])
  {
    v29 = &off_1000E8098;
  }

  else
  {
    v29 = &off_1000E80B0;
  }

  [v5 addObject:v29];
  if ([lastConfiguration hasGaugeClusterScreen])
  {
    [v5 addObject:&off_1000E80C8];
    [v5 addObject:&off_1000E80E0];
  }

  lastSession = [(CRDiagnosticsService *)self lastSession];
  if (lastSession)
  {
    [v5 addObject:&off_1000E80F8];
    [v5 addObject:&off_1000E8110];
  }

  return v5;
}

- (id)_stringForViewArea:(id)area
{
  areaCopy = area;
  [areaCopy visibleFrame];
  v4 = NSStringFromRect(v11);
  [areaCopy safeFrame];
  v5 = NSStringFromRect(v12);
  displaysTransitionControl = [areaCopy displaysTransitionControl];

  v7 = @"NO";
  if (displaysTransitionControl)
  {
    v7 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"\t\t\tVisible Frame: %@\n\t\t\tSafe Frame: %@\n\t\t\tDisplays Transition Control: %@\n", v4, v5, v7];

  return v8;
}

- (id)_stringForScreens:(id)screens
{
  screensCopy = screens;
  v5 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"Number of screens: %lu\n", [screensCopy count]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = screensCopy;
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
        identifier = [v8 identifier];
        [v5 appendFormat:@"\t\tIdentifier: %@\n", identifier];
        screenType = [v8 screenType];
        v11 = @"Secondary";
        if (!screenType)
        {
          v11 = @"Primary";
        }

        [v5 appendFormat:@"\t\tType: %@\n", v11];
        descriptionForAvailableInteractionModels = [v8 descriptionForAvailableInteractionModels];
        [v5 appendFormat:@"\t\tAvailable Interaction Models: %@\n", descriptionForAvailableInteractionModels];
        descriptionForPrimaryInteractionModel = [v8 descriptionForPrimaryInteractionModel];
        [v5 appendFormat:@"\t\tPrimary Interaction Model: %@\n", descriptionForPrimaryInteractionModel];
        [v8 physicalSize];
        v14 = NSStringFromSize(v44);
        [v5 appendFormat:@"\t\tPhysical Size: %@\n", v14];

        [v8 pixelSize];
        v15 = NSStringFromSize(v45);
        [v5 appendFormat:@"\t\tPixel Size: %@\n", v15];

        v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 maxFramesPerSecond]);
        [v5 appendFormat:@"\t\tMax FPS: %@\n", v16];

        supportsHighFidelityTouch = [v8 supportsHighFidelityTouch];
        v18 = @"NO";
        if (supportsHighFidelityTouch)
        {
          v18 = @"YES";
        }

        [v5 appendFormat:@"\t\tSupports HiFi Touch: %@\n", v18];
        viewAreas = [v8 viewAreas];
        v20 = [viewAreas count];

        if (v20)
        {
          v31 = descriptionForAvailableInteractionModels;
          v32 = identifier;
          [v5 appendFormat:@"\t\tView Areas:\n"];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          viewAreas2 = [v8 viewAreas];
          v22 = [viewAreas2 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                  objc_enumerationMutation(viewAreas2);
                }

                v26 = [(CRDiagnosticsService *)self _stringForViewArea:*(*(&v33 + 1) + 8 * j)];
                [v5 appendString:v26];
              }

              v23 = [viewAreas2 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v23);
          }

          descriptionForAvailableInteractionModels = v31;
          identifier = v32;
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

- (void)_collectCAFToolTree:(id)tree
{
  treeCopy = tree;
  v4 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100061BB8;
  block[3] = &unk_1000DD960;
  v7 = treeCopy;
  v5 = treeCopy;
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
  lastConfiguration = [(CRDiagnosticsService *)self lastConfiguration];
  infoResponse = [lastConfiguration infoResponse];

  v4 = +[NSFileManager defaultManager];
  temporaryDirectory = [v4 temporaryDirectory];
  v6 = [temporaryDirectory URLByAppendingPathComponent:@"INFOResponse.plist"];

  path = [v6 path];
  if (path)
  {
    [infoResponse writeToFile:path atomically:1];
  }

  return v6;
}

- (id)_collectCarConfigurationForSession:(id)session supportingStartSession:(BOOL)startSession
{
  startSessionCopy = startSession;
  sessionCopy = session;
  configuration = [sessionCopy configuration];
  v7 = [@"Connected CarPlay Session\n\n" stringByAppendingString:@"Session Configuration\n"];
  vehicleName = [configuration vehicleName];
  v8 = [v7 stringByAppendingFormat:@"Name: %@\n", vehicleName];

  vehicleFirmwareVersion = [configuration vehicleFirmwareVersion];
  v10 = [v8 stringByAppendingFormat:@"Firmware Version: %@\n", vehicleFirmwareVersion];

  vehicleHardwareVersion = [configuration vehicleHardwareVersion];
  v12 = [v10 stringByAppendingFormat:@"Hardware Version: %@\n", vehicleHardwareVersion];

  vehicleModelName = [configuration vehicleModelName];
  v13 = [v12 stringByAppendingFormat:@"Model Name: %@\n", vehicleModelName];

  modelName = [configuration modelName];
  v15 = [v13 stringByAppendingFormat:@"Model Name (AirPlay): %@\n", modelName];

  vehicleManufacturer = [configuration vehicleManufacturer];
  v16 = [v15 stringByAppendingFormat:@"Manufacturer: %@\n", vehicleManufacturer];

  manufacturerName = [configuration manufacturerName];
  v18 = [v16 stringByAppendingFormat:@"Manufacturer (AirPlay): %@\n", manufacturerName];

  vehicleSerialNumber = [configuration vehicleSerialNumber];
  v20 = [v18 stringByAppendingFormat:@"Serial Number: %@\n", vehicleSerialNumber];

  pPID = [configuration PPID];
  v22 = [v20 stringByAppendingFormat:@"PPID: %@\n", pPID];

  endpointIdentifier = [configuration endpointIdentifier];
  v24 = [v22 stringByAppendingFormat:@"Endpoint Identifier: %@\n", endpointIdentifier];

  descriptionForTransportType = [configuration descriptionForTransportType];
  v81 = descriptionForTransportType;
  v26 = @"Bonjour";
  if (startSessionCopy)
  {
    v26 = @"Start Session";
  }

  v27 = [v24 stringByAppendingFormat:@"Transport types: %@\nSession Type: %@\n", descriptionForTransportType, v26];

  if ([configuration nightModeSupported])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  v29 = [v27 stringByAppendingFormat:@"Night Mode Supported: %@\n", v28];

  descriptionForLimitableUserInterfaces = [configuration descriptionForLimitableUserInterfaces];
  v31 = [v29 stringByAppendingFormat:@"Limitable UI Types: %@\n", descriptionForLimitableUserInterfaces];

  limitUserInterfaces = [sessionCopy limitUserInterfaces];
  bOOLValue = [limitUserInterfaces BOOLValue];

  if (bOOLValue)
  {
    v34 = @"YES";
  }

  else
  {
    v34 = @"NO";
  }

  v35 = [v31 stringByAppendingFormat:@"Limited UI Enabled: %@\n", v34];

  if ([configuration supportsElectronicTollCollection])
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v37 = [v35 stringByAppendingFormat:@"ETC Supported: %@\n", v36];

  if ([configuration rightHandDrive])
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  v39 = [v37 stringByAppendingFormat:@"Right Hand Drive: %@\n", v38];

  v40 = +[CARSessionConfiguration descriptionForCapability:](CARSessionConfiguration, "descriptionForCapability:", [configuration nowPlayingAlbumArtMode]);
  v41 = [v39 stringByAppendingFormat:@"Capability - Album Art : %@\n", v40];

  v42 = +[CARSessionConfiguration descriptionForUserInterfaceStyle:](CARSessionConfiguration, "descriptionForUserInterfaceStyle:", [configuration userInterfaceStyle]);
  v43 = [v41 stringByAppendingFormat:@"Capability - User Interface Style: %@\n", v42];

  [configuration viewAreaInsets];
  v44 = [CARSessionConfiguration descriptionForEdgeInsets:?];
  v45 = [v43 stringByAppendingFormat:@"Capability - Safe Area Insets: %@\n", v44];

  [configuration dashboardRoundedCorners];
  v46 = [CARSessionConfiguration descriptionForEdgeInsets:?];
  v47 = [v45 stringByAppendingFormat:@"Capability - Dashboard Rounded Corners: %@\n", v46];

  if ([configuration supportsACBack])
  {
    v48 = @"YES";
  }

  else
  {
    v48 = @"NO";
  }

  v49 = [v47 stringByAppendingFormat:@"Supports AC_BACK: %@\n", v48];

  if ([configuration vehicleSupportsDestinationSharing])
  {
    v50 = @"YES";
  }

  else
  {
    v50 = @"NO";
  }

  v51 = [v49 stringByAppendingFormat:@"Supports Destination Sharing: %@\n", v50];

  if ([configuration supportsSiriZLL])
  {
    v52 = @"YES";
  }

  else
  {
    v52 = @"NO";
  }

  v53 = [v51 stringByAppendingFormat:@"Supports Siri ZLL: %@\n", v52];

  if ([configuration supportsSiriZLLButton])
  {
    v54 = @"YES";
  }

  else
  {
    v54 = @"NO";
  }

  v55 = [v53 stringByAppendingFormat:@"Supports Siri ZLL Button: %@\n", v54];

  if ([configuration supportsSiriMixable])
  {
    v56 = @"YES";
  }

  else
  {
    v56 = @"NO";
  }

  v57 = [v55 stringByAppendingFormat:@"Supports Siri Mixable: %@\n", v56];

  [sessionCopy voiceTriggerMode];
  v58 = CARStringFromVoiceTriggerMode();
  v59 = [v57 stringByAppendingFormat:@"Voice Trigger Mode: %@\n", v58];

  v60 = [v59 stringByAppendingString:@"\nManufacturer Icons\n"];

  manufacturerIconLabel = [configuration manufacturerIconLabel];
  v62 = [v60 stringByAppendingFormat:@"Icon Label: %@\n", manufacturerIconLabel];

  if ([configuration manufacturerIconVisible])
  {
    v63 = @"YES";
  }

  else
  {
    v63 = @"NO";
  }

  v64 = [v62 stringByAppendingFormat:@"Icon Visible: %@\n", v63];

  screens = [configuration screens];
  v66 = [(CRDiagnosticsService *)self _stringForScreens:screens];
  v67 = [v64 stringByAppendingString:v66];

  v68 = [v67 stringByAppendingString:@"\nCurrent session info\n"];

  systemNightMode = [sessionCopy systemNightMode];
  LODWORD(v64) = [systemNightMode BOOLValue];

  if (v64)
  {
    v70 = @"YES";
  }

  else
  {
    v70 = @"NO";
  }

  v71 = [v68 stringByAppendingFormat:@"Night Mode Enabled (without fallbacks): %@\n", v70];

  nightMode = [sessionCopy nightMode];
  bOOLValue2 = [nightMode BOOLValue];

  if (bOOLValue2)
  {
    v74 = @"YES";
  }

  else
  {
    v74 = @"NO";
  }

  v75 = [v71 stringByAppendingFormat:@"Night Mode Enabled (with fallbacks): %@\n", v74];

  electronicTollCollectionAvailable = [sessionCopy electronicTollCollectionAvailable];

  bOOLValue3 = [electronicTollCollectionAvailable BOOLValue];
  if (bOOLValue3)
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

- (id)_extensionIdentifiersForDiagnosticsData:(id)data
{
  dataCopy = data;
  activeBundleIdentifier = [dataCopy activeBundleIdentifier];
  v5 = +[NSMutableArray array];
  isMapsActive = [dataCopy isMapsActive];

  if (isMapsActive)
  {
    [v5 addObjectsFromArray:&off_1000E8CB8];
    if ([activeBundleIdentifier isEqualToString:@"com.apple.Maps"])
    {
      [v5 addObject:@"com.apple.CoreRoutine.RTDiagnosticExtension"];
    }
  }

  if ([activeBundleIdentifier isEqualToString:@"com.apple.podcasts"])
  {
    v7 = @"com.apple.podcasts.DiagnosticExtension";
  }

  else
  {
    if (![activeBundleIdentifier isEqualToString:@"com.apple.Music"])
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

- (id)radarTitleTagsForData:(id)data
{
  dataCopy = data;
  if ([dataCopy isVehicleDataSession])
  {
    v5 = @"[CarPlay Ultra]";
  }

  else
  {
    v5 = @"[CarPlay]";
  }

  lastSession = [(CRDiagnosticsService *)self lastSession];
  if (lastSession)
  {
    additionalDescription = [dataCopy additionalDescription];
    v8 = [additionalDescription containsString:@"Total Reconnection Time"];

    if (v8)
    {
      v5 = [(__CFString *)v5 stringByAppendingString:@" Connection Time Issue"];
    }
  }

  return v5;
}

- (id)radarDescriptionForData:(id)data
{
  dataCopy = data;
  v4 = +[NSMutableString string];
  transcription = [dataCopy transcription];
  v6 = [transcription length];

  if (v6)
  {
    transcription2 = [dataCopy transcription];
    [v4 appendFormat:@"Dictated description: %@\n\n", transcription2];
  }

  else
  {
    [v4 appendString:@"Please provide a brief description of this radar.\n\n"];
  }

  if ([dataCopy isVehicleDataSession])
  {
    v8 = CRLocalizedInternalStringForKey();
    [v4 appendString:v8];
  }

  activeBundleIdentifier = [dataCopy activeBundleIdentifier];
  [v4 appendFormat:@"\n\nActive App: %@", activeBundleIdentifier];

  siriAccount = [dataCopy siriAccount];
  hostname = [siriAccount hostname];
  v12 = [hostname length];

  if (v12)
  {
    siriAccount2 = [dataCopy siriAccount];
    hostname2 = [siriAccount2 hostname];
    [v4 appendFormat:@"\nSiri Server Hostname: %@", hostname2];
  }

  focusModeDescription = [dataCopy focusModeDescription];
  v16 = [focusModeDescription length];

  if (v16)
  {
    focusModeDescription2 = [dataCopy focusModeDescription];
    [v4 appendFormat:@"\nActive Focus Mode: %@", focusModeDescription2];
  }

  timestamp = [dataCopy timestamp];
  [v4 appendFormat:@"\nTimestamp: %@", timestamp];

  locationDescription = [dataCopy locationDescription];
  v20 = [locationDescription length];

  if (v20)
  {
    locationDescription2 = [dataCopy locationDescription];
    [v4 appendFormat:@"\n\nLast known location (for Maps/location investigation):\n%@", locationDescription2];
  }

  vehicleSupportsStartSession = [dataCopy vehicleSupportsStartSession];
  v23 = @"Bonjour";
  if (vehicleSupportsStartSession)
  {
    v23 = @"Start Session";
  }

  [v4 appendFormat:@"\nSession Type: %@", v23];
  v24 = +[CARAnalytics sharedInstance];
  wifiChannel = [v24 wifiChannel];

  if (wifiChannel)
  {
    v26 = +[CARAnalytics sharedInstance];
    wifiChannel2 = [v26 wifiChannel];
    [v4 appendFormat:@"\nWiFi Channel number: %@", wifiChannel2];
  }

  additionalDescription = [dataCopy additionalDescription];
  v29 = [additionalDescription length];

  if (v29)
  {
    additionalDescription2 = [dataCopy additionalDescription];
    [v4 appendFormat:@"\n\n%@", additionalDescription2];
  }

  v31 = [v4 copy];

  return v31;
}

- (id)radarDraftFromDiagnosticsData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(RadarDraft);
  v6 = [(CRDiagnosticsService *)self radarTitleTagsForData:dataCopy];
  [v5 setTitle:v6];

  v7 = [(CRDiagnosticsService *)self radarDescriptionForData:dataCopy];
  [v5 setProblemDescription:v7];

  LODWORD(v7) = [dataCopy isVehicleDataSession];
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

  attachmentURLs = [dataCopy attachmentURLs];
  [v5 setAttachments:attachmentURLs];

  v13 = [(CRDiagnosticsService *)self _extensionIdentifiersForDiagnosticsData:dataCopy];
  [v5 setDiagnosticExtensionIDs:v13];

  v14 = [(CRDiagnosticsService *)self _keywordsToAttachForDiagnosticsData:dataCopy];
  [v5 setKeywords:v14];

  [v5 setAutoDiagnostics:1];
  date = [dataCopy date];
  [v5 setTimeOfIssue:date];

  [v5 setIsUserInitiated:1];

  return v5;
}

- (void)session:(id)session didUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (CRIsInternalInstall())
  {
    [(CRDiagnosticsService *)self setLastConfiguration:configurationCopy];
  }
}

- (void)sessionDidDisconnect:(id)disconnect
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