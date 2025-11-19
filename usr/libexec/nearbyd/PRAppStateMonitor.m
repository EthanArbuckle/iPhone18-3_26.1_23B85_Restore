@interface PRAppStateMonitor
- (BOOL)isDaemon;
- (BOOL)isRunningBoardApp;
- (BOOL)isUIBackgroundModeEnabled;
- (BOOL)isXPCService;
- (NSArray)printableState;
- (NSString)launchdJobLabel;
- (NSString)monitoredProcessName;
- (PRAppStateMonitor)initWithPID:(int)a3;
- (int)currentAppState;
- (void)_handleActivityContentUpdate:(id)a3;
- (void)_process:(id)a3 didTerminate:(id)a4;
- (void)_process:(id)a3 didUpdateState:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)removeObserver:(id)a3;
@end

@implementation PRAppStateMonitor

- (PRAppStateMonitor)initWithPID:(int)a3
{
  v52.receiver = self;
  v52.super_class = PRAppStateMonitor;
  v4 = [(PRAppStateMonitor *)&v52 init];
  if (v4)
  {
    v5 = objc_opt_new();
    observers = v4->_observers;
    v4->_observers = v5;

    processNameInternal = v4->_processNameInternal;
    v4->_processNameInternal = 0;

    launchdJobLabelInternal = v4->_launchdJobLabelInternal;
    v4->_launchdJobLabelInternal = 0;

    v4->_lock._os_unfair_lock_opaque = 0;
    v4->_monitoredPID = a3;
    objc_initWeak(&location, v4);
    v9 = [RBSProcessIdentifier identifierWithPid:v4->_monitoredPID];
    v50 = 0;
    v10 = [RBSProcessHandle handleForIdentifier:v9 error:&v50];
    v11 = v50;
    processHandle = v4->_processHandle;
    v4->_processHandle = v10;

    if (v11)
    {
      v13 = qword_1009F9820;
      if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_ERROR))
      {
        sub_1004ABB80(v11, v13);
      }
    }

    v14 = [(RBSProcessHandle *)v4->_processHandle name];
    v15 = v4->_processNameInternal;
    v4->_processNameInternal = v14;

    v16 = [(RBSProcessHandle *)v4->_processHandle daemonJobLabel];
    v17 = v4->_launchdJobLabelInternal;
    v4->_launchdJobLabelInternal = v16;

    v4->_isDaemonInternal = [(RBSProcessHandle *)v4->_processHandle isDaemon];
    v4->_isRunningBoardAppInternal = [(RBSProcessHandle *)v4->_processHandle isApplication];
    v4->_isXPCServiceInternal = [(RBSProcessHandle *)v4->_processHandle isXPCService];
    v18 = [(RBSProcessHandle *)v4->_processHandle bundle];
    v19 = [v18 bundleInfoValueForKey:@"UIBackgroundModes"];
    v4->_isUIBackgroundModeEnabledInternal = [v19 containsObject:@"nearby-interaction"];

    v20 = [(RBSProcessHandle *)v4->_processHandle bundle];
    v21 = [v20 identifier];
    bundleIdentifierInternal = v4->_bundleIdentifierInternal;
    v4->_bundleIdentifierInternal = v21;

    v23 = objc_opt_new();
    liveActivities_AllActive = v4->_liveActivities_AllActive;
    v4->_liveActivities_AllActive = v23;

    v25 = objc_opt_new();
    liveActivities_ActiveWhileAppFG = v4->_liveActivities_ActiveWhileAppFG;
    v4->_liveActivities_ActiveWhileAppFG = v25;

    v4->_combinedAppState = 0;
    v4->_timeOfLatestCombinedAppState = sub_100005288();
    v48 = 0u;
    v49 = 0u;
    v27 = v4->_processHandle;
    if (v27)
    {
      [(RBSProcessHandle *)v27 auditToken];
    }

    v28 = xpc_copy_code_signing_identity_for_token();
    if (v28)
    {
      v29 = [NSString stringWithUTF8String:v28];
      signingIdentityInternal = v4->_signingIdentityInternal;
      v4->_signingIdentityInternal = v29;

      free(v28);
    }

    v31 = v4->_processHandle;
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 3221225472;
    v46[2] = sub_100208324;
    v46[3] = &unk_10099E678;
    objc_copyWeak(&v47, &location);
    [(RBSProcessHandle *)v31 monitorForDeath:v46];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1002083B8;
    v43[3] = &unk_10099E6C8;
    v32 = v9;
    v44 = v32;
    objc_copyWeak(&v45, &location);
    v33 = [RBSProcessMonitor monitorWithConfiguration:v43];
    processMonitor = v4->_processMonitor;
    v4->_processMonitor = v33;

    if (objc_opt_class())
    {
      v35 = objc_opt_new();
      activityCenter = v4->_activityCenter;
      v4->_activityCenter = v35;

      v37 = v4->_activityCenter;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10020862C;
      v41[3] = &unk_10099E6F0;
      objc_copyWeak(&v42, &location);
      v38 = [(ACActivityCenter *)v37 observeContentUpdatesWithHandler:v41];
      liveActivitySubscription = v4->_liveActivitySubscription;
      v4->_liveActivitySubscription = v38;

      objc_destroyWeak(&v42);
    }

    objc_destroyWeak(&v45);

    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v4;
}

- (void)dealloc
{
  [(PRAppStateMonitor *)self invalidate];
  v3.receiver = self;
  v3.super_class = PRAppStateMonitor;
  [(PRAppStateMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  liveActivitySubscription = self->_liveActivitySubscription;

  [(BSInvalidatable *)liveActivitySubscription invalidate];
}

- (NSString)monitoredProcessName
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_processNameInternal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)launchdJobLabel
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_launchdJobLabelInternal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isDaemon
{
  os_unfair_lock_lock(&self->_lock);
  isDaemonInternal = self->_isDaemonInternal;
  os_unfair_lock_unlock(&self->_lock);
  return isDaemonInternal;
}

- (BOOL)isRunningBoardApp
{
  os_unfair_lock_lock(&self->_lock);
  isRunningBoardAppInternal = self->_isRunningBoardAppInternal;
  os_unfair_lock_unlock(&self->_lock);
  return isRunningBoardAppInternal;
}

- (BOOL)isXPCService
{
  os_unfair_lock_lock(&self->_lock);
  isXPCServiceInternal = self->_isXPCServiceInternal;
  os_unfair_lock_unlock(&self->_lock);
  return isXPCServiceInternal;
}

- (BOOL)isUIBackgroundModeEnabled
{
  os_unfair_lock_lock(&self->_lock);
  isUIBackgroundModeEnabledInternal = self->_isUIBackgroundModeEnabledInternal;
  os_unfair_lock_unlock(&self->_lock);
  return isUIBackgroundModeEnabledInternal;
}

- (int)currentAppState
{
  os_unfair_lock_lock(&self->_lock);
  combinedAppState = self->_combinedAppState;
  os_unfair_lock_unlock(&self->_lock);
  return combinedAppState;
}

- (NSArray)printableState
{
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  v4 = objc_autoreleasePoolPush();
  if (self->_isDaemonInternal)
  {
    v5 = @"Daemon";
  }

  else if (self->_isXPCServiceInternal)
  {
    v5 = @"XPC Service";
  }

  else if (self->_isRunningBoardAppInternal)
  {
    v5 = @"App";
  }

  else
  {
    v5 = @"Other";
  }

  v6 = v5;
  v7 = self->_combinedAppState - 1;
  if (v7 > 3)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = *(&off_10099E738 + v7);
  }

  runningBoardState = self->_runningBoardState;
  if (runningBoardState)
  {
    v10 = [(RBSProcessState *)runningBoardState isRunning];
    v11 = @"No";
    if (v10)
    {
      v11 = @"Yes";
    }
  }

  else
  {
    v11 = @"Unknown";
  }

  v12 = v11;
  v13 = self->_runningBoardState;
  if (v13)
  {
    v14 = [(RBSProcessState *)v13 taskState];
  }

  else
  {
    v14 = 0;
  }

  v15 = [NSString stringWithFormat:@"[%d: %@]", self->_monitoredPID, self->_processNameInternal];
  [v3 addObject:v15];

  v16 = [NSString stringWithFormat:@"    Type: %@. State: running %@ [%d], app %@ [age: %.2f s]. Observers: %d", v6, v12, v14, v8, sub_100005288() - self->_timeOfLatestCombinedAppState, [(NSMutableSet *)self->_observers count]];
  [v3 addObject:v16];

  v17 = [NSString stringWithFormat:@"    Live activities: all %d, while FG %d. Considered: %d", [(NSMutableSet *)self->_liveActivities_AllActive count], [(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG count], sub_100208CEC()];
  [v3 addObject:v17];

  launchdJobLabelInternal = self->_launchdJobLabelInternal;
  v19 = [NSString stringWithFormat:@"    Label: %@. Signing ID: %@", launchdJobLabelInternal, self->_signingIdentityInternal];
  [v3 addObject:v19];

  v20 = [NSString stringWithFormat:@"    Bundle: ID %@, UIBackgroundModeNI %d", self->_bundleIdentifierInternal, self->_isUIBackgroundModeEnabledInternal];
  [v3 addObject:v20];

  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_process:(id)a3 didUpdateState:(id)a4
{
  v31 = a3;
  v32 = a4;
  v5 = qword_1009F9820;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v31 name];
    *buf = 138478339;
    *v44 = v31;
    *&v44[8] = 2113;
    *&v44[10] = v6;
    *&v44[18] = 2113;
    *&v44[20] = v32;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PRAppStateMonitor] _process: %{private}@, name: %{private}@, didUpdateState: %{private}@", buf, 0x20u);
  }

  v34 = [v31 pid];
  v7 = self;
  if (v34 != self->_monitoredPID)
  {
    sub_1004ABBF8(&self->_monitoredPID, v34);
  }

  os_unfair_lock_lock(&self->_lock);
  if (!self->_processNameInternal)
  {
    v8 = [v31 name];
    processNameInternal = self->_processNameInternal;
    self->_processNameInternal = v8;

    v7 = self;
  }

  v10 = [v32 state];
  runningBoardState = v7->_runningBoardState;
  v7->_runningBoardState = v10;

  combinedAppState = self->_combinedAppState;
  v13 = [v32 state];
  v14 = sub_100209234(v13);

  if (v14 == 2)
  {
    v15 = self;
    [(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG unionSet:self->_liveActivities_AllActive];
    v14 = 2;
  }

  else
  {
    v15 = self;
    if (v14 == 4)
    {
      if (sub_100208CEC() && self->_isUIBackgroundModeEnabledInternal)
      {
        if ([(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG count])
        {
          v14 = 3;
        }

        else
        {
          v14 = 4;
        }
      }

      else
      {
        v14 = 4;
      }
    }
  }

  if (v14 == combinedAppState)
  {
    os_unfair_lock_unlock(&v15->_lock);
  }

  else
  {
    v15->_combinedAppState = v14;
    v15->_timeOfLatestCombinedAppState = sub_100005288();
    v16 = [NSString stringWithFormat:@"Live activities: all %d, while FG %d. ", [(NSMutableSet *)v15->_liveActivities_AllActive count], [(NSMutableSet *)v15->_liveActivities_ActiveWhileAppFG count]];
    v17 = qword_1009F9820;
    v30 = v16;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      if ((combinedAppState - 1) > 3)
      {
        v18 = @"Unknown";
      }

      else
      {
        v18 = *(&off_10099E738 + (combinedAppState - 1));
      }

      v19 = *(&off_10099E738 + v14 - 1);
      v20 = sub_100208CEC();
      v21 = &stru_1009B1428;
      v22 = v15->_runningBoardState;
      if (v20)
      {
        v21 = v16;
      }

      *buf = 67110146;
      *v44 = v34;
      *&v44[4] = 2112;
      *&v44[6] = v19;
      *&v44[14] = 2112;
      *&v44[16] = v18;
      *&v44[24] = 2112;
      *&v44[26] = v21;
      v45 = 2112;
      v46 = v22;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[PRAppStateMonitor] pid %d combinedAppState updated to %@ (from %@). %@RunningBoard state: %@", buf, 0x30u);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v23 = self->_observers;
    v24 = v23;
    v25 = [(NSMutableSet *)v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v25)
    {
      v26 = *v39;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v39 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v38 + 1) + 8 * i);
          v29 = [v28 updatesQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1002092C8;
          block[3] = &unk_10098A450;
          block[4] = v28;
          v36 = v34;
          v37 = v14;
          dispatch_async(v29, block);
        }

        v23 = v24;
        v25 = [(NSMutableSet *)v24 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v25);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_process:(id)a3 didTerminate:(id)a4
{
  v14 = a3;
  v15 = a4;
  v5 = [v14 pid];
  v6 = qword_1009F9820;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v14 name];
    *buf = 138478339;
    v25 = v14;
    v26 = 2113;
    v27 = v7;
    v28 = 2113;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PRAppStateMonitor] _process: %{private}@, name: %{private}@, didTerminate: %{private}@", buf, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_observers;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v12 updatesQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100209568;
        block[3] = &unk_10099E718;
        block[4] = v12;
        v18 = v5;
        dispatch_async(v13, block);
      }

      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  self->_combinedAppState = 1;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleActivityContentUpdate:(id)a3
{
  v33 = a3;
  v4 = [v33 descriptor];
  v5 = [v4 platterTargetBundleIdentifier];

  v6 = [v33 descriptor];
  v7 = [v6 activityIdentifier];

  v8 = [v33 state];
  bundleIdentifierInternal = self->_bundleIdentifierInternal;
  if (bundleIdentifierInternal && [(NSString *)bundleIdentifierInternal isEqualToString:v5])
  {
    os_unfair_lock_lock(&self->_lock);
    v10 = [(NSMutableSet *)self->_liveActivities_AllActive count];
    v11 = [(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG count];
    if (v8)
    {
      if (v8 <= 2)
      {
        [(NSMutableSet *)self->_liveActivities_AllActive removeObject:v7];
        [(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG removeObject:v7];
      }
    }

    else
    {
      [(NSMutableSet *)self->_liveActivities_AllActive addObject:v7];
      if (self->_combinedAppState == 2)
      {
        [(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG addObject:v7];
      }
    }

    v12 = [(NSMutableSet *)self->_liveActivities_AllActive count];
    v13 = [(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG count];
    v14 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413826;
      v44 = v5;
      v45 = 2112;
      v46 = v7;
      v47 = 1024;
      *v48 = v8;
      *&v48[4] = 1024;
      *&v48[6] = v10;
      LOWORD(v49) = 1024;
      *(&v49 + 2) = v11;
      HIWORD(v49) = 1024;
      *v50 = v12;
      *&v50[4] = 1024;
      *&v50[6] = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[PRAppStateMonitor] Bundle ID: %@, activity ID: %@, state %d. Counts before update: all %d, while FG %d. Counts after update: all %d, while FG %d", buf, 0x34u);
    }

    combinedAppState = self->_combinedAppState;
    if (sub_100208CEC() && self->_isUIBackgroundModeEnabledInternal && v11 && !v13 && combinedAppState == 3 && (v16 = sub_100209234(self->_runningBoardState), v17 = v16, v16 != 3))
    {
      self->_combinedAppState = v16;
      self->_timeOfLatestCombinedAppState = sub_100005288();
      v32 = v7;
      v18 = [NSString stringWithFormat:@"Live activities: all %d, while FG %d. ", [(NSMutableSet *)self->_liveActivities_AllActive count], [(NSMutableSet *)self->_liveActivities_ActiveWhileAppFG count]];
      v19 = qword_1009F9820;
      v31 = v18;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(&off_10099E738 + v17 - 1);
        v21 = sub_100208CEC();
        v22 = &stru_1009B1428;
        runningBoardState = self->_runningBoardState;
        if (v21)
        {
          v22 = v18;
        }

        *buf = 138413314;
        v44 = v5;
        v45 = 2112;
        v46 = v20;
        v47 = 2112;
        *v48 = @"Visible_LiveActivity";
        *&v48[8] = 2112;
        v49 = v22;
        *v50 = 2112;
        *&v50[2] = runningBoardState;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[PRAppStateMonitor] bundleID %@ combinedAppState updated to %@ (from %@). %@RunningBoard state: %@", buf, 0x34u);
      }

      monitoredPID = self->_monitoredPID;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v25 = self->_observers;
      obj = v25;
      v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v26)
      {
        v27 = *v39;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v38 + 1) + 8 * i);
            v30 = [v29 updatesQueue];
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100209A80;
            block[3] = &unk_10098A450;
            block[4] = v29;
            v36 = monitoredPID;
            v37 = v17;
            dispatch_async(v30, block);
          }

          v25 = obj;
          v26 = [(NSMutableSet *)obj countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v26);
      }

      os_unfair_lock_unlock(&self->_lock);
      v7 = v32;
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

@end