@interface MLRXPCActivityManager
- (BOOL)setStateForXPCActivity:(id)a3 state:(int64_t)a4;
- (MLRXPCActivityManager)init;
- (id)createXPCActivityTasks;
- (void)_registerXPCActivityTasks:(id)a3;
- (void)handleCompleteActivityTask:(id)a3 withError:(id)a4;
- (void)handleDeferActivityTask:(id)a3 withStartTime:(double)a4;
- (void)registerIfNeeded;
- (void)runActivityTask:(id)a3;
- (void)setCriteriaForXPCActivityIfNeeded:(id)a3 criteria:(id)a4;
@end

@implementation MLRXPCActivityManager

- (MLRXPCActivityManager)init
{
  v3.receiver = self;
  v3.super_class = MLRXPCActivityManager;
  return [(MLRXPCActivityManager *)&v3 init];
}

- (void)handleCompleteActivityTask:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[DESLogging coreChannel];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_7;
    }

    v10 = [v6 identifier];
    *v15 = 138543618;
    *&v15[4] = v10;
    *&v15[12] = 2114;
    *&v15[14] = v7;
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

    v10 = [v6 identifier];
    *v15 = 138543362;
    *&v15[4] = v10;
    v11 = "%{public}@ completed successfully.";
    v12 = v8;
    v13 = 12;
  }

  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, v15, v13);

LABEL_7:
  v14 = [v6 activity];
  [v6 setActivity:0];
  if ([v6 eligibilityHandler])
  {
    -[MLRXPCActivityManager removeEligibilityChangedHandler:](self, "removeEligibilityChangedHandler:", [v6 eligibilityHandler]);
    [v6 setEligibilityHandler:0];
  }

  if ([v6 activityDeferred])
  {
    [(MLRXPCActivityManager *)self setStateForXPCActivity:v14 state:3];
  }

  else
  {
    +[DESUserDefaultsStoreRecord purgeObsoleted];
    [(MLRXPCActivityManager *)self setStateForXPCActivity:v14 state:5];
    if ([v6 dynamicallyRegistered])
    {
      [v6 setShouldRegister:0];
    }
  }
}

- (void)handleDeferActivityTask:(id)a3 withStartTime:(double)a4
{
  v5 = a3;
  if ([v5 activityDeferred])
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 identifier];
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DAS request to defer activity=%@ again. Ignoring.", &v15, 0xCu);
    }
  }

  else
  {
    [v5 setActivityDeferred:1];
    v8 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 identifier];
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DAS request to defer activity: %@.", &v15, 0xCu);
    }

    v10 = +[NSProcessInfo processInfo];
    [v10 systemUptime];
    v12 = v11 - a4;

    v13 = [v5 identifier];
    *&v14 = v12;
    [DESCoreAnalyticsEventManager sendEventActivityShouldDeferWithActivityID:v13 connectionDuration:v14];

    [v5 stop];
  }
}

- (void)runActivityTask:(id)a3
{
  v4 = a3;
  v5 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 identifier];
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting %{public}@.", buf, 0xCu);
  }

  [v4 setActivityDeferred:0];
  if ([(MLRXPCActivityManager *)self submissionAllowed])
  {
    v7 = [v4 identifier];
    [DESCoreAnalyticsEventManager sendEventMaintenanceWithActivityID:v7 intervalSincePostedEvent:0 shouldSkip:MKBGetDeviceLockState() lockState:0.0];

LABEL_6:
    v10 = +[NSProcessInfo processInfo];
    [v10 systemUptime];
    v12 = v11;

    v13 = [v4 activity];
    [(MLRXPCActivityManager *)self setStateForXPCActivity:v13 state:4];

    objc_initWeak(buf, self);
    v14 = [v4 activity];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100002590;
    v20[3] = &unk_100008440;
    objc_copyWeak(v22, buf);
    v15 = v4;
    v21 = v15;
    v22[1] = v12;
    [v15 setEligibilityHandler:{-[MLRXPCActivityManager addEligibilityChangedHandlerForActivity:handler:](self, "addEligibilityChangedHandlerForActivity:handler:", v14, v20)}];

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

  v8 = [v4 bypassDiagnosticsUsage];
  v9 = [v4 identifier];
  [DESCoreAnalyticsEventManager sendEventMaintenanceWithActivityID:v9 intervalSincePostedEvent:v8 ^ 1 shouldSkip:MKBGetDeviceLockState() lockState:0.0];

  if (v8)
  {
    goto LABEL_6;
  }

  v16 = +[DESLogging coreChannel];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v4 identifier];
    *buf = 138543362;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ because D&U is not allowed.", buf, 0xCu);
  }

  [(MLRXPCActivityManager *)self handleCompleteActivityTask:v4 withError:0];
LABEL_10:
}

- (void)_registerXPCActivityTasks:(id)a3
{
  v4 = a3;
  v5 = [(MLRXPCActivityManager *)self submissionAllowed];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
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
        if (v5 & 1) != 0 || ([*(*(&v23 + 1) + 8 * v10) bypassDiagnosticsUsage])
        {
          v12 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 identifier];
            *buf = v20;
            v28 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Registering xpc activity %@.", buf, 0xCu);
          }

          v14 = [v11 identifier];
          v15 = [v14 UTF8String];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_100002914;
          v22[3] = &unk_100008490;
          v22[4] = self;
          v22[5] = v11;
          [(MLRXPCActivityManager *)self registerWithIdentifier:v15 criteria:XPC_ACTIVITY_CHECK_IN handler:v22];
        }

        else
        {
          v16 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v11 identifier];
            *buf = v20;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Unregistering xpc activity %@ because D&U is not allowed.", buf, 0xCu);
          }

          v18 = [v11 identifier];
          -[MLRXPCActivityManager unregisterXPCActivityWithIdentifier:](self, "unregisterXPCActivityWithIdentifier:", [v18 UTF8String]);

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
  v3 = [(MLRXPCActivityManager *)self submissionAllowed];
  submissionWasAllowed = self->_submissionWasAllowed;
  self->_submissionWasAllowed = v3;
  if (self->_hasRegistered && submissionWasAllowed == v3)
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
    v7 = [(MLRXPCActivityManager *)self createXPCActivityTasks];
    [(MLRXPCActivityManager *)self _registerXPCActivityTasks:v7];
  }
}

- (BOOL)setStateForXPCActivity:(id)a3 state:(int64_t)a4
{
  v5 = a3;
  v6 = xpc_activity_set_state(v5, a4);
  if (!v6)
  {
    v7 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100002DF0(v5, a4, v7);
    }
  }

  return v6;
}

- (void)setCriteriaForXPCActivityIfNeeded:(id)a3 criteria:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = xpc_activity_copy_criteria(v5);
  int64 = xpc_dictionary_get_int64(v6, XPC_ACTIVITY_INTERVAL);
  if (!v7 || xpc_dictionary_get_int64(v7, XPC_ACTIVITY_INTERVAL) != int64)
  {
    v9 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134349314;
      v11 = int64;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set new activity interval to %{public}lld seconds for %{public}@", &v10, 0x16u);
    }

    xpc_activity_set_criteria(v5, v6);
  }
}

@end