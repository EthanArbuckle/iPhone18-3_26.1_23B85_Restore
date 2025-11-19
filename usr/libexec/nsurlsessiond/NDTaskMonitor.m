@interface NDTaskMonitor
- (NDTaskMonitor)initWithDelegate:(id)a3 taskInfo:(id)a4 clientBundleIdentifier:(id)a5 secondaryIdentifier:(id)a6 monitoredApplication:(id)a7 priority:(int64_t)a8 options:(unint64_t)a9 queue:(id)a10;
- (NDTaskMonitorDelegate)delegate;
- (int64_t)currentIntervalEndDelta;
- (void)applicationEndedTransitionalDiscretionaryBackgroundPeriod:(id)a3;
- (void)applicationEnteredForeground:(id)a3;
- (void)applicationNoLongerInForeground:(id)a3;
- (void)applicationWasQuitFromAppSwitcher:(id)a3;
- (void)backgroundUpdatesDisabledForApplication:(id)a3;
- (void)calculateThroughput;
- (void)cancel;
- (void)setThroughputTimerForCurrentInterval;
- (void)startThroughputMonitoring;
- (void)startThroughputMonitoringIfAppropriate;
- (void)stopThroughputMonitoring;
- (void)taskWillResume;
@end

@implementation NDTaskMonitor

- (void)stopThroughputMonitoring
{
  throughputTimer = self->_throughputTimer;
  if (throughputTimer)
  {
    dispatch_source_cancel(throughputTimer);
    v4 = self->_throughputTimer;
    self->_throughputTimer = 0;

    progressTimestamps = self->_progressTimestamps;
    self->_progressTimestamps = 0;

    progressValues = self->_progressValues;
    self->_progressValues = 0;

    self->_throughputInterval = 0;
  }
}

- (void)taskWillResume
{
  if (self->_discretionary && !self->_explicitlyDiscretionary && [(NDApplication *)self->_monitoredApplication isForeground])
  {
    v3 = [(NDTaskMonitor *)self delegate];
    [v3 taskMonitor:self updateTaskPriority:-[__NSCFURLSessionTaskInfo identifier](self->_taskInfo reason:{"identifier"), 6}];
  }
}

- (void)cancel
{
  [(NDTaskMonitor *)self stopThroughputMonitoring];
  [(NDApplication *)self->_monitoredApplication removeObserver:self];
  if (self->_UMSyncTask)
  {
    v3 = +[NDUserSyncStakeholder sharedStakeholder];
    [v3 endUMTask:self->_UMSyncTask];

    UMSyncTask = self->_UMSyncTask;
    self->_UMSyncTask = 0;
  }

  powerMonitorToken = self->_powerMonitorToken;
  if (powerMonitorToken != -1)
  {

    notify_cancel(powerMonitorToken);
  }
}

- (void)startThroughputMonitoringIfAppropriate
{
  if (self->_discretionary || self->_performsNonDiscretionaryThrougputMonitoring && self->_basePriority == 300 && (monitoredApplication = self->_monitoredApplication) != 0 && ![(NDApplication *)monitoredApplication isForeground])
  {
    v3 = +[Daemon sharedDaemon];
    v4 = [v3 isInSyncBubble];

    if (v4)
    {
      if (self->_powerMonitorToken == -1)
      {
        queue = self->_queue;
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10006D9A8;
        handler[3] = &unk_1000D5E40;
        handler[4] = self;
        notify_register_dispatch("com.apple.system.powersources.source", &self->_powerMonitorToken, queue, handler);
      }

      if ((IOPSDrawingUnlimitedPower() & 1) == 0)
      {
        [(NDTaskMonitor *)self startThroughputMonitoring];
      }
    }

    else
    {

      [(NDTaskMonitor *)self startThroughputMonitoring];
    }
  }
}

- (void)startThroughputMonitoring
{
  if (!self->_throughputTimer)
  {
    v4 = +[NSMutableArray array];
    progressTimestamps = self->_progressTimestamps;
    self->_progressTimestamps = v4;

    v6 = +[NSMutableArray array];
    progressValues = self->_progressValues;
    self->_progressValues = v6;

    self->_throughputInterval = 0;
    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
    throughputTimer = self->_throughputTimer;
    self->_throughputTimer = v8;

    [(NDTaskMonitor *)self setThroughputTimerForCurrentInterval];
    v10 = self->_throughputTimer;

    dispatch_resume(v10);
  }
}

- (void)setThroughputTimerForCurrentInterval
{
  throughputTimer = self->_throughputTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006DBF0;
  handler[3] = &unk_1000D63D0;
  handler[4] = self;
  dispatch_source_set_event_handler(throughputTimer, handler);
  v4 = self->_throughputTimer;
  v5 = dispatch_time(0, [(NDTaskMonitor *)self currentIntervalEndDelta]);
  dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (int64_t)currentIntervalEndDelta
{
  throughputInterval = self->_throughputInterval;
  if (throughputInterval)
  {
    return ((dbl_1000997C8[throughputInterval] - dbl_1000997C8[throughputInterval - 1]) * 60.0 * 1000000000.0);
  }

  else
  {
    return 60000000000;
  }
}

- (NDTaskMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)applicationEndedTransitionalDiscretionaryBackgroundPeriod:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D3C8;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)applicationNoLongerInForeground:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D4F0;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)applicationEnteredForeground:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D600;
  block[3] = &unk_1000D63D0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)backgroundUpdatesDisabledForApplication:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D774;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)applicationWasQuitFromAppSwitcher:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006D8E0;
  v7[3] = &unk_1000D6420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)calculateThroughput
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = self->_progressValues;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v5 += [*(*(&v23 + 1) + 8 * i) unsignedIntegerValue];
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v4);
    v8 = v5;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(NSMutableArray *)self->_progressTimestamps firstObject];
  v10 = [(NSMutableArray *)self->_progressTimestamps lastObject];
  [v10 doubleValue];
  v12 = v11;
  [v9 doubleValue];
  v14 = v13;
  [(NDTaskMonitor *)self currentThroughputThreshold];
  v15 = v8 / (v12 - v14);
  if (v15 < v16)
  {
    v17 = qword_1000EB210;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [(__NSCFURLSessionTaskInfo *)self->_taskInfo _loggableDescription];
      [(NDTaskMonitor *)self currentThroughputThreshold];
      progressTimestamps = self->_progressTimestamps;
      progressValues = self->_progressValues;
      *buf = 138544386;
      v28 = v19;
      v29 = 2048;
      v30 = v15;
      v31 = 2048;
      v32 = v22;
      v33 = 2112;
      v34 = progressValues;
      v35 = 2112;
      v36 = progressTimestamps;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ canceling because of low throughput monitoring! Current throughput: %f bytes/sec, current threshold: %f bytes/sec, samples %@/%@", buf, 0x34u);
    }

    v18 = [(NDTaskMonitor *)self delegate];
    [v18 taskMonitor:self retryTask:-[__NSCFURLSessionTaskInfo identifier](self->_taskInfo reason:{"identifier"), 3}];
  }
}

- (NDTaskMonitor)initWithDelegate:(id)a3 taskInfo:(id)a4 clientBundleIdentifier:(id)a5 secondaryIdentifier:(id)a6 monitoredApplication:(id)a7 priority:(int64_t)a8 options:(unint64_t)a9 queue:(id)a10
{
  obj = a3;
  v26 = a4;
  v16 = a5;
  v25 = a6;
  v24 = a7;
  v17 = a10;
  v28.receiver = self;
  v28.super_class = NDTaskMonitor;
  v18 = [(NDTaskMonitor *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_delegate, obj);
    objc_storeStrong(&v19->_taskInfo, a4);
    objc_storeStrong(&v19->_queue, a10);
    objc_storeStrong(&v19->_clientBundleIdentifier, a5);
    objc_storeStrong(&v19->_clientSecondaryIdentifier, a6);
    objc_storeStrong(&v19->_monitoredApplication, a7);
    v19->_basePriority = a8;
    v19->_discretionary = a9 & 1;
    v19->_explicitlyDiscretionary = (a9 & 2) != 0;
    v19->_performsNonDiscretionaryThrougputMonitoring = (a9 & 4) != 0;
    v19->_mayBeDemotedToDiscretionary = (a9 & 8) != 0;
    [(NDApplication *)v19->_monitoredApplication addObserver:v19, v24, v25];
    v20 = +[NDUserSyncStakeholder sharedStakeholder];
    v21 = [v20 startUMTask:v16 taskInfo:v26];
    UMSyncTask = v19->_UMSyncTask;
    v19->_UMSyncTask = v21;

    v19->_powerMonitorToken = -1;
  }

  return v19;
}

@end