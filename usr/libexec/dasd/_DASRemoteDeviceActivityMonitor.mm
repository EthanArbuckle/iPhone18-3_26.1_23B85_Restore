@interface _DASRemoteDeviceActivityMonitor
+ (id)sharedMonitorWithDaemon:(id)a3;
- (BOOL)anyRemoteDeviceActive;
- (_DASRemoteDeviceActivityMonitor)initWithDaemon:(id)a3;
- (id)state;
- (void)clearRemoteDeviceActiveSet;
- (void)registerForRemoteDeviceActiveNotificationsWithChange:(id)a3;
- (void)runUpdateRecentlyUsedPhotosAppDevicesTask:(id)a3;
- (void)scheduleUpdateRecentlyUsedPhotosAppDevices;
- (void)unregisterForRemoteDeviceActiveNotifications;
@end

@implementation _DASRemoteDeviceActivityMonitor

- (id)state
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_remoteDeviceActivityState;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)anyRemoteDeviceActive
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_remoteDeviceActivityState count];
  os_unfair_lock_unlock(&self->_lock);
  return v3 != 0;
}

- (void)clearRemoteDeviceActiveSet
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_remoteDeviceActivityState removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerForRemoteDeviceActiveNotificationsWithChange:(id)a3
{
  v4 = a3;
  if ([(NSMutableDictionary *)self->_recentlyUsedPhotosAppDevices count])
  {
    contextSyncClient = self->_contextSyncClient;
    remoteDSL = self->_remoteDSL;
    v7 = [(NSMutableDictionary *)self->_recentlyUsedPhotosAppDevices allKeys];
    v19 = 0;
    [(ContextSyncClient *)contextSyncClient registerForUpdates:remoteDSL withIdentifier:@"com.apple.duetactivityscheduler.remotedeviceactivitymonitor" forUseCase:@"PhotosIntentSyncRemoteDeviceActivity" withOptions:3 forDevices:v7 withError:&v19];
    v8 = v19;

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_remoteDeviceActivityState removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    self->_pendingUnregistration = 0;
    v9 = [[BMBiomeScheduler alloc] initWithIdentifier:@"com.apple.duetactivityscheduler.remotedeviceactivitymonitor" targetQueue:self->_queue];
    v10 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSMutableDictionary *)self->_recentlyUsedPhotosAppDevices allKeys];
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DASContext: Registering for remote device activity for devices: %@", buf, 0xCu);
    }

    v12 = [(BMDSL *)self->_localDSL subscribeOn:v9];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100118A80;
    v17[3] = &unk_1001B9050;
    v17[4] = self;
    v18 = v4;
    v13 = [v12 sinkWithCompletion:&stru_1001B9028 receiveInput:v17];

    scheduler = self->_scheduler;
    self->_scheduler = v9;
    v15 = v9;

    sink = self->_sink;
    self->_sink = v13;
  }

  else
  {
    v8 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DASContext: No remote devices recently used Photos. Not registering", buf, 2u);
    }
  }
}

- (void)unregisterForRemoteDeviceActiveNotifications
{
  v3 = [(NSMutableDictionary *)self->_recentlyUsedPhotosAppDevices count];
  contextSyncClient = self->_contextSyncClient;
  remoteDSL = self->_remoteDSL;
  if (v3)
  {
    v6 = [(NSMutableDictionary *)self->_recentlyUsedPhotosAppDevices allKeys];
    v12 = 0;
    [(ContextSyncClient *)contextSyncClient unregisterForUpdates:remoteDSL withIdentifier:@"com.apple.duetactivityscheduler.remotedeviceactivitymonitor" forUseCase:@"PhotosIntentSyncRemoteDeviceActivity" forDevices:v6 withError:&v12];
    v7 = v12;
  }

  else
  {
    v13 = 0;
    [(ContextSyncClient *)contextSyncClient unregisterForUpdates:remoteDSL withIdentifier:@"com.apple.duetactivityscheduler.remotedeviceactivitymonitor" forUseCase:@"PhotosIntentSyncRemoteDeviceActivity" forDeviceTypes:6 withError:&v13];
    v7 = v13;
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_remoteDeviceActivityState removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  self->_pendingUnregistration = 0;
  v8 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(NSMutableDictionary *)self->_recentlyUsedPhotosAppDevices allKeys];
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DASContext: Unregistering for remote device activity for devices: %@", buf, 0xCu);
  }

  [(BPSSink *)self->_sink cancel];
  sink = self->_sink;
  self->_sink = 0;

  scheduler = self->_scheduler;
  self->_scheduler = 0;
}

- (void)runUpdateRecentlyUsedPhotosAppDevicesTask:(id)a3
{
  v4 = a3;
  v5 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "schedule: Running updateRecentlyUsedPhotosAppDevices background task", buf, 2u);
  }

  *buf = 0;
  v40 = buf;
  v41 = 0x3020000000;
  v42 = 0;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10011944C;
  v38[3] = &unk_1001B5798;
  v38[4] = buf;
  [v4 setExpirationHandler:v38];
  if (![(_DASRemoteDeviceActivityMonitor *)self isRegistered])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_recentlyUsedPhotosAppDevices removeAllObjects];
    os_unfair_lock_unlock(&self->_lock);
    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    [v7 setObject:self->_recentlyUsedPhotosAppDevices forKey:@"recentlyusedphotosappdevices"];

    v8 = objc_opt_new();
    v37 = 0;
    v9 = [v8 remoteDevicesWithError:&v37];
    v10 = v37;
    v11 = [NSPredicate predicateWithBlock:&stru_1001B9090];
    v12 = [v9 filteredArrayUsingPredicate:v11];

    if (v10)
    {
      v13 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10012DB6C(v10, v13);
      }
    }

    else if ([v12 count])
    {
      if (v40[40] == 1)
      {
        v36 = 0;
        v15 = [v4 setTaskExpiredWithRetryAfter:&v36 error:0.0];
        v14 = v36;
        if ((v15 & 1) == 0)
        {
          v16 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            v17 = [v4 identifier];
            sub_10012DBE4(v17, v14, v43);
          }

          [v4 setTaskCompleted];
        }
      }

      else
      {
        +[NSDate timeIntervalSinceReferenceDate];
        v19 = v18;
        v20 = BiomeLibrary();
        v21 = [v20 App];
        v22 = [v21 InFocus];

        v23 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v43 = 138412290;
          *v44 = v12;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "DASContext: Remote devices from stream: %@", v43, 0xCu);
        }

        v24 = [v22 publishersForDevices:v12 withUseCase:@"PhotosIntentSyncRemoteDeviceAppInFocus" startTime:0 includeLocal:&stru_1001B90D0 pipeline:v19 + -345600.0];
        v25 = [v24 publishers];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_10011955C;
        v33[3] = &unk_1001B9160;
        v34 = v12;
        v35 = self;
        [v25 enumerateObjectsUsingBlock:v33];

        v26 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
        [v26 setObject:self->_recentlyUsedPhotosAppDevices forKey:@"recentlyusedphotosappdevices"];

        v27 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          recentlyUsedPhotosAppDevices = self->_recentlyUsedPhotosAppDevices;
          *v43 = 67109378;
          *v44 = 4;
          *&v44[4] = 2112;
          *&v44[6] = recentlyUsedPhotosAppDevices;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "DASContext: Remote devices that opened Photos in the last %d days: %@", v43, 0x12u);
        }

        if (v40[40] == 1)
        {
          v32 = 0;
          v29 = [v4 setTaskExpiredWithRetryAfter:&v32 error:0.0];
          v14 = v32;
          if ((v29 & 1) == 0)
          {
            v30 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
            {
              v31 = [v4 identifier];
              sub_10012DBE4(v31, v14, v43);
            }

            [v4 setTaskCompleted];
          }
        }

        else
        {
          [v4 setTaskCompleted];
          v14 = 0;
        }
      }

      goto LABEL_12;
    }

    [v4 setTaskCompleted];
    v14 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v6 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DASContext: Will not update recently used Photos App remote devices while currently registered to a set of devices", v43, 2u);
  }

  [v4 setTaskCompleted];
LABEL_13:
  _Block_object_dispose(buf, 8);
}

- (void)scheduleUpdateRecentlyUsedPhotosAppDevices
{
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001199B0;
  v12[3] = &unk_1001B5770;
  v12[4] = self;
  [v3 registerForTaskWithIdentifier:@"com.apple.dasd.updateRecentlyUsedPhotosAppDevices" usingQueue:0 launchHandler:v12];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = [v4 taskRequestForIdentifier:@"com.apple.dasd.updateRecentlyUsedPhotosAppDevices"];

  if (!v5)
  {
    v6 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.dasd.updateRecentlyUsedPhotosAppDevices"];
    [v6 setPriority:1];
    [v6 setRequiresExternalPower:1];
    [v6 setInterval:86400.0];
    v7 = +[BGSystemTaskScheduler sharedScheduler];
    v11 = 0;
    v8 = [v7 submitTaskRequest:v6 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (_DASRemoteDeviceActivityMonitor)initWithDaemon:(id)a3
{
  v5 = a3;
  v36.receiver = self;
  v36.super_class = _DASRemoteDeviceActivityMonitor;
  v6 = [(_DASRemoteDeviceActivityMonitor *)&v36 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_daemon, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.duetactivityscheduler.remotedeviceactivitymonitor", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    v11 = [[ContextSyncClient alloc] initWithClientName:@"com.apple.duetactivityscheduler.remotedeviceactivitymonitor"];
    contextSyncClient = v7->_contextSyncClient;
    v7->_contextSyncClient = v11;

    v7->_lock._os_unfair_lock_opaque = 0;
    v13 = +[NSMutableSet set];
    remoteDeviceActivityState = v7->_remoteDeviceActivityState;
    v7->_remoteDeviceActivityState = v13;

    v15 = BiomeLibrary();
    v16 = [v15 Activity];
    v17 = [v16 Level];
    v18 = [v17 DSLPublisher];
    v19 = [v18 filterWithKeyPath:@"eventBody.inUseStatus" comparison:0 value:&off_1001CAA20];
    remoteDSL = v7->_remoteDSL;
    v7->_remoteDSL = v19;

    v21 = BiomeLibrary();
    v22 = [v21 ContextSync];
    v23 = [v22 DeviceActivityLevel];
    v24 = [v23 DSLPublisher];
    localDSL = v7->_localDSL;
    v7->_localDSL = v24;

    v26 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    v27 = [v26 dictionaryForKey:@"recentlyusedphotosappdevices"];
    v28 = [v27 mutableCopy];
    recentlyUsedPhotosAppDevices = v7->_recentlyUsedPhotosAppDevices;
    v7->_recentlyUsedPhotosAppDevices = v28;

    if (!v7->_recentlyUsedPhotosAppDevices)
    {
      v30 = objc_alloc_init(NSMutableDictionary);
      v31 = v7->_recentlyUsedPhotosAppDevices;
      v7->_recentlyUsedPhotosAppDevices = v30;
    }

    v32 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = v7->_recentlyUsedPhotosAppDevices;
      *buf = 67109378;
      v38 = 4;
      v39 = 2112;
      v40 = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "DASContext: Loaded from defaults - remote devices that opened Photos in the last %d days: %@", buf, 0x12u);
    }

    v7->_pendingUnregistration = 0;
    v34 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "DASContext: Set up remote device activity monitor", buf, 2u);
    }
  }

  return v7;
}

+ (id)sharedMonitorWithDaemon:(id)a3
{
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100119D74;
  v12 = &unk_1001B6250;
  v13 = a3;
  v14 = a1;
  v4 = qword_10020B980;
  v5 = v13;
  if (v4 != -1)
  {
    dispatch_once(&qword_10020B980, &v9);
  }

  [qword_10020B988 scheduleUpdateRecentlyUsedPhotosAppDevices];
  v6 = qword_10020B988;
  v7 = qword_10020B988;

  return v6;
}

@end