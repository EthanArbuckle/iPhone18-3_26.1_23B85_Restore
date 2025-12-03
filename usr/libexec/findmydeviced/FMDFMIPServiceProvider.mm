@interface FMDFMIPServiceProvider
- (BOOL)_canSendDeviceIdentityNow;
- (BOOL)validateParamsForUCRTHealing:(id)healing;
- (BOOL)willMakeProviderActive;
- (FMDFMIPServiceProvider)init;
- (id)_unregisterDeviceErrorForResponseError:(int64_t)error inContext:(unint64_t)context;
- (id)accountStore;
- (id)alertActionInfoForAction:(id)action andURL:(id)l;
- (unint64_t)fmipState;
- (unsigned)essentialServerInfoMissingError;
- (void)_buddyCompletionCheckTimerFired:(id)fired;
- (void)_checkForBuddyCompletionAndReinitialize:(BOOL)reinitialize withBuddyStatus:(BOOL)status;
- (void)_deviceDidPair:(id)pair;
- (void)_deviceDidUnpair:(id)unpair;
- (void)_enableRepairWithContext:(id)context callingClient:(id)client completion:(id)completion;
- (void)_enqueueIdentityOperation:(id)operation;
- (void)_fmipStateChangeLocalNotification:(id)notification;
- (void)_sendDeviceIdentityNowWithIdentityInfo:(id)info;
- (void)_serialQueue_checkAndSendPendingDeviceIdentityWithIdentityInfo:(id)info;
- (void)_serialQueue_sendDeviceIdentityIfEligibleWithIdentityInfo:(id)info;
- (void)_showMarkAsMissingErrorForResponseError:(int64_t)error;
- (void)_showPairedDeviceDisableFMIPErrorForResponseError:(int64_t)error;
- (void)_showPendingHomescreenAlertNow;
- (void)_showUnregisterDeviceErrorForResponseError:(int64_t)error inContext:(unint64_t)context;
- (void)_updateToHomescreenAlerts;
- (void)accountRemoveRequestedWithCompletion:(id)completion;
- (void)addAccount:(id)account;
- (void)attemptUCRTHealing:(id)healing completion:(id)completion;
- (void)buddyDidComplete:(id)complete;
- (void)checkAndSendPendingDeviceIdentityWithIdentityInfo:(id)info;
- (void)checkShutdownSoonRegistration;
- (void)deregisterCommonNotifications;
- (void)deviceEligibleForRepairWithContext:(id)context completion:(id)completion;
- (void)didMakeProviderActive;
- (void)didReceiveAuthFailureForRequest:(id)request;
- (void)disableFMIPForPairedDeviceWithUDID:(id)d account:(id)account andCompletion:(id)completion;
- (void)disableLocationDisplayWithCompletion:(id)completion;
- (void)enableRepairWithContext:(id)context callingClient:(id)client completion:(id)completion;
- (void)ephemeralTokenForUserWithCompletion:(id)completion;
- (void)markPairedDeviceWithUdid:(id)udid asMissingUsingToken:(id)token withCompletion:(id)completion;
- (void)monitorAndSendDeviceIdentityLaterWithIdentityInfo:(id)info;
- (void)registerCommonNotifications;
- (void)registerDidSucceed;
- (void)sendDeviceIdentity:(int64_t)identity;
- (void)sendDeviceIdentityIfEligibleWithIdentityInfo:(id)info;
- (void)sendDeviceIdentityWithIdentityInfo:(id)info;
- (void)setCompletionHandlerForRepairDeviceRequest:(id)request thisDevice:(id)device completion:(id)completion;
- (void)setPendingLocateAlert:(id)alert;
- (void)setPendingSecureMessage:(id)message;
- (void)start;
- (void)stopMonitoringPendingDeviceIdentity;
- (void)syncFMIPStateToWatch;
- (void)synchronizeLocalActivationLockState;
- (void)systemShutdownSoon:(id)soon;
- (void)tryToFetchAuthToken;
- (void)unregisterDeviceWithCompletion:(id)completion;
- (void)willMakeProviderInactive;
@end

@implementation FMDFMIPServiceProvider

- (FMDFMIPServiceProvider)init
{
  v24.receiver = self;
  v24.super_class = FMDFMIPServiceProvider;
  v2 = [(FMDServiceProvider *)&v24 init];
  v3 = v2;
  if (v2)
  {
    fm_logID = [(FMDFMIPServiceProvider *)v2 fm_logID];
    v5 = [NSString stringWithFormat:@"com.apple.icloud.findmydeviced.identityWaitQueue-%@", fm_logID];

    v6 = dispatch_queue_create([v5 cStringUsingEncoding:4], 0);
    [(FMDFMIPServiceProvider *)v3 setIdentity_wait_queue:v6];

    fm_logID2 = [(FMDFMIPServiceProvider *)v3 fm_logID];
    v8 = [NSString stringWithFormat:@"com.apple.icloud.findmydeviced.deviceUnlockActionsQueue-%@", fm_logID2];

    v9 = dispatch_queue_create([v8 cStringUsingEncoding:4], 0);
    [(FMDFMIPServiceProvider *)v3 setDevice_unlock_actions_queue:v9];

    [(FMDFMIPServiceProvider *)v3 setLockStateNotifyToken:0xFFFFFFFFLL];
    v10 = dispatch_queue_create("fmipServiceProvider-tokenHealingQueue", 0);
    [(FMDFMIPServiceProvider *)v3 setAuthTokenHealingQueue:v10];

    [FMDServiceProvider setActiveServiceProvider:v3];
    objc_initWeak(&location, v3);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10016E448;
    block[3] = &unk_1002CD518;
    objc_copyWeak(&v22, &location);
    dispatch_async(&_dispatch_main_q, block);
    v11 = sub_100002880();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10022A178(v11);
    }

    v12 = [[FMNanoIDSManager alloc] initWithServiceId:@"com.apple.private.alloy.findmydeviced.watch" minimumVersion:2];
    v13 = [[FMDFMIPNanoIDSListener alloc] initWithManager:v12];
    [(FMDFMIPServiceProvider *)v3 setIdsListener:v13];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v3 selector:"checkShutdownSoonRegistration" name:@"FMDFMIPLowBatteryLocateStateDidChangeLocalNotification" object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v3 selector:"_fmipStateChangeLocalNotification:" name:@"FMIPStateChangeLocalNotification" object:0];

    v16 = sub_100002880();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Findmy MagSafe enabled", buf, 2u);
    }

    v17 = objc_alloc_init(FMDMagSafeSetupLauncher);
    magSafeSetupLauncher = v3->_magSafeSetupLauncher;
    v3->_magSafeSetupLauncher = v17;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (id)accountStore
{
  if (qword_100314680 != -1)
  {
    sub_10022A1BC();
  }

  v3 = qword_100314678;

  return v3;
}

- (void)start
{
  v13.receiver = self;
  v13.super_class = FMDFMIPServiceProvider;
  [(FMDServiceProvider *)&v13 start];
  [(FMDFMIPServiceProvider *)self syncFMIPStateToWatch];
  v3 = objc_alloc_init(FMDUnregisterTokenStore);
  [(FMDFMIPServiceProvider *)self setUnregisterTokenStore:v3];
  v4 = [FMDCompanionRegistryFactory companionRegistryWithDelegate:0];
  unregisterTokenStore = [(FMDFMIPServiceProvider *)self unregisterTokenStore];
  allAccessories = [v4 allAccessories];
  [unregisterTokenStore expungeUnregisterTokens:allAccessories];

  v7 = [FMDNanoMigrator alloc];
  unregisterTokenStore2 = [(FMDFMIPServiceProvider *)self unregisterTokenStore];
  serverInteractionController = [(FMDServiceProvider *)self serverInteractionController];
  v10 = [(FMDNanoMigrator *)v7 initWithCompanionRegistry:v4 unregisterTokenStore:unregisterTokenStore2 serverInteractionController:serverInteractionController];
  [(FMDFMIPServiceProvider *)self setNanoMigrator:v10];

  nanoMigrator = [(FMDFMIPServiceProvider *)self nanoMigrator];
  [nanoMigrator unregisterAccessoriesIfNeeded];

  [(FMDServiceProvider *)self startLocationMonitoringIfNeeded];
  v12 = +[FMDCoreFollowUpManager sharedInstance];
  [v12 requestTheftAndLossCFU:2];
}

- (BOOL)willMakeProviderActive
{
  v3 = +[FMDSystemConfig sharedInstance];
  isBuddyDone = [v3 isBuddyDone];

  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = isBuddyDone;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Buddy status: %d", v7, 8u);
  }

  [(FMDFMIPServiceProvider *)self _checkForBuddyCompletionAndReinitialize:0 withBuddyStatus:isBuddyDone];
  return isBuddyDone;
}

- (void)didMakeProviderActive
{
  v22.receiver = self;
  v22.super_class = FMDFMIPServiceProvider;
  [(FMDDeviceActionsServiceProvider *)&v22 didMakeProviderActive];
  account = [(FMDServiceProvider *)self account];
  unregisterState = [account unregisterState];

  if (unregisterState <= 4 && ((1 << unregisterState) & 0x1A) != 0)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found an fmip account that was previously unregistering in the last run of findmydeviced. That unregister may or may not have failed & error may or may not have been shown to the user. Showing error to user & turning FMIP back on", v21, 2u);
    }

    account2 = [(FMDServiceProvider *)self account];
    [RegisterAction deleteRegisterDigestForAccount:account2];

    account3 = [(FMDServiceProvider *)self account];
    [account3 setUnregisterState:0];

    accountStore = [(FMDFMIPServiceProvider *)self accountStore];
    account4 = [(FMDServiceProvider *)self account];
    [accountStore saveAccount:account4];

    account5 = [(FMDServiceProvider *)self account];
    fmipDisableContext = [account5 fmipDisableContext];
    if (fmipDisableContext <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = fmipDisableContext;
    }

    [(FMDFMIPServiceProvider *)self _showUnregisterDeviceErrorForResponseError:2 inContext:v12];
  }

  unregisterTokenStore = [(FMDFMIPServiceProvider *)self unregisterTokenStore];
  [unregisterTokenStore clearUnregisterTokens];

  [(FMDFMIPServiceProvider *)self registerCommonNotifications];
  [(FMDFMIPServiceProvider *)self synchronizeLocalActivationLockState];
  v14 = objc_alloc_init(FMDDetachNotificationManager);
  [(FMDFMIPServiceProvider *)self setDetachNotificationManager:v14];

  accessoryRegistry = [(FMDServiceProvider *)self accessoryRegistry];
  detachNotificationManager = [(FMDFMIPServiceProvider *)self detachNotificationManager];
  [accessoryRegistry registerDelegate:detachNotificationManager];

  supportedAccessoryRegistry = [(FMDServiceProvider *)self supportedAccessoryRegistry];
  detachNotificationManager2 = [(FMDFMIPServiceProvider *)self detachNotificationManager];
  [detachNotificationManager2 setSupportedAccessoryRegistry:supportedAccessoryRegistry];

  accessoryLocationStore = [(FMDServiceProvider *)self accessoryLocationStore];
  detachNotificationManager3 = [(FMDFMIPServiceProvider *)self detachNotificationManager];
  [detachNotificationManager3 setLocationStore:accessoryLocationStore];
}

- (void)willMakeProviderInactive
{
  v6.receiver = self;
  v6.super_class = FMDFMIPServiceProvider;
  [(FMDDeviceActionsServiceProvider *)&v6 willMakeProviderInactive];
  [(FMDFMIPServiceProvider *)self deregisterCommonNotifications];
  [(FMDFMIPServiceProvider *)self stopMonitoringPendingDeviceIdentity];
  deviceIdentityPendingXpcTransactionName = [(FMDFMIPServiceProvider *)self deviceIdentityPendingXpcTransactionName];

  if (deviceIdentityPendingXpcTransactionName)
  {
    v4 = +[FMXPCTransactionManager sharedInstance];
    deviceIdentityPendingXpcTransactionName2 = [(FMDFMIPServiceProvider *)self deviceIdentityPendingXpcTransactionName];
    [v4 endTransaction:deviceIdentityPendingXpcTransactionName2];

    [(FMDFMIPServiceProvider *)self setDeviceIdentityPendingXpcTransactionName:0];
  }
}

- (void)registerCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"systemShutdownSoon:" name:@"FMDSystemShutdownSoonNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"locationServiceAuthorizationChanged:" name:@"FMDLocationServiceAuthorizationChangedNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_deviceDidPair:" name:@"nano.devicedidpair" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_deviceDidUnpair:" name:@"nano.devicedidunpair" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_activeWatchDidChange" name:@"nano.watchdidbecomeactive" object:0];

  v8.receiver = self;
  v8.super_class = FMDFMIPServiceProvider;
  [(FMDDeviceActionsServiceProvider *)&v8 registerCommonNotifications];
}

- (void)deregisterCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"FMDSystemShutdownSoonNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"FMDLocationServiceAuthorizationChangedNotification" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"nano.devicedidpair" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:@"nano.devicedidunpair" object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 removeObserver:self name:@"nano.watchdidbecomeactive" object:0];

  v8.receiver = self;
  v8.super_class = FMDFMIPServiceProvider;
  [(FMDDeviceActionsServiceProvider *)&v8 deregisterCommonNotifications];
}

- (id)alertActionInfoForAction:(id)action andURL:(id)l
{
  actionCopy = action;
  lCopy = l;
  if ([actionCopy isEqualToString:@"appleid"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT"];
    v19[0] = @"url";
    v19[1] = @"sensitive";
    v20[0] = v7;
    v20[1] = &__kCFBooleanTrue;
    v8 = v20;
    v9 = v19;
LABEL_10:
    v11 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:2];

    goto LABEL_11;
  }

  if ([actionCopy isEqualToString:@"settings"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE"];
    v17[0] = @"url";
    v17[1] = @"sensitive";
    v18[0] = v7;
    v18[1] = &__kCFBooleanTrue;
    v8 = v18;
    v9 = v17;
    goto LABEL_10;
  }

  if ([actionCopy isEqualToString:@"fmip-settings"])
  {

    lCopy = @"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/DEVICE_LOCATOR";
    v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/DEVICE_LOCATOR"];
    v15[0] = @"url";
    v15[1] = @"sensitive";
    v16[0] = v7;
    v16[1] = &__kCFBooleanTrue;
    v8 = v16;
    v9 = v15;
    goto LABEL_10;
  }

  v10 = [actionCopy isEqualToString:@"open-url"];
  v11 = 0;
  if (lCopy && v10)
  {
    v7 = [NSURL URLWithString:lCopy];
    v13[0] = @"url";
    v13[1] = @"sensitive";
    v14[0] = v7;
    v14[1] = &__kCFBooleanFalse;
    v8 = v14;
    v9 = v13;
    goto LABEL_10;
  }

LABEL_11:

  return v11;
}

- (void)accountRemoveRequestedWithCompletion:(id)completion
{
  completionCopy = completion;
  account = [(FMDServiceProvider *)self account];
  unregisterState = [account unregisterState];

  if (unregisterState == 1)
  {
    v7 = sub_100002880();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending unregister because account state changed to UnregisterPending", buf, 2u);
    }

    [(FMDServiceProvider *)self makeProviderInactive];
    account2 = [(FMDServiceProvider *)self account];
    [RegisterAction deleteRegisterDigestForAccount:account2];

    locationTracker = [(FMDDeviceActionsServiceProvider *)self locationTracker];
    [locationTracker deleteLocationTrackingInfoAndStopTracking];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10016F0B0;
    v12[3] = &unk_1002CEE48;
    v12[4] = self;
    v13 = completionCopy;
    [(FMDFMIPServiceProvider *)self unregisterDeviceWithCompletion:v12];
  }

  else
  {
    v10 = +[FMDMagSafeDataStore sharedInstance];
    [v10 clearDataStore];

    v11.receiver = self;
    v11.super_class = FMDFMIPServiceProvider;
    [(FMDDeviceActionsServiceProvider *)&v11 accountRemoveRequestedWithCompletion:completionCopy];
  }
}

- (void)checkShutdownSoonRegistration
{
  account = [(FMDServiceProvider *)self account];
  if ([account lowBatteryLocateEnabled])
  {
    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10016F2EC;
    v9[3] = &unk_1002CD288;
    objc_copyWeak(&v11, &location);
    v10 = @"com.apple.DuetHeuristic-BM.shutdowsoon";
    v4 = objc_retainBlock(v9);
    v5 = +[FMXPCNotificationsUtil sharedInstance];
    v6 = [v5 isHandlerRegisteredForDarwinNotification:@"com.apple.DuetHeuristic-BM.shutdowsoon"];

    if ((v6 & 1) == 0)
    {
      v7 = +[FMXPCNotificationsUtil sharedInstance];
      [v7 registerHandler:v4 forDarwinNotification:@"com.apple.DuetHeuristic-BM.shutdowsoon"];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = +[FMXPCNotificationsUtil sharedInstance];
    [v8 deregisterHandlerForDarwinNotification:@"com.apple.DuetHeuristic-BM.shutdowsoon"];
  }

  [(FMDFMIPServiceProvider *)self syncFMIPStateToWatch];
}

- (void)tryToFetchAuthToken
{
  authTokenHealingQueue = [(FMDFMIPServiceProvider *)self authTokenHealingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016F604;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(authTokenHealingQueue, block);
}

- (unsigned)essentialServerInfoMissingError
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1196379972;
  authTokenHealingQueue = [(FMDFMIPServiceProvider *)self authTokenHealingQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10016F784;
  v5[3] = &unk_1002CD260;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(authTokenHealingQueue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)sendDeviceIdentity:(int64_t)identity
{
  v4 = [[FMDIdentityInfo alloc] initWithVersion:identity];
  [(FMDFMIPServiceProvider *)self sendDeviceIdentityWithIdentityInfo:v4];
}

- (void)sendDeviceIdentityWithIdentityInfo:(id)info
{
  infoCopy = info;
  if ([(FMDFMIPServiceProvider *)self isMonitoringPendingDeviceIdentity])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Already waiting to send deviceIdentity", v6, 2u);
    }
  }

  else
  {
    [(FMDFMIPServiceProvider *)self sendDeviceIdentityIfEligibleWithIdentityInfo:infoCopy];
  }
}

- (void)_sendDeviceIdentityNowWithIdentityInfo:(id)info
{
  infoCopy = info;
  essentialServerInfoMissingError = [(FMDFMIPServiceProvider *)self essentialServerInfoMissingError];
  if (essentialServerInfoMissingError != 1196379972)
  {
    v9 = essentialServerInfoMissingError;
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [NSString stringWithFourCC:v9];
      *buf = 138412290;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not sending device identity to server since some essential server info is missing - '%@'", buf, 0xCu);
    }

    [(FMDFMIPServiceProvider *)self tryToFetchAuthToken];
    accountStore = [(FMDFMIPServiceProvider *)self accountStore];
    account = [(FMDServiceProvider *)self account];
    [(FMDRequestIdentityV5 *)accountStore saveAccount:account];

    goto LABEL_7;
  }

  [FMPreferencesUtil removeKey:@"identityVersion" inDomain:kFMDNotBackedUpPrefDomain];
  [FMPreferencesUtil synchronizeDomain:kFMDNotBackedUpPrefDomain];
  version = [infoCopy version];
  if ((version & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v7 = version;
    accountStore = [[FMDRequestIdentityV5 alloc] initWithProvider:self identityInfo:infoCopy];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10016FABC;
    v13[3] = &unk_1002CF538;
    v13[4] = self;
    v13[5] = v7;
    [(FMDRequest *)accountStore setCompletionHandler:v13];
    [(FMDServiceProvider *)self enqueueRequest:accountStore];
LABEL_7:
  }
}

- (void)registerDidSucceed
{
  v4.receiver = self;
  v4.super_class = FMDFMIPServiceProvider;
  [(FMDServiceProvider *)&v4 registerDidSucceed];
  account = [(FMDServiceProvider *)self account];
  [account setLastLoggedInDsid:0];
}

- (void)disableLocationDisplayWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [FMDDisableLocationDisplayRequest alloc];
  account = [(FMDServiceProvider *)self account];
  v7 = [(FMDDisableLocationDisplayRequest *)v5 initWithAccount:account];

  v8 = +[ServerDeviceInfo sharedInstance];
  account2 = [(FMDServiceProvider *)self account];
  v10 = [v8 deviceInfoForAccount:account2];

  v11 = [FMDActingRequestDecorator alloc];
  v19[4] = self;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100170190;
  v20[3] = &unk_1002CD580;
  v21 = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100170198;
  v19[3] = &unk_1002CD580;
  v12 = v10;
  v13 = [(FMDActingRequestDecorator *)v11 initWithDeviceContextGenerator:&stru_1002CF558 deviceInfoGenerator:v20 serverContextGenerator:0 requestHeaderGenerator:v19];
  [(FMDRequest *)v7 setDecorator:v13];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100170220;
  v17[3] = &unk_1002CD1D0;
  v18 = completionCopy;
  v14 = completionCopy;
  [(FMDRequest *)v7 setCompletionHandler:v17];
  v15 = sub_10017DE2C();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMDDisableLocationDisplayRequest *)v7 fm_logID];
    *buf = 138412290;
    v23 = fm_logID;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%@: sending request to disable locations.", buf, 0xCu);
  }

  [(FMDServiceProvider *)self enqueueRequest:v7];
}

- (void)deviceEligibleForRepairWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  repairDeviceMode = [contextCopy repairDeviceMode];
  v8 = sub_10017DD1C();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (repairDeviceMode == 2)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v19 = 0;
    v10 = "deviceEligibleForRepairWithContext for trade in mode";
    v11 = &v19;
  }

  else if (repairDeviceMode == 1)
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v20 = 0;
    v10 = "deviceEligibleForRepairWithContext for repairMode";
    v11 = &v20;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v18 = 0;
    v10 = "deviceEligibleForRepairWithContext for unknown";
    v11 = &v18;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
LABEL_10:

  v12 = objc_opt_new();
  searchIdentifiers = [contextCopy searchIdentifiers];

  v14 = FMDRepairDeviceThisDeviceIdentifier;
  v15 = [searchIdentifiers containsObject:FMDRepairDeviceThisDeviceIdentifier];

  if (v15)
  {
    v16 = [[FMDRepairDevice alloc] initWithClientIdentifier:v14 isThisDevice:1];
    [v12 addObject:v16];
  }

  v17 = [[FMDRepairDeviceResult alloc] initWithEligibleDevices:v12 devicesInRepairMode:&__NSArray0__struct];
  completionCopy[2](completionCopy, v17, 0);
}

- (BOOL)validateParamsForUCRTHealing:(id)healing
{
  healingCopy = healing;
  v4 = [healingCopy objectForKeyedSubscript:kFMDOptionsActivationLockUsername];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = kFMDOptionsActivationLockPET;
    v6 = [healingCopy objectForKeyedSubscript:kFMDOptionsActivationLockPET];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      v8 = [healingCopy objectForKeyedSubscript:v5];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)attemptUCRTHealing:(id)healing completion:(id)completion
{
  healingCopy = healing;
  completionCopy = completion;
  if ([(FMDFMIPServiceProvider *)self validateParamsForUCRTHealing:healingCopy])
  {
    v8 = MAEUCRTUpgradeRequired();
    v9 = 0;
    v10 = sub_10017DC94();
    v11 = v10;
    if ((v8 & 1) == 0 && v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10022A238();
      }

LABEL_20:
      completionCopy[2](completionCopy, 0, v9);
      goto LABEL_21;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "false";
      if (v8)
      {
        v16 = "true";
      }

      *buf = 136315138;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "UCRT Upgrade required %s", buf, 0xCu);
    }

    if (!v8)
    {
      goto LABEL_20;
    }

    v17 = MAEReissueUCRTWithError();
    v18 = v9;

    v19 = sub_10017DC94();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = "false";
      if (v17)
      {
        v20 = "true";
      }

      *buf = 136315394;
      v22 = v20;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Is UCRT Success: %s,: Error: %@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, v17, v18);
    v9 = v18;
  }

  else
  {
    v9 = [NSString stringWithFormat:@"Username or password is not correct types"];
    v12 = sub_10017DC94();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10022A1D0();
    }

    v13 = kFMDErrorDomain;
    v25 = NSLocalizedFailureReasonErrorKey;
    v26 = v9;
    v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v15 = [NSError errorWithDomain:v13 code:7 userInfo:v14];

    completionCopy[2](completionCopy, 0, v15);
  }

LABEL_21:
}

- (void)enableRepairWithContext:(id)context callingClient:(id)client completion:(id)completion
{
  contextCopy = context;
  clientCopy = client;
  completionCopy = completion;
  repairDeviceMode = [contextCopy repairDeviceMode];
  v12 = sub_10017DD1C();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (repairDeviceMode == 2)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "enableRepairWithContext for trade in mode";
  }

  else if (repairDeviceMode == 1)
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "enableRepairWithContext for repairMode";
  }

  else
  {
    if (!v13)
    {
      goto LABEL_10;
    }

    *buf = 0;
    v14 = "deviceEligibleForRepairWithContext for unknown";
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
LABEL_10:

  ephemeralToken = [contextCopy ephemeralToken];

  if (ephemeralToken)
  {
    v16 = sub_10017DD1C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Got ephemeral token for repair device.", buf, 2u);
    }

    [(FMDFMIPServiceProvider *)self _enableRepairWithContext:contextCopy callingClient:clientCopy completion:completionCopy];
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100170CC8;
    v17[3] = &unk_1002CF580;
    v21 = completionCopy;
    v18 = contextCopy;
    selfCopy = self;
    v20 = clientCopy;
    [(FMDFMIPServiceProvider *)self ephemeralTokenForUserWithCompletion:v17];
  }
}

- (void)_enableRepairWithContext:(id)context callingClient:(id)client completion:(id)completion
{
  contextCopy = context;
  clientCopy = client;
  completionCopy = completion;
  v10 = objc_alloc_init(FMDRepairDevice);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  selectedDevices = [contextCopy selectedDevices];
  v12 = [selectedDevices countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v50;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v50 != v15)
      {
        objc_enumerationMutation(selectedDevices);
      }

      v17 = *(*(&v49 + 1) + 8 * v16);
      v14 |= [v17 isThisDevice];
      if ([v17 isThisDevice])
      {
        break;
      }

      if (v13 == ++v16)
      {
        v13 = [selectedDevices countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_12:
        v19 = +[ServerDeviceInfo sharedInstance];
        account = [(FMDServiceProvider *)self account];
        v21 = [v19 deviceInfoForAccount:account];

        v22 = [FMDActingRequestDecorator alloc];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_1001712F8;
        v47[3] = &unk_1002CD580;
        v23 = v21;
        v48 = v23;
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100171300;
        v46[3] = &unk_1002CD580;
        v46[4] = self;
        v24 = [(FMDActingRequestDecorator *)v22 initWithDeviceContextGenerator:&stru_1002CF5A0 deviceInfoGenerator:v47 serverContextGenerator:0 requestHeaderGenerator:v46];
        account2 = [(FMDServiceProvider *)self account];
        dsid = [account2 dsid];

        if (dsid)
        {
          v27 = [FMDRepairDeviceRequest alloc];
          account3 = [(FMDServiceProvider *)self account];
          [contextCopy ephemeralToken];
          v29 = dsid;
          v31 = v30 = v24;
          repairDeviceMode = [contextCopy repairDeviceMode];
          v33 = v27;
          v43 = v29;
          v34 = clientCopy;
          v35 = [(FMDRepairDeviceRequest *)v33 initWithDeviceIdentifier:account3 ephemeralToken:v31 dsid:v29 callingClient:clientCopy mode:repairDeviceMode];

          v24 = v30;
          [(FMDRequest *)v35 setDecorator:v30];
          [(FMDFMIPServiceProvider *)self setCompletionHandlerForRepairDeviceRequest:v35 thisDevice:v10 completion:completionCopy];
          v36 = sub_10017DD1C();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Sending request to repair device.", buf, 2u);
          }

          [(FMDServiceProvider *)self enqueueRequest:v35];
          dsid = v43;
        }

        else
        {
          v35 = [NSString stringWithFormat:@"dsid is nil"];
          v40 = kFMDErrorDomain;
          v53 = NSLocalizedFailureReasonErrorKey;
          v54 = v35;
          v41 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v42 = [NSError errorWithDomain:v40 code:5 userInfo:v41];
          completionCopy[2](completionCopy, 0, v42);

          v34 = clientCopy;
        }

        v38 = v48;
        goto LABEL_20;
      }
    }

    v18 = v17;

    v10 = v18;
    if ((v14 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

LABEL_17:
  v23 = [NSString stringWithFormat:@"Request is not for the current device"];
  v37 = kFMDErrorDomain;
  v55 = NSLocalizedFailureReasonErrorKey;
  v56 = v23;
  v38 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v39 = [NSError errorWithDomain:v37 code:0 userInfo:v38];
  completionCopy[2](completionCopy, 0, v39);

  v34 = clientCopy;
LABEL_20:
}

- (void)setCompletionHandlerForRepairDeviceRequest:(id)request thisDevice:(id)device completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100171448;
  v9[3] = &unk_1002CF5C8;
  deviceCopy = device;
  completionCopy = completion;
  v7 = deviceCopy;
  v8 = completionCopy;
  [request setCompletionHandler:v9];
}

- (void)ephemeralTokenForUserWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v5 isInternalBuild];

  if (isInternalBuild)
  {
    v7 = objc_alloc_init(AKAppleIDAuthenticationController);
    if (v7)
    {
      v8 = objc_alloc_init(AKAppleIDAuthenticationContext);
      v9 = v8;
      if (v8)
      {
        [v8 setIsUsernameEditable:0];
        [v9 setShouldPromptForPasswordOnly:1];
        account = [(FMDServiceProvider *)self account];
        username = [account username];
        [v9 setUsername:username];

        [v9 setDefaultButtonString:@"Default Button Text"];
        [v9 setIsEphemeral:1];
        [v9 setAuthenticationType:2];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_100171B38;
        v20[3] = &unk_1002CF5F0;
        v21 = completionCopy;
        [v7 authenticateWithContext:v9 completion:v20];
        v12 = v21;
      }

      else
      {
        v18 = sub_100002880();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authContext", buf, 2u);
        }

        v19 = [NSError alloc];
        v12 = [v19 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
        (*(completionCopy + 2))(completionCopy, 0, v12);
      }
    }

    else
    {
      v16 = sub_100002880();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to instantiate authController", buf, 2u);
      }

      v17 = [NSError alloc];
      v9 = [v17 initWithDomain:kFMDErrorDomain code:5 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, v9);
    }
  }

  else
  {
    v7 = [NSString stringWithFormat:@"Cannot find an ephemeral token, please provide one"];
    v13 = kFMDErrorDomain;
    v23 = NSLocalizedFailureReasonErrorKey;
    v24 = v7;
    v14 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v15 = [NSError errorWithDomain:v13 code:4 userInfo:v14];
    (*(completionCopy + 2))(completionCopy, 0, v15);

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)disableFMIPForPairedDeviceWithUDID:(id)d account:(id)account andCompletion:(id)completion
{
  selfCopy = self;
  dCopy = d;
  accountCopy = account;
  completionCopy = completion;
  v8 = +[NRPairedDeviceRegistry sharedInstance];
  v9 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
  v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v46;
    v15 = NRDevicePropertyIsPaired;
    v16 = NRDevicePropertyUDID;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v46 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v45 + 1) + 8 * v17);
      v19 = [v18 valueForProperty:{v15, selfCopy}];
      bOOLValue = [v19 BOOLValue];

      if (dCopy)
      {
        if (bOOLValue)
        {
          v21 = [v18 valueForProperty:v16];
          v22 = [dCopy isEqualToString:v21];

          if (v22)
          {
            break;
          }
        }
      }

      if (v13 == ++v17)
      {
        v13 = [v11 countByEnumeratingWithState:&v45 objects:v51 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v23 = v18;

    if (!v23)
    {
      goto LABEL_15;
    }

    v24 = objc_alloc_init(FMDFMIPUnregisterDeviceInfo);
    v25 = [v23 valueForProperty:v16];
    [(FMDFMIPUnregisterDeviceInfo *)v24 setUdid:v25];

    v26 = [v23 valueForProperty:NRDevicePropertySerialNumber];
    [(FMDFMIPUnregisterDeviceInfo *)v24 setSerialNumber:v26];

    v27 = [v23 valueForProperty:NRDevicePropertyProductType];
    [(FMDFMIPUnregisterDeviceInfo *)v24 setProductType:v27];

    v28 = [v23 valueForProperty:NRDevicePropertyPairingID];
    uUIDString = [v28 UUIDString];
    [(FMDFMIPUnregisterDeviceInfo *)v24 setPairingId:uUIDString];

    v30 = [FMPreferencesUtil stringForKey:@"productVersionOverride" inDomain:kFMDNotBackedUpPrefDomain];
    v32 = completionCopy;
    v31 = accountCopy;
    if (v30)
    {
      [(FMDFMIPUnregisterDeviceInfo *)v24 setProductVersion:v30];
    }

    else
    {
      v35 = [v23 valueForProperty:NRDevicePropertySystemVersion];
      [(FMDFMIPUnregisterDeviceInfo *)v24 setProductVersion:v35];
    }

    v36 = [v23 valueForProperty:NRDevicePropertySystemBuildVersion];
    [(FMDFMIPUnregisterDeviceInfo *)v24 setBuildVersion:v36];

    [(FMDFMIPUnregisterDeviceInfo *)v24 setDisableContext:5];
    v37 = [[FMDRequestFMIPUnregister alloc] initWithAccount:accountCopy device:v24 otherDevices:0];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_1001720F8;
    v41[3] = &unk_1002CF618;
    v42 = dCopy;
    v43 = selfCopy;
    v44 = completionCopy;
    [(FMDRequest *)v37 setCompletionHandler:v41];
    [(FMDServiceProvider *)selfCopy enqueueRequest:v37 account:accountCopy];

    goto LABEL_21;
  }

LABEL_11:

LABEL_15:
  v33 = sub_100002880();
  v32 = completionCopy;
  v31 = accountCopy;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_10022A308();
  }

  if (completionCopy)
  {
    v34 = kFMDErrorDomain;
    v49 = NSLocalizedFailureReasonErrorKey;
    v50 = @"No paired device with this UDID";
    v23 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v24 = [NSError errorWithDomain:v34 code:1 userInfo:v23];
    (*(completionCopy + 2))(completionCopy, v24);
LABEL_21:
  }
}

- (void)unregisterDeviceWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(FMDFMIPUnregisterDeviceInfo);
  v5 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v5 deviceUDID];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setUdid:deviceUDID];

  v7 = +[FMDSystemConfig sharedInstance];
  internationalMobileEquipmentIdentity = [v7 internationalMobileEquipmentIdentity];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setImei:internationalMobileEquipmentIdentity];

  v9 = +[FMDSystemConfig sharedInstance];
  internationalMobileEquipmentIdentityTwo = [v9 internationalMobileEquipmentIdentityTwo];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setImei2:internationalMobileEquipmentIdentityTwo];

  v11 = +[FMDSystemConfig sharedInstance];
  mobileEquipmentIdentifier = [v11 mobileEquipmentIdentifier];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setMeid:mobileEquipmentIdentifier];

  v13 = +[FMDSystemConfig sharedInstance];
  serialNumber = [v13 serialNumber];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setSerialNumber:serialNumber];

  v15 = +[FMDSystemConfig sharedInstance];
  productType = [v15 productType];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setProductType:productType];

  v17 = +[FMDSystemConfig sharedInstance];
  productVersion = [v17 productVersion];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setProductVersion:productVersion];

  v19 = +[FMDSystemConfig sharedInstance];
  buildVersion = [v19 buildVersion];
  [(FMDFMIPUnregisterDeviceInfo *)v4 setBuildVersion:buildVersion];

  account = [(FMDServiceProvider *)self account];
  v51 = v4;
  -[FMDFMIPUnregisterDeviceInfo setDisableContext:](v4, "setDisableContext:", [account fmipDisableContext]);

  v22 = +[NSMutableArray array];
  v23 = [FMDCompanionRegistryFactory companionRegistryWithDelegate:0];
  allAccessories = [v23 allAccessories];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v25 = allAccessories;
  v26 = [v25 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v57;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v57 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v56 + 1) + 8 * i);
        v31 = objc_alloc_init(FMDFMIPUnregisterDeviceInfo);
        udid = [v30 udid];
        [(FMDFMIPUnregisterDeviceInfo *)v31 setUdid:udid];

        serialNumber2 = [v30 serialNumber];
        [(FMDFMIPUnregisterDeviceInfo *)v31 setSerialNumber:serialNumber2];

        productType2 = [v30 productType];
        [(FMDFMIPUnregisterDeviceInfo *)v31 setProductType:productType2];

        productVersion2 = [v30 productVersion];
        [(FMDFMIPUnregisterDeviceInfo *)v31 setProductVersion:productVersion2];

        buildVersion2 = [v30 buildVersion];
        [(FMDFMIPUnregisterDeviceInfo *)v31 setBuildVersion:buildVersion2];

        -[FMDFMIPUnregisterDeviceInfo setPaired:](v31, "setPaired:", [v30 paired]);
        -[FMDFMIPUnregisterDeviceInfo setMigrationConfirmed:](v31, "setMigrationConfirmed:", [v30 migrationPossible]);
        account2 = [(FMDServiceProvider *)self account];
        -[FMDFMIPUnregisterDeviceInfo setDisableContext:](v31, "setDisableContext:", [account2 fmipDisableContext]);

        pairingId = [v30 pairingId];
        uUIDString = [pairingId UUIDString];
        [(FMDFMIPUnregisterDeviceInfo *)v31 setPairingId:uUIDString];

        [v22 addObject:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v27);
  }

  account3 = [(FMDServiceProvider *)self account];
  v41 = [FMDRequestFMIPUnregister alloc];
  account4 = [(FMDServiceProvider *)self account];
  v43 = [(FMDRequestFMIPUnregister *)v41 initWithAccount:account4 device:v51 otherDevices:v22];

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100172DE8;
  v52[3] = &unk_1002CF618;
  v44 = account3;
  v53 = v44;
  selfCopy = self;
  v45 = completionCopy;
  v55 = v45;
  [(FMDRequest *)v43 setCompletionHandler:v52];
  unregisterState = [v44 unregisterState];
  [v44 setUnregisterState:4];
  accountStore = [(FMDFMIPServiceProvider *)self accountStore];
  [accountStore saveAccount:v44];

  if (![(FMDServiceProvider *)self enqueueRequest:v43])
  {
    [v44 setUnregisterState:unregisterState];
    accountStore2 = [(FMDFMIPServiceProvider *)self accountStore];
    [accountStore2 saveAccount:v44];

    if (v45)
    {
      v49 = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.fmipunregister" code:2 userInfo:0];
      (*(v45 + 2))(v45, v49);
    }
  }
}

- (void)markPairedDeviceWithUdid:(id)udid asMissingUsingToken:(id)token withCompletion:(id)completion
{
  udidCopy = udid;
  tokenCopy = token;
  completionCopy = completion;
  v8 = +[NRPairedDeviceRegistry sharedInstance];
  v9 = +[NRPairedDeviceRegistry pairedDevicesSelectorBlock];
  v10 = [v8 getAllDevicesWithArchivedAltAccountDevicesMatching:v9];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v44;
    v15 = NRDevicePropertyIsPaired;
    v16 = NRDevicePropertyUDID;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v44 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v43 + 1) + 8 * v17);
      v19 = [v18 valueForProperty:v15];
      bOOLValue = [v19 BOOLValue];

      if (udidCopy)
      {
        if (bOOLValue)
        {
          v21 = [v18 valueForProperty:v16];
          v22 = [udidCopy isEqualToString:v21];

          if (v22)
          {
            break;
          }
        }
      }

      if (v13 == ++v17)
      {
        v13 = [v11 countByEnumeratingWithState:&v43 objects:v49 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    v23 = v18;

    if (!v23)
    {
      goto LABEL_15;
    }

    v24 = objc_alloc_init(FMDFMIPMissingDeviceInfo);
    v25 = [v23 valueForProperty:v16];
    [(FMDFMIPMissingDeviceInfo *)v24 setUdid:v25];

    v26 = [v23 valueForProperty:NRDevicePropertySerialNumber];
    [(FMDFMIPMissingDeviceInfo *)v24 setSerialNumber:v26];

    v27 = [v23 valueForProperty:NRDevicePropertyProductType];
    [(FMDFMIPMissingDeviceInfo *)v24 setProductType:v27];

    v28 = [FMPreferencesUtil stringForKey:@"productVersionOverride" inDomain:kFMDNotBackedUpPrefDomain];
    v29 = tokenCopy;
    if (v28)
    {
      [(FMDFMIPMissingDeviceInfo *)v24 setProductVersion:v28];
    }

    else
    {
      v33 = [v23 valueForProperty:NRDevicePropertySystemVersion];
      [(FMDFMIPMissingDeviceInfo *)v24 setProductVersion:v33];
    }

    v34 = [v23 valueForProperty:NRDevicePropertySystemBuildVersion];
    [(FMDFMIPMissingDeviceInfo *)v24 setBuildVersion:v34];

    v35 = [FMDRequestMissingDevice alloc];
    account = [(FMDServiceProvider *)self account];
    v37 = [(FMDRequestMissingDevice *)v35 initWithAccount:account token:tokenCopy andMissingDeviceInfo:v24];

    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_100173D3C;
    v41[3] = &unk_1002CF668;
    v41[4] = self;
    v31 = completionCopy;
    v42 = completionCopy;
    [(FMDRequest *)v37 setCompletionHandler:v41];
    [(FMDServiceProvider *)self enqueueRequest:v37];

    goto LABEL_21;
  }

LABEL_11:

LABEL_15:
  v30 = sub_100002880();
  v31 = completionCopy;
  v29 = tokenCopy;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_10022A308();
  }

  if (completionCopy)
  {
    v32 = kFMDErrorDomain;
    v47 = NSLocalizedFailureReasonErrorKey;
    v48 = @"No paired device with this UDID";
    v23 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v24 = [NSError errorWithDomain:v32 code:1 userInfo:v23];
    (*(completionCopy + 2))(completionCopy, v24);
LABEL_21:
  }
}

- (void)_showUnregisterDeviceErrorForResponseError:(int64_t)error inContext:(unint64_t)context
{
  v16 = objc_alloc_init(FMAlert);
  [v16 setCategory:1];
  v6 = [LocalizedUnregisterErrorKey alloc];
  v7 = +[FMDSystemConfig sharedInstance];
  v8 = -[LocalizedUnregisterErrorKey initWithUnregisterError:context:deviceClass:](v6, "initWithUnregisterError:context:deviceClass:", error, context, [v7 deviceClass]);

  titleKey = [(LocalizedUnregisterErrorKey *)v8 titleKey];
  textKey = [(LocalizedUnregisterErrorKey *)v8 textKey];
  okButtonKey = [(LocalizedUnregisterErrorKey *)v8 okButtonKey];
  v12 = sub_100151958(titleKey);
  [v16 setMsgTitle:v12];

  v13 = sub_100151958(textKey);
  [v16 setMsgText:v13];

  v14 = sub_100151958(okButtonKey);
  [v16 setDefaultButtonTitle:v14];

  [v16 setShowMsgInLockScreen:1];
  [v16 setDismissMsgOnUnlock:0];
  [v16 setDismissMsgOnLock:1];
  v15 = +[FMAlertManager sharedInstance];
  [v15 activateAlert:v16];
}

- (void)_showMarkAsMissingErrorForResponseError:(int64_t)error
{
  v12 = objc_alloc_init(FMAlert);
  [v12 setCategory:1];
  v4 = [[LocalizedUnregisterErrorKey alloc] initWithUnregisterError:error context:6 deviceClass:8];
  titleKey = [(LocalizedUnregisterErrorKey *)v4 titleKey];
  textKey = [(LocalizedUnregisterErrorKey *)v4 textKey];
  okButtonKey = [(LocalizedUnregisterErrorKey *)v4 okButtonKey];
  v8 = sub_100151958(titleKey);
  [v12 setMsgTitle:v8];

  v9 = sub_100151958(textKey);
  [v12 setMsgText:v9];

  v10 = sub_100151958(okButtonKey);
  [v12 setDefaultButtonTitle:v10];

  [v12 setShowMsgInLockScreen:1];
  [v12 setDismissMsgOnUnlock:0];
  [v12 setDismissMsgOnLock:1];
  v11 = +[FMAlertManager sharedInstance];
  [v11 activateAlert:v12];
}

- (void)_showPairedDeviceDisableFMIPErrorForResponseError:(int64_t)error
{
  v12 = objc_alloc_init(FMAlert);
  [v12 setCategory:1];
  v4 = [[LocalizedUnregisterErrorKey alloc] initWithUnregisterError:error context:5 deviceClass:8];
  titleKey = [(LocalizedUnregisterErrorKey *)v4 titleKey];
  textKey = [(LocalizedUnregisterErrorKey *)v4 textKey];
  okButtonKey = [(LocalizedUnregisterErrorKey *)v4 okButtonKey];
  v8 = sub_100151958(titleKey);
  [v12 setMsgTitle:v8];

  v9 = sub_100151958(textKey);
  [v12 setMsgText:v9];

  v10 = sub_100151958(okButtonKey);
  [v12 setDefaultButtonTitle:v10];

  [v12 setShowMsgInLockScreen:1];
  [v12 setDismissMsgOnUnlock:0];
  [v12 setDismissMsgOnLock:1];
  v11 = +[FMAlertManager sharedInstance];
  [v11 activateAlert:v12];
}

- (void)didReceiveAuthFailureForRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = FMDFMIPServiceProvider;
  requestCopy = request;
  [(FMDServiceProvider *)&v6 didReceiveAuthFailureForRequest:requestCopy];
  showAuthFailedMessage = [requestCopy showAuthFailedMessage];

  if (showAuthFailedMessage)
  {
    v5 = +[FMDAppleAccountManager sharedInstance];
    [v5 fixFMIPAuthTokenShouldForce:0];
  }
}

- (unint64_t)fmipState
{
  account = [(FMDServiceProvider *)self account];
  dsid = [account dsid];

  if (dsid && (v4 = [account unregisterState], v4 <= 5))
  {
    v5 = qword_1002586D8[v4];
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (void)setPendingSecureMessage:(id)message
{
  objc_storeStrong(&self->_pendingSecureMessage, message);

  [(FMDFMIPServiceProvider *)self _updateToHomescreenAlerts];
}

- (void)setPendingLocateAlert:(id)alert
{
  objc_storeStrong(&self->_pendingLocateAlert, alert);

  [(FMDFMIPServiceProvider *)self _updateToHomescreenAlerts];
}

- (void)_updateToHomescreenAlerts
{
  objc_initWeak(&location, self);
  device_unlock_actions_queue = [(FMDFMIPServiceProvider *)self device_unlock_actions_queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017485C;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(device_unlock_actions_queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_showPendingHomescreenAlertNow
{
  objc_initWeak(&location, self);
  device_unlock_actions_queue = [(FMDFMIPServiceProvider *)self device_unlock_actions_queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100174A58;
  v4[3] = &unk_1002CD518;
  objc_copyWeak(&v5, &location);
  dispatch_async(device_unlock_actions_queue, v4);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_checkForBuddyCompletionAndReinitialize:(BOOL)reinitialize withBuddyStatus:(BOOL)status
{
  statusCopy = status;
  v7 = sub_100002880();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = statusCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Buddy complete? : %d", buf, 8u);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100174C90;
  v8[3] = &unk_1002CF6B8;
  v9 = statusCopy;
  v8[4] = self;
  reinitializeCopy = reinitialize;
  dispatch_async(&_dispatch_main_q, v8);
}

- (void)syncFMIPStateToWatch
{
  v3 = sub_100002880();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Checking for changes in FMIP State to sync to the Watch...", buf, 2u);
  }

  v4 = +[FMDSystemConfig sharedInstance];
  allowsActivationLock = [v4 allowsActivationLock];

  account = [(FMDServiceProvider *)self account];
  dsid = [account dsid];

  fmipState = [(FMDFMIPServiceProvider *)self fmipState];
  account2 = [(FMDServiceProvider *)self account];
  accountAddTime = [account2 accountAddTime];
  [accountAddTime timeIntervalSinceReferenceDate];
  v11 = [NSNumber numberWithDouble:?];

  account3 = [(FMDServiceProvider *)self account];
  lowBatteryLocateEnabled = [account3 lowBatteryLocateEnabled];

  v64 = dsid;
  if (fmipState > 2)
  {
    v15 = v11;
    v86 = @"Enabled";
    v87 = &__kCFBooleanFalse;
    v16 = &v87;
    v17 = &v86;
    v18 = 1;
  }

  else
  {
    v14 = &__kCFBooleanTrue;
    v88[0] = @"Enabled";
    v88[1] = @"AccountId";
    v89[0] = &__kCFBooleanTrue;
    v89[1] = dsid;
    v88[2] = @"AccountAddTime";
    v88[3] = @"LowBatteryLocateEnabled";
    if (!lowBatteryLocateEnabled)
    {
      v14 = &__kCFBooleanFalse;
    }

    v15 = v11;
    v89[2] = v11;
    v89[3] = v14;
    v16 = v89;
    v17 = v88;
    v18 = 4;
  }

  v19 = [NSDictionary dictionaryWithObjects:v16 forKeys:v17 count:v18];
  v20 = +[NSMutableSet set];
  [FMPreferencesUtil synchronizeDomain:kFMDWatchNotBackedUpPrefDomain];
  v21 = [FMPreferencesUtil objectForKey:@"FMIPInfo" inDomain:kFMDWatchNotBackedUpPrefDomain];
  v63 = [FMPreferencesUtil objectForKey:@"ActivationLockAllowed" inDomain:kFMDWatchNotBackedUpPrefDomain];
  v60 = v21;
  if (([v21 isEqual:v19] & 1) == 0)
  {
    [v20 addObject:@"FMIPInfo"];
  }

  if (allowsActivationLock != [v63 BOOLValue])
  {
    [v20 addObject:@"ActivationLockAllowed"];
  }

  v62 = v20;
  v69 = v19;
  v61 = v15;
  if ([v20 count])
  {
    v22 = +[NSDate date];
    [v22 timeIntervalSinceReferenceDate];
    v23 = [NSNumber numberWithDouble:?];

    v24 = sub_100002880();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v69 objectForKeyedSubscript:@"Enabled"];
      bOOLValue = [v25 BOOLValue];
      *buf = 134218754;
      v79 = bOOLValue;
      v80 = 2112;
      v81 = dsid;
      v82 = 2048;
      v83 = allowsActivationLock;
      v84 = 2112;
      v85 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Updating watch with fmipEnabled:%ld, fmipAccount:%@, activationLockAllowed:%ld, lastUpdated:%@...", buf, 0x2Au);
    }

    [v62 addObject:@"LastUpdated"];
    [FMPreferencesUtil setObject:v23 forKey:@"LastUpdated" inDomain:kFMDWatchNotBackedUpPrefDomain];
    [FMPreferencesUtil setObject:v69 forKey:@"FMIPInfo" inDomain:kFMDWatchNotBackedUpPrefDomain];
    [FMPreferencesUtil setBool:allowsActivationLock forKey:@"ActivationLockAllowed" inDomain:kFMDWatchNotBackedUpPrefDomain];
    v27 = objc_alloc_init(NPSManager);
    [v27 synchronizeUserDefaultsDomain:kFMDWatchNotBackedUpPrefDomain keys:v62];
  }

  else
  {
    v23 = sub_100002880();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "No changes in FMIP state. Nothing to be synced to the Watch", buf, 2u);
    }
  }

  v28 = +[NRPairedDeviceRegistry sharedInstance];
  getPairedDevices = [v28 getPairedDevices];

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v30 = getPairedDevices;
  v31 = [v30 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v73;
    v71 = NRDevicePropertyIsPaired;
    v70 = NRDevicePropertySystemVersion;
    v65 = NRDevicePropertyLocalPairingDataStorePath;
    v66 = NRDevicePropertyPairingID;
    v67 = *v73;
    v68 = v30;
    do
    {
      for (i = 0; i != v32; i = i + 1)
      {
        if (*v73 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v72 + 1) + 8 * i);
        v36 = [v35 valueForProperty:v71];
        bOOLValue2 = [v36 BOOLValue];

        if (bOOLValue2)
        {
          v38 = [v35 valueForProperty:v70];
          v39 = NRRawVersionFromString();

          v40 = sub_100002880();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218240;
            v79 = HIWORD(v39);
            v80 = 2048;
            v81 = 3;
            _os_log_debug_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "Comparing paired version %ld to %ld", buf, 0x16u);
          }

          if (HIWORD(v39) <= 2u)
          {
            v41 = @"ShowFMWUpgradeAlert";
            if (@"ShowFMWUpgradeAlert")
            {
              v42 = v41;
              v43 = [v35 valueForProperty:v66];
              v44 = sub_100002880();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v79 = v43;
                v80 = 2112;
                v81 = @"ShowFMWUpgradeAlert";
                _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Found old paired device with pairing ID %@. Checking if upgrade alert state needs to be synced for %@...", buf, 0x16u);
              }

              v45 = [v35 valueForProperty:v65];
              v46 = [NPSDomainAccessor alloc];
              v47 = [v46 initWithDomain:kFMDWatchNotBackedUpPrefDomain pairingID:v43 pairingDataStore:v45];
              synchronize = [v47 synchronize];
              v49 = [v47 BOOLForKey:v42];
              v50 = [v69 objectForKeyedSubscript:@"Enabled"];
              bOOLValue3 = [v50 BOOLValue];

              v52 = sub_100002880();
              v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
              if (v49 == bOOLValue3)
              {
                if (v53)
                {
                  v59 = @"Don't Show";
                  if (bOOLValue3)
                  {
                    v59 = @"Show";
                  }

                  *buf = 138412290;
                  v79 = v59;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Upgrade alert state is already in sync : '%@'", buf, 0xCu);
                }
              }

              else
              {
                if (v53)
                {
                  *buf = 138412546;
                  v54 = @"Don't Show";
                  if (bOOLValue3)
                  {
                    v54 = @"Show";
                  }

                  v79 = @"ShowFMWUpgradeAlert";
                  v80 = 2112;
                  v81 = v54;
                  _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Syncing %@ upgrade alert state : '%@'", buf, 0x16u);
                }

                [v47 setBool:bOOLValue3 forKey:v42];
                synchronize2 = [v47 synchronize];
                v52 = objc_opt_new();
                v56 = kFMDWatchNotBackedUpPrefDomain;
                v76 = v42;
                v57 = [NSArray arrayWithObjects:&v76 count:1];
                v58 = [NSSet setWithArray:v57];
                [v52 synchronizeNanoDomain:v56 keys:v58];
              }

              v33 = v67;

              v30 = v68;
            }
          }
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v32);
  }
}

- (void)addAccount:(id)account
{
  v4.receiver = self;
  v4.super_class = FMDFMIPServiceProvider;
  [(FMDServiceProvider *)&v4 updateAccount:account];
  v3 = +[FMDCoreFollowUpManager sharedInstance];
  [v3 clearTheftAndLossCFU];
}

- (void)synchronizeLocalActivationLockState
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001758DC;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_enqueueIdentityOperation:(id)operation
{
  operationCopy = operation;
  fm_logID = [(FMDFMIPServiceProvider *)self fm_logID];
  v6 = [NSString stringWithFormat:@"identityOperation-%@", fm_logID];

  v7 = +[FMXPCTransactionManager sharedInstance];
  [v7 beginTransaction:v6];

  identity_wait_queue = [(FMDFMIPServiceProvider *)self identity_wait_queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100175AD8;
  block[3] = &unk_1002CD8B0;
  v12 = v6;
  v13 = operationCopy;
  v9 = v6;
  v10 = operationCopy;
  dispatch_async(identity_wait_queue, block);
}

- (BOOL)_canSendDeviceIdentityNow
{
  if (![FMPreferencesUtil BOOLForKey:@"MustBackgroundSettings" inDomain:kFMDNotBackedUpPrefDomain])
  {
    return 1;
  }

  v2 = objc_alloc_init(BKSApplicationStateMonitor);
  v3 = [v2 applicationStateForApplication:@"com.apple.Preferences"];
  [v2 invalidate];
  v4 = v3 != 8;
  v5 = sub_100002880();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10022A42C(v3 != 8, v5);
  }

  return v4;
}

- (void)sendDeviceIdentityIfEligibleWithIdentityInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100175CE0;
  v6[3] = &unk_1002CD288;
  objc_copyWeak(&v8, &location);
  v5 = infoCopy;
  v7 = v5;
  [(FMDFMIPServiceProvider *)self _enqueueIdentityOperation:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_serialQueue_sendDeviceIdentityIfEligibleWithIdentityInfo:(id)info
{
  infoCopy = info;
  if ([(FMDFMIPServiceProvider *)self isMonitoringPendingDeviceIdentity])
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v6 = "Already monitoring for the right time to send a deviceIdentity request.";
      v7 = &v13;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v8 = +[FMDSystemConfig sharedInstance];
  allowsActivationLock = [v8 allowsActivationLock];

  if ((allowsActivationLock & 1) == 0)
  {
    v5 = sub_100002880();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Not sending a deviceIdentity request because activation lock is not allowed.";
      v7 = buf;
      goto LABEL_9;
    }

LABEL_10:

    goto LABEL_11;
  }

  if ([(FMDFMIPServiceProvider *)self _canSendDeviceIdentityNow])
  {
    [(FMDFMIPServiceProvider *)self _sendDeviceIdentityNowWithIdentityInfo:infoCopy];
  }

  else
  {
    v10 = sub_100002880();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Cannot send a deviceIdentity request now. Will wait for the right moment", v11, 2u);
    }

    [(FMDFMIPServiceProvider *)self monitorAndSendDeviceIdentityLaterWithIdentityInfo:infoCopy];
  }

LABEL_11:
}

- (void)monitorAndSendDeviceIdentityLaterWithIdentityInfo:(id)info
{
  infoCopy = info;
  v5 = [NSString stringWithFormat:@"DeviceIdentityPending-%lX", self];
  [(FMDFMIPServiceProvider *)self setDeviceIdentityPendingXpcTransactionName:v5];

  v6 = +[FMXPCTransactionManager sharedInstance];
  deviceIdentityPendingXpcTransactionName = [(FMDFMIPServiceProvider *)self deviceIdentityPendingXpcTransactionName];
  [v6 beginTransaction:deviceIdentityPendingXpcTransactionName];

  [(FMDFMIPServiceProvider *)self setIsMonitoringPendingDeviceIdentity:1];
  v8 = [BKSApplicationStateMonitor alloc];
  v9 = [v8 initWithBundleIDs:&off_1002E88E8 states:BKSApplicationStateAll];
  [(FMDFMIPServiceProvider *)self setPendingDeviceIdentityMonitor:v9];

  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100176024;
  v12[3] = &unk_1002CF6E0;
  objc_copyWeak(&v14, &location);
  v10 = infoCopy;
  v13 = v10;
  pendingDeviceIdentityMonitor = [(FMDFMIPServiceProvider *)self pendingDeviceIdentityMonitor];
  [pendingDeviceIdentityMonitor setHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)stopMonitoringPendingDeviceIdentity
{
  if ([(FMDFMIPServiceProvider *)self isMonitoringPendingDeviceIdentity])
  {
    pendingDeviceIdentityMonitor = [(FMDFMIPServiceProvider *)self pendingDeviceIdentityMonitor];

    if (pendingDeviceIdentityMonitor)
    {
      pendingDeviceIdentityMonitor2 = [(FMDFMIPServiceProvider *)self pendingDeviceIdentityMonitor];
      [pendingDeviceIdentityMonitor2 invalidate];

      pendingDeviceIdentityMonitor3 = [(FMDFMIPServiceProvider *)self pendingDeviceIdentityMonitor];
      [pendingDeviceIdentityMonitor3 setHandler:0];

      [(FMDFMIPServiceProvider *)self setPendingDeviceIdentityMonitor:0];
    }

    [(FMDFMIPServiceProvider *)self setIsMonitoringPendingDeviceIdentity:0];
  }
}

- (void)checkAndSendPendingDeviceIdentityWithIdentityInfo:(id)info
{
  infoCopy = info;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017627C;
  v6[3] = &unk_1002CD288;
  objc_copyWeak(&v8, &location);
  v5 = infoCopy;
  v7 = v5;
  [(FMDFMIPServiceProvider *)self _enqueueIdentityOperation:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_serialQueue_checkAndSendPendingDeviceIdentityWithIdentityInfo:(id)info
{
  infoCopy = info;
  _canSendDeviceIdentityNow = [(FMDFMIPServiceProvider *)self _canSendDeviceIdentityNow];
  if ([(FMDFMIPServiceProvider *)self isMonitoringPendingDeviceIdentity]&& _canSendDeviceIdentityNow)
  {
    [(FMDFMIPServiceProvider *)self stopMonitoringPendingDeviceIdentity];
    v6 = +[FMDSystemConfig sharedInstance];
    allowsActivationLock = [v6 allowsActivationLock];

    if (allowsActivationLock)
    {
      [(FMDFMIPServiceProvider *)self _sendDeviceIdentityNowWithIdentityInfo:infoCopy];
    }

    else
    {
      v12 = sub_100002880();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Not sending a deviceIdentity request because activation lock is not allowed.", &v15, 2u);
      }
    }

    v13 = +[FMXPCTransactionManager sharedInstance];
    deviceIdentityPendingXpcTransactionName = [(FMDFMIPServiceProvider *)self deviceIdentityPendingXpcTransactionName];
    [v13 endTransaction:deviceIdentityPendingXpcTransactionName];

    [(FMDFMIPServiceProvider *)self setDeviceIdentityPendingXpcTransactionName:0];
  }

  else
  {
    v8 = sub_100002880();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      isMonitoringPendingDeviceIdentity = [(FMDFMIPServiceProvider *)self isMonitoringPendingDeviceIdentity];
      v10 = @"NO";
      if (isMonitoringPendingDeviceIdentity)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      if (_canSendDeviceIdentityNow)
      {
        v10 = @"YES";
      }

      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not sending a deviceIdentity request... monitoring:%@, canSend:%@", &v15, 0x16u);
    }
  }
}

- (void)_buddyCompletionCheckTimerFired:(id)fired
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Buddy completion check timer fired", v7, 2u);
  }

  v5 = +[FMDSystemConfig sharedInstance];
  isBuddyDone = [v5 isBuddyDone];

  [(FMDFMIPServiceProvider *)self _checkForBuddyCompletionAndReinitialize:1 withBuddyStatus:isBuddyDone];
}

- (void)buddyDidComplete:(id)complete
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Buddy completion notification received", v7, 2u);
  }

  v5 = +[FMDSystemConfig sharedInstance];
  isBuddyDone = [v5 isBuddyDone];

  [(FMDFMIPServiceProvider *)self _checkForBuddyCompletionAndReinitialize:1 withBuddyStatus:isBuddyDone];
}

- (void)_fmipStateChangeLocalNotification:(id)notification
{
  v4 = sub_100002880();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = 2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMIPStateChangeLocalNotification received. Will sync state to the watch after %llu seconds", buf, 0xCu);
  }

  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100176718;
  block[3] = &unk_1002CD4C8;
  block[4] = self;
  dispatch_after(v5, v6, block);
}

- (void)systemShutdownSoon:(id)soon
{
  account = [(FMDServiceProvider *)self account];
  lowBatteryLocateEnabled = [account lowBatteryLocateEnabled];

  if (lowBatteryLocateEnabled)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100176900;
    v15[3] = &unk_1002CD580;
    v15[4] = self;
    v6 = [[FMDActingRequestDecorator alloc] initWithDeviceContextGenerator:&stru_1002CF700 deviceInfoGenerator:v15 serverContextGenerator:0 requestHeaderGenerator:0];
    v7 = [QCAction alloc];
    account2 = [(FMDServiceProvider *)self account];
    serverInteractionController = [(FMDServiceProvider *)self serverInteractionController];
    v10 = [(QCAction *)v7 initWithAccount:account2 shutdownActivityPending:1 serverInteractionController:serverInteractionController];

    [(QCAction *)v10 setRequestDecorator:v6];
    v11 = +[ActionManager sharedManager];
    v12 = [v11 enqueueAction:v10];
  }

  else
  {
    v13 = sub_100002880();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received shutdown soon notification, but ignoring it since low battery locate is disabled", v14, 2u);
    }
  }
}

- (void)_deviceDidPair:(id)pair
{
  [(FMDFMIPServiceProvider *)self syncFMIPStateToWatch];

  [(FMDFMIPServiceProvider *)self registerDeviceWithCause:@"deviceDidPair" force:0];
}

- (void)_deviceDidUnpair:(id)unpair
{
  [(FMDFMIPServiceProvider *)self registerDeviceWithCause:@"deviceDidUnpair" force:0];
  v6 = [FMDCompanionRegistryFactory companionRegistryWithDelegate:0];
  unregisterTokenStore = [(FMDFMIPServiceProvider *)self unregisterTokenStore];
  allAccessories = [v6 allAccessories];
  [unregisterTokenStore expungeUnregisterTokens:allAccessories];
}

- (id)_unregisterDeviceErrorForResponseError:(int64_t)error inContext:(unint64_t)context
{
  if (context - 3 < 5)
  {
    goto LABEL_2;
  }

  if (context == 2)
  {
    if ((error & 0x200) != 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    if (context == 1)
    {
LABEL_2:
      v6 = 2 * ((error & 0x200) == 0);
      goto LABEL_3;
    }

    v6 = 2;
  }

LABEL_3:
  v7 = [LocalizedUnregisterErrorKey alloc];
  v8 = +[FMDSystemConfig sharedInstance];
  v9 = -[LocalizedUnregisterErrorKey initWithUnregisterError:context:deviceClass:](v7, "initWithUnregisterError:context:deviceClass:", error, context, [v8 deviceClass]);

  textKey = [(LocalizedUnregisterErrorKey *)v9 textKey];
  v11 = sub_100151958(textKey);
  v12 = FMDFMIPManagerUnregisterErrorDomain;
  v16 = NSLocalizedDescriptionKey;
  v17 = v11;
  v13 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v14 = [NSError errorWithDomain:v12 code:v6 userInfo:v13];

  return v14;
}

@end