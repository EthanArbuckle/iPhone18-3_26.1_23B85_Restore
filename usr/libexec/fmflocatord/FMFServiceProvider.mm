@interface FMFServiceProvider
+ (BOOL)_isFMFAppRestrictionSet;
- (BOOL)isProviderEnabledForLocations;
- (FMFServiceProvider)init;
- (id)_constructNonVolatileFullDeviceInfo;
- (id)_constructStandardDeviceContext;
- (id)_constructVolatileFullDeviceInfo;
- (id)connectionStringForNRDevice:(id)a3;
- (id)copyHandlerForCommand:(id)a3 params:(id)a4;
- (id)newLocationManager;
- (void)_beginXPCTransaction;
- (void)_buddyCompletionCheckTimerFired:(id)a3;
- (void)_checkForBuddyCompletion;
- (void)_endXPCTransaction;
- (void)_registerIDSServices;
- (void)_sendStartupRegister;
- (void)_triggerFence:(id)a3 atLocation:(id)a4;
- (void)accountDeactivated;
- (void)accountDidChange;
- (void)ackFencesCommand:(id)a3 withCompletion:(id)a4;
- (void)buddyDidComplete:(id)a3;
- (void)deinitializeProvider;
- (void)deregisterCommonNotifications;
- (void)didReceiveAPSMessage:(id)a3;
- (void)didReceiveAPSToken:(id)a3;
- (void)didReceiveAuthFailureForRequest:(id)a3;
- (void)fenceTriggered:(id)a3 atLocation:(id)a4;
- (void)performInitialSetup;
- (void)registerCommonNotifications;
- (void)sendTriggeredFence:(id)a3 withTriggerLocation:(id)a4;
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
    v3 = [(FindBaseServiceProvider *)self authInvalidError];
    v4 = +[APSTokenWatcher sharedInstance];
    v5 = [[FMNanoIDSManager alloc] initWithServiceId:@"com.apple.private.alloy.fmflocator" minimumVersion:4];
    [(FMFServiceProvider *)self setIdsManager:v5];
    v6 = +[SystemConfig sharedInstance];
    v7 = [v6 isBuddyDone];

    if (v7)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 removeObserver:self name:@"purplebuddy.setupdone" object:0];

      v9 = sub_100002830();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      if (v3 == 1196379972)
      {
        if (v10)
        {
          v21 = [(FMFServiceProvider *)self fm_logID];
          v22 = [(ServiceProvider *)self account];
          v23 = [v22 username];
          *buf = 138412546;
          v45 = v21;
          v46 = 2112;
          v47 = v23;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@ found account: %@", buf, 0x16u);
        }

        [(FindBaseServiceProvider *)self setAllowServerRequests:1];
        v24 = +[FMFFencesMgr sharedInstance];
        [v24 setDelegate:self];

        v25 = +[FMFLocatorDaemon sharedInstance];
        v26 = [(ServiceProvider *)self account];
        v27 = [v26 apsEnvironmentConstant];
        v28 = [v25 apsHandlerForEnvironment:v27];

        [v28 registerDelegate:self forTopic:@"com.apple.mobileme.fmf"];
        v29 = [v28 apsToken];
        LOBYTE(v25) = v29 == 0;

        if (v25)
        {
          v36 = sub_100002830();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v37 = [(FMFServiceProvider *)self fm_logID];
            *buf = 138412290;
            v45 = v37;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%@ No APS token yet", buf, 0xCu);
          }

          v38 = +[FMSystemInfo sharedInstance];
          v39 = [v38 isInternalBuild];

          if (v39)
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
          v30 = self;
          objc_sync_enter(v30);
          v31 = [v28 apsToken];
          [(FindBaseServiceProvider *)v30 setApsToken:v31];

          objc_sync_exit(v30);
          [(FMFServiceProvider *)v30 _sendStartupRegister];
        }

        [(FMFServiceProvider *)self registerCommonNotifications];
        [(FMFServiceProvider *)self _registerIDSServices];
        [(FindBaseServiceProvider *)self updateProactiveMonitorRegistration];
        [(FMFServiceProvider *)self setHasCompletedInitialSetup:1];
      }

      else if (v3 == 1481920331)
      {
        if (v10)
        {
          v11 = [(FMFServiceProvider *)self serviceName];
          v12 = [(ServiceProvider *)self account];
          v13 = [v12 username];
          v14 = sub_10000D094(1481920331);
          *buf = 138412802;
          v45 = v11;
          v46 = 2112;
          v47 = v13;
          v48 = 2112;
          v49 = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Account %@ is invalid due to '%@' - will not register at this time", buf, 0x20u);
        }

        v15 = +[FMSystemInfo sharedInstance];
        v16 = [v15 isInternalBuild];

        if (v16)
        {
          v17 = sub_100002830();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = [(FMFServiceProvider *)self serviceName];
            *buf = 138412290;
            v45 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ is not functional as authentication credentials are not available.", buf, 0xCu);
          }
        }

        [(FMFServiceProvider *)self requestAuthenticationShouldForce:1];
      }

      else
      {
        if (v10)
        {
          v32 = [(FMFServiceProvider *)self serviceName];
          v33 = [(ServiceProvider *)self account];
          v34 = [v33 username];
          v35 = sub_10000D094(v3);
          *buf = 138412802;
          v45 = v32;
          v46 = 2112;
          v47 = v34;
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
        v20 = [(FMFServiceProvider *)self serviceName];
        *buf = 138412290;
        v45 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@: Buddy is not complete yet. Waiting...", buf, 0xCu);
      }

      [(FMFServiceProvider *)self _checkForBuddyCompletion];
    }

    v41 = [(FMFServiceProvider *)self idsManager];
    [v41 start];
  }
}

- (void)_sendStartupRegister
{
  v3 = [(ServiceProvider *)self account];
  v4 = [v3 accountAddTime];
  if (v4)
  {
    v5 = v4;
    v6 = [(ServiceProvider *)self account];
    v7 = [v6 accountAddTime];
    v8 = +[FMFLocatorDaemon sharedInstance];
    v9 = [v8 startTime];
    v10 = [v7 compare:v9];

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
  v12 = [v11 isFirstRunAfterBoot];
  v13 = @"Restart";
  if (v12)
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
  v7 = [(FMFServiceProvider *)self tokenWatcherObserverToken];
  [v6 removeObserver:v7];

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
    v5 = [(FMFServiceProvider *)self fm_logID];
    *buf = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ Removing any fences that were set...", buf, 0xCu);
  }

  v6 = +[FMFFencesMgr sharedInstance];
  [v6 setFencesToMonitor:0 withFenceVersion:0 triggerValidityDuration:0 andTriggerURL:0.0];

  v7 = [(FMFServiceProvider *)self buddyWaitTimer];

  if (v7)
  {
    v8 = [(FMFServiceProvider *)self buddyWaitTimer];
    [v8 invalidate];

    [(FMFServiceProvider *)self setBuddyWaitTimer:0];
  }

  [(FMFServiceProvider *)self setWaitingForBuddy:0];
  [(FindBaseServiceProvider *)self deleteRegisterDigest];
  [RealmSupport setServerContextHeaderString:0];
  [(FindBaseServiceProvider *)self unregisterDevice];
}

- (void)accountDidChange
{
  v3 = [(ServiceProvider *)self account];
  v4 = [(FMFServiceProvider *)self hasCompletedInitialSetup];
  v5 = sub_100002830();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      v7 = [(FMFServiceProvider *)self fm_logID];
      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Sending register because account changed", &v10, 0xCu);
    }

    [(FindBaseServiceProvider *)self registerDeviceWithCause:@"AccountChange"];
  }

  else
  {
    if (v6)
    {
      v8 = [(FMFServiceProvider *)self fm_logID];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ Attempting to start this FMF provider again because account changed", &v10, 0xCu);
    }

    [(FMFServiceProvider *)self performInitialSetup];
  }

  v9 = [v3 internalAuthToken];

  if (!v9)
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
  v4 = [v3 delegate];

  if (v4 == self)
  {
    v5 = +[FMFFencesMgr sharedInstance];
    [v5 setDelegate:0];
  }

  v6 = +[FMFLocatorDaemon sharedInstance];
  v7 = [(ServiceProvider *)self account];
  v8 = [v7 apsEnvironmentConstant];
  v9 = [v6 apsHandlerForEnvironment:v8];

  [v9 deregisterDelegate:self];
}

- (id)copyHandlerForCommand:(id)a3 params:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v11 = [v8 objectForKeyedSubscript:v6];
  if (v11)
  {
    v12 = [[v11 alloc] initWithParams:v7 provider:self];
  }

  else
  {
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100036C6C(self, v6, v13);
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
    v4 = [v3 isShareMyLocationSystemServiceEnabled];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_constructStandardDeviceContext
{
  v6.receiver = self;
  v6.super_class = FMFServiceProvider;
  v2 = [(FindBaseServiceProvider *)&v6 _constructStandardDeviceContext];
  v3 = +[PreferencesMgr sharedInstance];
  v4 = [v3 bccOnFenceTrigger];

  if (v4)
  {
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"bccOnFenceTrigger"];
  }

  return v2;
}

- (id)_constructVolatileFullDeviceInfo
{
  v16.receiver = self;
  v16.super_class = FMFServiceProvider;
  v3 = [(FindBaseServiceProvider *)&v16 _constructVolatileFullDeviceInfo];
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(FindBaseServiceProvider *)v4 apsToken];
  [v3 fm_safelyMapKey:@"aps-token" toObject:v5];
  v6 = +[APSTokenWatcher sharedInstance];
  v7 = [v6 tokenList];

  if (v5 && ([v7 containsObject:v5] & 1) == 0)
  {
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100036D1C(v8);
    }

    v9 = [v7 arrayByAddingObject:v5];

    v7 = v9;
  }

  [v3 fm_safelyMapKey:@"allPushTokens" toObject:v7];

  objc_sync_exit(v4);
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[FMFServiceProvider _isFMFAppRestrictionSet]);
  [v3 setObject:v10 forKeyedSubscript:@"fmfRestrictions"];

  v11 = [(ServiceProvider *)v4 account];
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isActive]);
  [v3 setObject:v12 forKeyedSubscript:@"fmf"];

  [v3 fm_safelyMapKey:@"fmfVersion" toObject:@"526"];
  [v3 fm_safelyMapKey:@"fmfBuildVersion" toObject:@"5.0"];
  v13 = +[FMFFencesMgr sharedInstance];
  v14 = [v13 fenceVersion];
  [v3 fm_safelyMapKey:@"fenceVersion" toObject:v14];

  return v3;
}

- (id)_constructNonVolatileFullDeviceInfo
{
  v7.receiver = self;
  v7.super_class = FMFServiceProvider;
  v2 = [(FindBaseServiceProvider *)&v7 _constructNonVolatileFullDeviceInfo];
  v3 = +[SystemConfig sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isRegionMonitoringAvailable]);
  [v2 setObject:v4 forKeyedSubscript:@"fenceMonitoringCapable"];

  v5 = +[FMFConfig sharedInstance];
  LOBYTE(v3) = [v5 isFMFAllowed];

  if ((v3 & 1) == 0)
  {
    [v2 setObject:&__kCFBooleanTrue forKeyedSubscript:@"fmfBlocked"];
  }

  return v2;
}

- (id)newLocationManager
{
  v2 = [CLLocationManager alloc];
  v3 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/FMF.framework"];
  v4 = [v2 initWithEffectiveBundle:v3];

  return v4;
}

- (void)_triggerFence:(id)a3 atLocation:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = sub_100002830();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 description];
    v10 = 136315394;
    v11 = "[FMFServiceProvider _triggerFence:atLocation:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", &v10, 0x16u);
  }

  v9 = +[FMFFencesMgr sharedInstance];
  [v9 triggerFence:v6 atLocation:v5];
}

- (void)sendTriggeredFence:(id)a3 withTriggerLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = "[FMFServiceProvider sendTriggeredFence:withTriggerLocation:]";
    v28 = 1024;
    LODWORD(v29) = [v6 shouldUseIDSTrigger];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: fence.shouldUseIDSTrigger == %{BOOL}d", buf, 0x12u);
  }

  if ([v6 shouldUseIDSTrigger])
  {
    [(FMFServiceProvider *)self _triggerFence:v6 atLocation:v7];
  }

  else
  {
    v9 = [v6 triggerURL];
    v10 = sub_100026CCC([v6 lastTrigger]);
    if (!v9 || ![v9 length])
    {
      v11 = +[FMFFencesMgr sharedInstance];
      v12 = [v11 triggerURL];

      v9 = [(FindBaseServiceProvider *)self substituteStandardURLPlaceholders:v12];

      v13 = [v6 fenceId];

      if (v13)
      {
        v14 = [v6 fenceId];
        v15 = [v9 stringByReplacingOccurrencesOfString:@"${fenceId}" withString:v14];

        v9 = v15;
      }

      if (v10)
      {
        v16 = [v9 stringByReplacingOccurrencesOfString:@"${triggerAction}" withString:v10];

        v9 = v16;
      }
    }

    v17 = [NSURL URLWithString:v9];
    v18 = sub_100002830();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(FMFServiceProvider *)self serviceName];
      *buf = 138412802;
      v27 = v19;
      v28 = 2080;
      v29 = "[FMFServiceProvider sendTriggeredFence:withTriggerLocation:]";
      v30 = 2112;
      v31 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@: %s: %@", buf, 0x20u);
    }

    v20 = [FMRequestFenceTrigger alloc];
    v21 = +[FMFFencesMgr sharedInstance];
    [v21 triggerValidityDuration];
    v22 = [(FMRequestFenceTrigger *)v20 initWithProvider:self triggeredLocation:v7 fence:v6 validityDuration:v17 triggerURL:?];

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

- (void)ackFencesCommand:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"ackURL"];
  if (v8)
  {
    v9 = [NSURL URLWithString:v8];
    v10 = [[FMRequestAckFences alloc] initWithProvider:self fencesCommand:v6 ackURL:v9];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10000BC90;
    v15 = &unk_10005D4C0;
    v16 = self;
    v17 = v7;
    [(FMRequest *)v10 setCompletionHandler:&v12];
    [(FindBaseServiceProvider *)self enqueueRequest:v10, v12, v13, v14, v15, v16];
  }

  else
  {
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = [(FMFServiceProvider *)self serviceName];
      *buf = 138412290;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%@: Not acking the fences command because there is no ack URL", buf, 0xCu);
    }
  }
}

- (void)didReceiveAuthFailureForRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(FMFServiceProvider *)self serviceName];
    v7 = [(ServiceProvider *)self account];
    v8 = [v7 username];
    v10 = 138412546;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ - Auth failure received for account %@", &v10, 0x16u);
  }

  v9 = [v4 showAuthFailedMessage];
  if (v9)
  {
    [(FMFServiceProvider *)self requestAuthenticationShouldForce:1];
  }
}

- (void)tryToFetchAuthToken
{
  v3 = [(ServiceProvider *)self account];
  v4 = [v3 authToken];
  v5 = [v4 length];

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
  v3 = [(FMFServiceProvider *)self idsManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000C3CC;
  v4[3] = &unk_10005D4E8;
  v4[4] = self;
  [v3 handleRequestsOfType:1 withHandler:v4];
}

- (id)connectionStringForNRDevice:(id)a3
{
  v4 = a3;
  v5 = @"unknown";
  v6 = objc_autoreleasePoolPush();
  v7 = [(FMFServiceProvider *)self idsManager];
  v8 = [v7 devices];

  v9 = +[NRPairedDeviceRegistry sharedInstance];
  v10 = [v9 deviceForNRDevice:v4 fromIDSDevices:v8];

  if (v10)
  {
    if ([v10 isNearby])
    {
      v11 = &off_10005E180;
    }

    else
    {
      v14 = [v10 isConnected];
      v11 = &off_10005E188;
      if (v14)
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
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMFServiceProvider : !match ids device %@", &v16, 0xCu);
    }

    v13 = v5;
  }

  objc_autoreleasePoolPop(v6);

  return v13;
}

- (void)didReceiveAPSMessage:(id)a3
{
  v4 = a3;
  [(FMFServiceProvider *)self _beginXPCTransaction];
  v5 = +[StartupRegisterManager sharedInstance];
  [v5 eventDidOccur:4];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"SRFMFNotificationReceived", 0, 0, 1u);
  v7 = [(FindBaseServiceProvider *)self essentialServerInfoMissingError];
  v8 = sub_100002830();
  v9 = v8;
  if (v7 == 1196379972)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100036D60(self, v4, v9);
    }

    v9 = [v4 objectForKeyedSubscript:@"serverContext"];
    v10 = [v4 objectForKeyedSubscript:@"intents"];
    [(FindBaseServiceProvider *)self sendQueueCheckRequest:v9 withReasons:v10];
    goto LABEL_7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(FMFServiceProvider *)self fm_logID];
    v10 = sub_10000D094(v7);
    v12 = 138412546;
    v13 = v11;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Ignoring APS message since some essential server info is missing = '%@'", &v12, 0x16u);

LABEL_7:
  }

  [(FMFServiceProvider *)self _endXPCTransaction];
}

- (void)didReceiveAPSToken:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(FindBaseServiceProvider *)v4 apsToken];

  [(FindBaseServiceProvider *)v4 setApsToken:v6];
  if (v5)
  {
    [(FindBaseServiceProvider *)v4 registerDeviceWithCause:@"APSTokenReceived"];
  }

  else
  {
    [(FMFServiceProvider *)v4 _sendStartupRegister];
  }

  objc_sync_exit(v4);
}

- (void)fenceTriggered:(id)a3 atLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 checkIfThisDeviceIsBeingUsedToShareLocation:v12];
}

+ (BOOL)_isFMFAppRestrictionSet
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureFindMyFriendsModificationAllowed];

  return v3 == 2;
}

- (void)_buddyCompletionCheckTimerFired:(id)a3
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Buddy completion check timer fired", v5, 2u);
  }

  [(FMFServiceProvider *)self _checkForBuddyCompletion];
}

- (void)buddyDidComplete:(id)a3
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(FMFServiceProvider *)self fm_logID];
    v6 = 138412290;
    v7 = v5;
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