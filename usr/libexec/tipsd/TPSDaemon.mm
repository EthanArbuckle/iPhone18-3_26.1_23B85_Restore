@interface TPSDaemon
- (BOOL)_appXPCConnectionContainsConnection:(id)connection;
- (BOOL)_assistantXPCConnectionContainsConnection:(id)connection;
- (BOOL)_discoverabilityXPCConnectionContainsConnection:(id)connection;
- (BOOL)_supportFlowXPCConnectionContainsConnection:(id)connection;
- (BOOL)canCheckForNewTipNotification:(id)notification;
- (BOOL)contentUpdatePostProcessingContentPackage:(id)package shouldUpdateNotification:(BOOL)notification shouldDeferBlock:(id)block error:(id)error;
- (BOOL)isContentIneligibleDueToViewOnOtherDevices:(id)devices;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)multiuserModeOn;
- (BOOL)setupCompleted;
- (BOOL)tipsAppInstalled;
- (BOOL)tipsInValidState;
- (TPSDaemon)init;
- (id)analyticsExperiment;
- (id)contextForIdentifier:(id)identifier;
- (id)contextualInfoForIdentifier:(id)identifier;
- (id)contextualInfoMap;
- (id)currentExperimentWithDiscoverabilityController:(id)controller;
- (id)deliveryInfoVersion;
- (id)displayTypeForIdentifier:(id)identifier;
- (id)experimentCampID;
- (id)experimentID;
- (id)shouldDeferBlockForXPCActivity:(id)activity;
- (id)xpcActivitySetStateBlockForIdentifier:(id)identifier;
- (unint64_t)hintDisplayedCountForIdentifier:(id)identifier;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler;
- (void)_addAppXPCConnection:(id)connection;
- (void)_addAssistantXPCConnection:(id)connection;
- (void)_addDiscoverabilityXPCConnection:(id)connection;
- (void)_addSupportFlowXPCConnection:(id)connection;
- (void)_removeAppXPCConnection:(id)connection;
- (void)_removeAssistantXPCConnection:(id)connection;
- (void)_removeDiscoverabilityXPCConnection:(id)connection;
- (void)_removeSupportFlowXPCConnection:(id)connection;
- (void)appRemovalCleanupIfNeeded;
- (void)availableUserGuideIdentifiersWithReply:(id)reply;
- (void)cancelLegacyBackgroundTaskIfNeeded;
- (void)cancelQueryWithIdentifier:(id)identifier;
- (void)contentForVariant:(id)variant completionHandler:(id)handler;
- (void)contentWithCompletionHandler:(id)handler;
- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)donateHintIneligibleReason:(int64_t)reason contentID:(id)d bundleID:(id)iD context:(id)context;
- (void)fetchAssetsWithAssetsConfiguration:(id)configuration completionHandler:(id)handler;
- (void)fetchDocumentWithIdentifier:(id)identifier reply:(id)reply;
- (void)findMatchingResultIdFromContexts:(id)contexts reply:(id)reply;
- (void)handleDeviceFirstUnlockNotification;
- (void)handleLanguageDidChangeNotification;
- (void)hintDisplayedForIdentifier:(id)identifier correlationID:(id)d context:(id)context;
- (void)immediateNotificationForIdentifiers:(id)identifiers;
- (void)indexContentPackage:(id)package hmtContentPackage:(id)contentPackage;
- (void)initialize;
- (void)logAnalyticsEvent:(id)event;
- (void)logAnalyticsEvents:(id)events;
- (void)logDaemonActiveEventWithReason:(id)reason;
- (void)logForAppTerminate;
- (void)notificationController:(id)controller markIdentifier:(id)identifier type:(int64_t)type ineligibleWithReason:(int64_t)reason;
- (void)notificationController:(id)controller registrableEventReceivedForDocumentIdentifier:(id)identifier;
- (void)performQuery:(id)query completion:(id)completion;
- (void)prepareForNotifications;
- (void)processAppInteractedByUser;
- (void)registerDarwinNotification:(id)notification;
- (void)registerForMobileKeyBagLockStatusNotify;
- (void)registerForNotificationTimingDarwinNotification;
- (void)registerImmediateNotifications;
- (void)registerXPCEventHandlers;
- (void)reindexAllSearchableItemsWithCompletionHandler:(id)handler;
- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)reloadAppGroupDefaults;
- (void)removeNotificationForIdentifier:(id)identifier;
- (void)resetAllDataIfNeeded;
- (void)resetBasicDefaults;
- (void)resolveContextForKeys:(id)keys reply:(id)reply;
- (void)showNewTipNotification;
- (void)supportFlowContentWithCompletionHandler:(id)handler;
- (void)tipsAppActive;
- (void)tipsManager:(id)manager eligibilityCompletedWithTipIdentifiers:(id)identifiers contextualTipIdentifiers:(id)tipIdentifiers tipsDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap;
- (void)unregisterDarwinNotification:(id)notification;
- (void)unregisterImmediateNotifications;
- (void)updateNotificationStatus;
- (void)updateSessionMapWithIdentifier:(id)identifier data:(id)data;
- (void)userGuideMapWithCompletionHandler:(id)handler;
- (void)welcome:(id)welcome contentAvailableRemotelyWithCompletionHandler:(id)handler;
- (void)welcome:(id)welcome notifyWelcomeDocument:(id)document;
@end

@implementation TPSDaemon

- (TPSDaemon)init
{
  v46.receiver = self;
  v46.super_class = TPSDaemon;
  v2 = [(TPSDaemon *)&v46 init];
  if (v2)
  {
    +[TPSPersonaUtilities _adoptPersonaForContainerLookupIfNeeded];
    v3 = +[TPSURLSessionHandler sharedInstance];
    [v3 setExcludeCachingDataTypes:0];

    v4 = +[TPSURLSessionHandler sharedInstance];
    [v4 setDelegate:v2];
    v5 = +[TPSURLSessionManager defaultManager];
    [v5 setDelegate:v4];

    v6 = +[TPSURLSessionManager defaultManager];
    [v6 setDefaultSessionDelegate:v4];

    v7 = [[TPSAnalyticsDataProvider alloc] initWithDataSource:v2];
    analyticsDataProvider = v2->_analyticsDataProvider;
    v2->_analyticsDataProvider = v7;

    v9 = v2->_analyticsDataProvider;
    v10 = +[TPSAnalyticsEventController sharedInstance];
    [v10 setDataProvider:v9];

    if (+[TPSCommonDefines isInternalDevice])
    {
      v11 = +[TPSURLSessionACAuthContext defaultContext];
      v12 = [v11 copy];

      [v12 setInteractivityMode:TPSURLSessionAuthInteractivitySilentOnly];
      v13 = [[TPSURLSessionACAuthHandler alloc] initWithAuthenticationContext:v12];
      v14 = +[TPSURLSessionManager defaultManager];
      [v14 setAuthenticationHandler:v13];
    }

    v15 = +[TPSLogger daemon];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Tips Daemon Starting.", buf, 2u);
    }

    if (MKBDeviceFormattedForContentProtection())
    {
      atomic_store(MKBDeviceUnlockedSinceBoot() > 0, byte_1000299E0);
    }

    else
    {
      v16 = +[TPSLogger daemon];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DeviceFormattedForContentProtection not needed", buf, 2u);
      }
    }

    v17 = +[TPSNotificationController displayDarwinNotificationKey];
    notificationTimingDarwinKey = v2->_notificationTimingDarwinKey;
    v2->_notificationTimingDarwinKey = v17;

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.tipsd.discoverabilityConnectionQueue", v19);
    discoverabilityConnectionQueue = v2->_discoverabilityConnectionQueue;
    v2->_discoverabilityConnectionQueue = v20;

    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v23 = dispatch_queue_create("com.apple.tipsd.appConnectionQueue", v22);
    appConnectionQueue = v2->_appConnectionQueue;
    v2->_appConnectionQueue = v23;

    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("com.apple.tipsd.assistantConnectionQueue", v25);
    assistantConnectionQueue = v2->_assistantConnectionQueue;
    v2->_assistantConnectionQueue = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_create("com.apple.tipsd.supportFlowConnectionQueue", v28);
    supportFlowConnectionQueue = v2->_supportFlowConnectionQueue;
    v2->_supportFlowConnectionQueue = v29;

    v31 = +[NSMutableSet set];
    discoverabilityConnections = v2->_discoverabilityConnections;
    v2->_discoverabilityConnections = v31;

    v33 = +[NSMutableSet set];
    appConnections = v2->_appConnections;
    v2->_appConnections = v33;

    v35 = +[NSMutableSet set];
    assistantConnections = v2->_assistantConnections;
    v2->_assistantConnections = v35;

    v37 = +[NSMutableSet set];
    supportFlowConnections = v2->_supportFlowConnections;
    v2->_supportFlowConnections = v37;

    if ([(TPSDaemon *)v2 multiuserModeOn])
    {
      v39 = +[TPSLogger daemon];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "EDU mode on", buf, 2u);
      }
    }

    else
    {
      v40 = atomic_load(byte_1000299E0);
      if (v40)
      {
        [(TPSDaemon *)v2 initialize];
      }

      else if ([(TPSDaemon *)v2 setupCompleted])
      {
        v41 = +[TPSLogger daemon];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "User has not performed first unlock", buf, 2u);
        }

        [(TPSDaemon *)v2 registerForMobileKeyBagLockStatusNotify];
      }
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000034E0;
    block[3] = &unk_100024B68;
    v44 = v2;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v2;
}

- (void)initialize
{
  if (!self->_initialized)
  {
    v2 = atomic_load(byte_1000299E0);
    if (v2)
    {
      self->_initialized = 1;
      [(TPSDaemon *)self resetAllDataIfNeeded];
      v4 = +[TPSBluetoothChecker sharedInstance];
      v5 = +[TPSCommonDefines sharedInstance];
      tipStatusController = [v5 tipStatusController];
      tipStatusController = self->_tipStatusController;
      self->_tipStatusController = tipStatusController;

      v8 = [[TPSTipsManager alloc] initWithTipStatusController:self->_tipStatusController];
      tipsManager = self->_tipsManager;
      self->_tipsManager = v8;

      [(TPSTipsManager *)self->_tipsManager setDelegate:self];
      v10 = [[TPSDiscoverabilityController alloc] initWithTipStatusController:self->_tipStatusController];
      discoverabilityController = self->_discoverabilityController;
      self->_discoverabilityController = v10;

      [(TPSDiscoverabilityController *)self->_discoverabilityController setDelegate:self];
      v12 = objc_alloc_init(TPSFullTipUsageEventManager);
      usageEventManager = self->_usageEventManager;
      self->_usageEventManager = v12;

      v14 = +[TPSLogger daemon];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(TPSTipStatusController *)self->_tipStatusController debugDescription];
        v37 = 138412290;
        v38 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Tips status controller %@", &v37, 0xCu);
      }

      v16 = +[TPSLogger daemon];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(TPSDiscoverabilityController *)self->_discoverabilityController debugDescription];
        v37 = 138412290;
        v38 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "discoverability controller %@", &v37, 0xCu);
      }

      tipStatusMap = [(TPSTipStatusController *)self->_tipStatusController tipStatusMap];
      if (![tipStatusMap count])
      {
        v19 = [TPSAnalyticsProcessingController alloc];
        allValues = [tipStatusMap allValues];
        contextualInfoMap = [(TPSDaemon *)self contextualInfoMap];
        eventsHistoryController = [(TPSDiscoverabilityController *)self->_discoverabilityController eventsHistoryController];
        contextualEventsForIdentifiers = [eventsHistoryController contextualEventsForIdentifiers];
        experiment = [(TPSTipsManager *)self->_tipsManager experiment];
        v25 = [v19 initWithAllTipStatus:allValues contextualInfoMap:contextualInfoMap eventHistoryMap:contextualEventsForIdentifiers experiment:experiment];

        [v25 resetAnalytics];
      }

      [(TPSDaemon *)self cancelLegacyBackgroundTaskIfNeeded];
      tipsInValidState = [(TPSDaemon *)self tipsInValidState];
      v27 = +[TPSLogger daemon];
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
      if (tipsInValidState)
      {
        if (v28)
        {
          LOWORD(v37) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Tips app is in a valid state.", &v37, 2u);
        }

        v29 = objc_alloc_init(TPSNotificationController);
        notificationController = self->_notificationController;
        self->_notificationController = v29;

        [(TPSNotificationController *)self->_notificationController setDelegate:self];
        [(TPSTipsManager *)self->_tipsManager setNotificationController:self->_notificationController];
        v31 = [[TPSWelcome alloc] initWithDelegate:self tipsManager:self->_tipsManager notificationController:self->_notificationController];
        welcome = self->_welcome;
        self->_welcome = v31;

        [(TPSWelcome *)self->_welcome reconnectWelcomeIfNeeded:1];
        [(TPSDaemon *)self registerImmediateNotifications];
        notificationTimingDarwinKey = [(TPSDaemon *)self notificationTimingDarwinKey];

        if (notificationTimingDarwinKey)
        {
          notificationController = [(TPSDaemon *)self notificationController];
          notificationCache = [notificationController notificationCache];

          notificationTimingDarwinKey2 = [(TPSDaemon *)self notificationTimingDarwinKey];
          if (notificationCache)
          {
            [(TPSDaemon *)self registerDarwinNotification:notificationTimingDarwinKey2];
          }

          else
          {
            [(TPSDaemon *)self unregisterDarwinNotification:notificationTimingDarwinKey2];
          }
        }

        if ([(TPSDaemon *)self setupCompleted])
        {
          [(TPSDaemon *)self unregisterDarwinNotification:BYSetupAssistantExitedDarwinNotification];
        }

        else
        {
          [(TPSDaemon *)self registerDarwinNotification:BYSetupAssistantExitedDarwinNotification];
        }
      }

      else
      {
        if (v28)
        {
          LOWORD(v37) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Tips app is not in a valid state, skip registration for notifications.", &v37, 2u);
        }
      }

      [(TPSTipsManager *)self->_tipsManager updateContentIfOverrideImmediately:0];
      [(TPSDaemon *)self appRemovalCleanupIfNeeded];
    }
  }
}

- (void)registerForMobileKeyBagLockStatusNotify
{
  objc_initWeak(&location, self);
  v2 = atomic_load(byte_1000299E0);
  if ((v2 & 1) == 0)
  {
    out_token = -1;
    v3 = kMobileKeyBagLockStatusNotifyToken;
    v4 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100003A60;
    handler[3] = &unk_100024B90;
    objc_copyWeak(&v6, &location);
    notify_register_dispatch(v3, &out_token, &_dispatch_main_q, handler);

    objc_destroyWeak(&v6);
  }

  objc_destroyWeak(&location);
}

- (id)xpcActivitySetStateBlockForIdentifier:(id)identifier
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003C04;
  v6[3] = &unk_100024BB8;
  identifierCopy = identifier;
  v3 = identifierCopy;
  v4 = objc_retainBlock(v6);

  return v4;
}

- (id)shouldDeferBlockForXPCActivity:(id)activity
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003EAC;
  v6[3] = &unk_100024BE0;
  activityCopy = activity;
  v8 = v9;
  v3 = activityCopy;
  v4 = objc_retainBlock(v6);

  _Block_object_dispose(v9, 8);

  return v4;
}

- (BOOL)contentUpdatePostProcessingContentPackage:(id)package shouldUpdateNotification:(BOOL)notification shouldDeferBlock:(id)block error:(id)error
{
  notificationCopy = notification;
  packageCopy = package;
  blockCopy = block;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:TPSTipsManagerErrorDomain])
  {
    v14 = [errorCopy code] == 4;
  }

  else
  {
    v14 = 0;
  }

  if (v14 || !notificationCopy || ([(TPSDaemon *)self updateNotificationStatus], !blockCopy))
  {
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_12:
    v19 = 1;
    goto LABEL_13;
  }

  if (blockCopy[2](blockCopy))
  {
    goto LABEL_12;
  }

LABEL_8:
  welcome = [(TPSDaemon *)self welcome];
  isReminderCompleted = [welcome isReminderCompleted];

  if ((isReminderCompleted & 1) == 0)
  {
    tipsManager = [(TPSDaemon *)self tipsManager];
    v18 = [tipsManager welcomeDocumentFromContentPackage:packageCopy];
  }

  v19 = 0;
LABEL_13:

  return v19;
}

- (void)registerXPCEventHandlers
{
  multiuserModeOn = [(TPSDaemon *)self multiuserModeOn];
  objc_initWeak(&location, self);
  uTF8String = [@"com.apple.tipsd.postInstall-utility" UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100004734;
  handler[3] = &unk_100024C30;
  objc_copyWeak(&v22, &location);
  handler[4] = self;
  v23 = multiuserModeOn;
  xpc_activity_register(uTF8String, XPC_ACTIVITY_CHECK_IN, handler);
  uTF8String2 = [@"com.apple.tipsd.update-content" UTF8String];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100004920;
  v18[3] = &unk_100024C58;
  objc_copyWeak(&v19, &location);
  v20 = multiuserModeOn;
  xpc_activity_register(uTF8String2, XPC_ACTIVITY_CHECK_IN, v18);
  uTF8String3 = [@"com.apple.tipsd.analytics-maintenance" UTF8String];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000049CC;
  v15[3] = &unk_100024C58;
  objc_copyWeak(&v16, &location);
  v17 = multiuserModeOn;
  xpc_activity_register(uTF8String3, XPC_ACTIVITY_CHECK_IN, v15);
  v7 = kNSURLSessionLaunchOnDemandNotificationName;
  v8 = &_dispatch_main_q;
  xpc_set_event_stream_handler(v7, &_dispatch_main_q, &stru_100024C98);

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004C74;
  v12[3] = &unk_100024C58;
  objc_copyWeak(&v13, &location);
  v14 = multiuserModeOn;
  xpc_set_event_stream_handler("com.apple.coreduetcontext.client_event_stream", &_dispatch_main_q, v12);

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004E28;
  v9[3] = &unk_100024C30;
  objc_copyWeak(&v10, &location);
  v11 = multiuserModeOn;
  v9[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (BOOL)tipsAppInstalled
{
  v3 = +[TPSCommonDefines clientBundleIdentifier];
  v4 = [TPSCommonDefines isAppValidWithBundleIdentifier:v3];

  return v4 & ![(TPSDaemon *)self multiuserModeOn];
}

- (BOOL)tipsInValidState
{
  if (![(TPSDaemon *)self setupCompleted])
  {
    v3 = +[TPSCommonDefines clientBundleIdentifier];
    v4 = [TPSCommonDefines isAppRestrictedWithBundleIdentifier:v3];

    if (!v4)
    {
      return 1;
    }
  }

  return [(TPSDaemon *)self tipsAppInstalled];
}

- (BOOL)multiuserModeOn
{
  v2 = +[UMUserManager sharedManager];
  if ([v2 isMultiUser])
  {
    v3 = +[UMUserManager sharedManager];
    currentUser = [v3 currentUser];
    v5 = [currentUser userType] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)setupCompleted
{
  HasCompletedInitialRun = BYSetupAssistantHasCompletedInitialRun();
  v3 = BYSetupAssistantNeedsToRun();
  v4 = +[TPSLogger daemon];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109376;
    v6[1] = HasCompletedInitialRun;
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Buddy setup completed: %d, buddy needs to run %d", v6, 0xEu);
  }

  return HasCompletedInitialRun & (v3 ^ 1);
}

- (void)reloadAppGroupDefaults
{
  v3 = +[TPSCommonDefines sharedInstance];
  reloadAppGroupDefaults = [v3 reloadAppGroupDefaults];

  v5 = +[TPSCommonDefines sharedInstance];
  tipStatusController = [v5 tipStatusController];
  tipStatusController = self->_tipStatusController;
  self->_tipStatusController = tipStatusController;

  v9 = self->_tipStatusController;
  discoverabilityController = self->_discoverabilityController;

  [(TPSDiscoverabilityController *)discoverabilityController setTipStatusController:v9];
}

- (void)registerForNotificationTimingDarwinNotification
{
  if (self->_notificationTimingDarwinNotificationRegistered)
  {
    v2 = +[TPSLogger daemon];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Already registered for lock screen.", buf, 2u);
    }
  }

  else
  {
    self->_notificationTimingDarwinNotificationRegistered = 1;
    notificationTimingDarwinKey = [(TPSDaemon *)self notificationTimingDarwinKey];
    [(TPSDaemon *)self registerDarwinNotification:notificationTimingDarwinKey];
  }
}

- (void)registerDarwinNotification:(id)notification
{
  notificationCopy = notification;
  v4 = notificationCopy;
  if (notificationCopy)
  {
    v5 = [notificationCopy cStringUsingEncoding:4];
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v6, "Notification", v5);
    xpc_set_event();
    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Register for %@.", &v8, 0xCu);
    }
  }
}

- (void)unregisterDarwinNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    notificationTimingDarwinKey = [(TPSDaemon *)self notificationTimingDarwinKey];
    v6 = [notificationCopy isEqualToString:notificationTimingDarwinKey];

    if (v6)
    {
      self->_notificationTimingDarwinNotificationRegistered = 0;
    }

    [notificationCopy cStringUsingEncoding:4];
    xpc_set_event();
    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = notificationCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unregister for %@.", &v8, 0xCu);
    }
  }
}

- (void)registerImmediateNotifications
{
  v3 = TPSHMManagerSpeakersConfiguredChangedNotificationString();
  if ([TPSTipsManager needImmediateNotificationForType:2])
  {
    [(TPSDaemon *)self registerDarwinNotification:v3];
  }

  else
  {
    [(TPSDaemon *)self unregisterDarwinNotification:v3];
  }
}

- (void)unregisterImmediateNotifications
{
  v3 = TPSHMManagerSpeakersConfiguredChangedNotificationString();
  [(TPSDaemon *)self unregisterDarwinNotification:v3];
}

- (void)prepareForNotifications
{
  notificationTimingDarwinKey = [(TPSDaemon *)self notificationTimingDarwinKey];

  if (notificationTimingDarwinKey)
  {

    [(TPSDaemon *)self registerForNotificationTimingDarwinNotification];
  }

  else
  {

    [(TPSDaemon *)self showNewTipNotification];
  }
}

- (void)updateNotificationStatus
{
  notificationController = [(TPSDaemon *)self notificationController];
  notificationCache = [notificationController notificationCache];

  if (notificationCache)
  {
    if (+[TPSNotificationController supportsRemoteIcon])
    {
      notificationController2 = [(TPSDaemon *)self notificationController];
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100005954;
      v6[3] = &unk_100024CC0;
      v7 = notificationCache;
      selfCopy = self;
      [notificationController2 fetchNotificationAssetIfNeededCompletionHandler:v6];
    }

    else
    {
      [(TPSDaemon *)self prepareForNotifications];
    }
  }
}

- (void)showNewTipNotification
{
  v3 = +[TPSLogger daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Show new tip notification.", buf, 2u);
  }

  if ([(TPSDaemon *)self tipsAppInstalled])
  {
    objc_initWeak(buf, self);
    notificationController = [(TPSDaemon *)self notificationController];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100005BA4;
    v6[3] = &unk_100024CE8;
    objc_copyWeak(&v7, buf);
    [notificationController showNotificationWithCompletionHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }

  else
  {
    notificationController2 = [(TPSDaemon *)self notificationController];
    [notificationController2 clearNotificationCache];
  }
}

- (void)indexContentPackage:(id)package hmtContentPackage:(id)contentPackage
{
  packageCopy = package;
  contentPackageCopy = contentPackage;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_1000064E8;
  v24[4] = sub_1000064F8;
  v25 = [TPSOSTransaction transactionWithName:@"com.apple.tips.index-content-package"];
  v7 = [TPSAsyncBlockOperation alloc];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100006500;
  v22[3] = &unk_100024D60;
  v8 = packageCopy;
  v23 = v8;
  v9 = [v7 initWithAsyncBlock:v22];
  v10 = [TPSAsyncBlockOperation alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000066D0;
  v20[3] = &unk_100024D60;
  v11 = v8;
  v21 = v11;
  v12 = [v10 initWithAsyncBlock:v20];
  v13 = [TPSAsyncBlockOperation alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000068A0;
  v18[3] = &unk_100024D60;
  v14 = contentPackageCopy;
  v19 = v14;
  v15 = [v13 initWithAsyncBlock:v18];
  v16 = objc_alloc_init(NSOperationQueue);
  [v16 setName:@"com.apple.tips.index-content-package"];
  [v16 setMaxConcurrentOperationCount:1];
  [v16 setSuspended:1];
  [v9 setName:@"indexTipsOperation"];
  [v16 addOperation:v9];
  [v12 setName:@"indexUserGuideOperation"];
  [v16 addOperation:v12];
  [v15 setName:@"indexCollectionsOperation"];
  [v16 addOperation:v15];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100006BC0;
  v17[3] = &unk_100024DF0;
  v17[4] = v24;
  [v16 addBarrierBlock:v17];
  [v16 setSuspended:0];

  _Block_object_dispose(v24, 8);
}

- (void)cancelLegacyBackgroundTaskIfNeeded
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if (([v3 BOOLForKey:@"TPSDidCancelLegacyBackgroundTask"] & 1) == 0)
  {
    v4 = +[TPSLogger daemon];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cancelling legacy discretionary background task", v10, 2u);
    }

    v5 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:@"com.apple.tipsd.checkNewTips"];
    v6 = +[TPSCommonDefines clientBundleIdentifier];
    [v5 set_sourceApplicationBundleIdentifier:v6];

    [v5 setHTTPCookieStorage:0];
    [v5 setDiscretionary:1];
    v7 = +[NSOperationQueue mainQueue];
    v8 = [NSURLSession sessionWithConfiguration:v5 delegate:self delegateQueue:v7];
    [(TPSDaemon *)self setTipsFeedURLSession:v8];

    tipsFeedURLSession = [(TPSDaemon *)self tipsFeedURLSession];
    [tipsFeedURLSession invalidateAndCancel];
  }
}

- (void)logDaemonActiveEventWithReason:(id)reason
{
  reasonCopy = reason;
  if (reasonCopy)
  {
    v5 = atomic_load(byte_1000299E0);
    if (v5)
    {
      v6 = [TPSAnalyticsEventDaemonActive eventWithReason:reasonCopy alreadyRunning:self->_alreadyRunning];
      [v6 log];

      self->_alreadyRunning = 1;
    }
  }

  _objc_release_x1();
}

- (void)URLSession:(id)session task:(id)task _willSendRequestForEstablishedConnection:(id)connection completionHandler:(id)handler
{
  connectionCopy = connection;
  v9 = TPSAnalyticsDaemonActiveReasonContentCheck;
  handlerCopy = handler;
  [(TPSDaemon *)self logDaemonActiveEventWithReason:v9];
  v11 = +[TPSLogger daemon];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1000151FC(connectionCopy);
  }

  handlerCopy[2](handlerCopy, connectionCopy);
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  sessionCopy = session;
  tipsFeedURLSession = [(TPSDaemon *)self tipsFeedURLSession];

  if (tipsFeedURLSession == sessionCopy)
  {
    v7 = +[TPSLogger daemon];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cleaned up legacy discretionary background task", v9, 2u);
    }

    v8 = +[NSUserDefaults standardUserDefaults];
    [v8 setBool:1 forKey:@"TPSDidCancelLegacyBackgroundTask"];
    [v8 synchronize];
    [(TPSDaemon *)self setTipsFeedURLSession:0];
  }
}

- (void)resetAllDataIfNeeded
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v25 = [v3 stringForKey:@"TPSLastMajorVersion"];
  v4 = +[TPSCommonDefines sharedInstance];
  majorVersion = [v4 majorVersion];

  v6 = [v25 isEqualToString:majorVersion];
  v7 = +[TPSLogger daemon];
  v8 = v6 ^ 1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6 ^ 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Should reset due to version change: %d", buf, 8u);
  }

  v9 = MGCopyAnswer();
  v10 = [v9 componentsSeparatedByString:@"."];
  if ([v10 count] < 2)
  {
    integerValue = 0;
  }

  else
  {
    v11 = [v10 objectAtIndexedSubscript:1];
    integerValue = [v11 integerValue];
  }

  v13 = +[TPSLogger daemon];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_100015280();
  }

  if ([v10 count] < 2 || integerValue)
  {
    v19 = +[TPSLogger daemon];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100015304();
    }

    [v3 removeObjectForKey:@"TPSNeedsResetOnMajorGM"];
  }

  else
  {
    v14 = [v3 BOOLForKey:@"TPSNeedsResetOnMajorGM"];
    v15 = +[TPSUserTypesValidation isBetaBuild];
    v16 = +[TPSLogger daemon];
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v17)
      {
        sub_1000153A0();
      }

      if ((v14 & 1) == 0)
      {
        *buf = 0;
        v28 = buf;
        v29 = 0x2020000000;
        v30 = 1;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100007454;
        v26[3] = &unk_100024E18;
        v26[4] = buf;
        [v10 enumerateObjectsUsingBlock:v26];
        if (v28[24] == 1)
        {
          v18 = +[TPSLogger daemon];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            sub_100015418();
          }

          [v3 setBool:1 forKey:@"TPSNeedsResetOnMajorGM"];
        }

        _Block_object_dispose(buf, 8);
      }
    }

    else
    {
      if (v17)
      {
        sub_100015338();
      }

      if (v14)
      {
        v24 = +[TPSLogger daemon];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          sub_10001536C();
        }

        [v3 removeObjectForKey:@"TPSNeedsResetOnMajorGM"];
        v8 = 1;
      }
    }
  }

  [v3 synchronize];
  v20 = +[TPSLogger daemon];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Should reset %d", buf, 8u);
  }

  if (v8)
  {
    [v3 setObject:majorVersion forKey:@"TPSLastMajorVersion"];
    [v3 synchronize];
    notificationTimingDarwinKey = [(TPSDaemon *)self notificationTimingDarwinKey];
    [(TPSDaemon *)self unregisterDarwinNotification:notificationTimingDarwinKey];

    [(TPSDaemon *)self resetBasicDefaults];
    +[TPSWelcome resetWelcomeNotifications];
    +[TPSDataMigrator performMigrationIfNeeded];
    +[TPSTipsManager removeExperimentCache];
    +[TPSTipsManager removeWelcomeDocumentCache];
    +[TPSTipsManager removeWidgetUpdateDate];
    +[TPSNotificationController removeNotificationCache];
    +[TPSNotificationController removeAssetCacheDirectory];
    +[TPSDiscoverabilityController removeContextualInfoCache];
    v22 = +[NSDate date];
    v23 = +[TPSCommonDefines sharedInstance];
    [v23 setLastMajorVersionUpdateDate:v22];
  }

  +[TPSDataMigrator revertTipStatusArchivalIfNeeded];
}

- (void)resetBasicDefaults
{
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:TPSWidgetShownDocuments];
  [v4 removeObjectForKey:TPSTipKitProcessedDate];
  [v4 removeObjectForKey:@"RegisteredDeliveryEventIdentifiers"];
  [v4 removeObjectForKey:@"TPSWidgetShownTips"];
  [v4 removeObjectForKey:@"TPSFeedLastModified"];
  [v4 removeObjectForKey:@"onPause"];
  [v4 removeObjectForKey:@"TPSPastCollectionIdentifiers"];
  [v4 removeObjectForKey:@"TPSPendingCollectionActivationForIdentifier"];
  [v4 removeObjectForKey:@"TPSWaitingToShowNewTipNotification"];
  [v4 removeObjectForKey:@"TPSPreferredLanguageForCurrentRequest"];
  [v4 removeObjectForKey:@"TPSNotificationsIgnoreCount"];
  [v4 removeObjectForKey:@"TPSFeedDoNotNotify"];
  [v4 removeObjectForKey:@"TPSPendingNotificationTip"];
  [v4 removeObjectForKey:@"TPSPendingCollectionActivationNotificationTips"];
  [v4 removeObjectForKey:@"TPSInvalidTargetedTipIDs"];
  [v4 removeObjectForKey:@"TPSNotificationQuietPeriodEndTime"];
  [v4 removeObjectForKey:@"TPSPendingNotifiedTipIDs"];
  [v4 removeObjectForKey:@"kTipsdNotifiedTipsIDs"];
  [v4 removeObjectForKey:@"TPSDLastPublishedNotificationID"];
  [v4 removeObjectForKey:@"TPSDLastPublisherBulletinID"];
  [v4 removeObjectForKey:@"TipsdUserLaunchesAppAfterNotifications"];
  [v4 removeObjectForKey:@"TPSViewedTipIdentifiers"];
  [v4 removeObjectForKey:@"TPSPendingNotificationTipText"];
  [v4 removeObjectForKey:@"TPSPendingNotificationTipID"];
  [v4 removeObjectForKey:@"TipsdFeedLastNotifiedTipId"];
  [v4 removeObjectForKey:@"TipsdRegisteredForNotificationKey"];
  [v4 removeObjectForKey:@"TipsdWaitingToShowNotification"];
  [v4 removeObjectForKey:@"TipsdWelcomeNotificationNaggingState"];
  [v4 removeObjectForKey:@"validPairedDevices"];
  [v4 removeObjectForKey:@"TPSOfflineLastProcessedRemoteContentIdentifier"];
  [v4 removeObjectForKey:@"TPSOfflineLastProcessedLocalContentIdentifier"];
  [v4 removeObjectForKey:@"TPSOfflineContentMap"];
  [v4 synchronize];
  if ([(TPSDaemon *)self setupCompleted])
  {
    v3 = +[TPSCommonDefines sharedInstance];
  }
}

- (BOOL)_assistantXPCConnectionContainsConnection:(id)connection
{
  connectionCopy = connection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  assistantConnectionQueue = self->_assistantConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007818;
  block[3] = &unk_100024E40;
  v9 = connectionCopy;
  v10 = &v11;
  block[4] = self;
  v6 = connectionCopy;
  dispatch_sync(assistantConnectionQueue, block);
  LOBYTE(assistantConnectionQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return assistantConnectionQueue;
}

- (void)_addAssistantXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  assistantConnectionQueue = self->_assistantConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007944;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(assistantConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_removeAssistantXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  assistantConnectionQueue = self->_assistantConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007A70;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(assistantConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_supportFlowXPCConnectionContainsConnection:(id)connection
{
  connectionCopy = connection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  supportFlowConnectionQueue = self->_supportFlowConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007BDC;
  block[3] = &unk_100024E40;
  v9 = connectionCopy;
  v10 = &v11;
  block[4] = self;
  v6 = connectionCopy;
  dispatch_sync(supportFlowConnectionQueue, block);
  LOBYTE(supportFlowConnectionQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return supportFlowConnectionQueue;
}

- (void)_addSupportFlowXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  supportFlowConnectionQueue = self->_supportFlowConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007D08;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(supportFlowConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_removeSupportFlowXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  supportFlowConnectionQueue = self->_supportFlowConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007E34;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(supportFlowConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_discoverabilityXPCConnectionContainsConnection:(id)connection
{
  connectionCopy = connection;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  assistantConnectionQueue = self->_assistantConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007F94;
  block[3] = &unk_100024E40;
  v9 = connectionCopy;
  v10 = &v11;
  block[4] = self;
  v6 = connectionCopy;
  dispatch_sync(assistantConnectionQueue, block);
  LOBYTE(assistantConnectionQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return assistantConnectionQueue;
}

- (void)_addDiscoverabilityXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  discoverabilityConnectionQueue = self->_discoverabilityConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000080C0;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(discoverabilityConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_removeDiscoverabilityXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  discoverabilityConnectionQueue = self->_discoverabilityConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000081EC;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(discoverabilityConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)_appXPCConnectionContainsConnection:(id)connection
{
  connectionCopy = connection;
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x2020000000;
  v15 = 0;
  appConnectionQueue = self->_appConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000083B0;
  block[3] = &unk_100024E40;
  v12 = &v13;
  block[4] = self;
  v6 = connectionCopy;
  v11 = v6;
  dispatch_sync(appConnectionQueue, block);
  v7 = +[TPSLogger default];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10001544C(v14);
  }

  v8 = *(v14[0] + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (void)_addAppXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  appConnectionQueue = self->_appConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000084DC;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(appConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_removeAppXPCConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  appConnectionQueue = self->_appConnectionQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000862C;
  block[3] = &unk_100024E68;
  objc_copyWeak(&v9, &location);
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_async(appConnectionQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  v9 = atomic_load(byte_1000299E0);
  if (v9)
  {
    v31 = [connectionCopy valueForEntitlement:@"com.apple.tipsd.access"];
    v11 = [v8 valueForEntitlement:@"com.apple.tipsd.tips-app-access"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v31 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue2 = [v11 BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    serviceName = [v8 serviceName];
    v15 = [serviceName isEqualToString:@"com.apple.tipsd.assistant"];

    serviceName2 = [v8 serviceName];
    v17 = [serviceName2 isEqualToString:@"com.apple.tipsd.supportFlow.analytics"];

    v18 = +[TPSLogger daemon];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v44 = v8;
      v45 = 1024;
      v46 = bOOLValue;
      v47 = 1024;
      v48 = bOOLValue2;
      v49 = 1024;
      v50 = v15;
      v51 = 1024;
      v52 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "New connection coming in: %@, standardAccess %d, appAccess %d, device expert access %d, support flow access %d", buf, 0x24u);
    }

    if (v15)
    {
      v19 = [v8 valueForEntitlement:@"com.apple.private.tipsd.assistant"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 BOOLValue])
      {
        if ([(TPSDaemon *)self _assistantXPCConnectionContainsConnection:v8])
        {
          v20 = 0;
        }

        else
        {
          v25 = +[NSXPCInterface assistantSupportInterface];
          [v8 setExportedInterface:v25];

          [v8 setExportedObject:self];
          v20 = TPSAnalyticsDaemonActiveReasonAssistantConnection;
          [(TPSDaemon *)self _addAssistantXPCConnection:v8];
          objc_initWeak(&location, self);
          objc_initWeak(&from, v8);
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100008F5C;
          v38[3] = &unk_100024E90;
          objc_copyWeak(&v39, &location);
          objc_copyWeak(&v40, &from);
          [v8 setInvalidationHandler:v38];
          v26 = +[TPSLogger daemon];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v8;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Device Expert connection established. %@", buf, 0xCu);
          }

          objc_destroyWeak(&v40);
          objc_destroyWeak(&v39);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
        }

        goto LABEL_43;
      }
    }

    else
    {
      if (!v17)
      {
        if ((bOOLValue | bOOLValue2))
        {
          v22 = TPSXPCServerInterface();
          [v8 setExportedInterface:v22];

          [v8 setExportedObject:self];
          if (bOOLValue2)
          {
            if (![(TPSDaemon *)self _appXPCConnectionContainsConnection:v8])
            {
              v20 = TPSAnalyticsDaemonActiveReasonTipsAppConnection;
              [(TPSDaemon *)self _addAppXPCConnection:v8];
              objc_initWeak(&location, self);
              objc_initWeak(&from, v8);
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_10000909C;
              v32[3] = &unk_100024E90;
              objc_copyWeak(&v33, &location);
              objc_copyWeak(&v34, &from);
              [v8 setInvalidationHandler:v32];
              v23 = +[TPSLogger daemon];
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44 = v8;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "App connection established. %@", buf, 0xCu);
              }

              objc_destroyWeak(&v34);
              objc_destroyWeak(&v33);
              objc_destroyWeak(&from);
              objc_destroyWeak(&location);
              goto LABEL_43;
            }
          }

          else
          {
            [v8 setInvalidationHandler:&stru_100024ED0];
            v24 = +[TPSLogger daemon];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              sub_1000154FC();
            }
          }

          v20 = 0;
LABEL_43:
          [v8 setInterruptionHandler:&stru_100024EF0];
          v29 = +[TPSLogger daemon];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "xpc connection resume", buf, 2u);
          }

          [v8 resume];
          v10 = 1;
LABEL_46:
          [(TPSDaemon *)self logDaemonActiveEventWithReason:v20];

          goto LABEL_47;
        }

LABEL_22:
        [v8 setInterruptionHandler:&stru_100024EF0];
        v21 = +[TPSLogger daemon];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v8;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Connection denied %@.", buf, 0xCu);
        }

        v10 = 0;
        v20 = 0;
        goto LABEL_46;
      }

      v19 = [v8 valueForEntitlement:@"com.apple.private.tipsd.supportFlowApp"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 BOOLValue])
      {
        if ([(TPSDaemon *)self _supportFlowXPCConnectionContainsConnection:v8])
        {
          v20 = 0;
        }

        else
        {
          v27 = +[NSXPCInterface supportFlowSessionAnalyticsInterface];
          [v8 setExportedInterface:v27];

          [v8 setExportedObject:self];
          v20 = TPSAnalyticsDaemonActiveReasonSupportFlowConnection;
          [(TPSDaemon *)self _addSupportFlowXPCConnection:v8];
          objc_initWeak(&location, self);
          objc_initWeak(&from, v8);
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100008FFC;
          v35[3] = &unk_100024E90;
          objc_copyWeak(&v36, &location);
          objc_copyWeak(&v37, &from);
          [v8 setInvalidationHandler:v35];
          v28 = +[TPSLogger daemon];
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v44 = v8;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Support Flow connection established. %@", buf, 0xCu);
          }

          objc_destroyWeak(&v37);
          objc_destroyWeak(&v36);
          objc_destroyWeak(&from);
          objc_destroyWeak(&location);
        }

        goto LABEL_43;
      }
    }

    goto LABEL_22;
  }

  v10 = 0;
LABEL_47:

  return v10;
}

- (void)appRemovalCleanupIfNeeded
{
  v3 = +[NSUserDefaults standardUserDefaults];
  tipsAppInstalled = [(TPSDaemon *)self tipsAppInstalled];
  if (tipsAppInstalled)
  {
LABEL_6:
    [v3 setBool:tipsAppInstalled forKey:@"TPSTipsAppInstalled"];
    [v3 synchronize];
    goto LABEL_7;
  }

  if ([v3 BOOLForKey:@"TPSTipsAppInstalled"])
  {
    v5 = +[TPSLogger daemon];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "app removal clean up", v8, 2u);
    }

    [(TPSDaemon *)self unregisterImmediateNotifications];
    v6 = +[TPSAnalyticsEventAppDeleted event];
    [v6 log];

    [(TPSDaemon *)self resetBasicDefaults];
    notificationController = [(TPSDaemon *)self notificationController];
    [notificationController removeAllNotifications];

    goto LABEL_6;
  }

LABEL_7:
}

- (void)tipsAppActive
{
  v3 = +[TPSLogger daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100015530();
  }

  [(TPSDaemon *)self reloadAppGroupDefaults];
  [(TPSDaemon *)self processAppInteractedByUser];
  notificationController = [(TPSDaemon *)self notificationController];
  [notificationController clearNotificationCache];

  notificationController2 = [(TPSDaemon *)self notificationController];
  [notificationController2 clearNotificationCount];
}

- (void)removeNotificationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationController = [(TPSDaemon *)self notificationController];
  [notificationController removeNotificationWithIdentifier:identifierCopy];
}

- (void)hintDisplayedForIdentifier:(id)identifier correlationID:(id)d context:(id)context
{
  discoverabilityController = self->_discoverabilityController;
  dCopy = d;
  identifierCopy = identifier;
  [(TPSDiscoverabilityController *)discoverabilityController addHintDisplayedForIdentifier:identifierCopy context:context];
  if (dCopy)
  {
    v9 = dCopy;
  }

  else
  {
    v9 = identifierCopy;
  }

  v10 = v9;
  v11 = +[TPSCloudController sharedInstance];
  [v11 hintDisplayedForContentID:v10];
}

- (void)processAppInteractedByUser
{
  v3 = +[TPSLogger daemon];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User launched the app", v9, 2u);
  }

  if ([(TPSWelcome *)self->_welcome stopWelcomeNotification])
  {
    notificationController = [(TPSDaemon *)self notificationController];
    notificationCache = [notificationController notificationCache];
    collectionIdentifier = [notificationCache collectionIdentifier];

    v7 = +[TPSCommonDefines sharedInstance];
    [v7 notifiedCollection:collectionIdentifier];
  }

  notificationTimingDarwinKey = [(TPSDaemon *)self notificationTimingDarwinKey];
  [(TPSDaemon *)self unregisterDarwinNotification:notificationTimingDarwinKey];
}

- (void)logAnalyticsEvent:(id)event
{
  v4 = TPSAnalyticsDaemonActiveReasonRealTimeAnalytics;
  eventCopy = event;
  [(TPSDaemon *)self logDaemonActiveEventWithReason:v4];
  v6 = +[TPSAnalyticsEventController sharedInstance];
  [v6 logAnalyticsEvent:eventCopy];
}

- (void)logAnalyticsEvents:(id)events
{
  v4 = TPSAnalyticsDaemonActiveReasonRealTimeAnalytics;
  eventsCopy = events;
  [(TPSDaemon *)self logDaemonActiveEventWithReason:v4];
  v6 = +[TPSAnalyticsEventController sharedInstance];
  [v6 logAnalyticsEvents:eventsCopy];
}

- (void)handleLanguageDidChangeNotification
{
  [(TPSDaemon *)self logDaemonActiveEventWithReason:TPSAnalyticsDaemonActiveReasonLanguageChange];
  if ([(TPSDaemon *)self setupCompleted])
  {
    v3 = +[TPSCommonDefines sharedInstance];
    v4 = +[NSLocale tps_userLanguageCode];
    userLanguage = [v3 userLanguage];
    v6 = +[TPSLogger daemon];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = userLanguage;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received language did change notification. New language: %@, current language: %@", buf, 0x16u);
    }

    if ([v4 isEqualToString:userLanguage])
    {
      v7 = +[TPSLogger daemon];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Current user language has not change, skip.", buf, 2u);
      }
    }

    else
    {
      [v3 clearDataCache];
      [v3 setUserLanguage:v4];
      +[TPSTipsManager removeWelcomeDocumentCache];
      notificationController = [(TPSDaemon *)self notificationController];
      [notificationController clearNotificationCache];

      +[TPSNotificationController removeAssetCacheDirectory];
      notificationTimingDarwinKey = [(TPSDaemon *)self notificationTimingDarwinKey];
      [(TPSDaemon *)self unregisterDarwinNotification:notificationTimingDarwinKey];

      [(TPSDaemon *)self updateContentFromOrigin:1 systemEducationRequest:1 indexContent:1 contextualEligibility:1 widgetEligibility:1 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:&stru_100024F30];
    }
  }

  else
  {
    v8 = +[TPSLogger daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User is still in set up, exit.", buf, 2u);
    }

    xpc_transaction_exit_clean();
  }
}

- (void)handleDeviceFirstUnlockNotification
{
  [(TPSDaemon *)self logDaemonActiveEventWithReason:TPSAnalyticsDaemonActiveReasonFirstUnlock];
  [TPSBiomeDataProvider donateEventWithIdentifier:@"com.apple.tipsd.device-restart" context:0 userInfo:0];
  +[TPSTipsManager presentReentryNotificationIfNeeded];
  if ([(TPSDaemon *)self setupCompleted])
  {
    [(TPSDaemon *)self updateContentFromOrigin:1 systemEducationRequest:1 indexContent:1 contextualEligibility:1 widgetEligibility:0 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:&stru_100024F50];
  }

  else
  {
    v3 = +[TPSLogger daemon];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "User is still in set up, exit.", buf, 2u);
    }

    xpc_transaction_exit_clean();
  }
}

- (void)immediateNotificationForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[TPSLogger daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [identifiersCopy description];
    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Request immediate notification for %@", buf, 0xCu);
  }

  if ([identifiersCopy count])
  {
    notificationController = [(TPSDaemon *)self notificationController];
    notificationCache = [notificationController notificationCache];
    type = [notificationCache type];

    tipsAppInstalled = [(TPSDaemon *)self tipsAppInstalled];
    if ((type - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      v11 = tipsAppInstalled;
    }

    else
    {
      v11 = 0;
    }

    if (v11 == 1)
    {
      objc_initWeak(buf, self);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100009ED8;
      v19[3] = &unk_100024F78;
      objc_copyWeak(&v21, buf);
      v20 = identifiersCopy;
      [(TPSDaemon *)self updateContentFromOrigin:0 systemEducationRequest:1 indexContent:0 contextualEligibility:0 widgetEligibility:0 notificationEligibility:1 preferredNotificationIdentifiers:v20 shouldDeferBlock:0 completionHandler:v19];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    else
    {
      notificationController2 = [(TPSDaemon *)self notificationController];
      notificationCache2 = [notificationController2 notificationCache];
      collectionIdentifier = [notificationCache2 collectionIdentifier];
      v15 = [identifiersCopy containsObject:collectionIdentifier];

      if ((v15 & 1) == 0)
      {
        v16 = +[TPSCommonDefines sharedInstance];
        v17 = [NSSet setWithArray:identifiersCopy];
        [v16 activatedCollections:v17];

        v18 = +[TPSLogger daemon];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping immediate collection notification", buf, 2u);
        }
      }
    }
  }
}

- (void)userGuideMapWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[TPSLogger daemon];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Retrieve user guide map.", buf, 2u);
  }

  tipsManager = [(TPSDaemon *)self tipsManager];
  lastFetchedLanguage = [tipsManager lastFetchedLanguage];
  v8 = +[NSLocale tps_userLanguageCode];
  v9 = [lastFetchedLanguage isEqualToString:v8];

  tipsManager2 = [(TPSDaemon *)self tipsManager];
  v11 = tipsManager2;
  if (!v9)
  {
    [tipsManager2 clearCachedUserGuides];
LABEL_9:

    objc_initWeak(buf, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000A368;
    v13[3] = &unk_100024FA0;
    objc_copyWeak(&v15, buf);
    v14 = handlerCopy;
    [(TPSDaemon *)self updateContentFromOrigin:0 systemEducationRequest:1 indexContent:1 contextualEligibility:0 widgetEligibility:0 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  cachedUserGuideMap = [tipsManager2 cachedUserGuideMap];

  if (!cachedUserGuideMap || ![cachedUserGuideMap count])
  {
    v11 = cachedUserGuideMap;
    goto LABEL_9;
  }

  (*(handlerCopy + 2))(handlerCopy, cachedUserGuideMap, 0);

LABEL_10:
}

- (void)contentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  tipsManager = [(TPSDaemon *)self tipsManager];
  hasWidgetDocument = [tipsManager hasWidgetDocument];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A568;
  v8[3] = &unk_100024FC8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(TPSDaemon *)self updateContentFromOrigin:0 systemEducationRequest:0 indexContent:1 contextualEligibility:0 widgetEligibility:hasWidgetDocument ^ 1 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:v8];
}

- (void)contentForVariant:(id)variant completionHandler:(id)handler
{
  variantCopy = variant;
  handlerCopy = handler;
  tipsManager = [(TPSDaemon *)self tipsManager];
  v15 = variantCopy;
  v9 = [NSArray arrayWithObjects:&v15 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A6A0;
  v12[3] = &unk_100024FF0;
  v13 = variantCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = variantCopy;
  [tipsManager contentForVariantIdentifiers:v9 completionHandler:v12];
}

- (void)supportFlowContentWithCompletionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000A8A4;
  v5[3] = &unk_100024FC8;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(TPSDaemon *)self updateContentFromOrigin:0 systemEducationRequest:1 indexContent:0 contextualEligibility:0 widgetEligibility:0 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:v5];
}

- (void)fetchAssetsWithAssetsConfiguration:(id)configuration completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v7 = +[TPSLogger daemon];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100015688();
  }

  v8 = objc_alloc_init(NSOperationQueue);
  [v8 setSuspended:1];
  v9 = [configurationCopy cacheIdentifierForType:0];
  v10 = [TPSContentURLController assetPathFromAssetConfiguration:configurationCopy type:0];
  if ([v9 length] && objc_msgSend(v10, "length"))
  {
    v11 = [[TPSAssetsDownloadOperation alloc] initWithAssetIdentifier:v9 assetURLPath:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [configurationCopy cacheIdentifierForType:1];
  v13 = [TPSContentURLController assetPathFromAssetConfiguration:configurationCopy type:1];
  if ([v12 length] && objc_msgSend(v13, "length"))
  {
    v14 = [[TPSAssetsDownloadOperation alloc] initWithAssetIdentifier:v12 assetURLPath:v13];
  }

  else
  {
    v14 = 0;
  }

  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10000ABE0;
  v23 = &unk_100025018;
  v15 = v11;
  v24 = v15;
  v16 = v14;
  v25 = v16;
  v26 = configurationCopy;
  v27 = handlerCopy;
  v17 = handlerCopy;
  v18 = configurationCopy;
  v19 = [NSBlockOperation blockOperationWithBlock:&v20];
  if (v15)
  {
    [v8 addOperation:{v15, v20, v21, v22, v23, v24, v25, v26, v27}];
    [v19 addDependency:v15];
  }

  if (v16)
  {
    [v8 addOperation:v16];
    [v19 addDependency:v16];
  }

  [v8 addOperation:{v19, v20, v21, v22, v23}];
  [v8 setSuspended:0];
}

- (BOOL)isContentIneligibleDueToViewOnOtherDevices:(id)devices
{
  v3 = [(TPSTipStatusController *)self->_tipStatusController statusForIdentifier:devices];
  if ([v3 isHintDisplayed])
  {
    isHintDisplayedOnCloudDevices = 0;
  }

  else
  {
    isHintDisplayedOnCloudDevices = [v3 isHintDisplayedOnCloudDevices];
  }

  return isHintDisplayedOnCloudDevices;
}

- (void)donateHintIneligibleReason:(int64_t)reason contentID:(id)d bundleID:(id)iD context:(id)context
{
  discoverabilityController = self->_discoverabilityController;
  dCopy = d;
  contextCopy = context;
  iDCopy = iD;
  dCopy2 = d;
  v14 = [NSArray arrayWithObjects:&dCopy count:1];
  [(TPSDiscoverabilityController *)discoverabilityController markHintIneligibleForIdentifiers:v14 bundleID:iDCopy context:contextCopy reason:reason, dCopy];

  v15 = [TPSAnalyticsEventTipNotDisplayed alloc];
  tipStatusController = [(TPSDiscoverabilityController *)self->_discoverabilityController tipStatusController];
  v17 = [tipStatusController correlationIdentifierForIdentifier:dCopy2];
  v18 = [v15 initWithTipID:dCopy2 correlationID:v17 bundleID:iDCopy reason:reason context:contextCopy date:0];

  v19 = +[TPSAnalyticsEventController sharedInstance];

  [v19 logAnalyticsEvent:v18];
}

- (void)welcome:(id)welcome contentAvailableRemotelyWithCompletionHandler:(id)handler
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000AFA8;
  v5[3] = &unk_100025068;
  selfCopy = self;
  handlerCopy = handler;
  v4 = handlerCopy;
  [(TPSDaemon *)selfCopy updateContentFromOrigin:1 systemEducationRequest:1 indexContent:1 contextualEligibility:0 widgetEligibility:1 notificationEligibility:0 preferredNotificationIdentifiers:0 shouldDeferBlock:0 completionHandler:v5];
}

- (void)welcome:(id)welcome notifyWelcomeDocument:(id)document
{
  documentCopy = document;
  notificationController = [(TPSDaemon *)self notificationController];
  identifier = [documentCopy identifier];
  v7 = [notificationController updateNotificationCacheWithCollectionIdentifier:identifier document:documentCopy type:1 extensionPayload:0];

  [(TPSDaemon *)self updateNotificationStatus];
}

- (id)contextualInfoMap
{
  v3 = [NSMutableDictionary alloc];
  usageEventManager = [(TPSDaemon *)self usageEventManager];
  contextualInfoMap = [usageEventManager contextualInfoMap];
  v6 = [v3 initWithDictionary:contextualInfoMap];

  discoverabilityController = self->_discoverabilityController;
  if (!discoverabilityController)
  {
    discoverabilityController = TPSDiscoverabilityController;
  }

  contextualInfoMap2 = [(TPSDiscoverabilityController *)discoverabilityController contextualInfoMap];
  [v6 addEntriesFromDictionary:contextualInfoMap2];
  v9 = [v6 copy];

  return v9;
}

- (id)analyticsExperiment
{
  tipsManager = [(TPSDaemon *)self tipsManager];

  if (tipsManager)
  {
    tipsManager2 = [(TPSDaemon *)self tipsManager];
    experiment = [tipsManager2 experiment];
  }

  else
  {
    experiment = +[TPSTipsManager experiment];
  }

  return experiment;
}

- (id)deliveryInfoVersion
{
  tipsManager = [(TPSDaemon *)self tipsManager];

  if (tipsManager)
  {
    tipsManager2 = [(TPSDaemon *)self tipsManager];
    rulesVersion = [tipsManager2 rulesVersion];
  }

  else
  {
    rulesVersion = +[TPSTipsManager rulesVersion];
  }

  return rulesVersion;
}

- (id)contextualInfoForIdentifier:(id)identifier
{
  discoverabilityController = self->_discoverabilityController;
  if (discoverabilityController)
  {
    identifierCopy = identifier;
    v5 = [(TPSDiscoverabilityController *)discoverabilityController contextualInfoForIdentifier:identifierCopy];
  }

  else
  {
    identifierCopy2 = identifier;
    identifierCopy = +[TPSDiscoverabilityController contextualInfoMap];
    v5 = [identifierCopy objectForKeyedSubscript:identifierCopy2];
  }

  return v5;
}

- (id)displayTypeForIdentifier:(id)identifier
{
  v3 = [(TPSDaemon *)self tipStatusForIdentifier:identifier];
  v4 = +[TPSAnalyticsCommonDefines displayTypeStringForDisplayType:](TPSAnalyticsCommonDefines, "displayTypeStringForDisplayType:", [v3 displayType]);

  return v4;
}

- (id)experimentCampID
{
  analyticsExperiment = [(TPSDaemon *)self analyticsExperiment];
  v4 = -[TPSDaemon experimentCampIDStringForCamp:](self, "experimentCampIDStringForCamp:", [analyticsExperiment camp]);

  return v4;
}

- (id)experimentID
{
  analyticsExperiment = [(TPSDaemon *)self analyticsExperiment];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [analyticsExperiment identifier]);

  return v3;
}

- (id)contextForIdentifier:(id)identifier
{
  v3 = [(TPSDaemon *)self tipStatusForIdentifier:identifier];
  lastDisplayContext = [v3 lastDisplayContext];

  return lastDisplayContext;
}

- (unint64_t)hintDisplayedCountForIdentifier:(id)identifier
{
  v3 = [(TPSDaemon *)self tipStatusForIdentifier:identifier];
  hintDisplayedDates = [v3 hintDisplayedDates];
  v5 = [hintDisplayedDates count];

  return v5;
}

- (void)tipsManager:(id)manager eligibilityCompletedWithTipIdentifiers:(id)identifiers contextualTipIdentifiers:(id)tipIdentifiers tipsDeliveryInfoMap:(id)map deliveryInfoMap:(id)infoMap
{
  infoMapCopy = infoMap;
  mapCopy = map;
  tipIdentifiersCopy = tipIdentifiers;
  v16 = [NSMutableSet setWithSet:identifiers];
  [v16 minusSet:tipIdentifiersCopy];

  usageEventManager = [(TPSDaemon *)self usageEventManager];
  allObjects = [v16 allObjects];
  [usageEventManager updateContextualInfoForIdentifiers:allObjects tipsDeliveryInfoMap:mapCopy deliveryInfoMap:infoMapCopy];
}

- (BOOL)canCheckForNewTipNotification:(id)notification
{
  welcome = [(TPSDaemon *)self welcome];
  shouldShowWelcomeNotification = [welcome shouldShowWelcomeNotification];

  return shouldShowWelcomeNotification ^ 1;
}

- (id)currentExperimentWithDiscoverabilityController:(id)controller
{
  tipsManager = [(TPSDaemon *)self tipsManager];
  experiment = [tipsManager experiment];

  return experiment;
}

- (void)notificationController:(id)controller markIdentifier:(id)identifier type:(int64_t)type ineligibleWithReason:(int64_t)reason
{
  controllerCopy = controller;
  identifierCopy = identifier;
  if (type == 2)
  {
    v14 = +[TPSCommonDefines sharedInstance];
    [v14 notifiedCollection:identifierCopy];

    discoverabilityController = [(TPSDaemon *)self discoverabilityController];
    tipStatusController = [discoverabilityController tipStatusController];
    v16 = [tipStatusController correlationIdentifierForIdentifier:identifierCopy];
    v17 = [TPSAnalyticsEventContentIneligible eventWithTipID:identifierCopy correlationID:v16 bundleID:0 context:0 displayType:0 reason:reason date:0];
    [v17 log];

    goto LABEL_5;
  }

  if (type == 1)
  {
    discoverabilityController = [(TPSDaemon *)self discoverabilityController];
    v18 = identifierCopy;
    v13 = [NSArray arrayWithObjects:&v18 count:1];
    [discoverabilityController markHintIneligibleForIdentifiers:v13 context:0 reason:reason];

LABEL_5:
  }
}

- (void)notificationController:(id)controller registrableEventReceivedForDocumentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v7 = identifierCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(TPSDaemon *)self immediateNotificationForIdentifiers:v6];
  }
}

- (void)performQuery:(id)query completion:(id)completion
{
  completionCopy = completion;
  queryCopy = query;
  v7 = +[TPSSearchQueryManager shared];
  [v7 performQuery:queryCopy completion:completionCopy];
}

- (void)cancelQueryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[TPSSearchQueryManager shared];
  [v4 cancelQueryWithIdentifier:identifierCopy];
}

- (void)reindexAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[TPSLogger indexing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "reindex all searchableItems request from extension", v7, 2u);
  }

  tipsManager = [(TPSDaemon *)self tipsManager];
  [tipsManager reindexAllSearchableItemsWithCompletionHandler:handlerCopy];
}

- (void)reindexSearchableItemsWithIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = +[TPSLogger indexing];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134217984;
    v11 = [identifiersCopy count];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "reindex reindexSearchableItemsWithIdentifiers request from extension: %lu", &v10, 0xCu);
  }

  tipsManager = [(TPSDaemon *)self tipsManager];
  [tipsManager reindexSearchableItemsWithIdentifiers:identifiersCopy completionHandler:handlerCopy];
}

- (void)deleteAllSearchableItemsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[TPSLogger indexing];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "delete all searchableItems request from extension", v7, 2u);
  }

  tipsManager = [(TPSDaemon *)self tipsManager];
  [tipsManager deleteAllSearchableItemsWithCompletionHandler:handlerCopy];
}

- (void)updateSessionMapWithIdentifier:(id)identifier data:(id)data
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  dataCopy = data;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  _sSo9TPSDaemonC5tipsdE16updateSessionMap10identifier4dataySS_10Foundation4DataVtF_0(v6, v8, v11, v13);
  sub_10000CE30(v11, v13);
}

- (void)logForAppTerminate
{
  v2 = type metadata accessor for TipsLog();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TipsLog.analytics.getter();
  logDebug(_:_:)();
  (*(v3 + 8))(v6, v2);
  static SupportFlowSessionManager.logAllSessions()();
}

- (void)findMatchingResultIdFromContexts:(id)contexts reply:(id)reply
{
  v5 = _Block_copy(reply);
  type metadata accessor for ResultContext();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_100013FB0(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)availableUserGuideIdentifiersWithReply:(id)reply
{
  v5 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = objc_opt_self();
  selfCopy = self;
  _Block_copy(v9);
  if ([v11 supportsUserGuide])
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v14 = selfCopy;
    v13[4] = selfCopy;
    v13[5] = sub_100012C94;
    v13[6] = v10;
    v15 = v14;

    sub_10000F0A8(0, 0, v8, &unk_100019570, v13);

    _Block_release(v9);
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    (*(v9 + 2))(v9, isa);

    _Block_release(v9);
    v17 = selfCopy;
  }
}

- (void)fetchDocumentWithIdentifier:(id)identifier reply:(id)reply
{
  v6 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(reply);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = sub_100012A68;
  v16[6] = v14;
  v16[7] = v11;
  v16[8] = v13;
  selfCopy = self;
  sub_10000F0A8(0, 0, v9, &unk_100019568, v16);
}

- (void)resolveContextForKeys:(id)keys reply:(id)reply
{
  v7 = sub_10000CEDC(&qword_100029FA0, &qword_100019518);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = keys;
  v14[5] = self;
  v14[6] = sub_100012A10;
  v14[7] = v12;
  keysCopy = keys;
  selfCopy = self;
  sub_10000F0A8(0, 0, v10, &unk_100019560, v14);
}

@end