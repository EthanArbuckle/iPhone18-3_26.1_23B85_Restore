@interface WCDSystemMonitor
+ (id)sharedSystemMonitor;
- (BOOL)isAltAccount;
- (BOOL)retrySetupInitialStateIfNeeded;
- (BOOL)watchConnectivityServiceAvailable;
- (NSString)deviceInformation;
- (NSString)state;
- (WCDSystemMonitor)init;
- (_CDComplications)duetComplications;
- (id)applicationStateStringForState:(unsigned int)state;
- (id)dataContainerURLForApplicationInfo:(id)info;
- (id)loadInstalledWatchApps;
- (id)newSerialOperationQueue;
- (id)notifyObserversQueued:(SEL)queued completion:(id)completion;
- (id)pairingIDForBTUUID:(id)d;
- (void)addObserver:(id)observer;
- (void)applicationWorkspace:(id)workspace didUpdateRunningIndependentlyWatchApps:(id)apps;
- (void)applicationWorkspace:(id)workspace didUpdateStandaloneWatchApps:(id)apps;
- (void)applicationWorkspace:(id)workspace didUpdateiOSApplicationsContainingComplications:(id)complications;
- (void)applicationWorkspace:(id)workspace didUpdateiOSApplicationsContainingWatchApp:(id)app;
- (void)applicationWorkspace:(id)workspace didUpdateiOSApplicationsWithWatchAppInstalled:(id)installed;
- (void)copyVoucher;
- (void)createDuetComplications;
- (void)handleActiveComplicationsChanged;
- (void)handleApplicationStateChange:(id)change;
- (void)handleCompanionApplicationsChanged:(id)changed;
- (void)handleDeviceBecameActiveNotification:(id)notification;
- (void)handleDeviceBecameInactiveNotification:(id)notification;
- (void)handleInstalledApplicationsChanged;
- (void)handlePairingChangedNotification:(id)notification;
- (void)handleRemainingComplicationUserInfoTransfersReset;
- (void)handleSwitchStartedByIDS;
- (void)handleWatchAppUIStatesChanged:(id)changed error:(id)error;
- (void)notifyObservers:(SEL)observers;
- (void)onqueue_handleSwitch;
- (void)onqueue_retrievedInstalledAppsList:(id)list;
- (void)onqueue_switchIfReady;
- (void)releaseVoucher;
- (void)removeObserver:(id)observer;
- (void)resetInitialState;
- (void)retryInstalledAppsUpdate;
- (void)saveInstalledWatchApps:(id)apps;
- (void)setActiveDeviceConnected:(BOOL)connected;
- (void)setIOSApplicationsContainingActiveComplications:(id)complications;
- (void)setIsPaired:(BOOL)paired pairingID:(id)d pairedDeviceInformation:(id)information pairedDevicesPairingIDs:(id)ds;
- (void)setRemoteFirstUnlocked:(BOOL)unlocked;
- (void)setUpApplicationStateMonitor;
- (void)setUpInitialState;
- (void)startMonitoringBundleID:(id)d;
- (void)stopMonitoringBundleID:(id)d;
- (void)subscribeToAllNotifications;
@end

@implementation WCDSystemMonitor

+ (id)sharedSystemMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D764;
  block[3] = &unk_100048E08;
  block[4] = self;
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
      deviceInformation = [(WCDSystemMonitor *)v2 deviceInformation];
      *buf = 138543362;
      v20 = deviceInformation;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Device Information: %{public}@", buf, 0xCu);
    }

    newSerialOperationQueue = [(WCDSystemMonitor *)v2 newSerialOperationQueue];
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = newSerialOperationQueue;

    newSerialOperationQueue2 = [(WCDSystemMonitor *)v2 newSerialOperationQueue];
    notifyOperationQueue = v2->_notifyOperationQueue;
    v2->_notifyOperationQueue = newSerialOperationQueue2;

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
  selfCopy = self;
  objc_copyWeak(&v13, &location);
  [(WCDRetrieveInitialStateOperation *)v4 setCompletionBlock:&v7];
  v5 = [(WCDSystemMonitor *)self operationQueue:v7];
  [v5 addOperation:v4];

  operationQueue = [(WCDSystemMonitor *)self operationQueue];
  [operationQueue setSuspended:0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (void)resetInitialState
{
  operationQueue = [(WCDSystemMonitor *)self operationQueue];
  [operationQueue setSuspended:1];

  notifyOperationQueue = [(WCDSystemMonitor *)self notifyOperationQueue];
  [notifyOperationQueue setSuspended:1];

  operationQueue2 = [(WCDSystemMonitor *)self operationQueue];
  [operationQueue2 cancelAllOperations];

  notifyOperationQueue2 = [(WCDSystemMonitor *)self notifyOperationQueue];
  [notifyOperationQueue2 cancelAllOperations];

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
  monitoredBundleIDs = [(WCDSystemMonitor *)self monitoredBundleIDs];
  allKeys = [monitoredBundleIDs allKeys];
  [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:allKeys];

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

  deviceInformation = [(WCDSystemMonitor *)self deviceInformation];
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

  operationQueue = [(WCDSystemMonitor *)self operationQueue];
  operationQueue2 = [(WCDSystemMonitor *)self operationQueue];
  operations = [operationQueue2 operations];
  v41 = WCCompactStringFromCollection();
  NSAppendPrintF();
  v19 = v15;

  v37 = [(WCDSystemMonitor *)self observers:operationQueue];
  NSAppendPrintF();
  v20 = v19;

  monitor = [(WCDSystemMonitor *)self monitor];
  monitoredBundleIDs = [(WCDSystemMonitor *)self monitoredBundleIDs];
  v42 = WCCompactStringFromCollection();
  NSAppendPrintF();
  v23 = v20;

  v24 = [(WCDSystemMonitor *)self applicationWorkspace:monitor];
  v38 = [v24 debugDescription];
  NSAppendPrintF();
  v25 = v23;

  iOSApplicationsContainingActiveComplications = [(WCDSystemMonitor *)self iOSApplicationsContainingActiveComplications];
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
    bOOLValue = [v5 BOOLValue];

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
    if (!bOOLValue)
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
  bOOLValue2 = [v22 BOOLValue];

  v24 = @"not charging";
  if (bOOLValue2)
  {
    v24 = @"charging";
  }

  v25 = v24;
  v26 = [v21 objectForKeyedSubscript:@"BatteryCurrentCapacity"];
  integerValue = [v26 integerValue];

  v28 = [v3[207] stringWithFormat:@"%d%% (%@)", integerValue, v25];

  v29 = [(NSString *)self->_deviceInformation stringByAppendingString:v28];

  return v29;
}

- (BOOL)isAltAccount
{
  altAccountCache = [(WCDSystemMonitor *)self altAccountCache];

  if (!altAccountCache)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v6 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:v5];
    firstObject = [v6 firstObject];

    v8 = [firstObject valueForProperty:NRDevicePropertyIsAltAccount];
    bOOLValue = [v8 BOOLValue];

    v10 = [NSNumber numberWithBool:bOOLValue];
    [(WCDSystemMonitor *)self setAltAccountCache:v10];
  }

  altAccountCache2 = [(WCDSystemMonitor *)self altAccountCache];
  bOOLValue2 = [altAccountCache2 BOOLValue];

  return bOOLValue2;
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
  uTF8String = [ACXApplicationsUpdatedDarwinNotification UTF8String];
  v5 = &_dispatch_main_q;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001EE60;
  handler[3] = &unk_100048A70;
  objc_copyWeak(&v19, location);
  notify_register_dispatch(uTF8String, &out_token, &_dispatch_main_q, handler);

  uTF8String2 = [SPActiveComplicationsDarwinNotificaton UTF8String];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001EEA0;
  v16[3] = &unk_100048A70;
  objc_copyWeak(&v17, location);
  notify_register_dispatch(uTF8String2, &out_token, &_dispatch_main_q, v16);

  uTF8String3 = [CLKActiveComplicationsFromActiveWatchChangedNotification UTF8String];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001EEE0;
  v14[3] = &unk_100048A70;
  objc_copyWeak(&v15, location);
  notify_register_dispatch(uTF8String3, &out_token, &_dispatch_main_q, v14);

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

- (void)handlePairingChangedNotification:(id)notification
{
  notificationCopy = notification;
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    *buf = 138412290;
    v19 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  name2 = [notificationCopy name];
  v8 = [name2 isEqual:NRPairedDeviceRegistryDeviceDidPairNotification];

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
    operationQueue = [(WCDSystemMonitor *)self operationQueue];
    v11 = [(WCDAsyncOperation *)v9 initWithDelegate:self queue:operationQueue];

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
    operationQueue2 = [(WCDSystemMonitor *)self operationQueue];
    [operationQueue2 addOperation:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

- (void)handleCompanionApplicationsChanged:(id)changed
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
    operationQueue = [(WCDSystemMonitor *)self operationQueue];
    v5 = [(WCDAsyncOperation *)v3 initWithDelegate:self queue:operationQueue];

    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10001F49C;
    v10 = &unk_100048B78;
    objc_copyWeak(&v11, &location);
    [(WCDRetrieveInstalledAppsListOperation *)v5 setCompletionBlock:&v7];
    [(WCDRetrieveInstalledAppsListOperation *)v5 setQualityOfService:-1, v7, v8, v9, v10];
    operationQueue2 = [(WCDSystemMonitor *)self operationQueue];
    [operationQueue2 addOperation:v5];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)handleActiveComplicationsChanged
{
  if (![(WCDSystemMonitor *)self retrySetupInitialStateIfNeeded])
  {
    v3 = [WCDRetrieveActiveComplicationsOperation alloc];
    operationQueue = [(WCDSystemMonitor *)self operationQueue];
    v6 = [(WCDAsyncOperation *)v3 initWithDelegate:self queue:operationQueue];

    operationQueue2 = [(WCDSystemMonitor *)self operationQueue];
    [operationQueue2 addOperation:v6];
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

- (void)handleDeviceBecameInactiveNotification:(id)notification
{
  notificationCopy = notification;
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
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)handleDeviceBecameActiveNotification:(id)notification
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
  getActivePairedDevice = [v4 getActivePairedDevice];

  pairingID = [getActivePairedDevice pairingID];
  uUIDString = [pairingID UUIDString];

  pairingID2 = [(WCDSystemMonitor *)self pairingID];
  if (!pairingID2)
  {
    v9 = wc_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Handling switch with nil pairing ID", &v17, 2u);
    }
  }

  if ([pairingID2 isEqualToString:uUIDString])
  {
    activeIDSDevice = wc_log();
    if (os_log_type_enabled(activeIDSDevice, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = pairingID2;
      v19 = 2112;
      v20 = uUIDString;
      _os_log_impl(&_mh_execute_header, activeIDSDevice, OS_LOG_TYPE_DEFAULT, "Pairing ID already set to active paired device (current %@, active %@)", &v17, 0x16u);
    }
  }

  else
  {
    v11 = +[WatchConnectivityDaemon sharedDaemon];
    activeIDSDevice = [v11 activeIDSDevice];

    v12 = +[NRPairedDeviceRegistry sharedInstance];
    v13 = [v12 deviceForIDSDevice:activeIDSDevice];

    if (v13)
    {
      pairingID3 = [v13 pairingID];
      uUIDString2 = [pairingID3 UUIDString];

      if (([uUIDString2 isEqualToString:uUIDString]& 1) != 0)
      {
        [(WCDSystemMonitor *)self onqueue_handleSwitch];
      }

      else
      {
        v16 = wc_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 138412546;
          v18 = uUIDString;
          v19 = 2112;
          v20 = uUIDString2;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IDS and NR devices don't match (NR %@, IDS %@)", &v17, 0x16u);
        }
      }
    }

    else
    {
      uUIDString2 = wc_log();
      if (os_log_type_enabled(uUIDString2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, uUIDString2, OS_LOG_TYPE_DEFAULT, "No matching NRDevice for active IDS device", &v17, 2u);
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

- (void)onqueue_retrievedInstalledAppsList:(id)list
{
  listCopy = list;
  applicationWorkspace = [(WCDSystemMonitor *)self applicationWorkspace];
  [applicationWorkspace setValidApplications:listCopy];
}

- (void)applicationWorkspace:(id)workspace didUpdateStandaloneWatchApps:(id)apps
{
  v4 = [apps bs_map:&stru_100049278];
  v5 = wc_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "standaloneWatchApps: %{public}@", &v6, 0xCu);
  }
}

- (void)applicationWorkspace:(id)workspace didUpdateRunningIndependentlyWatchApps:(id)apps
{
  v5 = [apps bs_map:&stru_100049298];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "runningIndependentlyWatchApps: %{public}@", &v8, 0xCu);
  }

  v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverRunningIndependentlyWatchApps"];
}

- (void)applicationWorkspace:(id)workspace didUpdateiOSApplicationsContainingWatchApp:(id)app
{
  workspaceCopy = workspace;
  appCopy = app;
  v8 = [appCopy bs_map:&stru_1000492B8];
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

- (void)applicationWorkspace:(id)workspace didUpdateiOSApplicationsWithWatchAppInstalled:(id)installed
{
  v5 = [installed bs_map:&stru_1000492D8];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iOSApplicationsWithWatchAppInstalled: %{public}@", &v10, 0xCu);
  }

  v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverWatchAppsInstalledChanged"];
  loadInstalledWatchApps = [(WCDSystemMonitor *)self loadInstalledWatchApps];
  if ([v5 isEqual:loadInstalledWatchApps])
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

- (void)applicationWorkspace:(id)workspace didUpdateiOSApplicationsContainingComplications:(id)complications
{
  v5 = [complications bs_map:&stru_1000492F8];
  v6 = wc_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "iOSApplicationsContainingComplications: %{public}@", &v8, 0xCu);
  }

  v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverComplicationsInstalledChanged"];
}

- (void)setIOSApplicationsContainingActiveComplications:(id)complications
{
  complicationsCopy = complications;
  if (([(NSSet *)self->_iOSApplicationsContainingActiveComplications isEqual:complicationsCopy]& 1) == 0)
  {
    v6 = wc_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = complicationsCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v8, 0xCu);
    }

    objc_storeStrong(&self->_iOSApplicationsContainingActiveComplications, complications);
    v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverActiveComplicationsChanged"];
  }
}

- (void)setActiveDeviceConnected:(BOOL)connected
{
  if (self->_activeDeviceConnected != connected)
  {
    connectedCopy = connected;
    v5 = wc_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "NO";
      if (connectedCopy)
      {
        v6 = "YES";
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
    }

    self->_activeDeviceConnected = connectedCopy;
    v7 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverActiveDeviceConnectedChanged"];
  }
}

- (void)setIsPaired:(BOOL)paired pairingID:(id)d pairedDeviceInformation:(id)information pairedDevicesPairingIDs:(id)ds
{
  dCopy = d;
  pairedCopy = paired;
  dCopy2 = d;
  informationCopy = information;
  dsCopy = ds;
  v14 = wc_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = dCopy2;
    v16 = dCopy;
    dsCopy2 = ds;
    if (pairedCopy)
    {
      v18 = "YES";
    }

    else
    {
      v18 = "NO";
    }

    WCCompactStringFromCollection();
    v19 = v23 = dsCopy;
    *buf = 136315906;
    v25 = v18;
    ds = dsCopy2;
    dCopy = v16;
    dCopy2 = v15;
    v26 = 2114;
    v27 = v15;
    v28 = 2114;
    v29 = v19;
    v30 = 2114;
    v31 = informationCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "isPaired: %s, pairingID: %{public}@, pairedDevicesPairingIDs: %{public}@, pairedDeviceInformation: '%{public}@'", buf, 0x2Au);

    dsCopy = v23;
  }

  if (([(NSString *)self->_pairedDeviceInformation isEqual:informationCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_pairedDeviceInformation, information);
  }

  isPaired = self->_isPaired;
  if (isPaired != pairedCopy)
  {
    self->_isPaired = pairedCopy;
  }

  if ([(NSString *)self->_pairingID isEqual:dCopy2])
  {
    p_pairedDevicesPairingIDs = &self->_pairedDevicesPairingIDs;
    if (([(NSSet *)self->_pairedDevicesPairingIDs isEqual:dsCopy]& 1) != 0)
    {
      if (isPaired == pairedCopy)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_15;
  }

  objc_storeStrong(&self->_pairingID, dCopy);
  p_pairedDevicesPairingIDs = &self->_pairedDevicesPairingIDs;
  if (([(NSSet *)self->_pairedDevicesPairingIDs isEqual:dsCopy]& 1) == 0)
  {
LABEL_15:
    objc_storeStrong(p_pairedDevicesPairingIDs, ds);
  }

LABEL_16:
  v22 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverPairedListChanged"];
LABEL_17:
}

- (void)setRemoteFirstUnlocked:(BOOL)unlocked
{
  if (self->_remoteFirstUnlocked != unlocked)
  {
    self->_remoteFirstUnlocked = unlocked;
    v5 = [(WCDSystemMonitor *)self notifyObserversQueued:"systemObserverRemoteFirstUnlockedChanged", v3, v4];
  }
}

- (BOOL)watchConnectivityServiceAvailable
{
  pairingID = [(WCDSystemMonitor *)self pairingID];
  v3 = pairingID != 0;

  return v3;
}

- (void)handleApplicationStateChange:(id)change
{
  changeCopy = change;
  v4 = [changeCopy objectForKeyedSubscript:BKSApplicationStateDisplayIDKey];
  v5 = [changeCopy objectForKeyedSubscript:BKSApplicationStateKey];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(WCDSystemMonitor *)selfCopy observers];
  allObjects = [observers allObjects];

  objc_sync_exit(selfCopy);
  v10 = wc_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(WCDSystemMonitor *)selfCopy applicationStateStringForState:unsignedIntegerValue];
    *buf = 136315394;
    uTF8String = [v11 UTF8String];
    v27 = 2114;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s for bundleID: %{public}@", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = allObjects;
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
        if (unsignedIntegerValue == 1)
        {
          v18 = *(*(&v20 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 systemObserverAppDidTerminateForBundleID:v4];
          }
        }

        else if (unsignedIntegerValue == 2)
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

- (void)startMonitoringBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    monitoredBundleIDs = [(WCDSystemMonitor *)self monitoredBundleIDs];
    objc_sync_enter(monitoredBundleIDs);
    monitoredBundleIDs2 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    v7 = [monitoredBundleIDs2 objectForKeyedSubscript:dCopy];

    monitoredBundleIDs3 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    if (v7)
    {
      allKeys = [monitoredBundleIDs3 objectForKeyedSubscript:dCopy];
      v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [allKeys integerValue] + 1);
      monitoredBundleIDs4 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      [monitoredBundleIDs4 setObject:v10 forKeyedSubscript:dCopy];
    }

    else
    {
      [monitoredBundleIDs3 setObject:&off_10004AB70 forKeyedSubscript:dCopy];

      monitor = self->_monitor;
      monitoredBundleIDs3 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      allKeys = [monitoredBundleIDs3 allKeys];
      [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:allKeys];
    }

    v13 = wc_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      monitoredBundleIDs5 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      v15 = [monitoredBundleIDs5 objectForKeyedSubscript:dCopy];
      v16 = 138543618;
      v17 = dCopy;
      v18 = 2048;
      integerValue = [v15 integerValue];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@, numMonitored: %ld", &v16, 0x16u);
    }

    objc_sync_exit(monitoredBundleIDs);
  }

  else
  {
    monitoredBundleIDs = wc_log();
    if (os_log_type_enabled(monitoredBundleIDs, OS_LOG_TYPE_ERROR))
    {
      sub_10002C35C();
    }
  }
}

- (void)stopMonitoringBundleID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    monitoredBundleIDs = [(WCDSystemMonitor *)self monitoredBundleIDs];
    objc_sync_enter(monitoredBundleIDs);
    monitoredBundleIDs2 = [(WCDSystemMonitor *)self monitoredBundleIDs];
    v7 = [monitoredBundleIDs2 objectForKeyedSubscript:dCopy];
    integerValue = [v7 integerValue];

    if (integerValue >= 1)
    {
      monitoredBundleIDs3 = [(WCDSystemMonitor *)self monitoredBundleIDs];
      v10 = [monitoredBundleIDs3 objectForKeyedSubscript:dCopy];
      integerValue2 = [v10 integerValue];

      v12 = wc_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543618;
        v20 = dCopy;
        v21 = 2048;
        v22 = integerValue2 - 1;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@, numMonitored: %ld", &v19, 0x16u);
      }

      if (integerValue2 == 1)
      {
        monitoredBundleIDs4 = [(WCDSystemMonitor *)self monitoredBundleIDs];
        [monitoredBundleIDs4 removeObjectForKey:dCopy];

        monitor = self->_monitor;
        monitoredBundleIDs5 = [(WCDSystemMonitor *)self monitoredBundleIDs];
        allKeys = [monitoredBundleIDs5 allKeys];
        [(BKSApplicationStateMonitor *)monitor updateInterestedBundleIDs:allKeys];

        v13 = wc_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543362;
          v20 = dCopy;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "removed %{public}@", &v19, 0xCu);
        }
      }

      else
      {
        v13 = [NSNumber numberWithInteger:integerValue2 - 1];
        monitoredBundleIDs6 = [(WCDSystemMonitor *)self monitoredBundleIDs];
        [monitoredBundleIDs6 setObject:v13 forKeyedSubscript:dCopy];
      }
    }

    objc_sync_exit(monitoredBundleIDs);
  }

  else
  {
    monitoredBundleIDs = wc_log();
    if (os_log_type_enabled(monitoredBundleIDs, OS_LOG_TYPE_ERROR))
    {
      sub_10002C35C();
    }
  }
}

- (id)applicationStateStringForState:(unsigned int)state
{
  if (state <= 3)
  {
    if (!state)
    {
      return @"BKSApplicationStateUnknown";
    }

    if (state != 1)
    {
      if (state == 2)
      {
        return @"BKSApplicationStateBackgroundTaskSuspended";
      }

      return @"Unexpected";
    }

    return @"BKSApplicationStateTerminated";
  }

  else if (state > 15)
  {
    if (state != 16)
    {
      if (state == 32)
      {
        return @"BKSApplicationStateForegroundRunningObscured";
      }

      return @"Unexpected";
    }

    return @"BKSApplicationStateProcessServer";
  }

  else
  {
    if (state != 4)
    {
      if (state == 8)
      {
        return @"BKSApplicationStateForegroundRunning";
      }

      return @"Unexpected";
    }

    return @"BKSApplicationStateBackgroundRunning";
  }
}

- (void)handleWatchAppUIStatesChanged:(id)changed error:(id)error
{
  changedCopy = changed;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = wc_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10002C390(errorCopy, v8);
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    observers = [(WCDSystemMonitor *)selfCopy observers];
    allObjects = [observers allObjects];

    objc_sync_exit(selfCopy);
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
    v8 = allObjects;
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
            [v16 systemObserverWatchAppUIStatesChanged:{changedCopy, v17}];
          }
        }

        v13 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v13);
    }
  }
}

- (id)dataContainerURLForApplicationInfo:(id)info
{
  companionAppBundleIdentifier = [info companionAppBundleIdentifier];
  v4 = [LSApplicationProxy applicationProxyForIdentifier:companionAppBundleIdentifier];

  dataContainerURL = [v4 dataContainerURL];
  wc_URLWithLastPathComponentAsDirectory = [dataContainerURL wc_URLWithLastPathComponentAsDirectory];

  return wc_URLWithLastPathComponentAsDirectory;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_observers addObject:v6];
    objc_sync_exit(selfCopy);

    observerCopy = v6;
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v6 = observerCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSHashTable *)selfCopy->_observers removeObject:v6];
    objc_sync_exit(selfCopy);

    observerCopy = v6;
  }
}

- (id)notifyObserversQueued:(SEL)queued completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_opt_new();
  objc_initWeak(&location, v7);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100021688;
  v12[3] = &unk_100049348;
  objc_copyWeak(v14, &location);
  v12[4] = self;
  v14[1] = queued;
  v8 = completionCopy;
  v13 = v8;
  [v7 addExecutionBlock:v12];
  v9 = NSStringFromSelector(queued);
  [v7 setName:v9];

  notifyOperationQueue = [(WCDSystemMonitor *)self notifyOperationQueue];
  [notifyOperationQueue addOperation:v7];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);

  return v7;
}

- (void)notifyObservers:(SEL)observers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  observers = [(WCDSystemMonitor *)selfCopy observers];
  allObjects = [observers allObjects];

  objc_sync_exit(selfCopy);
  v7 = NSStringFromSelector(observers);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = allObjects;
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

          ([v12 methodForSelector:observers])(v12, observers);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v9);
  }
}

- (void)copyVoucher
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_appChangedVoucher)
  {
    v3 = wc_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Copying voucher", v6, 2u);
    }

    v4 = voucher_copy();
    appChangedVoucher = selfCopy->_appChangedVoucher;
    selfCopy->_appChangedVoucher = v4;
  }

  objc_sync_exit(selfCopy);
}

- (void)releaseVoucher
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_notifyingOfInstalledAppsChange && selfCopy->_appChangedVoucher)
  {
    v3 = wc_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing voucher", v5, 2u);
    }

    appChangedVoucher = selfCopy->_appChangedVoucher;
    selfCopy->_appChangedVoucher = 0;
  }

  objc_sync_exit(selfCopy);
}

- (id)pairingIDForBTUUID:(id)d
{
  dCopy = d;
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  uUIDString = [dCopy UUIDString];

  v6 = [v4 deviceForBTDeviceID:uUIDString];

  v7 = [v6 valueForProperty:NRDevicePropertyPairingID];
  uUIDString2 = [v7 UUIDString];

  return uUIDString2;
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

- (void)saveInstalledWatchApps:(id)apps
{
  if (apps)
  {
    allObjects = [apps allObjects];
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 setObject:allObjects forKey:@"WCDStoredInstalledWatchApps"];

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