@interface BTAppInteraction
+ (id)RBSTaskStateToString:(unsigned __int8)a3;
+ (id)instance;
+ (unsigned)translateRunningBoardProcessState:(id)a3 overrideForeground:(BOOL)a4;
- (BOOL)isBackgroundingSupported:(id)a3 central:(BOOL)a4;
- (BTAppInteraction)init;
- (int)pidForIdentifier:(id)a3;
- (unsigned)applicationStateForProcess:(id)a3;
- (unsigned)translateApplicationState:(unsigned int)a3;
- (void)_handleActivityContentUpdate:(id)a3;
- (void)appLaunchCallback:(__CFUserNotification *)a3 flags:(unint64_t)a4;
- (void)applicationStateChanged:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)assertionInvalidationCallback:(id)a3;
- (void)assertionTimerFired;
- (void)btControllerTapToRadar:(int)a3 reason:(id)a4 cid:(id)a5 cname:(id)a6 cvers:(id)a7;
- (void)cancelAppLaunchAlert:(id)a3;
- (void)cancelPairingAlert:(id)a3;
- (void)createAssertionForBundleID:(id)a3 duration:(unint64_t)a4 isUrgent:(BOOL)a5 withPid:(int)a6;
- (void)disableHIP;
- (void)displayAirWaveLaunchNotification:(id *)a3 forProduct:(unsigned int)a4 reason:(unsigned __int8)a5 findMySerialNumber:(id)a6;
- (void)invalidateAssertionTimer;
- (void)launchApplication:(id)a3 restoringCentrals:(id)a4 peripherals:(id)a5;
- (void)openBundle:(id)a3 options:(id)a4 attempt:(int)a5;
- (void)openTapToRadarWithAccessoryLogs:(id)a3 reason:(int)a4 pid:(unint64_t)a5;
- (void)pairingAlertCallback:(__CFUserNotification *)a3 flags:(unint64_t)a4;
- (void)powerAlertCallback:(__CFUserNotification *)a3 flags:(unint64_t)a4;
- (void)reconfigureRunningBoardProcessMonitor;
- (void)registerApplication:(id)a3 pid:(int)a4 isExtension:(BOOL)a5;
- (void)runningBoardApplicationStateChanged:(id)a3 ProcessState:(id)a4;
- (void)runningBoardProcessTerminated:(id)a3 ExitContext:(id)a4;
- (void)setCentralBackgroundingSupported:(id)a3;
- (void)setPeripheralBackgroundingSupported:(id)a3;
- (void)showAppLaunchAlert:(id)a3 device:(id)a4 type:(int)a5;
- (void)showFileRadarNotification:(id)a3 reason:(int)a4 pid:(unint64_t)a5;
- (void)showFoundAccessoryCrashAlert:(id)a3 productID:(unint64_t)a4 accessoryName:(id)a5 firmwareVersion:(id)a6;
- (void)showFoundAccessoryLogAlert:(id)a3 isCrash:(BOOL)a4 pid:(unint64_t)a5 accessoryName:(id)a6;
- (void)showPairingAlert:(id)a3 type:(int)a4 passkey:(unint64_t)a5;
- (void)showPowerAlert:(id)a3 forDenylistMode:(BOOL)a4 validateBundle:(BOOL)a5;
- (void)startAssertionTimer;
- (void)takeAssertionForProcess:(id)a3 duration:(unint64_t)a4 isUrgent:(BOOL)a5;
- (void)unregisterApplication:(id)a3;
- (void)updateApplicationAliveStatus:(id)a3 isAlive:(BOOL)a4;
- (void)updateApplicationState:(int)a3;
- (void)urgentAssertionInvalidationCallback:(id)a3;
@end

@implementation BTAppInteraction

+ (id)instance
{
  v2 = qword_100BC7D90;
  if (!qword_100BC7D90)
  {
    if (qword_100BC7D98 != -1)
    {
      sub_10087A438();
    }

    v2 = qword_100BC7D90;
  }

  v3 = v2;

  return v3;
}

- (void)reconfigureRunningBoardProcessMonitor
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005D710;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleActivityContentUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 descriptor];
  v6 = [v5 platterTargetBundleIdentifier];

  v7 = [v4 descriptor];
  v17 = [v7 activityIdentifier];

  v8 = [v4 state];
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v4 descriptor];
    v11 = [v10 isEphemeral];
    v12 = [v4 descriptor];
    v13 = [v12 isMomentary];
    v14 = [v4 descriptor];
    *buf = 138413570;
    v22 = v6;
    v23 = 2112;
    v24 = v17;
    v25 = 1024;
    v26 = v8;
    v27 = 1024;
    v28 = v11;
    v29 = 1024;
    v30 = v13;
    v31 = 1024;
    v32 = [v14 isImportant];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "LiveActivity %@ %@ new state:%d isEphemeral:%d isMomentary:%d isImportant:%d", buf, 0x2Eu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007DA030;
  block[3] = &unk_100AE25C8;
  block[4] = self;
  v19 = v6;
  v20 = v8;
  v16 = v6;
  dispatch_async(queue, block);
}

- (BTAppInteraction)init
{
  v39.receiver = self;
  v39.super_class = BTAppInteraction;
  v2 = [(BTAppInteraction *)&v39 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MobileBluetooth.AppFramework", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("com.apple.MobileBluetooth.AppFramework.loggingAlerts", 0);
    loggingQueue = v2->_loggingQueue;
    v2->_loggingQueue = v5;

    v7 = [[BKSApplicationStateMonitor alloc] initWithBundleIDs:&__NSArray0__struct states:0];
    monitor = v2->_monitor;
    v2->_monitor = v7;

    [(BKSApplicationStateMonitor *)v2->_monitor setHandler:&stru_100B0E178];
    v9 = objc_opt_new();
    uninstallObserver = v2->_uninstallObserver;
    v2->_uninstallObserver = v9;

    [(UninstallObserver *)v2->_uninstallObserver setDelegate:v2];
    v11 = objc_opt_new();
    applicationMap = v2->_applicationMap;
    v2->_applicationMap = v11;

    v13 = objc_opt_new();
    launchNotifications = v2->_launchNotifications;
    v2->_launchNotifications = v13;

    v15 = objc_opt_new();
    pairingNotifications = v2->_pairingNotifications;
    v2->_pairingNotifications = v15;

    v17 = objc_opt_new();
    processAssertions = v2->_processAssertions;
    v2->_processAssertions = v17;

    v19 = objc_opt_new();
    urgentAssertions = v2->_urgentAssertions;
    v2->_urgentAssertions = v19;

    assertionTimer = v2->_assertionTimer;
    v2->_assertionTimer = 0;

    v22 = +[NSMutableDictionary dictionary];
    pendingResurrection = v2->_pendingResurrection;
    v2->_pendingResurrection = v22;

    lastAirWaveNotificationDate = v2->_lastAirWaveNotificationDate;
    v2->_lastAirWaveNotificationDate = 0;

    runningBoardProcessMonitor = v2->_runningBoardProcessMonitor;
    v2->_runningBoardProcessMonitor = 0;

    if (objc_opt_class())
    {
      v26 = objc_opt_new();
      activityCenter = v2->_activityCenter;
      v2->_activityCenter = v26;

      v28 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Registering LiveActivity monitor", buf, 2u);
      }

      v29 = v2->_activityCenter;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1007DA790;
      v37[3] = &unk_100B0E1A0;
      v30 = v2;
      v38 = v30;
      v31 = [(ACActivityCenter *)v29 observeContentUpdatesWithHandler:v37];
      liveActivitySubscription = v30->_liveActivitySubscription;
      v30->_liveActivitySubscription = v31;

      v33 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        v34 = v30->_liveActivitySubscription;
        *buf = 138412290;
        v41 = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "liveActivitySubscription %@", buf, 0xCu);
      }
    }

    else
    {
      v35 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "ACActivityCenter is unavailable", buf, 2u);
      }
    }
  }

  return v2;
}

- (void)registerApplication:(id)a3 pid:(int)a4 isExtension:(BOOL)a5
{
  v8 = a3;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007DA8E4;
  block[3] = &unk_100B0E1F0;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(queue, block);
}

- (void)unregisterApplication:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DAD2C;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (int)pidForIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007DB168;
  block[3] = &unk_100B01230;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  LODWORD(queue) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)updateApplicationAliveStatus:(id)a3 isAlive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_applicationMap objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    [v7 setIsAlive:v4];
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10087A4C4();
    }
  }

  else if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
  {
    sub_10087A534();
  }
}

- (void)launchApplication:(id)a3 restoringCentrals:(id)a4 peripherals:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1007DB398;
  v15[3] = &unk_100AEE7D0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)openBundle:(id)a3 options:(id)a4 attempt:(int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = qword_100BCE9E0;
  if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 1024;
    v29 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Attempting To Launch Bundle: %{public}@ Options: %@ Attempt: %d", buf, 0x1Cu);
  }

  v11 = dispatch_time(0, 3000000000);
  if (a5 < 3)
  {
    v14 = v11;
    v15 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v16 = [FBSOpenApplicationOptions optionsWithDictionary:v9];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1007DBA34;
    v17[3] = &unk_100B0E240;
    v20 = v14;
    v18[0] = v8;
    v18[1] = self;
    v19 = v9;
    v21 = a5;
    [v15 openApplication:v18[0] withOptions:v16 completion:v17];

    v13 = v18;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE9E0, OS_LOG_TYPE_ERROR))
    {
      sub_10087A600();
    }

    v12 = sub_100007EE8();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1007DB9E0;
    v22[3] = &unk_100ADF820;
    v23 = v8;
    sub_10000CA94(v12, v22);
    v13 = &v23;
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DBD60;
  v7[3] = &unk_100AE0B60;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (unsigned)translateApplicationState:(unsigned int)a3
{
  if (a3 - 1 >= 8)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0x1001010108010402uLL >> (8 * (a3 - 1));
  }

  return v3 & 0x1F;
}

- (void)updateApplicationState:(int)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007DC1B4;
  v4[3] = &unk_100ADF920;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)runningBoardApplicationStateChanged:(id)a3 ProcessState:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007DC4A0;
  block[3] = &unk_100AE2550;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)runningBoardProcessTerminated:(id)a3 ExitContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "runningBoardProcessTerminated process:%@ exitContext:%@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007DD36C;
  block[3] = &unk_100AE2550;
  v13 = v6;
  v14 = self;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

+ (id)RBSTaskStateToString:(unsigned __int8)a3
{
  if (a3 > 4u)
  {
    return @"Unknown";
  }

  else
  {
    return off_100B0E678[a3];
  }
}

+ (unsigned)translateRunningBoardProcessState:(id)a3 overrideForeground:(BOOL)a4
{
  v5 = a3;
  v6 = [v5 endowmentNamespaces];
  v7 = [v6 containsObject:FBSSceneVisibilityEndowmentNamespace];

  if (![v5 taskState])
  {
    goto LABEL_11;
  }

  if ([v5 taskState] == 1)
  {
    v8 = 2;
    goto LABEL_12;
  }

  if ([v5 taskState] == 3)
  {
    v8 = 4;
    goto LABEL_12;
  }

  v9 = v7 | a4;
  if (!(([v5 taskState] != 4) | v9 & 1))
  {
    v8 = 8;
    goto LABEL_12;
  }

  if ((([v5 taskState] == 4) & v9) != 0)
  {
    v8 = 16;
    goto LABEL_12;
  }

  if ([v5 taskState] == 2)
  {
LABEL_11:
    v8 = 32;
    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087A998();
  }

  v8 = 1;
LABEL_12:

  return v8;
}

- (void)setCentralBackgroundingSupported:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DD988;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)setPeripheralBackgroundingSupported:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DDB14;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (unsigned)applicationStateForProcess:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007DDCD8;
  block[3] = &unk_100B0E350;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return queue;
}

- (void)applicationStateChanged:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DDF14;
  v7[3] = &unk_100AE0B60;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)isBackgroundingSupported:(id)a3 central:(BOOL)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1007DEE64;
  v10[3] = &unk_100B0E378;
  v10[4] = self;
  v11 = v6;
  v12 = &v14;
  v13 = a4;
  v8 = v6;
  dispatch_sync(queue, v10);
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

- (void)takeAssertionForProcess:(id)a3 duration:(unint64_t)a4 isUrgent:(BOOL)a5
{
  v8 = a3;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007DEFD4;
  v11[3] = &unk_100AE28A8;
  v11[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(queue, v11);
}

- (void)createAssertionForBundleID:(id)a3 duration:(unint64_t)a4 isUrgent:(BOOL)a5 withPid:(int)a6
{
  v6 = *&a6;
  v7 = a5;
  v10 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(NSMutableDictionary *)self->_applicationMap objectForKeyedSubscript:v10];
  if (([v11 isExtension] & 1) == 0)
  {
    if (v7)
    {
      v12 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "(EE) Creating URGENT Process Assertion", buf, 2u);
      }

      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    v14 = sub_10000C798();
    if ((*(*v14 + 368))(v14))
    {
      v15 = [[ProcessAssertion alloc] initWithPID:v6 flags:v13 reason:5 name:v10];
    }

    else
    {
      v15 = [[ProcessAssertion alloc] initWithBundleIdentifier:v10 flags:v13 reason:5 name:v10];
    }

    v16 = v15;
    if (v15 && [(ProcessAssertion *)v15 acquire])
    {
      v17 = qword_100BCE8D8;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = v10;
        v19 = [v10 UTF8String];
        *buf = 136446210;
        v31 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Acquired process assertion for application %{public}s", buf, 0xCu);
      }

      [(ProcessAssertion *)v16 setSecondsLeft:a4];
      objc_initWeak(buf, v16);
      if (v7)
      {
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1007DF758;
        v28[3] = &unk_100AEB0C0;
        v20 = &v29;
        objc_copyWeak(&v29, buf);
        [(ProcessAssertion *)v16 setInvalidationHandler:v28];
        [(NSMutableDictionary *)self->_urgentAssertions setObject:v16 forKeyedSubscript:v10];
      }

      else
      {
        v23 = _NSConcreteStackBlock;
        v24 = 3221225472;
        v25 = sub_1007DF7DC;
        v26 = &unk_100AEB0C0;
        v20 = &v27;
        objc_copyWeak(&v27, buf);
        [(ProcessAssertion *)v16 setInvalidationHandler:&v23];
        [(NSMutableDictionary *)self->_processAssertions setObject:v16 forKeyedSubscript:v10, v23, v24, v25, v26];
      }

      objc_destroyWeak(v20);
      if (([(NSMutableDictionary *)self->_processAssertions count]|| [(NSMutableDictionary *)self->_urgentAssertions count]) && !self->_assertionTimer)
      {
        [(BTAppInteraction *)self startAssertionTimer];
      }

      objc_destroyWeak(buf);
    }

    else
    {
      v21 = qword_100BCE8D8;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = v10;
        sub_10087AA88([v10 UTF8String], buf);
      }

      [(ProcessAssertion *)v16 invalidate];
    }
  }
}

- (void)urgentAssertionInvalidationCallback:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DF8F8;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)assertionInvalidationCallback:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007DFA60;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)startAssertionTimer
{
  [(BTAppInteraction *)self invalidateAssertionTimer];
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Creating Assertion Timer", buf, 2u);
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
  assertionTimer = self->_assertionTimer;
  self->_assertionTimer = v4;

  v6 = self->_assertionTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1007DFCE8;
  handler[3] = &unk_100ADF820;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v7 = self->_assertionTimer;
  v8 = dispatch_time(0, 0);
  dispatch_source_set_timer(v7, v8, 0x3B9ACA00uLL, 0);
  dispatch_resume(self->_assertionTimer);
}

- (void)invalidateAssertionTimer
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidating Assertion Timer", v6, 2u);
  }

  assertionTimer = self->_assertionTimer;
  if (assertionTimer)
  {
    dispatch_source_cancel(assertionTimer);
    v5 = self->_assertionTimer;
    self->_assertionTimer = 0;
  }
}

- (void)assertionTimerFired
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007DFDE8;
  block[3] = &unk_100ADF820;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)disableHIP
{
  [qword_100BC7DA0 timeIntervalSinceNow];
  v3 = fabs(v2);
  if (qword_100BC7DA0)
  {
    v4 = v3 < 2.0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "(EE) Disabling HIP", v8, 2u);
    }

    notify_post("com.apple.request.hipuncap");
    v6 = +[NSDate date];
    v7 = qword_100BC7DA0;
    qword_100BC7DA0 = v6;
  }
}

- (void)showPowerAlert:(id)a3 forDenylistMode:(BOOL)a4 validateBundle:(BOOL)a5
{
  v8 = a3;
  if (([v8 isEqualToString:@"com.apple.Preferences"] & 1) == 0)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007E02BC;
    block[3] = &unk_100AEF470;
    block[4] = self;
    v11 = v8;
    v12 = a5;
    v13 = a4;
    dispatch_async(queue, block);
  }
}

- (void)powerAlertCallback:(__CFUserNotification *)a3 flags:(unint64_t)a4
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1007E0930;
  v5[3] = &unk_100AE1200;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(queue, v5);
}

- (void)showAppLaunchAlert:(id)a3 device:(id)a4 type:(int)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007E0BA8;
  v13[3] = &unk_100B0E218;
  v13[4] = self;
  v14 = v8;
  v16 = a5;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)cancelAppLaunchAlert:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007E13D4;
  v7[3] = &unk_100AE0B60;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)appLaunchCallback:(__CFUserNotification *)a3 flags:(unint64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007E1568;
  block[3] = &unk_100AE0BC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)showPairingAlert:(id)a3 type:(int)a4 passkey:(unint64_t)a5
{
  v8 = a3;
  if (a4 == 5 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
  {
    sub_10087AD54();
  }

  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100042544;
  v13[4] = sub_1000426CC;
  v14 = v8;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1007E1CCC;
  v11[3] = &unk_100B0E470;
  v11[4] = self;
  v11[5] = v13;
  v12 = a4;
  v11[6] = a5;
  v10 = v8;
  dispatch_async(queue, v11);
  _Block_object_dispose(v13, 8);
}

- (void)cancelPairingAlert:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1007E2C68;
  v7[3] = &unk_100AE0B60;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)pairingAlertCallback:(__CFUserNotification *)a3 flags:(unint64_t)a4
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007E2F30;
  block[3] = &unk_100AE0BC0;
  block[4] = self;
  block[5] = a3;
  block[6] = a4;
  dispatch_async(queue, block);
}

- (void)displayAirWaveLaunchNotification:(id *)a3 forProduct:(unsigned int)a4 reason:(unsigned __int8)a5 findMySerialNumber:(id)a6
{
  v6 = a5;
  v9 = a6;
  v33 = 0;
  v10 = sub_10000C798();
  if ((*(*v10 + 456))(v10))
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "displayAirWaveLaunchNotification: Unsupported source platform. Ignoring new request";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v13 = +[LSApplicationWorkspace defaultWorkspace];
  v14 = [v13 applicationIsInstalled:@"com.apple.internal.WayFinder"];

  if ((v14 & 1) == 0)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "displayAirWaveLaunchNotification: AirWave isn't installed on this device. Ignoring new request.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (self->_isPopupInQueue)
  {
    v11 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v12 = "displayAirWaveLaunchNotification: Popup already in queue. Ignoring new request.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v15 = sub_10000E92C();
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(__p, "SuppressAllPopups");
  v16 = (*(*v15 + 72))(v15, buf, __p, &v33);
  v17 = v33;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = v16 & v17;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(*buf);
    if (v18)
    {
      goto LABEL_16;
    }
  }

  else if (v18)
  {
LABEL_16:
    v11 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v12 = "displayAirWaveLaunchNotification: Suppress all popups defaults write is set to true. Ignoring new request.";
    goto LABEL_10;
  }

  if ((a4 & 0xFFFFE000) == 0x2000)
  {
    if (self->_lastAirWaveNotificationDate)
    {
      v19 = +[NSDate now];
      v20 = +[NSCalendar currentCalendar];
      v21 = [v20 components:16 fromDate:self->_lastAirWaveNotificationDate toDate:v19 options:0];

      if ([v21 day] <= 0)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_10087B13C();
        }

        goto LABEL_11;
      }
    }

    v22 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v23 = "Invalid";
      if (v6 == 1)
      {
        v23 = "Case Issue";
      }

      *buf = 67109634;
      *&buf[4] = a4;
      if (!v6)
      {
        v23 = "Unknown";
      }

      v35 = 1024;
      v36 = v6;
      v37 = 2080;
      v38 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "displayAirWaveLaunchNotification: productID: 0x%04X, reason: %u (%s)", buf, 0x18u);
    }

    loggingQueue = self->_loggingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007E3968;
    block[3] = &unk_100B0E1F0;
    block[4] = self;
    v29 = a4;
    v30 = v6;
    v28 = v9;
    dispatch_async(loggingQueue, block);
    v25 = +[NSDate now];
    lastAirWaveNotificationDate = self->_lastAirWaveNotificationDate;
    self->_lastAirWaveNotificationDate = v25;

    goto LABEL_11;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087B0CC();
  }

LABEL_11:
}

- (void)showFoundAccessoryCrashAlert:(id)a3 productID:(unint64_t)a4 accessoryName:(id)a5 firmwareVersion:(id)a6
{
  v8 = *a3.var0;
  v10 = a5;
  v11 = a6;
  v37 = 0;
  if (self->_isPopupInQueue)
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Warning: showFoundAccessoryCrashAlert: Suppressing duplicate popup";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v14 = sub_10000E92C();
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(__p, "SuppressAllPopups");
  v15 = (*(*v14 + 72))(v14, buf, __p, &v37);
  v16 = v37;
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v17 = v15 & v16;
  if ((v36 & 0x80000000) == 0)
  {
    if (v17)
    {
      goto LABEL_8;
    }

LABEL_12:
    if ((a4 - 8194) <= 0xE && ((1 << (a4 - 2)) & 0x409B) != 0 || (a4 & 0xFFFFFFFFFFFFE000) != 0x2000)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087B178();
      }
    }

    else
    {
      v18 = [CBAccessoryLogging getProductNameFromProductID:a4];
      v19 = [NSString stringWithFormat:@"%@ Crash Detected", v18];
      v20 = sub_100438B14(@"TITLE", v19);

      if ([v11 length])
      {
        v21 = [NSString stringWithFormat:@" (FW %@)", v11];
      }

      else
      {
        v21 = &stru_100B0F9E0;
      }

      v22 = [NSString stringWithFormat:@"Do you want to retrieve the crash log from %@%@, then open Tap-to-Radar to report the crash?  Audio quality may be poor during retrieval (~30 sec).", v10, v21];
      v23 = sub_100438B14(@"CONTENT", v22);

      loggingQueue = self->_loggingQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007E42C4;
      block[3] = &unk_100B0E4D8;
      block[4] = self;
      v28 = v20;
      v29 = v23;
      v31 = v8;
      v32 = WORD2(v8);
      v30 = v10;
      v25 = v23;
      v26 = v20;
      dispatch_async(loggingQueue, block);
    }

    goto LABEL_16;
  }

  operator delete(*buf);
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_8:
  v12 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v13 = "Warning: showFoundAccessoryCrashAlert: Suppressing popup for automation";
    goto LABEL_10;
  }

LABEL_16:
}

- (void)showFoundAccessoryLogAlert:(id)a3 isCrash:(BOOL)a4 pid:(unint64_t)a5 accessoryName:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  v37 = 0;
  if ([v10 count])
  {
    v12 = sub_10000E92C();
    sub_100007E30(buf, "AccessoryLogging");
    sub_100007E30(__p, "SuppressAllPopups");
    v13 = (*(*v12 + 72))(v12, buf, __p, &v37);
    v14 = v37;
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v15 = v13 & v14;
    if (v36 < 0)
    {
      operator delete(*buf);
      if (v15)
      {
LABEL_6:
        v16 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Warning: showFoundAccessoryLogAlert: Suppressing popup for automation", buf, 2u);
        }

        goto LABEL_20;
      }
    }

    else if (v15)
    {
      goto LABEL_6;
    }

    v17 = [CBAccessoryLogging getProductNameFromProductID:a5];
    if (v8)
    {
      v18 = [NSString stringWithFormat:@"%@ Crash Detected", v17];
      v19 = sub_100438B14(@"TITLE", v18);

      [NSString stringWithFormat:@"Do you want to use Tap-to-Radar to report the failure found on %@?", v11];
    }

    else
    {
      v21 = [NSString stringWithFormat:@"%@ Log Collection Done", v17];
      v19 = sub_100438B14(@"TITLE", v21);

      [NSString stringWithFormat:@"Do you want to use Tap-to-Radar and attach the log from %@?", v11];
    }
    v20 = ;
    v22 = sub_100438B14(@"CONTENT", v20);

    if (a5)
    {
      loggingQueue = self->_loggingQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007E49B0;
      block[3] = &unk_100B0E500;
      v27 = v19;
      v28 = v22;
      v29 = self;
      v32 = v8;
      v30 = v10;
      v31 = a5;
      v24 = v22;
      v25 = v19;
      dispatch_async(loggingQueue, block);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10087B24C();
      }
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087B2BC();
  }

LABEL_20:
}

- (void)showFileRadarNotification:(id)a3 reason:(int)a4 pid:(unint64_t)a5
{
  v39 = 0;
  if (self->_isPopupInQueue)
  {
    v5 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v6 = "Warning: showFileRadarNotification: Suppressing duplicate popup";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    return;
  }

  v9 = *a3.var0;
  v11 = sub_10000E92C();
  if (((*(*v11 + 8))(v11) & 1) == 0)
  {
    v5 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v6 = "Warning: showFileRadarNotification: Suppressing popup on external build";
    goto LABEL_18;
  }

  if (qword_100B50950 != -1)
  {
    sub_10087B2F8();
  }

  if (!sub_100354C8C(off_100B50948, v9 & 0xFFFFFFFFFFFFLL))
  {
    v5 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v6 = "Warning: showFileRadarNotification: No AACP connection";
    goto LABEL_18;
  }

  v12 = sub_10000E92C();
  sub_100007E30(buf, "AccessoryLogging");
  sub_100007E30(__p, "SuppressAllPopups");
  v13 = (*(*v12 + 72))(v12, buf, __p, &v39);
  v14 = v39;
  if (v36 < 0)
  {
    operator delete(__p[0]);
  }

  v15 = v13 & v14;
  if (v38 < 0)
  {
    operator delete(*buf);
    if (v15)
    {
      goto LABEL_12;
    }
  }

  else if (v15)
  {
LABEL_12:
    v5 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v6 = "showFileRadarNotification: Suppressing popup for automation";
    goto LABEL_18;
  }

  v16 = [CBAccessoryLogging getProductNameFromProductID:a5];
  if (a4 == 5)
  {
    v21 = [NSString stringWithFormat:@"%@ In-Ear Anomaly", v16];
    v18 = sub_100438B14(@"TITLE", v21);

    v19 = [NSString stringWithFormat:@"An in-ear detection anomaly has been detected on your %@.  Would you like to file a radar?  (If you do, please keep the buds in their current state while filing.)", v16];
    v20 = sub_100438B14(@"CONTENT", v19);
    goto LABEL_25;
  }

  if (a4 == 4)
  {
    v17 = [NSString stringWithFormat:@"%@ Audio Stream Failure", v16];
    v18 = sub_100438B14(@"TITLE", v17);

    v19 = [NSString stringWithFormat:@"The audio stream to your %@ failed to properly start.  Would you like to file a radar?", v16];
    v20 = sub_100438B14(@"CONTENT", v19);
LABEL_25:
    v22 = v20;

    loggingQueue = self->_loggingQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007E4F5C;
    block[3] = &unk_100B0E528;
    block[4] = self;
    v28 = v18;
    v34 = WORD2(v9);
    v29 = v22;
    v30 = v16;
    v32 = a4;
    v33 = v9;
    v31 = a5;
    v24 = v16;
    v25 = v22;
    v26 = v18;
    dispatch_async(loggingQueue, block);

    return;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087B30C();
  }
}

- (void)openTapToRadarWithAccessoryLogs:(id)a3 reason:(int)a4 pid:(unint64_t)a5
{
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v8 setScheme:@"tap-to-radar"];
  [v8 setHost:@"new"];
  v48 = [CBAccessoryLogging getProductNameFromProductID:a5];
  if ((a4 - 2) < 4)
  {
    if ([v7 count])
    {
      [NSURLQueryItem queryItemWithName:@"AutoDiagnostics" value:@"sysdiagnose-only"];
    }

    else
    {
      [NSURLQueryItem queryItemWithName:@"ExtensionIdentifiers" value:@"com.apple.DiagnosticExtensions.BluetoothHeadset"];
    }
    v10 = ;
    [v9 addObject:v10];

    switch(a4)
    {
      case 2:
        v13 = [NSURLQueryItem queryItemWithName:@"Title" value:@"Please enter your title here"];
        [v9 addObject:v13];
        break;
      case 4:
        v20 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Serious Bug"];
        [v9 addObject:v20];

        v21 = [NSString stringWithFormat:@"[%@] A2DP Stream Start Failure: ", v48];
        v22 = [NSURLQueryItem queryItemWithName:@"Title" value:v21];
        [v9 addObject:v22];

        v23 = [NSString stringWithFormat:@"Please describe what you were doing with your %@ here", v48];
        v24 = [NSURLQueryItem queryItemWithName:@"Description" value:v23];
        [v9 addObject:v24];

        v13 = [NSURLQueryItem queryItemWithName:@"Keywords" value:@"1474196"];
        [v9 addObject:v13];
        break;
      case 5:
        v15 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Serious Bug"];
        [v9 addObject:v15];

        v16 = [NSString stringWithFormat:@"[%@] IED anomaly: ", v48];
        v17 = [NSURLQueryItem queryItemWithName:@"Title" value:v16];
        [v9 addObject:v17];

        v18 = [NSString stringWithFormat:@"Please describe the current bud state of your %@ (Are the buds in-ear, in-case, in hand, in pocket, sitting on a table, something else):\n\nPlease describe what you are doing with the buds (including body movement like exercising, or mouth movement like talking):", v48];
        v19 = [NSURLQueryItem queryItemWithName:@"Description" value:v18];
        [v9 addObject:v19];

        v13 = [NSURLQueryItem queryItemWithName:@"Keywords" value:@"1521114"];
        [v9 addObject:v13];
        break;
      default:
        goto LABEL_33;
    }

    goto LABEL_15;
  }

  if (a4 == 1)
  {
    v11 = [NSURLQueryItem queryItemWithName:@"ExtensionIdentifiers" value:@"com.apple.DiagnosticExtensions.BluetoothHeadset"];
    [v9 addObject:v11];

    v12 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Crash/Hang/Data Loss"];
    [v9 addObject:v12];

    v13 = [NSString stringWithFormat:@"%@ Crash: ", v48];
    v14 = [NSURLQueryItem queryItemWithName:@"Title" value:v13];
    [v9 addObject:v14];

LABEL_15:
    v25 = sub_10000C798();
    if ((*(*v25 + 456))(v25))
    {
      v26 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:@"1336450"];
      [v9 addObject:v26];

      v27 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:@"ULLA (New Bugs)"];
      [v9 addObject:v27];

      v28 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:@"N301 Non-UI"];
      [v9 addObject:v28];
    }

    else
    {
      if (a4 == 5)
      {
        v29 = [NSString stringWithFormat:@"%lu", [CBAccessoryLogging getComponentIDFromRadarReason:5]];
        v30 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:v29];
        [v9 addObject:v30];

        v31 = [CBAccessoryLogging getComponentNameFromRadarReason:5];
        v32 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:v31];
        [v9 addObject:v32];

        [CBAccessoryLogging getComponentVersionFromRadarReason:5];
      }

      else
      {
        v34 = [NSString stringWithFormat:@"%lu", [CBAccessoryLogging getComponentIDFromProductID:a5]];
        v35 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:v34];
        [v9 addObject:v35];

        v36 = [CBAccessoryLogging getComponentNameFromProductID:a5];
        v37 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:v36];
        [v9 addObject:v37];

        [CBAccessoryLogging getComponentVersionFromProductID:a5];
      }
      v28 = ;
      v33 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:v28];
      [v9 addObject:v33];
    }

    if ([v7 count])
    {
      v38 = objc_opt_new();
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v39 = v7;
      v40 = [v39 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v40)
      {
        v41 = *v50;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v50 != v41)
            {
              objc_enumerationMutation(v39);
            }

            [v38 appendString:*(*(&v49 + 1) + 8 * i)];
            [v38 appendString:{@", "}];
          }

          v40 = [v39 countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v40);
      }

      v43 = [NSURLQueryItem queryItemWithName:@"Attachments" value:v38];
      [v9 addObject:v43];
    }

    [v8 setQueryItems:v9];
    v44 = qword_100BCE8D8;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v8 string];
      *buf = 138543362;
      v54 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "openTapToRadarWithAccessoryLogs: Launch Tap-to-Radar, URL = %{public}@", buf, 0xCu);
    }

    v46 = +[LSApplicationWorkspace defaultWorkspace];
    v47 = [v8 URL];
    [v46 openURL:v47 configuration:0 completionHandler:&stru_100B0E548];

    goto LABEL_33;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10087B3A4();
  }

LABEL_33:
}

- (void)btControllerTapToRadar:(int)a3 reason:(id)a4 cid:(id)a5 cname:(id)a6 cvers:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  loggingQueue = self->_loggingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007E5D04;
  block[3] = &unk_100B0E590;
  v26 = a3;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(loggingQueue, block);
}

@end