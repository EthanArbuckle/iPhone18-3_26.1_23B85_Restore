@interface MLRXPCActivityManager
- (BOOL)setStateForXPCActivity:(id)activity state:(int64_t)state;
- (MLRXPCActivityManager)init;
- (id)createXPCActivityTasks;
- (void)_registerXPCActivityTasks:(id)tasks;
- (void)handleCompleteActivityTask:(id)task withError:(id)error;
- (void)handleDeferActivityTask:(id)task withStartTime:(double)time;
- (void)registerIfNeeded;
- (void)runActivityTask:(id)task;
- (void)setCriteriaForXPCActivityIfNeeded:(id)needed criteria:(id)criteria;
@end

@implementation MLRXPCActivityManager

- (MLRXPCActivityManager)init
{
  v3.receiver = self;
  v3.super_class = MLRXPCActivityManager;
  return [(MLRXPCActivityManager *)&v3 init];
}

- (void)handleCompleteActivityTask:(id)task withError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = +[DESLogging coreChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (errorCopy)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    identifier = [taskCopy identifier];
    *v15 = 138543618;
    *&v15[4] = identifier;
    *&v15[12] = 2114;
    *&v15[14] = errorCopy;
    v11 = "%{public}@ failed: %{public}@.";
    v12 = v8;
    v13 = 22;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    identifier = [taskCopy identifier];
    *v15 = 138543362;
    *&v15[4] = identifier;
    v11 = "%{public}@ completed successfully.";
    v12 = v8;
    v13 = 12;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, v15, v13);

LABEL_7:
  activity = [taskCopy activity];
  [taskCopy setActivity:0];
  if ([taskCopy eligibilityHandler])
  {
    -[MLRXPCActivityManager removeEligibilityChangedHandler:](self, "removeEligibilityChangedHandler:", [taskCopy eligibilityHandler]);
    [taskCopy setEligibilityHandler:0];
  }

  if ([taskCopy activityDeferred])
  {
    [(MLRXPCActivityManager *)self setStateForXPCActivity:activity state:3];
  }

  else
  {
    +[DESUserDefaultsStoreRecord purgeObsoleted];
    [(MLRXPCActivityManager *)self setStateForXPCActivity:activity state:5];
    if ([taskCopy dynamicallyRegistered])
    {
      [taskCopy setShouldRegister:0];
    }
  }
}

- (void)handleDeferActivityTask:(id)task withStartTime:(double)time
{
  taskCopy = task;
  if ([taskCopy activityDeferred])
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [taskCopy identifier];
      v15 = 138412290;
      v16 = identifier;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAS request to defer activity=%@ again. Ignoring.", &v15, 0xCu);
    }
  }

  else
  {
    [taskCopy setActivityDeferred:1];
    v8 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [taskCopy identifier];
      v15 = 138412290;
      v16 = identifier2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DAS request to defer activity: %@.", &v15, 0xCu);
    }

    v10 = +[NSProcessInfo processInfo];
    [v10 systemUptime];
    v12 = v11 - time;

    identifier3 = [taskCopy identifier];
    *&v14 = v12;
    [DESCoreAnalyticsEventManager sendEventActivityShouldDeferWithActivityID:identifier3 connectionDuration:v14];

    [taskCopy stop];
  }
}

- (void)runActivityTask:(id)task
{
  taskCopy = task;
  v5 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [taskCopy identifier];
    *buf = 138543362;
    v24 = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting %{public}@.", buf, 0xCu);
  }

  [taskCopy setActivityDeferred:0];
  if ([(MLRXPCActivityManager *)self submissionAllowed])
  {
    identifier2 = [taskCopy identifier];
    [DESCoreAnalyticsEventManager sendEventMaintenanceWithActivityID:identifier2 intervalSincePostedEvent:0 shouldSkip:MKBGetDeviceLockState() lockState:0.0];

LABEL_6:
    v10 = +[NSProcessInfo processInfo];
    [v10 systemUptime];
    v12 = v11;

    activity = [taskCopy activity];
    [(MLRXPCActivityManager *)self setStateForXPCActivity:activity state:4];

    objc_initWeak(buf, self);
    activity2 = [taskCopy activity];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002590;
    v20[3] = &unk_100008440;
    objc_copyWeak(v22, buf);
    v15 = taskCopy;
    v21 = v15;
    v22[1] = v12;
    [v15 setEligibilityHandler:{-[MLRXPCActivityManager addEligibilityChangedHandlerForActivity:handler:](self, "addEligibilityChangedHandlerForActivity:handler:", activity2, v20)}];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000262C;
    v18[3] = &unk_100008468;
    v18[4] = self;
    v19 = v15;
    [v19 startTaskWithCompletion:v18];

    objc_destroyWeak(v22);
    objc_destroyWeak(buf);
    goto LABEL_10;
  }

  bypassDiagnosticsUsage = [taskCopy bypassDiagnosticsUsage];
  identifier3 = [taskCopy identifier];
  [DESCoreAnalyticsEventManager sendEventMaintenanceWithActivityID:identifier3 intervalSincePostedEvent:bypassDiagnosticsUsage ^ 1 shouldSkip:MKBGetDeviceLockState() lockState:0.0];

  if (bypassDiagnosticsUsage)
  {
    goto LABEL_6;
  }

  v16 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    identifier4 = [taskCopy identifier];
    *buf = 138543362;
    v24 = identifier4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ because D&U is not allowed.", buf, 0xCu);
  }

  [(MLRXPCActivityManager *)self handleCompleteActivityTask:taskCopy withError:0];
LABEL_10:
}

- (void)_registerXPCActivityTasks:(id)tasks
{
  tasksCopy = tasks;
  submissionAllowed = [(MLRXPCActivityManager *)self submissionAllowed];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = tasksCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v20 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        if (submissionAllowed & 1) != 0 || ([*(*(&v23 + 1) + 8 * v10) bypassDiagnosticsUsage])
        {
          v12 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [v11 identifier];
            *buf = v20;
            v28 = identifier;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registering xpc activity %@.", buf, 0xCu);
          }

          identifier2 = [v11 identifier];
          uTF8String = [identifier2 UTF8String];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100002914;
          v22[3] = &unk_100008490;
          v22[4] = self;
          v22[5] = v11;
          [(MLRXPCActivityManager *)self registerWithIdentifier:uTF8String criteria:XPC_ACTIVITY_CHECK_IN handler:v22];
        }

        else
        {
          v16 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            identifier3 = [v11 identifier];
            *buf = v20;
            v28 = identifier3;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unregistering xpc activity %@ because D&U is not allowed.", buf, 0xCu);
          }

          identifier4 = [v11 identifier];
          -[MLRXPCActivityManager unregisterXPCActivityWithIdentifier:](self, "unregisterXPCActivityWithIdentifier:", [identifier4 UTF8String]);

          if ([v11 dynamicallyRegistered])
          {
            [v11 setShouldRegister:0];
          }
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v19 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      v8 = v19;
    }

    while (v19);
  }
}

- (id)createXPCActivityTasks
{
  v2 = objc_opt_new();
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [NSMutableArray arrayWithArray:v3];

  return v4;
}

- (void)registerIfNeeded
{
  submissionAllowed = [(MLRXPCActivityManager *)self submissionAllowed];
  submissionWasAllowed = self->_submissionWasAllowed;
  self->_submissionWasAllowed = submissionAllowed;
  if (self->_hasRegistered && submissionWasAllowed == submissionAllowed)
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Not re-registering because we have registered and D&U has not changed", buf, 2u);
    }
  }

  else
  {
    self->_hasRegistered = 1;
    createXPCActivityTasks = [(MLRXPCActivityManager *)self createXPCActivityTasks];
    [(MLRXPCActivityManager *)self _registerXPCActivityTasks:createXPCActivityTasks];
  }
}

- (BOOL)setStateForXPCActivity:(id)activity state:(int64_t)state
{
  activityCopy = activity;
  v6 = xpc_activity_set_state(activityCopy, state);
  if (!v6)
  {
    v7 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100002DF0(activityCopy, state, v7);
    }
  }

  return v6;
}

- (void)setCriteriaForXPCActivityIfNeeded:(id)needed criteria:(id)criteria
{
  neededCopy = needed;
  criteriaCopy = criteria;
  v7 = xpc_activity_copy_criteria(neededCopy);
  int64 = xpc_dictionary_get_int64(criteriaCopy, XPC_ACTIVITY_INTERVAL);
  if (!v7 || xpc_dictionary_get_int64(v7, XPC_ACTIVITY_INTERVAL) != int64)
  {
    v9 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134349314;
      v11 = int64;
      v12 = 2114;
      v13 = neededCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set new activity interval to %{public}lld seconds for %{public}@", &v10, 0x16u);
    }

    xpc_activity_set_criteria(neededCopy, criteriaCopy);
  }
}

@end