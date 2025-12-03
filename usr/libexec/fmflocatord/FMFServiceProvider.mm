@interface FMFServiceProvider
+ (BOOL)_isFMFAppRestrictionSet;
- (BOOL)isProviderEnabledForLocations;
- (FMFServiceProvider)init;
- (id)_constructNonVolatileFullDeviceInfo;
- (id)_constructStandardDeviceContext;
- (id)_constructVolatileFullDeviceInfo;
- (id)connectionStringForNRDevice:(id)device;
- (id)copyHandlerForCommand:(id)command params:(id)params;
- (id)newLocationManager;
- (void)_beginXPCTransaction;
- (void)_buddyCompletionCheckTimerFired:(id)fired;
- (void)_checkForBuddyCompletion;
- (void)_endXPCTransaction;
- (void)_registerIDSServices;
- (void)_sendStartupRegister;
- (void)_triggerFence:(id)fence atLocation:(id)location;
- (void)accountDeactivated;
- (void)accountDidChange;
- (void)ackFencesCommand:(id)command withCompletion:(id)completion;
- (void)buddyDidComplete:(id)complete;
- (void)deinitializeProvider;
- (void)deregisterCommonNotifications;
- (void)didReceiveAPSMessage:(id)message;
- (void)didReceiveAPSToken:(id)token;
- (void)didReceiveAuthFailureForRequest:(id)request;
- (void)fenceTriggered:(id)triggered atLocation:(id)location;
- (void)performInitialSetup;
- (void)registerCommonNotifications;
- (void)sendTriggeredFence:(id)fence withTriggerLocation:(id)location;
- (void)start;
- (void)stop;
- (void)tryToFetchAuthToken;
@end

@implementation FMFServiceProvider

- (FMFServiceProvider)init
{
  v5.receiver = self;
  v5.super_class = FMFServiceProvider;
  v2 = [(FindBaseServiceProvider *)&v5 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(1);
    [(FMFServiceProvider *)v2 setLocationManagerSemaphore:v3];
  }

  return v2;
}

- (void)start
{
  [(FMFServiceProvider *)self performInitialSetup];
  v3.receiver = self;
  v3.super_class = FMFServiceProvider;
  [(ServiceProvider *)&v3 start];
}

- (void)performInitialSetup
{
  if (![(FMFServiceProvider *)self hasCompletedInitialSetup])
  {
    authInvalidError = [(FindBaseServiceProvider *)self authInvalidError];
    v4 = +[APSTokenWatcher sharedInstance];
    v5 = [[FMNanoIDSManager alloc] initWithServiceId:@"com.apple.private.alloy.fmflocator" minimumVersion:4];
    [(FMFServiceProvider *)self setIdsManager:v5];
    v6 = +[SystemConfig sharedInstance];
    isBuddyDone = [v6 isBuddyDone];

    if (isBuddyDone)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 removeObserver:self name:@"purplebuddy.setupdone" object:0];

      v9 = sub_100002830();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (authInvalidError == 1196379972)
      {
        if (v10)
        {
          fm_logID = [(FMFServiceProvider *)self fm_logID];
          account = [(ServiceProvider *)self account];
          username = [account username];
          *buf = 138412546;
          v45 = fm_logID;
          v46 = 2112;
          v47 = username;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ found account: %@", buf, 0x16u);
        }

        [(FindBaseServiceProvider *)self setAllowServerRequests:1];
        v24 = +[FMFFencesMgr sharedInstance];
        [v24 setDelegate:self];

        v25 = +[FMFLocatorDaemon sharedInstance];
        account2 = [(ServiceProvider *)self account];
        apsEnvironmentConstant = [account2 apsEnvironmentConstant];
        v28 = [v25 apsHandlerForEnvironment:apsEnvironmentConstant];

        [v28 registerDelegate:self forTopic:@"com.apple.mobileme.fmf"];
        apsToken = [v28 apsToken];
        LOBYTE(v25) = apsToken == 0;

        if (v25)
        {
          v36 = sub_100002830();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            fm_logID2 = [(FMFServiceProvider *)self fm_logID];
            *buf = 138412290;
            v45 = fm_logID2;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@ No APS token yet", buf, 0xCu);
          }

          v38 = +[FMSystemInfo sharedInstance];
          isInternalBuild = [v38 isInternalBuild];

          if (isInternalBuild)
          {
            objc_initWeak(buf, self);
            v40 = dispatch_time(0, 5000000000);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_10000A424;
            block[3] = &unk_10005D470;
            objc_copyWeak(&v43, buf);
            dispatch_after(v40, &_dispatch_main_q, block);
            objc_destroyWeak(&v43);
            objc_destroyWeak(buf);
          }
        }

        else
        {
          selfCopy = self;
          objc_sync_enter(selfCopy);
          apsToken2 = [v28 apsToken];
          [(FindBaseServiceProvider *)selfCopy setApsToken:apsToken2];

          objc_sync_exit(selfCopy);
          [(FMFServiceProvider *)selfCopy _sendStartupRegister];
        }

        [(FMFServiceProvider *)self registerCommonNotifications];
        [(FMFServiceProvider *)self _registerIDSServices];
        [(FindBaseServiceProvider *)self updateProactiveMonitorRegistration];
        [(FMFServiceProvider *)self setHasCompletedInitialSetup:1];
      }

      else if (authInvalidError == 1481920331)
      {
        if (v10)
        {
          serviceName = [(FMFServiceProvider *)self serviceName];
          account3 = [(ServiceProvider *)self account];
          username2 = [account3 username];
          v14 = sub_10000D094(1481920331);
          *buf = 138412802;
          v45 = serviceName;
          v46 = 2112;
          v47 = username2;
          v48 = 2112;
          v49 = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Account %@ is invalid due to '%@' - will not register at this time", buf, 0x20u);
        }

        v15 = +[FMSystemInfo sharedInstance];
        isInternalBuild2 = [v15 isInternalBuild];

        if (isInternalBuild2)
        {
          v17 = sub_100002830();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            serviceName2 = [(FMFServiceProvider *)self serviceName];
            *buf = 138412290;
            v45 = serviceName2;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ is not functional as authentication credentials are not available.", buf, 0xCu);
          }
        }

        [(FMFServiceProvider *)self requestAuthenticationShouldForce:1];
      }

      else
      {
        if (v10)
        {
          serviceName3 = [(FMFServiceProvider *)self serviceName];
          account4 = [(ServiceProvider *)self account];
          username3 = [account4 username];
          v35 = sub_10000D094(authInvalidError);
          *buf = 138412802;
          v45 = serviceName3;
          v46 = 2112;
          v47 = username3;
          v48 = 2112;
          v49 = v35;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Account %@ is invalid due to '%@' - will not register at this time", buf, 0x20u);
        }
      }
    }

    else
    {
      v19 = sub_100002830();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        serviceName4 = [(FMFServiceProvider *)self serviceName];
        *buf = 138412290;
        v45 = serviceName4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@: Buddy is not complete yet. Waiting...", buf, 0xCu);
      }

      [(FMFServiceProvider *)self _checkForBuddyCompletion];
    }

    idsManager = [(FMFServiceProvider *)self idsManager];
    [idsManager start];
  }
}

- (void)_sendStartupRegister
{
  account = [(ServiceProvider *)self account];
  accountAddTime = [account accountAddTime];
  if (accountAddTime)
  {
    v5 = accountAddTime;
    account2 = [(ServiceProvider *)self account];
    accountAddTime2 = [account2 accountAddTime];
    v8 = +[FMFLocatorDaemon sharedInstance];
    startTime = [v8 startTime];
    v10 = [accountAddTime2 compare:startTime];

    if (v10 != -1)
    {
      v14 = [NSString stringWithFormat:@"AccountAdded"];
      [(FindBaseServiceProvider *)self registerDeviceWithCause:v14];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = +[FMFLocatorDaemon sharedInstance];
  isFirstRunAfterBoot = [v11 isFirstRunAfterBoot];
  v13 = @"Restart";
  if (isFirstRunAfterBoot)
  {
    v13 = @"DeviceRestart";
  }

  v14 = v13;

  [(FindBaseServiceProvider *)self registerDeviceWithCause:v14];
LABEL_8:
}

- (void)registerCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"fmfRestrictionsChanged:" name:@"FMFRestrictionsMayHaveChangedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"pairedDevicesChanged:" name:@"nano.devicedidpair" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"pairedDevicesChanged:" name:@"nano.devicedidunpair" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"pairedDevicesChanged:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"pairedDevicesChanged:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = +[NSOperationQueue mainQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000A890;
  v12[3] = &unk_10005D288;
  v12[4] = self;
  v10 = [v8 addObserverForName:@"kAPSTokenWatcherUpdatedNotification" object:0 queue:v9 usingBlock:v12];
  [(FMFServiceProvider *)self setTokenWatcherObserverToken:v10];

  v11.receiver = self;
  v11.super_class = FMFServiceProvider;
  [(FindBaseServiceProvider *)&v11 registerCommonNotifications];
}

- (void)deregisterCommonNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"FMFRestrictionsMayHaveChangedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:@"nano.devicedidpair" object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:@"nano.devicedidunpair" object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  tokenWatcherObserverToken = [(FMFServiceProvider *)self tokenWatcherObserverToken];
  [v6 removeObserver:tokenWatcherObserverToken];

  [(FMFServiceProvider *)self setTokenWatcherObserverToken:0];
  v8.receiver = self;
  v8.super_class = FMFServiceProvider;
  [(FindBaseServiceProvider *)&v8 deregisterCommonNotifications];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = FMFServiceProvider;
  [(ServiceProvider *)&v3 stop];
  [(FindBaseServiceProvider *)self setAllowServerRequests:0];
}

- (void)accountDeactivated
{
  v9.receiver = self;
  v9.super_class = FMFServiceProvider;
  [(ServiceProvider *)&v9 accountDeactivated];
  v3 = +[StartupRegisterManager sharedInstance];
  [v3 eventDidOccur:1];

  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(FMFServiceProvider *)self fm_logID];
    *buf = 138412290;
    v11 = fm_logID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ Removing any fences that were set...", buf, 0xCu);
  }

  v6 = +[FMFFencesMgr sharedInstance];
  [v6 setFencesToMonitor:0 withFenceVersion:0 triggerValidityDuration:0 andTriggerURL:0.0];

  buddyWaitTimer = [(FMFServiceProvider *)self buddyWaitTimer];

  if (buddyWaitTimer)
  {
    buddyWaitTimer2 = [(FMFServiceProvider *)self buddyWaitTimer];
    [buddyWaitTimer2 invalidate];

    [(FMFServiceProvider *)self setBuddyWaitTimer:0];
  }

  [(FMFServiceProvider *)self setWaitingForBuddy:0];
  [(FindBaseServiceProvider *)self deleteRegisterDigest];
  [RealmSupport setServerContextHeaderString:0];
  [(FindBaseServiceProvider *)self unregisterDevice];
}

- (void)accountDidChange
{
  account = [(ServiceProvider *)self account];
  hasCompletedInitialSetup = [(FMFServiceProvider *)self hasCompletedInitialSetup];
  v5 = sub_100002830();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (hasCompletedInitialSetup)
  {
    if (v6)
    {
      fm_logID = [(FMFServiceProvider *)self fm_logID];
      v10 = 138412290;
      v11 = fm_logID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Sending register because account changed", &v10, 0xCu);
    }

    [(FindBaseServiceProvider *)self registerDeviceWithCause:@"AccountChange"];
  }

  else
  {
    if (v6)
    {
      fm_logID2 = [(FMFServiceProvider *)self fm_logID];
      v10 = 138412290;
      v11 = fm_logID2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Attempting to start this FMF provider again because account changed", &v10, 0xCu);
    }

    [(FMFServiceProvider *)self performInitialSetup];
  }

  internalAuthToken = [account internalAuthToken];

  if (!internalAuthToken)
  {
    [(FMFServiceProvider *)self requestAuthenticationShouldForce:0];
  }
}

- (void)deinitializeProvider
{
  v10.receiver = self;
  v10.super_class = FMFServiceProvider;
  [(FindBaseServiceProvider *)&v10 deinitializeProvider];
  [(FMFServiceProvider *)self deregisterCommonNotifications];
  v3 = +[FMFFencesMgr sharedInstance];
  delegate = [v3 delegate];

  if (delegate == self)
  {
    v5 = +[FMFFencesMgr sharedInstance];
    [v5 setDelegate:0];
  }

  v6 = +[FMFLocatorDaemon sharedInstance];
  account = [(ServiceProvider *)self account];
  apsEnvironmentConstant = [account apsEnvironmentConstant];
  v9 = [v6 apsHandlerForEnvironment:apsEnvironmentConstant];

  [v9 deregisterDelegate:self];
}

- (id)copyHandlerForCommand:(id)command params:(id)params
{
  commandCopy = command;
  paramsCopy = params;
  v8 = qword_100070120;
  if (!qword_100070120)
  {
    v15[0] = @"register";
    v16[0] = objc_opt_class();
    v15[1] = @"locate";
    v16[1] = objc_opt_class();
    v15[2] = @"fence";
    v16[2] = objc_opt_class();
    v9 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
    v10 = qword_100070120;
    qword_100070120 = v9;

    v8 = qword_100070120;
  }

  v11 = [v8 objectForKeyedSubscript:commandCopy];
  if (v11)
  {
    v12 = [[v11 alloc] initWithParams:paramsCopy provider:self];
  }

  else
  {
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100036C6C(self, commandCopy, v13);
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)isProviderEnabledForLocations
{
  v2 = +[SystemConfig sharedInstance];
  if ([v2 isLocationServicesEnabled])
  {
    v3 = +[SystemConfig sharedInstance];
    isShareMyLocationSystemServiceEnabled = [v3 isShareMyLocationSystemServiceEnabled];
  }

  else
  {
    isShareMyLocationSystemServiceEnabled = 0;
  }

  return isShareMyLocationSystemServiceEnabled;
}

- (id)_constructStandardDeviceContext
{
  v6.receiver = self;
  v6.super_class = FMFServiceProvider;
  _constructStandardDeviceContext = [(FindBaseServiceProvider *)&v6 _constructStandardDeviceContext];
  v3 = +[PreferencesMgr sharedInstance];
  bccOnFenceTrigger = [v3 bccOnFenceTrigger];

  if (bccOnFenceTrigger)
  {
    [_constructStandardDeviceContext setObject:&__kCFBooleanTrue forKeyedSubscript:@"bccOnFenceTrigger"];
  }

  return _constructStandardDeviceContext;
}

- (id)_constructVolatileFullDeviceInfo
{
  v16.receiver = self;
  v16.super_class = FMFServiceProvider;
  _constructVolatileFullDeviceInfo = [(FindBaseServiceProvider *)&v16 _constructVolatileFullDeviceInfo];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  apsToken = [(FindBaseServiceProvider *)selfCopy apsToken];
  [_constructVolatileFullDeviceInfo fm_safelyMapKey:@"aps-token" toObject:apsToken];
  v6 = +[APSTokenWatcher sharedInstance];
  tokenList = [v6 tokenList];

  if (apsToken && ([tokenList containsObject:apsToken] & 1) == 0)
  {
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100036D1C(v8);
    }

    v9 = [tokenList arrayByAddingObject:apsToken];

    tokenList = v9;
  }

  [_constructVolatileFullDeviceInfo fm_safelyMapKey:@"allPushTokens" toObject:tokenList];

  objc_sync_exit(selfCopy);
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[FMFServiceProvider _isFMFAppRestrictionSet]);
  [_constructVolatileFullDeviceInfo setObject:v10 forKeyedSubscript:@"fmfRestrictions"];

  account = [(ServiceProvider *)selfCopy account];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [account isActive]);
  [_constructVolatileFullDeviceInfo setObject:v12 forKeyedSubscript:@"fmf"];

  [_constructVolatileFullDeviceInfo fm_safelyMapKey:@"fmfVersion" toObject:@"526"];
  [_constructVolatileFullDeviceInfo fm_safelyMapKey:@"fmfBuildVersion" toObject:@"5.0"];
  v13 = +[FMFFencesMgr sharedInstance];
  fenceVersion = [v13 fenceVersion];
  [_constructVolatileFullDeviceInfo fm_safelyMapKey:@"fenceVersion" toObject:fenceVersion];

  return _constructVolatileFullDeviceInfo;
}

- (id)_constructNonVolatileFullDeviceInfo
{
  v7.receiver = self;
  v7.super_class = FMFServiceProvider;
  _constructNonVolatileFullDeviceInfo = [(FindBaseServiceProvider *)&v7 _constructNonVolatileFullDeviceInfo];
  v3 = +[SystemConfig sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isRegionMonitoringAvailable]);
  [_constructNonVolatileFullDeviceInfo setObject:v4 forKeyedSubscript:@"fenceMonitoringCapable"];

  v5 = +[FMFConfig sharedInstance];
  LOBYTE(v3) = [v5 isFMFAllowed];

  if ((v3 & 1) == 0)
  {
    [_constructNonVolatileFullDeviceInfo setObject:&__kCFBooleanTrue forKeyedSubscript:@"fmfBlocked"];
  }

  return _constructNonVolatileFullDeviceInfo;
}

- (id)newLocationManager
{
  v2 = [CLLocationManager alloc];
  v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FMF.framework"];
  v4 = [v2 initWithEffectiveBundle:v3];

  return v4;
}

- (void)_triggerFence:(id)fence atLocation:(id)location
{
  locationCopy = location;
  fenceCopy = fence;
  v7 = sub_100002830();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [locationCopy description];
    v10 = 136315394;
    v11 = "[FMFServiceProvider _triggerFence:atLocation:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  v9 = +[FMFFencesMgr sharedInstance];
  [v9 triggerFence:fenceCopy atLocation:locationCopy];
}

- (void)sendTriggeredFence:(id)fence withTriggerLocation:(id)location
{
  fenceCopy = fence;
  locationCopy = location;
  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[FMFServiceProvider sendTriggeredFence:withTriggerLocation:]";
    v28 = 1024;
    LODWORD(v29) = [fenceCopy shouldUseIDSTrigger];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: fence.shouldUseIDSTrigger == %{BOOL}d", buf, 0x12u);
  }

  if ([fenceCopy shouldUseIDSTrigger])
  {
    [(FMFServiceProvider *)self _triggerFence:fenceCopy atLocation:locationCopy];
  }

  else
  {
    triggerURL = [fenceCopy triggerURL];
    v10 = sub_100026CCC([fenceCopy lastTrigger]);
    if (!triggerURL || ![triggerURL length])
    {
      v11 = +[FMFFencesMgr sharedInstance];
      triggerURL2 = [v11 triggerURL];

      triggerURL = [(FindBaseServiceProvider *)self substituteStandardURLPlaceholders:triggerURL2];

      fenceId = [fenceCopy fenceId];

      if (fenceId)
      {
        fenceId2 = [fenceCopy fenceId];
        v15 = [triggerURL stringByReplacingOccurrencesOfString:@"${fenceId}" withString:fenceId2];

        triggerURL = v15;
      }

      if (v10)
      {
        v16 = [triggerURL stringByReplacingOccurrencesOfString:@"${triggerAction}" withString:v10];

        triggerURL = v16;
      }
    }

    v17 = [NSURL URLWithString:triggerURL];
    v18 = sub_100002830();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      serviceName = [(FMFServiceProvider *)self serviceName];
      *buf = 138412802;
      v27 = serviceName;
      v28 = 2080;
      v29 = "[FMFServiceProvider sendTriggeredFence:withTriggerLocation:]";
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: %s: %@", buf, 0x20u);
    }

    v20 = [FMRequestFenceTrigger alloc];
    v21 = +[FMFFencesMgr sharedInstance];
    [v21 triggerValidityDuration];
    v22 = [(FMRequestFenceTrigger *)v20 initWithProvider:self triggeredLocation:locationCopy fence:fenceCopy validityDuration:v17 triggerURL:?];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10000B928;
    v25[3] = &unk_10005D498;
    v25[4] = self;
    [(FMRequest *)v22 setCompletionHandler:v25];
    ct_green_tea_logger_create_static();
    v23 = getCTGreenTeaOsLogHandle();
    v24 = v23;
    if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Transmitting Location.", buf, 2u);
    }

    [(FindBaseServiceProvider *)self enqueueRequest:v22];
  }
}

- (void)ackFencesCommand:(id)command withCompletion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  v8 = [commandCopy objectForKeyedSubscript:@"ackURL"];
  if (v8)
  {
    v9 = [NSURL URLWithString:v8];
    v10 = [[FMRequestAckFences alloc] initWithProvider:self fencesCommand:commandCopy ackURL:v9];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000BC90;
    v15 = &unk_10005D4C0;
    selfCopy = self;
    v17 = completionCopy;
    [(FMRequest *)v10 setCompletionHandler:&v12];
    [(FindBaseServiceProvider *)self enqueueRequest:v10, v12, v13, v14, v15, selfCopy];
  }

  else
  {
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      serviceName = [(FMFServiceProvider *)self serviceName];
      *buf = 138412290;
      v19 = serviceName;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Not acking the fences command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)didReceiveAuthFailureForRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = [(FMFServiceProvider *)self serviceName];
    account = [(ServiceProvider *)self account];
    username = [account username];
    v10 = 138412546;
    v11 = serviceName;
    v12 = 2112;
    v13 = username;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ - Auth failure received for account %@", &v10, 0x16u);
  }

  showAuthFailedMessage = [requestCopy showAuthFailedMessage];
  if (showAuthFailedMessage)
  {
    [(FMFServiceProvider *)self requestAuthenticationShouldForce:1];
  }
}

- (void)tryToFetchAuthToken
{
  account = [(ServiceProvider *)self account];
  authToken = [account authToken];
  v5 = [authToken length];

  if (!v5)
  {

    [(FMFServiceProvider *)self requestAuthenticationShouldForce:0];
  }
}

- (void)_checkForBuddyCompletion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C0E4;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_registerIDSServices
{
  idsManager = [(FMFServiceProvider *)self idsManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C3CC;
  v4[3] = &unk_10005D4E8;
  v4[4] = self;
  [idsManager handleRequestsOfType:1 withHandler:v4];
}

- (id)connectionStringForNRDevice:(id)device
{
  deviceCopy = device;
  v5 = @"unknown";
  v6 = objc_autoreleasePoolPush();
  idsManager = [(FMFServiceProvider *)self idsManager];
  devices = [idsManager devices];

  v9 = +[NRPairedDeviceRegistry sharedInstance];
  v10 = [v9 deviceForNRDevice:deviceCopy fromIDSDevices:devices];

  if (v10)
  {
    if ([v10 isNearby])
    {
      v11 = &off_10005E180;
    }

    else
    {
      isConnected = [v10 isConnected];
      v11 = &off_10005E188;
      if (isConnected)
      {
        v11 = &off_10005E198;
      }
    }

    v13 = *v11;

    v12 = sub_100002830();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v10;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMFServiceProvider : match ids device %@ %@", &v16, 0x16u);
    }
  }

  else
  {
    v12 = sub_100002830();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMFServiceProvider : !match ids device %@", &v16, 0xCu);
    }

    v13 = v5;
  }

  objc_autoreleasePoolPop(v6);

  return v13;
}

- (void)didReceiveAPSMessage:(id)message
{
  messageCopy = message;
  [(FMFServiceProvider *)self _beginXPCTransaction];
  v5 = +[StartupRegisterManager sharedInstance];
  [v5 eventDidOccur:4];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SRFMFNotificationReceived", 0, 0, 1u);
  essentialServerInfoMissingError = [(FindBaseServiceProvider *)self essentialServerInfoMissingError];
  v8 = sub_100002830();
  v9 = v8;
  if (essentialServerInfoMissingError == 1196379972)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100036D60(self, messageCopy, v9);
    }

    v9 = [messageCopy objectForKeyedSubscript:@"serverContext"];
    v10 = [messageCopy objectForKeyedSubscript:@"intents"];
    [(FindBaseServiceProvider *)self sendQueueCheckRequest:v9 withReasons:v10];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    fm_logID = [(FMFServiceProvider *)self fm_logID];
    v10 = sub_10000D094(essentialServerInfoMissingError);
    v12 = 138412546;
    v13 = fm_logID;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Ignoring APS message since some essential server info is missing = '%@'", &v12, 0x16u);

LABEL_7:
  }

  [(FMFServiceProvider *)self _endXPCTransaction];
}

- (void)didReceiveAPSToken:(id)token
{
  tokenCopy = token;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  apsToken = [(FindBaseServiceProvider *)selfCopy apsToken];

  [(FindBaseServiceProvider *)selfCopy setApsToken:tokenCopy];
  if (apsToken)
  {
    [(FindBaseServiceProvider *)selfCopy registerDeviceWithCause:@"APSTokenReceived"];
  }

  else
  {
    [(FMFServiceProvider *)selfCopy _sendStartupRegister];
  }

  objc_sync_exit(selfCopy);
}

- (void)fenceTriggered:(id)triggered atLocation:(id)location
{
  triggeredCopy = triggered;
  locationCopy = location;
  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[FMFServiceProvider fenceTriggered:atLocation:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: checking if this device is being used to share location", buf, 0xCu);
  }

  v9 = +[FMFFencesMgr sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000CB2C;
  v12[3] = &unk_10005D510;
  v12[4] = self;
  v13 = triggeredCopy;
  v14 = locationCopy;
  v10 = locationCopy;
  v11 = triggeredCopy;
  [v9 checkIfThisDeviceIsBeingUsedToShareLocation:v12];
}

+ (BOOL)_isFMFAppRestrictionSet
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureFindMyFriendsModificationAllowed];

  return v3 == 2;
}

- (void)_buddyCompletionCheckTimerFired:(id)fired
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Buddy completion check timer fired", v5, 2u);
  }

  [(FMFServiceProvider *)self _checkForBuddyCompletion];
}

- (void)buddyDidComplete:(id)complete
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    fm_logID = [(FMFServiceProvider *)self fm_logID];
    v6 = 138412290;
    v7 = fm_logID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ Buddy completion notification received", &v6, 0xCu);
  }

  [(FMFServiceProvider *)self _checkForBuddyCompletion];
}

- (void)_beginXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 beginTransaction:v6];
}

- (void)_endXPCTransaction
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = [NSString stringWithFormat:@"%@-%X", v4, self];

  v5 = +[FMXPCTransactionManager sharedInstance];
  [v5 endTransaction:v6];
}

@end