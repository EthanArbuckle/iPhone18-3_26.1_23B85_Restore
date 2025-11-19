@interface _DASBGSystemTaskHelper
+ (id)sharedInstance;
- (BOOL)dasSubmitActivity:(id)a3 withClientOffset:(double)a4 error:(id *)a5;
- (BOOL)sendToPPS:(id)a3;
- (_DASBGSystemTaskHelper)init;
- (double)uptimeSeconds;
- (id)bootupDate;
- (id)initForTest;
- (id)serviceNameFromToken:(unint64_t)a3;
- (void)acknowledgeSystemTaskLaunchWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6;
- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 retryAfter:(double)a6 completionHandler:(id)a7;
- (void)completeSystemTaskWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6;
- (void)dasCancelActivity:(id)a3;
- (void)dasCancelActivityWithReason:(id)a3 expirationReason:(int64_t)a4;
- (void)dasCompleteActivity:(id)a3;
- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6;
- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 retryAfter:(double)a6 completionHandler:(id)a7;
- (void)inspect:(id)a3 withHandler:(id)a4;
- (void)recordTaskWorkloadProgress:(id)a3 target:(unint64_t)a4 completed:(unint64_t)a5 category:(unint64_t)a6 subCategory:(id)a7 withPID:(int)a8 withUID:(unsigned int)a9 completionHandler:(id)a10;
- (void)registerTimeChangeNotification;
- (void)reportSystemTaskWithIdentifier:(id)a3 consumedResults:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7;
- (void)reportSystemTaskWithIdentifier:(id)a3 producedResults:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7;
- (void)resetFastPassActivities:(id)a3 resetAll:(BOOL)a4 withHandler:(id)a5;
- (void)resetResultsForIdentifier:(id)a3 byTaskWithIdentifier:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7;
- (void)resubmitRunningTasks:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5;
- (void)resumeTaskSchedulingWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6;
- (void)runActivity:(id)a3;
- (void)setupPublisher;
- (void)significantTimeChangeHandler:(id)a3;
- (void)startWithListener:(id)a3;
- (void)submitTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7;
- (void)suspendActivity:(id)a3;
- (void)unregisterSystemTaskWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6;
- (void)updateTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7;
@end

@implementation _DASBGSystemTaskHelper

+ (id)sharedInstance
{
  if (qword_10020B708 != -1)
  {
    sub_100127A7C();
  }

  v3 = qword_10020B700;

  return v3;
}

- (_DASBGSystemTaskHelper)init
{
  v15.receiver = self;
  v15.super_class = _DASBGSystemTaskHelper;
  v2 = [(_DASBGSystemTaskHelper *)&v15 init];
  v3 = [_DASDaemonLogger logForCategory:@"BGSTHelper"];
  log = v2->_log;
  v2->_log = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  activities = v2->_activities;
  v2->_activities = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.bg.system.task", v7);
  activityQueue = v2->_activityQueue;
  v2->_activityQueue = v8;

  v2->_clampToBGQoS = 0;
  if (_os_feature_enabled_impl())
  {
    v2->_clampToBGQoS = 1;
    v10 = v2->_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performance clamped to BG QoS", v14, 2u);
    }
  }

  [(_DASBGSystemTaskHelper *)v2 setupPublisher];
  v11 = [(_DASBGSystemTaskHelper *)v2 bootupDate];
  currentBootupDate = v2->_currentBootupDate;
  v2->_currentBootupDate = v11;

  [(_DASBGSystemTaskHelper *)v2 registerTimeChangeNotification];
  return v2;
}

- (id)serviceNameFromToken:(unint64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  if (xpc_get_service_identifier_for_token())
  {
    v3 = [NSString stringWithUTF8String:&v6];
    if ([(__CFString *)v3 hasPrefix:@"com.apple.", v6, v7, v8, v9, v10, v11, v12, v13])
    {
      v4 = [(__CFString *)v3 stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_1001BA3C0];

      v3 = v4;
    }
  }

  else
  {
    v3 = &stru_1001BA3C0;
  }

  return v3;
}

- (void)setupPublisher
{
  activityQueue = self->_activityQueue;
  v4 = xpc_event_publisher_create();
  publisher = self->_publisher;
  self->_publisher = v4;

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100005E0C;
  v8[3] = &unk_1001B7C50;
  v8[4] = self;
  v6 = objc_retainBlock(v8);
  v7 = self->_publisher;
  xpc_event_publisher_set_handler();
}

- (void)startWithListener:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Creating scheduler with endpoint to listener by DAS", buf, 2u);
  }

  v6 = [v4 endpoint];
  v7 = [_DASScheduler schedulerWithEndpoint:v6 withClientName:_DASClientNameBGST];
  scheduler = self->_scheduler;
  self->_scheduler = v7;

  v9 = self->_log;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activating listener sent by DAS", buf, 2u);
  }

  [v4 activate];
  v10 = self->_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activating publisher", buf, 2u);
  }

  publisher = self->_publisher;
  xpc_event_publisher_activate();
  v12 = dispatch_time(0, 10000000000);
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AD9EC;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_after(v12, activityQueue, block);
}

- (BOOL)dasSubmitActivity:(id)a3 withClientOffset:(double)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [_DASActivity activityFromDASBGSystemTask:v8 withClientOffset:a4];
  [v8 setScheduler_activity:v9];

  v10 = [v8 group_name];

  if (v10)
  {
    v11 = [v8 group_name];
    v10 = +[_DASActivityGroup groupWithName:maxConcurrent:](_DASActivityGroup, "groupWithName:maxConcurrent:", v11, [v8 group_concurrency_limit]);
  }

  scheduler = self->_scheduler;
  v13 = [v8 scheduler_activity];
  v23 = 0;
  v14 = [(_DASScheduler *)scheduler submitActivity:v13 inGroup:v10 error:&v23];
  v15 = v23;

  if (!v14)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100127D04(log);
      if (!a5)
      {
        goto LABEL_9;
      }
    }

    else if (!a5)
    {
      goto LABEL_9;
    }

    v21 = v15;
    *a5 = v15;
    goto LABEL_9;
  }

  [v8 setState:1];
  v16 = self->_log;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v18 = [v8 scheduler_activity];
    v19 = [v18 debugDescription];
    *buf = 138543618;
    v25 = v19;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Submitted %{public}@ (BGST %p)", buf, 0x16u);
  }

LABEL_9:

  return v14;
}

- (void)dasCancelActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 dispatchSourceProcessExit];

  if (v5)
  {
    v6 = [v4 dispatchSourceProcessExit];
    dispatch_source_cancel(v6);

    [v4 setDispatchSourceProcessExit:0];
  }

  v7 = [v4 scheduler_activity];

  if (v7)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v9 = log;
      v10 = [v4 scheduler_activity];
      v13 = 138543618;
      v14 = v10;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Canceling %{public}@ (BGST %p)", &v13, 0x16u);
    }

    scheduler = self->_scheduler;
    v12 = [v4 scheduler_activity];
    [(_DASScheduler *)scheduler activityCanceled:v12];

    [v4 setScheduler_activity:0];
  }

  [v4 setSuspensionReason:-1];
}

- (void)dasCancelActivityWithReason:(id)a3 expirationReason:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 dispatchSourceProcessExit];

  if (v7)
  {
    v8 = [v6 dispatchSourceProcessExit];
    dispatch_source_cancel(v8);

    [v6 setDispatchSourceProcessExit:0];
  }

  v9 = [v6 scheduler_activity];

  if (v9)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v11 = log;
      v12 = [v6 scheduler_activity];
      v15 = 138543618;
      v16 = v12;
      v17 = 2048;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Canceling %{public}@ (BGST %p)", &v15, 0x16u);
    }

    scheduler = self->_scheduler;
    v14 = [v6 scheduler_activity];
    [(_DASScheduler *)scheduler activityCanceledWithReason:v14 expirationReason:a4];

    [v6 setScheduler_activity:0];
  }

  [v6 setSuspensionReason:-1];
}

- (void)dasCompleteActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 dispatchSourceProcessExit];

  if (v5)
  {
    v6 = [v4 dispatchSourceProcessExit];
    dispatch_source_cancel(v6);

    [v4 setDispatchSourceProcessExit:0];
  }

  v7 = [v4 scheduler_activity];

  if (v7)
  {
    if ([v4 state] == 8 || !objc_msgSend(v4, "state"))
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v13 = log;
        v14 = [v4 name];
        v19 = 138543618;
        v20 = v14;
        v21 = 2048;
        v22 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Trying to complete DASActivity for %{public}@ (BGST %p) but it is completed / not scheduled", &v19, 0x16u);
      }
    }

    else
    {
      v8 = [v4 state];
      v9 = self->_log;
      if (v8 == 2)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v4 name];
          v19 = 138543618;
          v20 = v11;
          v21 = 2048;
          v22 = v4;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Trying to complete DASActivity for %{public}@ (BGST %p) but it never started, likely forced. Canceling instead.", &v19, 0x16u);
        }

        [(_DASBGSystemTaskHelper *)self dasCancelActivity:v4];
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_INFO))
        {
          v15 = v9;
          v16 = [v4 scheduler_activity];
          v19 = 138543618;
          v20 = v16;
          v21 = 2048;
          v22 = v4;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Completing %{public}@ (BGST %p)", &v19, 0x16u);
        }

        scheduler = self->_scheduler;
        v18 = [v4 scheduler_activity];
        [(_DASScheduler *)scheduler activityCompleted:v18];

        [v4 setScheduler_activity:0];
      }
    }
  }

  [v4 setState:8];
  [v4 setSuspensionReason:-1];
}

- (void)runActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 <= 8)
  {
    if (((1 << v5) & 0x11D) != 0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v7 = log;
        *buf = 138543618;
        v28 = v4;
        v29 = 2048;
        v30 = [v4 state];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Invalid state to run task %{public}@: %ld, Cancelling", buf, 0x16u);
      }

      [(_DASBGSystemTaskHelper *)self dasCancelActivity:v4];
    }

    else if (((1 << v5) & 0xA2) != 0)
    {
      v8 = self->_log;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v10 = [v4 name];
        *buf = 138543874;
        v28 = v10;
        v29 = 2048;
        v30 = [v4 state];
        v31 = 2048;
        v32 = 2;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@ state change %ld -> %ld", buf, 0x20u);
      }

      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Initiating BGST: %{public}@", buf, 0xCu);
      }

      [v4 setState:2];
      v12 = +[NSDate date];
      [v4 markStarted:v12];

      v13 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v13, "run", 1);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_1000AE548;
      v25[3] = &unk_1001B7C78;
      v14 = v4;
      v26 = v14;
      v15 = sub_1000AE548(v25, self->_clampToBGQoS);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000AE5A4;
      v22[3] = &unk_1001B56B8;
      v22[4] = self;
      v23 = v14;
      v24 = v13;
      v16 = v13;
      v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, v22);
      v17[2](v17, v18, v19, v20, v21);
    }
  }
}

- (void)suspendActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if (v5 <= 8)
  {
    if (((1 << v5) & 0x1B7) != 0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        v7 = log;
        v20 = 138543618;
        v21 = v4;
        v22 = 2048;
        v23 = [v4 state];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Invalid state to suspend task %{public}@: %ld, Cancelling", &v20, 0x16u);
      }

      [(_DASBGSystemTaskHelper *)self dasCancelActivity:v4];
    }

    else if (v5 == 3)
    {
      v8 = self->_log;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v10 = [v4 name];
        v20 = 138543874;
        v21 = v10;
        v22 = 2048;
        v23 = [v4 state];
        v24 = 2048;
        v25 = 4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@ state change %ld -> %ld", &v20, 0x20u);
      }

      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138543362;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Suspending BGST: %{public}@", &v20, 0xCu);
      }

      [v4 setState:4];
      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v12, "run", 0);
      v13 = [v4 scheduler_activity];
      v14 = [(_DASBGSystemTaskHelper *)self reasonForActivitySuspension:v13];

      [v4 setSuspensionReason:v14];
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = [v4 scheduler_activity];
        v20 = 138412546;
        v21 = v17;
        v22 = 2048;
        v23 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Suspending %@ with reason: %lu", &v20, 0x16u);
      }

      if (v14)
      {
        xpc_dictionary_set_int64(v12, "expirationReason", v14);
      }

      publisher = self->_publisher;
      [v4 token];
      if (xpc_event_publisher_fire())
      {
        v19 = self->_log;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_100127E70(v19);
        }
      }
    }
  }
}

- (void)acknowledgeSystemTaskLaunchWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1000AEACC;
  v25 = sub_1000AEADC;
  v26 = 0;
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AEAE4;
  block[3] = &unk_1001B7CA0;
  v13 = v10;
  v15 = v13;
  v16 = self;
  v17 = &v21;
  v18 = &v27;
  v19 = a5;
  v20 = a4;
  dispatch_sync(activityQueue, block);
  v11[2](v11, *(v28 + 24), v22[5]);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 retryAfter:(double)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  *&v23[3] = a6;
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF28C;
  block[3] = &unk_1001B7CC8;
  v15 = v12;
  v17 = v15;
  v18 = self;
  v21 = a5;
  v22 = a4;
  v20 = a6;
  v19 = v23;
  dispatch_sync(activityQueue, block);
  v13[2](v13);

  _Block_object_dispose(v23, 8);
}

- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 retryAfter:(double)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AF6DC;
  block[3] = &unk_1001B7CC8;
  v15 = v12;
  v17 = v15;
  v18 = self;
  v21 = a5;
  v22 = a4;
  v19 = &v23;
  v20 = a6;
  dispatch_sync(activityQueue, block);
  v13[2](v13, *(v24 + 24));

  _Block_object_dispose(&v23, 8);
}

- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  activityQueue = self->_activityQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AFA2C;
  v14[3] = &unk_1001B7CF0;
  v13 = v10;
  v15 = v13;
  v16 = self;
  v18 = a5;
  v19 = a4;
  v17 = &v20;
  dispatch_sync(activityQueue, v14);
  v11[2](v11, *(v21 + 24));

  _Block_object_dispose(&v20, 8);
}

- (void)submitTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AFD28;
  block[3] = &unk_1001B7D40;
  v16 = v12;
  v19 = v16;
  v20 = self;
  v23 = a6;
  v24 = a5;
  v22 = &v25;
  v17 = v13;
  v21 = v17;
  dispatch_sync(activityQueue, block);
  v14[2](v14, *(v26 + 24));

  _Block_object_dispose(&v25, 8);
}

- (void)updateTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B02F8;
  block[3] = &unk_1001B7D68;
  v16 = v12;
  v19 = v16;
  v20 = self;
  v23 = a6;
  v24 = a5;
  v17 = v13;
  v21 = v17;
  v22 = &v25;
  dispatch_sync(activityQueue, block);
  v14[2](v14, *(v26 + 24));

  _Block_object_dispose(&v25, 8);
}

- (void)completeSystemTaskWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6
{
  v10 = a3;
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B0728;
  block[3] = &unk_1001B5DC0;
  v15 = v10;
  v16 = self;
  v17 = a5;
  v18 = a4;
  v12 = v10;
  v13 = a6;
  dispatch_sync(activityQueue, block);
  v13[2](v13);
}

- (void)resumeTaskSchedulingWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a6;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  activityQueue = self->_activityQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000B0B98;
  v13[3] = &unk_1001B7D90;
  v12 = v9;
  v17 = a5;
  v14 = v12;
  v15 = self;
  v16 = &v18;
  dispatch_sync(activityQueue, v13);
  v10[2](v10, *(v19 + 24));

  _Block_object_dispose(&v18, 8);
}

- (void)unregisterSystemTaskWithIdentifier:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a6;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  activityQueue = self->_activityQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000B0E3C;
  v14[3] = &unk_1001B7CF0;
  v13 = v10;
  v15 = v13;
  v16 = self;
  v18 = a5;
  v19 = a4;
  v17 = &v20;
  dispatch_sync(activityQueue, v14);
  v11[2](v11, *(v21 + 24));

  _Block_object_dispose(&v20, 8);
}

- (void)resetFastPassActivities:(id)a3 resetAll:(BOOL)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000AEACC;
  v20 = sub_1000AEADC;
  v21 = +[NSMutableArray array];
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1170;
  block[3] = &unk_1001B7DB8;
  v11 = v8;
  v15 = a4;
  v13 = v11;
  v14 = &v16;
  dispatch_sync(activityQueue, block);
  v9[2](v9, v17[5]);

  _Block_object_dispose(&v16, 8);
}

- (void)inspect:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000AEACC;
  v17 = sub_1000AEADC;
  v18 = +[NSMutableArray array];
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B144C;
  block[3] = &unk_1001B5AB8;
  block[4] = self;
  v9 = v6;
  v11 = v9;
  v12 = &v13;
  dispatch_sync(activityQueue, block);
  v7[2](v7, v14[5]);

  _Block_object_dispose(&v13, 8);
}

- (void)resubmitRunningTasks:(id)a3 withPID:(int)a4 withUID:(unsigned int)a5
{
  v8 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_1000AEACC;
  v17[4] = sub_1000AEADC;
  v18 = +[NSMutableArray array];
  activityQueue = self->_activityQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B16BC;
  v11[3] = &unk_1001B7CF0;
  v12 = v8;
  v13 = self;
  v15 = a5;
  v16 = a4;
  v14 = v17;
  v10 = v8;
  dispatch_sync(activityQueue, v11);

  _Block_object_dispose(v17, 8);
}

- (void)reportSystemTaskWithIdentifier:(id)a3 producedResults:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000AEACC;
  v30 = sub_1000AEADC;
  v31 = 0;
  activityQueue = self->_activityQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B1B34;
  v18[3] = &unk_1001B7DE0;
  v16 = v12;
  v19 = v16;
  v20 = self;
  v24 = a6;
  v25 = a5;
  v22 = &v26;
  v23 = &v32;
  v17 = v13;
  v21 = v17;
  dispatch_sync(activityQueue, v18);
  v14[2](v14, *(v33 + 24), v27[5]);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

- (void)reportSystemTaskWithIdentifier:(id)a3 consumedResults:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000AEACC;
  v30 = sub_1000AEADC;
  v31 = 0;
  activityQueue = self->_activityQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B1F0C;
  v18[3] = &unk_1001B7DE0;
  v16 = v12;
  v19 = v16;
  v20 = self;
  v24 = a6;
  v25 = a5;
  v22 = &v26;
  v23 = &v32;
  v17 = v13;
  v21 = v17;
  dispatch_sync(activityQueue, v18);
  v14[2](v14, *(v33 + 24), v27[5]);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

- (void)resetResultsForIdentifier:(id)a3 byTaskWithIdentifier:(id)a4 withPID:(int)a5 withUID:(unsigned int)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000AEACC;
  v30 = sub_1000AEADC;
  v31 = 0;
  activityQueue = self->_activityQueue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000B22E4;
  v18[3] = &unk_1001B7DE0;
  v16 = v13;
  v19 = v16;
  v20 = self;
  v24 = a6;
  v25 = a5;
  v22 = &v26;
  v23 = &v32;
  v17 = v12;
  v21 = v17;
  dispatch_sync(activityQueue, v18);
  v14[2](v14, *(v33 + 24), v27[5]);

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

- (void)recordTaskWorkloadProgress:(id)a3 target:(unint64_t)a4 completed:(unint64_t)a5 category:(unint64_t)a6 subCategory:(id)a7 withPID:(int)a8 withUID:(unsigned int)a9 completionHandler:(id)a10
{
  v15 = a3;
  v16 = a7;
  v17 = a10;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 1;
  activityQueue = self->_activityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B2618;
  block[3] = &unk_1001B7E08;
  v19 = v15;
  v22 = v19;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v20 = v16;
  v24 = self;
  v25 = &v29;
  v23 = v20;
  dispatch_sync(activityQueue, block);
  v17[2](v17, *(v30 + 24));

  _Block_object_dispose(&v29, 8);
}

- (BOOL)sendToPPS:(id)a3
{
  v3 = a3;
  v4 = +[_DASPPSDataManager sharedInstance];
  v5 = [v4 sendDataToPPS:v3 subsystem:@"BackgroundProcessing" category:@"TaskWorkload"];

  return v5;
}

- (void)registerTimeChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"significantTimeChangeHandler:" name:NSSystemTimeZoneDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"significantTimeChangeHandler:" name:NSSystemClockDidChangeNotification object:0];
}

- (void)significantTimeChangeHandler:(id)a3
{
  v4 = [(_DASBGSystemTaskHelper *)self bootupDate];
  [v4 timeIntervalSinceDate:self->_currentBootupDate];
  if (v5 == 0.0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Time change: No clock shift observed";
      v8 = log;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    v9 = v5;
    v10 = fabs(v5);
    v11 = self->_log;
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 >= 30.0)
    {
      if (v12)
      {
        *buf = 134217984;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Time change: Clock shifted by %lf secs", buf, 0xCu);
      }

      objc_storeStrong(&self->_currentBootupDate, v4);
      activityQueue = self->_activityQueue;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000B2A14;
      v14[3] = &unk_1001B6250;
      v14[4] = self;
      *&v14[5] = v9;
      dispatch_async(activityQueue, v14);
    }

    else if (v12)
    {
      *buf = 0;
      v7 = "Time change: Accumulated clock shift is less than 30 sec";
      v8 = v11;
      goto LABEL_7;
    }
  }
}

- (double)uptimeSeconds
{
  *v7 = 0x1500000001;
  v5 = 0;
  v6 = 0;
  v4 = 16;
  sysctl(v7, 2u, &v5, &v4, 0, 0);
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  return ((v3.tv_usec - v6) + (v3.tv_sec - v5) * 1000000.0) / 1000000.0;
}

- (id)bootupDate
{
  [(_DASBGSystemTaskHelper *)self uptimeSeconds];
  v3 = -v2;

  return [NSDate dateWithTimeIntervalSinceNow:v3];
}

- (id)initForTest
{
  v13.receiver = self;
  v13.super_class = _DASBGSystemTaskHelper;
  v2 = [(_DASBGSystemTaskHelper *)&v13 init];
  v3 = [_DASDaemonLogger logForCategory:@"BGSTHelper"];
  log = v2->_log;
  v2->_log = v3;

  v5 = objc_alloc_init(NSMutableDictionary);
  activities = v2->_activities;
  v2->_activities = v5;

  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.bg.system.task", v7);
  activityQueue = v2->_activityQueue;
  v2->_activityQueue = v8;

  v10 = [(_DASBGSystemTaskHelper *)v2 bootupDate];
  currentBootupDate = v2->_currentBootupDate;
  v2->_currentBootupDate = v10;

  return v2;
}

@end