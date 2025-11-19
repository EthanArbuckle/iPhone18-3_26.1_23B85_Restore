@interface WCDSystemMonitor
+ (id)sharedSystemMonitor;
- (BOOL)isAltAccount;
- (BOOL)retrySetupInitialStateIfNeeded;
- (BOOL)watchConnectivityServiceAvailable;
- (NSString)deviceInformation;
- (NSString)state;
- (WCDSystemMonitor)init;
- (_CDComplications)duetComplications;
- (id)applicationStateStringForState:(unsigned int)a3;
- (id)dataContainerURLForApplicationInfo:(id)a3;
- (id)loadInstalledWatchApps;
- (id)newSerialOperationQueue;
- (id)notifyObserversQueued:(SEL)a3 completion:(id)a4;
- (id)pairingIDForBTUUID:(id)a3;
- (void)addObserver:(id)a3;
- (void)applicationWorkspace:(id)a3 didUpdateRunningIndependentlyWatchApps:(id)a4;
- (void)applicationWorkspace:(id)a3 didUpdateStandaloneWatchApps:(id)a4;
- (void)applicationWorkspace:(id)a3 didUpdateiOSApplicationsContainingComplications:(id)a4;
- (void)applicationWorkspace:(id)a3 didUpdateiOSApplicationsContainingWatchApp:(id)a4;
- (void)applicationWorkspace:(id)a3 didUpdateiOSApplicationsWithWatchAppInstalled:(id)a4;
- (void)copyVoucher;
- (void)createDuetComplications;
- (void)handleActiveComplicationsChanged;
- (void)handleApplicationStateChange:(id)a3;
- (void)handleCompanionApplicationsChanged:(id)a3;
- (void)handleDeviceBecameActiveNotification:(id)a3;
- (void)handleDeviceBecameInactiveNotification:(id)a3;
- (void)handleInstalledApplicationsChanged;
- (void)handlePairingChangedNotification:(id)a3;
- (void)handleRemainingComplicationUserInfoTransfersReset;
- (void)handleSwitchStartedByIDS;
- (void)handleWatchAppUIStatesChanged:(id)a3 error:(id)a4;
- (void)notifyObservers:(SEL)a3;
- (void)onqueue_handleSwitch;
- (void)onqueue_retrievedInstalledAppsList:(id)a3;
- (void)onqueue_switchIfReady;
- (void)releaseVoucher;
- (void)removeObserver:(id)a3;
- (void)resetInitialState;
- (void)retryInstalledAppsUpdate;
- (void)saveInstalledWatchApps:(id)a3;
- (void)setActiveDeviceConnected:(BOOL)a3;
- (void)setIOSApplicationsContainingActiveComplications:(id)a3;
- (void)setIsPaired:(BOOL)a3 pairingID:(id)a4 pairedDeviceInformation:(id)a5 pairedDevicesPairingIDs:(id)a6;
- (void)setRemoteFirstUnlocked:(BOOL)a3;
- (void)setUpApplicationStateMonitor;
- (void)setUpInitialState;
- (void)startMonitoringBundleID:(id)a3;
- (void)stopMonitoringBundleID:(id)a3;
- (void)subscribeToAllNotifications;
@end

@implementation WCDSystemMonitor

+ (id)sharedSystemMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D764;
  block[3] = &unk_100048E08;
  block[4] = a1;
  if (qword_100054CE0 != -1)
  {
    dispatch_once(&qword_100054CE0, block);
  }

  v2 = qword_100054CD8;

  return v2;
}

- (WCDSystemMonitor)init
{
  v18.receiver = self;
  v18.super_class = WCDSystemMonitor;
  v2 = [(WCDSystemMonitor *)&v18 init];
  if (v2)
  {
    v3 = wc_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(WCDSystemMonitor *)v2 deviceInformation];
      *buf = 138543362;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device Information: %{public}@", buf, 0xCu);
    }

    v5 = [(WCDSystemMonitor *)v2 newSerialOperationQueue];
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v5;

    v7 = [(WCDSystemMonitor *)v2 newSerialOperationQueue];
    notifyOperationQueue = v2->_notifyOperationQueue;
    v2->_notifyOperationQueue = v7;

    v9 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v9;

    v11 = objc_alloc_init(WCDApplicationWorkspace);
    applicationWorkspace = v2->_applicationWorkspace;
    v2->_applicationWorkspace = v11;

    [(WCDApplicationWorkspace *)v2->_applicationWorkspace setDelegate:v2];
    v13 = objc_opt_new();
    monitor = v2->_monitor;
    v2->_monitor = v13;

    v15 = [NSMutableDictionary dictionaryWithDictionary:&off_10004AC28];
    monitoredBundleIDs = v2->_monitoredBundleIDs;
    v2->_monitoredBundleIDs = v15;

    [(WCDSystemMonitor *)v2 resetInitialState];
    [(WCDSystemMonitor *)v2 subscribeToAllNotifications];
    [(WCDSystemMonitor *)v2 setUpInitialState];
    [(WCDSystemMonitor *)v2 setUpApplicationStateMonitor];
    [(WCDSystemMonitor *)v2 startMonitoringWatchAppUIStates];
    [(WCDSystemMonitor *)v2 createDuetComplications];
  }

  return v2;
}

- (id)newSerialOperationQueue
{
  v2 = objc_opt_new();
  [v2 setMaxConcurrentOperationCount:1];
  [v2 setQualityOfService:17];
  return v2;
}

- (void)retryInstalledAppsUpdate
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[WCDSystemMonitor retryInstalledAppsUpdate]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s Updating installed apps list for request", &v4, 0xCu);
  }

  [(WCDSystemMonitor *)self copyVoucher];
  [(WCDSystemMonitor *)self handleInstalledApplicationsChanged];
}

- (BOOL)retrySetupInitialStateIfNeeded
{
  if (!self->_initialSetUpFailed || self->_initialSetUpComplete)
  {
    return 0;
  }

  v4 = wc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[WCDSystemMonitor retrySetupInitialStateIfNeeded]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s Retrying initial setup", &v5, 0xCu);
  }

  [(WCDSystemMonitor *)self setUpInitialState];
  return 1;
}

- (void)setUpInitialState
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v16 = "[WCDSystemMonitor setUpInitialState]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v4 = [[WCDRetrieveInitialStateOperation alloc] initWithDelegate:self];
  [(WCDRetrieveInitialStateOperation *)v4 setQueuePriority:8];
  objc_initWeak(buf, v4);
  objc_initWeak(&location, self);
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10001DD14;
  v10 = &unk_100049208;
  objc_copyWeak(&v12, buf);
  v11 = self;
  objc_copyWeak(&v13, &location);
  [(WCDRetrieveInitialStateOperation *)v4 setCompletionBlock:&v7];
  v5 = [(WCDSystemMonitor *)self operationQueue:v7];
  [v5 addOperation:v4];

  v6 = [(WCDSystemMonitor *)self operationQueue];
  [v6 setSuspended:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (void)resetInitialState
{
  v3 = [(WCDSystemMonitor *)self operationQueue];
  [v3 setSuspended:1];

  v4 = [(WCDSystemMonitor *)self notifyOperationQueue];
  [v4 setSuspended:1];

  v5 = [(WCDSystemMonitor *)self operationQueue];
  [v5 cancelAllOperations];

  v6 = [(WCDSystemMonitor *)self notifyOperationQueue];
  [v6 cancelAllOperations];

  self->_initialSetUpComplete = 0;
  self->_initialSetUpFailed = 0;
  self->_isPaired = 0;
  pairingID = self->_pairingID;
  self->_pairingID = 0;

  pairedDeviceInformation = self->_pairedDeviceInformation;
  self->_pairedDeviceInformation = 0;

  pairedDevicesPairingIDs = self->_pairedDevicesPairingIDs;
  self->_pairedDevicesPairingIDs = 0;

  v10 = +[NSSet set];
  [(WCDApplicationWorkspace *)self->_applicationWorkspace setValidApplications:v10];
}

- (void)setUpApplicationStateMonitor
{
  objc_initWeak(&location, self);
  monitor = self->_monitor;
  v4 = [(WCDSystemMonitor *)self monitoredBundleIDs];
  v5 = [v4 allKeys];
  [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:v5];

  v6 = self->_monitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001E0F4;
  v7[3] = &unk_100049230;
  objc_copyWeak(&v8, &location);
  [(BKSApplicationStateMonitor *)v6 setHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (NSString)state
{
  v3 = objc_opt_class();
  v30 = NSStringFromClass(v3);
  NSAppendPrintF();
  v4 = 0;

  NSAppendPrintF();
  v5 = v4;

  if ([(WCDSystemMonitor *)self initialSetUpComplete])
  {
    v6 = "YES";
  }

  else
  {
    v6 = "NO";
  }

  v31 = v6;
  NSAppendPrintF();
  v7 = v5;

  v32 = [(WCDSystemMonitor *)self deviceInformation];
  NSAppendPrintF();
  v8 = v7;

  if ([(WCDSystemMonitor *)self isPaired])
  {
    v9 = "YES";
  }

  else
  {
    v9 = "NO";
  }

  [(WCDSystemMonitor *)self pairingID];
  v40 = v33 = v9;
  NSAppendPrintF();
  v10 = v8;

  v34 = [(WCDSystemMonitor *)self pairedDeviceInformation:v33];
  NSAppendPrintF();
  v11 = v10;

  if ([(WCDSystemMonitor *)self activeDeviceConnected])
  {
    v12 = "YES";
  }

  else
  {
    v12 = "NO";
  }

  v35 = v12;
  NSAppendPrintF();
  v13 = v11;

  if ([(WCDSystemMonitor *)self remoteFirstUnlocked])
  {
    v14 = "YES";
  }

  else
  {
    v14 = "NO";
  }

  v36 = v14;
  NSAppendPrintF();
  v15 = v13;

  v16 = [(WCDSystemMonitor *)self operationQueue];
  v17 = [(WCDSystemMonitor *)self operationQueue];
  v18 = [v17 operations];
  v41 = WCCompactStringFromCollection();
  NSAppendPrintF();
  v19 = v15;

  v37 = [(WCDSystemMonitor *)self observers:v16];
  NSAppendPrintF();
  v20 = v19;

  v21 = [(WCDSystemMonitor *)self monitor];
  v22 = [(WCDSystemMonitor *)self monitoredBundleIDs];
  v42 = WCCompactStringFromCollection();
  NSAppendPrintF();
  v23 = v20;

  v24 = [(WCDSystemMonitor *)self applicationWorkspace:v21];
  v38 = [v24 debugDescription];
  NSAppendPrintF();
  v25 = v23;

  v26 = [(WCDSystemMonitor *)self iOSApplicationsContainingActiveComplications];
  NSAppendPrintF();
  v27 = v25;

  duetComplications = self->_duetComplications;
  NSAppendPrintF();
  v28 = v27;

  return v27;
}

- (NSString)deviceInformation
{
  v3 = &MKBDeviceUnlockedSinceBoot_ptr;
  if (!self->_deviceInformation)
  {
    v34[0] = @"BuildVersion";
    v34[1] = @"IsSimulator";
    v34[2] = @"marketing-name";
    v34[3] = @"ProductName";
    v34[4] = @"ProductType";
    v34[5] = @"ProductVersion";
    v34[6] = @"ReleaseType";
    [NSArray arrayWithObjects:v34 count:7];
    v4 = MGCopyMultipleAnswers();
    v5 = [v4 objectForKeyedSubscript:@"IsSimulator"];
    v6 = [v5 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"ReleaseType"];
    v8 = v7;
    v9 = @"Production";
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;
    v32 = v10;

    v11 = @"Simulator";
    if (!v6)
    {
      v11 = v10;
    }

    v12 = v11;
    v31 = [v4 objectForKeyedSubscript:@"marketing-name"];
    v13 = [v4 objectForKeyedSubscript:@"ProductType"];
    v14 = [NSString stringWithFormat:@"%@ (%@)", v31, v13];
    v15 = [v4 objectForKeyedSubscript:@"ProductName"];
    v16 = [v4 objectForKeyedSubscript:@"ProductVersion"];
    v17 = [v4 objectForKeyedSubscript:@"BuildVersion"];
    v18 = [NSString stringWithFormat:@"%@ %@ (%@)", v15, v16, v17];
    v19 = [NSString stringWithFormat:@"%@: %@, %@, ", v12, v14, v18];

    deviceInformation = self->_deviceInformation;
    self->_deviceInformation = v19;

    v3 = &MKBDeviceUnlockedSinceBoot_ptr;
  }

  v33[0] = @"BatteryCurrentCapacity";
  v33[1] = @"BatteryIsCharging";
  [NSArray arrayWithObjects:v33 count:2];
  v21 = MGCopyMultipleAnswers();
  v22 = [v21 objectForKeyedSubscript:@"BatteryIsCharging"];
  v23 = [v22 BOOLValue];

  v24 = @"not charging";
  if (v23)
  {
    v24 = @"charging";
  }

  v25 = v24;
  v26 = [v21 objectForKeyedSubscript:@"BatteryCurrentCapacity"];
  v27 = [v26 integerValue];

  v28 = [v3[207] stringWithFormat:@"%d%% (%@)", v27, v25];

  v29 = [(NSString *)self->_deviceInformation stringByAppendingString:v28];

  return v29;
}

- (BOOL)isAltAccount
{
  v3 = [(WCDSystemMonitor *)self altAccountCache];

  if (!v3)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
    v7 = [v6 firstObject];

    v8 = [v7 valueForProperty:NRDevicePropertyIsAltAccount];
    v9 = [v8 BOOLValue];

    v10 = [NSNumber numberWithBool:v9];
    [(WCDSystemMonitor *)self setAltAccountCache:v10];
  }

  v11 = [(WCDSystemMonitor *)self altAccountCache];
  v12 = [v11 BOOLValue];

  return v12;
}

- (void)subscribeToAllNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handlePairingChangedNotification:" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];
  [v3 addObserver:self selector:"handlePairingChangedNotification:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];
  [v3 addObserver:self selector:"handleDeviceBecameInactiveNotification:" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];
  [v3 addObserver:self selector:"handleDeviceBecameActiveNotification:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];
  objc_initWeak(location, self);
  out_token = 0;
  v4 = [ACXApplicationsUpdatedDarwinNotification UTF8String];
  v5 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001EE60;
  handler[3] = &unk_100048A70;
  objc_copyWeak(&v19, location);
  notify_register_dispatch(v4, &out_token, &_dispatch_main_q, handler);

  v6 = [SPActiveComplicationsDarwinNotificaton UTF8String];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001EEA0;
  v16[3] = &unk_100048A70;
  objc_copyWeak(&v17, location);
  notify_register_dispatch(v6, &out_token, &_dispatch_main_q, v16);

  v7 = [CLKActiveComplicationsFromActiveWatchChangedNotification UTF8String];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001EEE0;
  v14[3] = &unk_100048A70;
  objc_copyWeak(&v15, location);
  notify_register_dispatch(v7, &out_token, &_dispatch_main_q, v14);

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v8 = qword_100054CE8;
  v26 = qword_100054CE8;
  if (!qword_100054CE8)
  {
    location[1] = _NSConcreteStackBlock;
    location[2] = 3221225472;
    location[3] = sub_100022144;
    location[4] = &unk_100049370;
    v22 = &v23;
    v9 = sub_100022194();
    v10 = dlsym(v9, "kComplicationPushLimitsResetNotification");
    *(v22[1] + 24) = v10;
    qword_100054CE8 = *(v22[1] + 24);
    v8 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (v8)
  {
    v11 = *v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001EF20;
    v12[3] = &unk_100048A70;
    objc_copyWeak(&v13, location);
    notify_register_dispatch(v11, &out_token, &_dispatch_main_q, v12);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    dlerror();
    abort_report_np();
    __break(1u);
  }
}

- (void)handlePairingChangedNotification:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v7 = [v4 name];
  v8 = [v7 isEqual:NRPairedDeviceRegistryDeviceDidPairNotification];

  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F1E8;
    block[3] = &unk_100048A48;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v9 = [WCDRetrievePairedListOperation alloc];
    v10 = [(WCDSystemMonitor *)self operationQueue];
    v11 = [(WCDAsyncOperation *)v9 initWithDelegate:self queue:v10];

    objc_initWeak(buf, v11);
    objc_initWeak(&location, self);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001F1F0;
    v13[3] = &unk_100049258;
    objc_copyWeak(&v14, buf);
    objc_copyWeak(&v15, &location);
    v13[4] = self;
    [(WCDRetrievePairedListOperation *)v11 setCompletionBlock:v13];
    v12 = [(WCDSystemMonitor *)self operationQueue];
    [v12 addOperation:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

- (void)handleCompanionApplicationsChanged:(id)a3
{
  v4 = wc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Installed apps on companion have changed", v5, 2u);
  }

  [(WCDSystemMonitor *)self handleInstalledApplicationsChanged];
}

- (void)handleInstalledApplicationsChanged
{
  if (![(WCDSystemMonitor *)self retrySetupInitialStateIfNeeded])
  {
    objc_initWeak(&location, self);
    v3 = [WCDRetrieveInstalledAppsListOperation alloc];
    v4 = [(WCDSystemMonitor *)self operationQueue];
    v5 = [(WCDAsyncOperation *)v3 initWithDelegate:self queue:v4];

    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10001F49C;
    v10 = &unk_100048B78;
    objc_copyWeak(&v11, &location);
    [(WCDRetrieveInstalledAppsListOperation *)v5 setCompletionBlock:&v7];
    [(WCDRetrieveInstalledAppsListOperation *)v5 setQualityOfService:-1, v7, v8, v9, v10];
    v6 = [(WCDSystemMonitor *)self operationQueue];
    [v6 addOperation:v5];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)handleActiveComplicationsChanged
{
  if (![(WCDSystemMonitor *)self retrySetupInitialStateIfNeeded])
  {
    v3 = [WCDRetrieveActiveComplicationsOperation alloc];
    v4 = [(WCDSystemMonitor *)self operationQueue];
    v6 = [(WCDAsyncOperation *)v3 initWithDelegate:self queue:v4];

    v5 = [(WCDSystemMonitor *)self operationQueue];
    [v5 addOperation:v6];
  }
}

- (void)handleRemainingComplicationUserInfoTransfersReset
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[WCDSystemMonitor handleRemainingComplicationUserInfoTransfersReset]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  v4 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverRemainingComplicationUserInfoTransfersReset"];
}

- (void)handleDeviceBecameInactiveNotification:(id)a3
{
  v4 = a3;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v11 = "[WCDSystemMonitor handleDeviceBecameInactiveNotification:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F77C;
  v7[3] = &unk_100048AE8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)handleDeviceBecameActiveNotification:(id)a3
{
  v4 = wc_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v7 = "[WCDSystemMonitor handleDeviceBecameActiveNotification:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F9AC;
  block[3] = &unk_100048A48;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleSwitchStartedByIDS
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v6 = "[WCDSystemMonitor handleSwitchStartedByIDS]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FAB8;
  block[3] = &unk_100048A48;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)onqueue_switchIfReady
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136446210;
    v18 = "[WCDSystemMonitor onqueue_switchIfReady]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v17, 0xCu);
  }

  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 getActivePairedDevice];

  v6 = [v5 pairingID];
  v7 = [v6 UUIDString];

  v8 = [(WCDSystemMonitor *)self pairingID];
  if (!v8)
  {
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handling switch with nil pairing ID", &v17, 2u);
    }
  }

  if ([v8 isEqualToString:v7])
  {
    v10 = wc_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Pairing ID already set to active paired device (current %@, active %@)", &v17, 0x16u);
    }
  }

  else
  {
    v11 = +[WatchConnectivityDaemon sharedDaemon];
    v10 = [v11 activeIDSDevice];

    v12 = +[NRPairedDeviceRegistry sharedInstance];
    v13 = [v12 deviceForIDSDevice:v10];

    if (v13)
    {
      v14 = [v13 pairingID];
      v15 = [v14 UUIDString];

      if (([v15 isEqualToString:v7]& 1) != 0)
      {
        [(WCDSystemMonitor *)self onqueue_handleSwitch];
      }

      else
      {
        v16 = wc_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = v7;
          v19 = 2112;
          v20 = v15;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDS and NR devices don't match (NR %@, IDS %@)", &v17, 0x16u);
        }
      }
    }

    else
    {
      v15 = wc_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No matching NRDevice for active IDS device", &v17, 2u);
      }
    }
  }
}

- (void)onqueue_handleSwitch
{
  v3 = wc_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[WCDSystemMonitor onqueue_handleSwitch]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }

  [(WCDSystemMonitor *)self resetInitialState];
  [(WCDSystemMonitor *)self notifyObservers:"systemObserverActiveDeviceSwitchStarted"];
  [(WCDSystemMonitor *)self setUpInitialState];
}

- (void)onqueue_retrievedInstalledAppsList:(id)a3
{
  v4 = a3;
  v5 = [(WCDSystemMonitor *)self applicationWorkspace];
  [v5 setValidApplications:v4];
}

- (void)applicationWorkspace:(id)a3 didUpdateStandaloneWatchApps:(id)a4
{
  v4 = [a4 bs_map:&stru_100049278];
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "standaloneWatchApps: %{public}@", &v6, 0xCu);
  }
}

- (void)applicationWorkspace:(id)a3 didUpdateRunningIndependentlyWatchApps:(id)a4
{
  v5 = [a4 bs_map:&stru_100049298];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "runningIndependentlyWatchApps: %{public}@", &v8, 0xCu);
  }

  v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverRunningIndependentlyWatchApps"];
}

- (void)applicationWorkspace:(id)a3 didUpdateiOSApplicationsContainingWatchApp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 bs_map:&stru_1000492B8];
  v9 = wc_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "iOSApplicationsContainingWatchApp: %{public}@", buf, 0xCu);
  }

  self->_notifyingOfInstalledAppsChange = 1;
  objc_initWeak(buf, self);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100020254;
  v11[3] = &unk_100048BA0;
  v11[4] = self;
  objc_copyWeak(&v12, buf);
  v10 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverInstalledApplicationsChanged" completion:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (void)applicationWorkspace:(id)a3 didUpdateiOSApplicationsWithWatchAppInstalled:(id)a4
{
  v5 = [a4 bs_map:&stru_1000492D8];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iOSApplicationsWithWatchAppInstalled: %{public}@", &v10, 0xCu);
  }

  v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverWatchAppsInstalledChanged"];
  v8 = [(WCDSystemMonitor *)self loadInstalledWatchApps];
  if ([v5 isEqual:v8])
  {
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Installed watch app list didn't change from stored list", &v10, 2u);
    }
  }

  else
  {
    [(WCDSystemMonitor *)self notifyObservers:"systemObserverUpdatingInstalledApps"];
    [(WCDSystemMonitor *)self saveInstalledWatchApps:v5];
  }
}

- (void)applicationWorkspace:(id)a3 didUpdateiOSApplicationsContainingComplications:(id)a4
{
  v5 = [a4 bs_map:&stru_1000492F8];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iOSApplicationsContainingComplications: %{public}@", &v8, 0xCu);
  }

  v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverComplicationsInstalledChanged"];
}

- (void)setIOSApplicationsContainingActiveComplications:(id)a3
{
  v5 = a3;
  if (([(NSSet *)self->_iOSApplicationsContainingActiveComplications isEqual:v5]& 1) == 0)
  {
    v6 = wc_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
    }

    objc_storeStrong(&self->_iOSApplicationsContainingActiveComplications, a3);
    v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverActiveComplicationsChanged"];
  }
}

- (void)setActiveDeviceConnected:(BOOL)a3
{
  if (self->_activeDeviceConnected != a3)
  {
    v3 = a3;
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      if (v3)
      {
        v6 = "YES";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
    }

    self->_activeDeviceConnected = v3;
    v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverActiveDeviceConnectedChanged"];
  }
}

- (void)setIsPaired:(BOOL)a3 pairingID:(id)a4 pairedDeviceInformation:(id)a5 pairedDevicesPairingIDs:(id)a6
{
  v8 = a4;
  v9 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v11;
    v16 = v8;
    v17 = a6;
    if (v9)
    {
      v18 = "YES";
    }

    else
    {
      v18 = "NO";
    }

    WCCompactStringFromCollection();
    v19 = v23 = v13;
    *buf = 136315906;
    v25 = v18;
    a6 = v17;
    v8 = v16;
    v11 = v15;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = v19;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "isPaired: %s, pairingID: %{public}@, pairedDevicesPairingIDs: %{public}@, pairedDeviceInformation: '%{public}@'", buf, 0x2Au);

    v13 = v23;
  }

  if (([(NSString *)self->_pairedDeviceInformation isEqual:v12]& 1) == 0)
  {
    objc_storeStrong(&self->_pairedDeviceInformation, a5);
  }

  isPaired = self->_isPaired;
  if (isPaired != v9)
  {
    self->_isPaired = v9;
  }

  if ([(NSString *)self->_pairingID isEqual:v11])
  {
    p_pairedDevicesPairingIDs = &self->_pairedDevicesPairingIDs;
    if (([(NSSet *)self->_pairedDevicesPairingIDs isEqual:v13]& 1) != 0)
    {
      if (isPaired == v9)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_storeStrong(&self->_pairingID, v8);
  p_pairedDevicesPairingIDs = &self->_pairedDevicesPairingIDs;
  if (([(NSSet *)self->_pairedDevicesPairingIDs isEqual:v13]& 1) == 0)
  {
LABEL_15:
    objc_storeStrong(p_pairedDevicesPairingIDs, a6);
  }

LABEL_16:
  v22 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverPairedListChanged"];
LABEL_17:
}

- (void)setRemoteFirstUnlocked:(BOOL)a3
{
  if (self->_remoteFirstUnlocked != a3)
  {
    self->_remoteFirstUnlocked = a3;
    v5 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverRemoteFirstUnlockedChanged", v3, v4];
  }
}

- (BOOL)watchConnectivityServiceAvailable
{
  v2 = [(WCDSystemMonitor *)self pairingID];
  v3 = v2 != 0;

  return v3;
}

- (void)handleApplicationStateChange:(id)a3
{
  v19 = a3;
  v4 = [v19 objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
  v5 = [v19 objectForKeyedSubscript:BKSApplicationStateKey];
  v6 = [v5 unsignedIntegerValue];

  v7 = self;
  objc_sync_enter(v7);
  v8 = [(WCDSystemMonitor *)v7 observers];
  v9 = [v8 allObjects];

  objc_sync_exit(v7);
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(WCDSystemMonitor *)v7 applicationStateStringForState:v6];
    *buf = 136315394;
    v26 = [v11 UTF8String];
    v27 = 2114;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s for bundleID: %{public}@", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        if (v6 == 1)
        {
          v18 = *(*(&v20 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 systemObserverAppDidTerminateForBundleID:v4];
          }
        }

        else if (v6 == 2)
        {
          v17 = *(*(&v20 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 systemObserverAppDidSuspendForBundleID:v4];
          }
        }

        if (objc_opt_respondsToSelector())
        {
          [v16 systemObserverProcessStateChangedForBundleID:v4];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }
}

- (void)startMonitoringBundleID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    objc_sync_enter(v5);
    v6 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    v7 = [v6 objectForKeyedSubscript:v4];

    v8 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    if (v7)
    {
      v9 = [v8 objectForKeyedSubscript:v4];
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 integerValue] + 1);
      v11 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      [v11 setObject:v10 forKeyedSubscript:v4];
    }

    else
    {
      [v8 setObject:&off_10004AB70 forKeyedSubscript:v4];

      monitor = self->_monitor;
      v8 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      v9 = [v8 allKeys];
      [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:v9];
    }

    v13 = wc_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      v15 = [v14 objectForKeyedSubscript:v4];
      v16 = 138543618;
      v17 = v4;
      v18 = 2048;
      v19 = [v15 integerValue];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@, numMonitored: %ld", &v16, 0x16u);
    }

    objc_sync_exit(v5);
  }

  else
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002C35C();
    }
  }
}

- (void)stopMonitoringBundleID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    objc_sync_enter(v5);
    v6 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = [v7 integerValue];

    if (v8 >= 1)
    {
      v9 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      v10 = [v9 objectForKeyedSubscript:v4];
      v11 = [v10 integerValue];

      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543618;
        v20 = v4;
        v21 = 2048;
        v22 = v11 - 1;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@, numMonitored: %ld", &v19, 0x16u);
      }

      if (v11 == 1)
      {
        v15 = [(WCDSystemMonitor *)self monitoredBundleIDs];
        [v15 removeObjectForKey:v4];

        monitor = self->_monitor;
        v17 = [(WCDSystemMonitor *)self monitoredBundleIDs];
        v18 = [v17 allKeys];
        [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:v18];

        v13 = wc_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543362;
          v20 = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "removed %{public}@", &v19, 0xCu);
        }
      }

      else
      {
        v13 = [NSNumber numberWithInteger:v11 - 1];
        v14 = [(WCDSystemMonitor *)self monitoredBundleIDs];
        [v14 setObject:v13 forKeyedSubscript:v4];
      }
    }

    objc_sync_exit(v5);
  }

  else
  {
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10002C35C();
    }
  }
}

- (id)applicationStateStringForState:(unsigned int)a3
{
  if (a3 <= 3)
  {
    if (!a3)
    {
      return @"BKSApplicationStateUnknown";
    }

    if (a3 != 1)
    {
      if (a3 == 2)
      {
        return @"BKSApplicationStateBackgroundTaskSuspended";
      }

      return @"Unexpected";
    }

    return @"BKSApplicationStateTerminated";
  }

  else if (a3 > 15)
  {
    if (a3 != 16)
    {
      if (a3 == 32)
      {
        return @"BKSApplicationStateForegroundRunningObscured";
      }

      return @"Unexpected";
    }

    return @"BKSApplicationStateProcessServer";
  }

  else
  {
    if (a3 != 4)
    {
      if (a3 == 8)
      {
        return @"BKSApplicationStateForegroundRunning";
      }

      return @"Unexpected";
    }

    return @"BKSApplicationStateBackgroundRunning";
  }
}

- (void)handleWatchAppUIStatesChanged:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = wc_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002C390(v7, v8);
    }
  }

  else
  {
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(WCDSystemMonitor *)v9 observers];
    v11 = [v10 allObjects];

    objc_sync_exit(v9);
    v12 = wc_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notifying observers of UI state change", buf, 2u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v11;
    v13 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 systemObserverWatchAppUIStatesChanged:{v6, v17}];
          }
        }

        v13 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

- (id)dataContainerURLForApplicationInfo:(id)a3
{
  v3 = [a3 companionAppBundleIdentifier];
  v4 = [LSApplicationProxy applicationProxyForIdentifier:v3];

  v5 = [v4 dataContainerURL];
  v6 = [v5 wc_URLWithLastPathComponentAsDirectory];

  return v6;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSHashTable *)v5->_observers addObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSHashTable *)v5->_observers removeObject:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (id)notifyObserversQueued:(SEL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  objc_initWeak(&location, v7);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100021688;
  v12[3] = &unk_100049348;
  objc_copyWeak(v14, &location);
  v12[4] = self;
  v14[1] = a3;
  v8 = v6;
  v13 = v8;
  [v7 addExecutionBlock:v12];
  v9 = NSStringFromSelector(a3);
  [v7 setName:v9];

  v10 = [(WCDSystemMonitor *)self notifyOperationQueue];
  [v10 addOperation:v7];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v7;
}

- (void)notifyObservers:(SEL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(WCDSystemMonitor *)v4 observers];
  v6 = [v5 allObjects];

  objc_sync_exit(v4);
  v7 = NSStringFromSelector(a3);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = wc_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v19 = v12;
            v20 = 2114;
            v21 = v7;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ of %{public}@", buf, 0x16u);
          }

          ([v12 methodForSelector:a3])(v12, a3);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)copyVoucher
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_appChangedVoucher)
  {
    v3 = wc_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Copying voucher", v6, 2u);
    }

    v4 = voucher_copy();
    appChangedVoucher = v2->_appChangedVoucher;
    v2->_appChangedVoucher = v4;
  }

  objc_sync_exit(v2);
}

- (void)releaseVoucher
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_notifyingOfInstalledAppsChange && v2->_appChangedVoucher)
  {
    v3 = wc_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing voucher", v5, 2u);
    }

    appChangedVoucher = v2->_appChangedVoucher;
    v2->_appChangedVoucher = 0;
  }

  objc_sync_exit(v2);
}

- (id)pairingIDForBTUUID:(id)a3
{
  v3 = a3;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v3 UUIDString];

  v6 = [v4 deviceForBTDeviceID:v5];

  v7 = [v6 valueForProperty:NRDevicePropertyPairingID];
  v8 = [v7 UUIDString];

  return v8;
}

- (void)createDuetComplications
{
  if (!self->_duetComplications)
  {
    block[7] = v2;
    block[8] = v3;
    v5 = dispatch_semaphore_create(0);
    duetComplicationsCreationSemaphore = self->_duetComplicationsCreationSemaphore;
    self->_duetComplicationsCreationSemaphore = v5;

    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100021C90;
    block[3] = &unk_100048A48;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

- (_CDComplications)duetComplications
{
  if (!self->_duetComplications)
  {
    v3 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(self->_duetComplicationsCreationSemaphore, v3))
    {
      v4 = wc_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10002C408();
      }
    }
  }

  duetComplications = self->_duetComplications;

  return duetComplications;
}

- (void)saveInstalledWatchApps:(id)a3
{
  if (a3)
  {
    v5 = [a3 allObjects];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setObject:v5 forKey:@"WCDStoredInstalledWatchApps"];

    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 synchronize];
  }
}

- (id)loadInstalledWatchApps
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"WCDStoredInstalledWatchApps"];

  if (v3)
  {
    v4 = [NSSet setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end