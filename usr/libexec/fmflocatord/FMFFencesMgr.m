@interface FMFFencesMgr
+ (id)sharedInstance;
- (BOOL)isFenceBeingMonitored:(id)a3;
- (CLLocationManager)locMgr;
- (FMFFencesMgr)init;
- (FMFFencesMgrDelegate)delegate;
- (NSString)description;
- (id)CLErrorAsString:(int64_t)a3;
- (id)_currentFences;
- (id)_fencesCacheFileURL;
- (id)_makeLocMgrIfNeeded;
- (id)createFenceScheduler;
- (id)fenceWithID:(id)a3;
- (id)findMyLocateSession;
- (id)updatedFenceForFence:(id)a3;
- (void)__updateMonitoredFences;
- (void)_readFencesToMonitorCache;
- (void)_trigger:(int64_t)a3 forRegionWithID:(id)a4 atLocation:(id)a5;
- (void)_updateFencesToMonitorCache;
- (void)_updateGeoFences;
- (void)_updateMonitoredFences;
- (void)checkIfThisDeviceIsBeingUsedToShareLocation:(id)a3;
- (void)cleanupLocMgr;
- (void)dealloc;
- (void)fenceSchedulerCurrentSchedulesDidChange:(id)a3;
- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5;
- (void)locationManager:(id)a3 didEnterRegion:(id)a4;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManager:(id)a3 didFailWithError:(id)a4;
- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4;
- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5;
- (void)registerAlarms;
- (void)scheduleOnInitializationCompletion:(id)a3;
- (void)setAllFences:(id)a3;
- (void)setFencesToMonitor:(id)a3;
- (void)setFencesToMonitor:(id)a3 withFenceVersion:(id)a4 triggerValidityDuration:(double)a5 andTriggerURL:(id)a6;
- (void)setMonitoredFences:(id)a3;
- (void)setupSessionCallbacks:(id)a3;
- (void)showDebugFenceTriggerAlertIfNeededWithTitle:(id)a3 text:(id)a4;
- (void)start;
- (void)stop;
- (void)triggerFence:(id)a3 atLocation:(id)a4;
- (void)updateGeoFences;
@end

@implementation FMFFencesMgr

- (void)_updateMonitoredFences
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"__updateMonitoredFences" object:0];

  [(FMFFencesMgr *)self performSelector:"__updateMonitoredFences" withObject:0 afterDelay:1.0];
}

+ (id)sharedInstance
{
  if (qword_100070140 != -1)
  {
    sub_100037300();
  }

  v3 = qword_100070148;

  return v3;
}

- (FMFFencesMgr)init
{
  v19.receiver = self;
  v19.super_class = FMFFencesMgr;
  v2 = [(FMFFencesMgr *)&v19 init];
  if (v2)
  {
    v3 = [FMDataArchiver alloc];
    v4 = [(FMFFencesMgr *)v2 _fencesCacheFileURL];
    v5 = [v3 initWithFileURL:v4];
    [(FMFFencesMgr *)v2 setDataArchiver:v5];

    v6 = [(FMFFencesMgr *)v2 dataArchiver];
    [v6 setDataProtectionClass:4];

    v7 = [(FMFFencesMgr *)v2 dataArchiver];
    [v7 setBackedUp:0];

    v8 = [(FMFFencesMgr *)v2 dataArchiver];
    [v8 setCreateDirectories:1];

    v9 = [(FMFFencesMgr *)v2 createFenceScheduler];
    scheduler = v2->_scheduler;
    v2->_scheduler = v9;

    [(FMFFencesMgr *)v2 registerAlarms];
    v11 = +[NSSet set];
    allFences = v2->_allFences;
    v2->_allFences = v11;

    v13 = [(FMFFencesMgr *)v2 createFenceProvider];
    fenceProvider = v2->_fenceProvider;
    v2->_fenceProvider = v13;

    v15 = v2->_fenceProvider;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100015B58;
    v17[3] = &unk_10005D878;
    v18 = v2;
    [(FenceProvider *)v15 getFences:v17];
  }

  return v2;
}

- (void)scheduleOnInitializationCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100015DA4;
  v4[3] = &unk_10005D8A0;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (id)createFenceScheduler
{
  v2 = [[FenceScheduler alloc] initWithDelegate:self];

  return v2;
}

- (id)findMyLocateSession
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015F1C;
  block[3] = &unk_10005D2B0;
  block[4] = self;
  if (qword_100070158 != -1)
  {
    dispatch_once(&qword_100070158, block);
  }

  return qword_100070150;
}

- (void)dealloc
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000373C4(self);
  }

  [(FMFFencesMgr *)self cleanupLocMgr];
  v4.receiver = self;
  v4.super_class = FMFFencesMgr;
  [(FMFFencesMgr *)&v4 dealloc];
}

- (void)cleanupLocMgr
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(CLLocationManager *)self->_locMgr setDelegate:0];
  locMgr = self->_locMgr;
  self->_locMgr = 0;
}

- (void)checkIfThisDeviceIsBeingUsedToShareLocation:(id)a3
{
  v4 = a3;
  v5 = [(FMFFencesMgr *)self findMyLocateSession];
  [v5 checkIfThisDeviceIsBeingUsedToShareLocationWithCompletionHandler:v4];
}

- (void)registerAlarms
{
  v3 = [(FMFFencesMgr *)self scheduler];
  v4 = [objc_opt_class() alarmStream];

  v5 = [(FMFFencesMgr *)self scheduler];
  v6 = [objc_opt_class() timerIdentifier];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100016160;
  v7[3] = &unk_10005D8C8;
  v7[4] = self;
  v7[5] = v6;
  xpc_set_event_stream_handler(v4, &_dispatch_main_q, v7);
}

- (void)start
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Preparing to sanitize any inconsistent state for fences", buf, 2u);
  }

  v4 = +[AccountManager sharedInstance];
  v5 = [v4 allAccountsOfType:objc_opt_class()];

  if ([v5 count] && (objc_msgSend(v5, "objectAtIndexedSubscript:", 0), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    objc_initWeak(buf, self);
    v8 = sub_100002830();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scheduling FMFFenceMgr start completion after initialization is done.", v12, 2u);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000164CC;
    v10[3] = &unk_10005D470;
    objc_copyWeak(&v11, buf);
    [(FMFFencesMgr *)self scheduleOnInitializationCompletion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = sub_100002830();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Removed all fences since there is no FMF account", buf, 2u);
    }

    [(FMFFencesMgr *)self setFencesToMonitor:0 withFenceVersion:0 triggerValidityDuration:0 andTriggerURL:0.0];
  }
}

- (void)stop
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stopping FMFFencesMgr...", buf, 2u);
  }

  [(FMFFencesMgr *)self setDelegate:0];
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing the monitored fences by location manager...", v5, 2u);
  }

  [(FMFFencesMgr *)self cleanupLocMgr];
}

- (void)setFencesToMonitor:(id)a3 withFenceVersion:(id)a4 triggerValidityDuration:(double)a5 andTriggerURL:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(FMFFencesMgr *)self setFenceVersion:v11];

  [(FMFFencesMgr *)self setTriggerURL:v10];
  [(FMFFencesMgr *)self setTriggerValidityDuration:a5];
  [(FMFFencesMgr *)self setFencesToMonitor:v12];
}

- (BOOL)isFenceBeingMonitored:(id)a3
{
  v4 = a3;
  v5 = [(FMFFencesMgr *)self monitoredFences];
  v6 = [v4 fenceId];

  v7 = [v5 objectForKeyedSubscript:v6];
  LOBYTE(v4) = v7 != 0;

  return v4;
}

- (NSString)description
{
  v3 = [(FMFFencesMgr *)self monitoredFences];
  v4 = [v3 count];
  v5 = [(CLLocationManager *)self->_locMgr monitoredRegions];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Monitored fences - expected:%ld, actual:%ld", v4, [v5 count]);

  return v6;
}

- (void)triggerFence:(id)a3 atLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[FMFFencesMgr triggerFence:atLocation:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: Sending trigger to FML", buf, 0xCu);
  }

  v9 = [v6 fenceId];
  v10 = [(FMFFencesMgr *)self fenceWithID:v9];

  if (v10)
  {
    v11 = [NSUUID alloc];
    v12 = [v10 identifier];
    v13 = [v11 initWithUUIDString:v12];

    if (v13)
    {
      v14 = [(FMFFencesMgr *)self findMyLocateSession];
      v15 = [v6 lastTrigger];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100016AE8;
      v17[3] = &unk_10005D8F0;
      v18 = v10;
      v19 = v6;
      [v14 triggerFenceWithID:v13 trigger:v15 location:v7 completionHandler:v17];

      v16 = v18;
    }

    else
    {
      v16 = sub_100002830();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100037448(v10);
      }
    }
  }

  else
  {
    v13 = sub_100002830();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000374DC(v6);
    }
  }
}

- (void)setFencesToMonitor:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  fencesToMonitor = self->_fencesToMonitor;
  self->_fencesToMonitor = v4;

  [(FMFFencesMgr *)self _updateFencesToMonitorCache];

  [(FMFFencesMgr *)self __updateMonitoredFences];
}

- (void)setAllFences:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    allFences = self->_allFences;
    v8 = 136315650;
    v9 = "[FMFFencesMgr setAllFences:]";
    v10 = 2112;
    v11 = allFences;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: old: %@ new: %@", &v8, 0x20u);
  }

  v7 = self->_allFences;
  self->_allFences = v4;

  [(FMFFencesMgr *)self _updateMonitoredFences];
}

- (void)__updateMonitoredFences
{
  v4 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(FMFFencesMgr *)self fencesToMonitor];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 shouldUseCloudKitStore];
        v12 = v10;
        if (v11)
        {
          v2 = [(FMFFencesMgr *)self updatedFenceForFence:v10];
          v12 = v2;
        }

        v13 = [v10 fenceId];
        [v4 setObject:v12 forKeyedSubscript:v13];

        if (v11)
        {
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(FMFFencesMgr *)self setMonitoredFences:v4];
}

- (id)updatedFenceForFence:(id)a3
{
  v4 = a3;
  v5 = [v4 fenceId];
  v6 = [(FMFFencesMgr *)self fenceWithID:v5];

  if (v6)
  {
    [v6 longitude];
    [v4 setLongitude:?];
    [v6 latitude];
    [v4 setLatitude:?];
    [v6 radius];
    [v4 setRadius:?];
    v7 = [v6 schedule];
    [v4 setSchedule:v7];

    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)fenceWithID:(id)a3
{
  v4 = a3;
  v5 = [(FMFFencesMgr *)self allFences];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000170AC;
  v9[3] = &unk_10005D918;
  v10 = v4;
  v6 = v4;
  v7 = [v5 fm_firstObjectPassingTest:v9];

  return v7;
}

- (void)setMonitoredFences:(id)a3
{
  v4 = a3;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    monitoredFences = self->_monitoredFences;
    v12 = 136315650;
    v13 = "[FMFFencesMgr setMonitoredFences:]";
    v14 = 2112;
    v15 = monitoredFences;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: old: %@ new: %@", &v12, 0x20u);
  }

  v7 = self->_monitoredFences;
  self->_monitoredFences = v4;

  [(FMFFencesMgr *)self updateGeoFences];
  v8 = [(FMFFencesMgr *)self monitoredFences];
  v9 = [v8 allValues];
  v10 = [v9 fm_map:&stru_10005D958];
  v11 = [(FMFFencesMgr *)self scheduler];
  [v11 setSchedules:v10];
}

- (id)_makeLocMgrIfNeeded
{
  locMgr = self->_locMgr;
  if (!locMgr)
  {
    v4 = sub_100002830();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Creating FMF location manager for fences...", v8, 2u);
    }

    v5 = [[CLLocationManager alloc] initWithEffectiveBundlePath:@"/System/Library/PrivateFrameworks/FMF.framework" delegate:self onQueue:&_dispatch_main_q];
    v6 = self->_locMgr;
    self->_locMgr = v5;

    locMgr = self->_locMgr;
  }

  return locMgr;
}

- (CLLocationManager)locMgr
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  return [(FMFFencesMgr *)self _makeLocMgrIfNeeded];
}

- (void)updateGeoFences
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  v3 = sub_100017420;
  v4 = &unk_10005D2B0;
  v5 = self;
  if (+[NSThread isMainThread])
  {
    v3(block);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_updateGeoFences
{
  v3 = sub_100002830();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Synchronizing fences between fmflocatord & CL...", buf, 2u);
  }

  v4 = [(FMFFencesMgr *)self _currentFences];
  v5 = [v4 mutableCopy];

  v6 = [(FMFFencesMgr *)self locMgr];
  v7 = [v6 monitoredRegions];

  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 count];
    v10 = [v7 count];
    *buf = 134218240;
    v56 = v9;
    v57 = 2048;
    v58 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Number of current fences: fmflocatord=%ld CL=%ld", buf, 0x16u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v50;
    *&v12 = 138412290;
    v42 = v12;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = [v16 identifier];
        v18 = [v5 objectForKeyedSubscript:v17];

        v19 = sub_100002830();
        v20 = v19;
        if (v18)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v18 fenceId];
            *buf = v42;
            v56 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fence is already monitored. No need to update monitored region of fence %@", buf, 0xCu);
          }

          v22 = [v16 identifier];
          [v5 removeObjectForKey:v22];
        }

        else
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v23 = [v16 identifier];
            *buf = v42;
            v56 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Fence %@ in CL is not present in fmflocatord. Unregistering it...", buf, 0xCu);
          }

          v22 = [(FMFFencesMgr *)self locMgr];
          [v22 stopMonitoringForRegion:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v13);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = v5;
  v25 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v25)
  {
    v27 = v25;
    v28 = *v46;
    *&v26 = 138412290;
    v43 = v26;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = [v24 objectForKeyedSubscript:{*(*(&v45 + 1) + 8 * j), v43}];
        [v30 latitude];
        v32 = v31;
        [v30 longitude];
        v59 = CLLocationCoordinate2DMake(v32, v33);
        latitude = v59.latitude;
        longitude = v59.longitude;
        if (CLLocationCoordinate2DIsValid(v59))
        {
          v36 = [CLCircularRegion alloc];
          [v30 radius];
          if (v37 >= 100.0)
          {
            v38 = v37;
          }

          else
          {
            v38 = 100.0;
          }

          v39 = [v30 fenceId];
          v40 = [v36 initWithCenter:v39 radius:latitude identifier:{longitude, v38}];

          v41 = [(FMFFencesMgr *)self locMgr];
          [v41 startMonitoringForRegion:v40];
        }

        else
        {
          v40 = sub_100002830();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v43;
            v56 = v30;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Invalid 2D coord when attempting to create fence %@", buf, 0xCu);
          }
        }
      }

      v27 = [v24 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v27);
  }
}

- (void)_trigger:(int64_t)a3 forRegionWithID:(id)a4 atLocation:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(FMFFencesMgr *)self monitoredFences];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    v12 = +[NSDate date];
    v36 = 0;
    v13 = [v11 shouldTrigger:a3 forLocation:v9 atDate:v12 reason:&v36];
    v14 = v36;

    v15 = sub_100002830();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_100014AB8(a3);
      *buf = 136316418;
      *&buf[4] = "[FMFFencesMgr _trigger:forRegionWithID:atLocation:]";
      *&buf[12] = 1024;
      *&buf[14] = v13;
      *&buf[18] = 2112;
      *&buf[20] = v16;
      v40 = 2112;
      v41 = v14;
      v42 = 2112;
      v43 = v9;
      v44 = 2112;
      v45 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: shouldTrigger: %d status: %@ reason: %@ location: %@ forFence: %@", buf, 0x3Au);
    }

    if (v13)
    {
      [v11 setLastTrigger:a3];
      v17 = +[NSDate date];
      [v11 setLastTriggerTimestamp:v17];

      v18 = [(FMFFencesMgr *)self delegate];
      [v18 fenceTriggered:v11 atLocation:v9];

      v19 = [CLLocation alloc];
      [v11 latitude];
      v21 = v20;
      [v11 longitude];
      v35 = [v19 initWithLatitude:v21 longitude:v22];
      [v9 distanceFromLocation:?];
      v24 = v23;
      [v11 radius];
      v26 = v24 - v25;
      memset(buf, 0, 24);
      v27 = +[SystemConfig sharedInstance];
      v28 = v27;
      if (v27)
      {
        [v27 batteryStats];
      }

      else
      {
        memset(buf, 0, 24);
      }

      v37[0] = @"locationManagerMonitoringFenceTriggerDistance";
      v29 = [NSNumber numberWithInteger:v26];
      v38[0] = v29;
      v37[1] = @"locationManagerMonitoringFenceTriggerType";
      v30 = sub_100014AB8(a3);
      v38[1] = v30;
      v37[2] = @"locationManagerMonitoringFenceType";
      v31 = sub_100014A90([v11 triggerType]);
      v38[2] = v31;
      v37[3] = @"locationManagerMonitoringFenceTriggerBatteryLevel";
      LODWORD(v32) = *&buf[16];
      v33 = [NSNumber numberWithFloat:v32];
      v38[3] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
      AnalyticsSendEvent();
    }
  }

  else
  {
    v14 = sub_100002830();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100037570();
    }
  }
}

- (void)_updateFencesToMonitorCache
{
  v3 = [(FMFFencesMgr *)self _fencesCacheFileURL];
  v4 = [(FMFFencesMgr *)self fencesToMonitor];
  v5 = [v4 count];

  if (v5)
  {
    v6 = sub_100002830();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(FMFFencesMgr *)self fencesToMonitor];
      *buf = 134217984;
      v25 = [v7 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Saving %ld fences to cache...", buf, 0xCu);
    }

    v8 = +[NSMutableDictionary dictionary];
    v9 = [(FMFFencesMgr *)self fencesToMonitor];
    v10 = [v9 fm_map:&stru_10005D998];
    [v8 setObject:v10 forKeyedSubscript:@"fences"];

    v11 = [(FMFFencesMgr *)self triggerURL];
    [v8 setObject:v11 forKeyedSubscript:@"triggerURL"];

    [(FMFFencesMgr *)self triggerValidityDuration];
    v12 = [NSNumber numberWithDouble:?];
    [v8 setObject:v12 forKeyedSubscript:@"triggerValidityDuration"];

    v13 = [(FMFFencesMgr *)self fenceVersion];
    [v8 setObject:v13 forKeyedSubscript:@"fenceVersion"];

    v14 = [(FMFFencesMgr *)self dataArchiver];
    v15 = [v14 saveDictionary:v8];

    if (v15)
    {
      v16 = sub_100002830();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000375EC();
      }
    }

    goto LABEL_8;
  }

  v17 = [(FMFFencesMgr *)self fenceVersion];

  if (v17)
  {
    v18 = +[NSFileManager defaultManager];
    v19 = [v3 path];
    v20 = [v18 fileExistsAtPath:v19];

    if (v20)
    {
      v21 = sub_100002830();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_10003765C(v21);
      }

      v22 = +[NSFileManager defaultManager];
      v23 = 0;
      [v22 removeItemAtURL:v3 error:&v23];
      v8 = v23;

      if (!v8)
      {
        goto LABEL_9;
      }

      v15 = sub_100002830();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1000376A0();
      }

LABEL_8:

LABEL_9:
    }
  }
}

- (void)_readFencesToMonitorCache
{
  v3 = [(FMFFencesMgr *)self dataArchiver];
  v4 = [NSSet setWithObject:objc_opt_class()];
  v16 = 0;
  v5 = [v3 readDictionaryAndClasses:v4 error:&v16];
  v6 = v16;

  v7 = sub_100002830();
  v8 = v7;
  if (v5)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMFFencesMgr successfully read fences from disk.", v15, 2u);
    }

    v10 = [v5 objectForKeyedSubscript:@"triggerURL"];
    [(FMFFencesMgr *)self setTriggerURL:v10];

    v11 = [v5 objectForKeyedSubscript:@"triggerValidityDuration"];
    [v11 doubleValue];
    [(FMFFencesMgr *)self setTriggerValidityDuration:?];

    v12 = [v5 objectForKeyedSubscript:@"fenceVersion"];
    [(FMFFencesMgr *)self setFenceVersion:v12];

    v8 = [v5 objectForKeyedSubscript:@"fences"];
    v13 = [v8 fm_map:&stru_10005D9D8];
    [(FMFFencesMgr *)self setFencesToMonitor:v13];

    v14 = sub_100002830();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10003771C(self);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000377A0();
  }
}

- (id)_fencesCacheFileURL
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 stringByAppendingPathComponent:@"Preferences"];
    v5 = [NSURL fileURLWithPath:v4 isDirectory:1 relativeToURL:0];
  }

  else
  {
    v6 = sub_100002830();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_100037810(v6);
    }

    v5 = 0;
  }

  v7 = [v5 URLByAppendingPathComponent:@"com.apple.icloud.fmflocatord.fences.notbackedup.plist" isDirectory:0];

  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100037854();
  }

  return v7;
}

- (id)_currentFences
{
  v2 = [(FMFFencesMgr *)self monitoredFences];
  v3 = [v2 fm_filter:&stru_10005DA18];

  return v3;
}

- (void)fenceSchedulerCurrentSchedulesDidChange:(id)a3
{
  v4 = sub_100002830();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[FMFFencesMgr fenceSchedulerCurrentSchedulesDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: Fence Schedules Changed, Updating CL", &v5, 0xCu);
  }

  [(FMFFencesMgr *)self updateGeoFences];
}

- (void)setupSessionCallbacks:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100018588;
    v5[3] = &unk_10005DA40;
    objc_copyWeak(&v6, &location);
    [v4 setFencesUpdateCallback:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)locationManager:(id)a3 didEnterRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1000378C8(v6);
  }

  v9 = [v6 identifier];
  v10 = [NSString stringWithFormat:@"Received didEnterRegion from CoreLocation for region: %@", v9];
  [(FMFFencesMgr *)self showDebugFenceTriggerAlertIfNeededWithTitle:@"Received didEnterRegion from CoreLocation" text:v10];

  v11 = [v6 identifier];
  v12 = [v7 location];

  [(FMFFencesMgr *)self _trigger:0 forRegionWithID:v11 atLocation:v12];
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100002830();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10003794C(v6);
  }

  v9 = [v6 identifier];
  v10 = [NSString stringWithFormat:@"Received didExitRegion from CoreLocation for region: %@", v9];
  [(FMFFencesMgr *)self showDebugFenceTriggerAlertIfNeededWithTitle:@"Received didExitRegion from CoreLocation" text:v10];

  v11 = [v6 identifier];
  v12 = [v7 location];

  [(FMFFencesMgr *)self _trigger:1 forRegionWithID:v11 atLocation:v12];
}

- (void)locationManager:(id)a3 didDetermineState:(int64_t)a4 forRegion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = sub_100002830();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000379D0(v9);
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    v12 = [v9 identifier];
    v13 = [v8 location];
    [(FMFFencesMgr *)self _trigger:v11 forRegionWithID:v12 atLocation:v13];
  }

  else
  {
    v14 = sub_100002830();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100037A54(v9);
    }

    AnalyticsSendEvent();
  }
}

- (void)locationManager:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v6 = sub_100002830();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_100037AE8();
  }

  v9 = @"locationManagerDidFailWithError";
  v7 = -[FMFFencesMgr CLErrorAsString:](self, "CLErrorAsString:", [v5 code]);
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  AnalyticsSendEvent();
}

- (void)locationManager:(id)a3 monitoringDidFailForRegion:(id)a4 withError:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100002830();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_100037B5C(v7);
  }

  v14 = @"locationManagerMonitoringDidFailForRegionError";
  v10 = -[FMFFencesMgr CLErrorAsString:](self, "CLErrorAsString:", [v8 code]);
  v15 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  AnalyticsSendEvent();

  v12 = [v7 identifier];
  v13 = [NSString stringWithFormat:@"Monitoring failed for region with identifier: %@ (%@)", v12, v8];
  [(FMFFencesMgr *)self showDebugFenceTriggerAlertIfNeededWithTitle:@"Monitoring failed for region" text:v13];
}

- (void)locationManager:(id)a3 didStartMonitoringForRegion:(id)a4
{
  v4 = a4;
  v5 = sub_100002830();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100037C04(v4);
  }

  AnalyticsSendEvent();
}

- (void)showDebugFenceTriggerAlertIfNeededWithTitle:(id)a3 text:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (qword_100070168 != -1)
  {
    sub_100037C88();
  }

  if (byte_100070160 == 1)
  {
    v6 = objc_alloc_init(FMAlert);
    [v6 setCategory:qword_10006FAF8];
    [v6 setMsgTitle:v8];
    [v6 setMsgText:v5];
    [v6 setShowMsgInLockScreen:1];
    [v6 setDismissMsgOnUnlock:0];
    [v6 setDismissMsgOnLock:0];
    v7 = +[FMAlertManager sharedInstance];
    [v7 activateAlert:v6];
  }
}

- (id)CLErrorAsString:(int64_t)a3
{
  if (a3 >= 0x12)
  {
    v4 = [NSString stringWithFormat:@"%ld", a3];
  }

  else
  {
    v4 = *(&off_10005DA80 + a3);
  }

  return v4;
}

- (FMFFencesMgrDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end