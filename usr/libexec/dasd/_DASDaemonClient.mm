@interface _DASDaemonClient
- (BOOL)activityCompletedInternal:(id)internal;
- (BOOL)hasEntitlementForCustomIconBundleIdentifier;
- (BOOL)hasEntitlementsForRequestedResources:(int64_t)resources error:(id *)error;
- (BOOL)isInternalContinuedProcessingActivity:(id)activity;
- (NSString)bundleIdentifier;
- (NSString)rootBundleIdentifier;
- (RBSProcessHandle)processHandle;
- (RBSProcessHandle)rootProcessHandle;
- (_DASDaemonClient)initWithDaemon:(id)daemon withConnection:(id)connection isRestricted:(BOOL)restricted;
- (id)activityNamesFromActivities:(id)activities;
- (id)unlockedActivitiesWithNames:(id)names inSet:(id)set;
- (void)_resetWidgetBudgets;
- (void)acknowledgeSystemTaskLaunchWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)identifier retryAfter:(double)after completionHandler:(id)handler;
- (void)activity:(id)activity blockedOnPolicies:(id)policies;
- (void)activity:(id)activity runWithoutHonoringPolicies:(id)policies;
- (void)activityCanceled:(id)canceled;
- (void)activityCanceledWithReason:(id)reason expirationReason:(int64_t)expirationReason;
- (void)activityCompleted:(id)completed;
- (void)activityContainsOverrides:(id)overrides handler:(id)handler;
- (void)activityStarted:(id)started;
- (void)addPauseExceptParameter:(id)parameter handler:(id)handler;
- (void)allBudgetsWithHandler:(id)handler;
- (void)backgroundAppRefreshEnabledForApp:(id)app withHandler:(id)handler;
- (void)balanceForBudgetWithName:(id)name withHandler:(id)handler;
- (void)blockingPoliciesWithParameters:(id)parameters handler:(id)handler;
- (void)cancelActivities:(id)activities;
- (void)cancelActivitiesWithReason:(id)reason cancellationReason:(int64_t)cancellationReason;
- (void)cancelAllActivities;
- (void)cancelAllTaskRequestsWithCompletionHandler:(id)handler;
- (void)cancelTaskRequestWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)clientFailedtoExpireTaskWithIdentifier:(id)identifier;
- (void)completeSystemTaskWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)continuedProcessingDeviceCapabilities:(id)capabilities;
- (void)createActivityGroup:(id)group;
- (void)currentAllocations:(unint64_t)allocations timeFilter:(id)filter bgsqlData:(id)data withHandler:(id)handler;
- (void)currentPredictionsWithHandler:(id)handler;
- (void)dealloc;
- (void)decrementBy:(double)by forBudgetWithName:(id)name;
- (void)deferActivities:(id)activities withHandler:(id)handler;
- (void)delayedRunningActivitiesWithHandler:(id)handler;
- (void)delayedStartActivities:(id)activities;
- (void)deleteLimitForActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler;
- (void)disableAppRefreshForApps:(id)apps;
- (void)endLaunchWithReason:(id)reason forApp:(id)app;
- (void)establishConnection:(id)connection;
- (void)evaluateAllActivities:(id)activities handler:(id)handler;
- (void)evaluatePolicies:(id)policies handler:(id)handler;
- (void)forceResetOfResultIdentifier:(id)identifier;
- (void)forceRunActivities:(id)activities;
- (void)getActivityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler;
- (void)getBuddyEvents:(id)events bgsqlData:(id)data handler:(id)handler;
- (void)getConditionsPenalties:(id)penalties handler:(id)handler;
- (void)getContentionPenalties:(id)penalties handler:(id)handler;
- (void)getDeviceConditionTimelines:(id)timelines bgsqlData:(id)data handler:(id)handler;
- (void)getElapsedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler;
- (void)getEligibilityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler;
- (void)getEstimatedMADCompletionTimes:(id)times endDate:(id)date bgsqlData:(id)data handler:(id)handler;
- (void)getEstimatedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler;
- (void)getFeatureTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler;
- (void)getInstallTimeline:(id)timeline bgsqlData:(id)data handler:(id)handler;
- (void)getLimiterResponseForActivity:(id)activity handler:(id)handler;
- (void)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data handler:(id)handler;
- (void)getPendingTaskRequestsWithCompletionHandler:(id)handler;
- (void)getRuntimeLimit:(id)limit handler:(id)handler;
- (void)getSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data handler:(id)handler;
- (void)getSortedCandidateActivities:(id)activities handler:(id)handler;
- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)handleClientInterruption;
- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)identifier retryAfter:(double)after completionHandler:(id)handler;
- (void)handleLaunchFromDaemonForActivities:(id)activities;
- (void)handleRunningActivities:(id)activities;
- (void)inspect:(id)inspect withHandler:(id)handler;
- (void)pauseWithParameters:(id)parameters handler:(id)handler;
- (void)policiesWithHandler:(id)handler;
- (void)prewarmApplication:(id)application;
- (void)prewarmSuspendWithHandler:(id)handler;
- (void)queryDependenciesOfTaskIdentifier:(id)identifier withHandler:(id)handler;
- (void)queryStatusOfResultIdentifier:(id)identifier withHandler:(id)handler;
- (void)removeKnownActivitiesFromSet:(id)set;
- (void)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0;
- (void)reportSystemTaskWithIdentifier:(id)identifier consumedResults:(id)results completionHandler:(id)handler;
- (void)reportSystemTaskWithIdentifier:(id)identifier producedResults:(id)results completionHandler:(id)handler;
- (void)reportTaskWorkloadProgress:(id)progress target:(unint64_t)target completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory completionHandler:(id)handler;
- (void)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0;
- (void)resetResultsForIdentifier:(id)identifier byTaskWithIdentifier:(id)withIdentifier completionHandler:(id)handler;
- (void)resubmitRunningTasks:(id)tasks;
- (void)resumeTaskSchedulingWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)runActivities:(id)activities;
- (void)runActivitiesWithDelayedStart:(id)start;
- (void)runActivitiesWithUrgency:(int64_t)urgency activities:(id)activities;
- (void)runProceedableActivities:(id)activities handler:(id)handler;
- (void)runningActivitiesWithHandler:(id)handler;
- (void)runningGroupActivitiesWithHandler:(id)handler;
- (void)setBalance:(double)balance forBudgetWithName:(id)name;
- (void)setCapacity:(double)capacity forBudgetWithName:(id)name;
- (void)startedActivities:(id)activities;
- (void)statisticsWithHandler:(id)handler;
- (void)submitActivities:(id)activities;
- (void)submitActivitiesInternal:(id)internal;
- (void)submitActivity:(id)activity;
- (void)submitActivity:(id)activity inGroup:(id)group;
- (void)submitActivity:(id)activity inGroup:(id)group withHandler:(id)handler;
- (void)submitActivity:(id)activity inGroupWithName:(id)name;
- (void)submitActivityInternal:(id)internal;
- (void)submitRateLimitConfiguration:(id)configuration handler:(id)handler;
- (void)submitTaskRequest:(id)request withHandler:(id)handler;
- (void)submitTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler;
- (void)submittedActivitiesWithHandler:(id)handler;
- (void)suspendActivities:(id)activities;
- (void)triggerScoreEvaluationAndRunActivities:(id)activities handler:(id)handler;
- (void)unregisterSystemTaskWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)updateActivity:(id)activity withParameters:(id)parameters;
- (void)updateLimit:(double)limit forActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler;
- (void)updateOngoingTask:(id)task completionHandler:(id)handler;
- (void)updateProgressForOngoingTask:(id)task completionHandler:(id)handler;
- (void)updateTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler;
- (void)validateCTBGTaskRequestWithActivity:(id)activity;
- (void)willExpireBGTaskActivities:(id)activities;
@end

@implementation _DASDaemonClient

- (NSString)rootBundleIdentifier
{
  rootProcessHandle = [(_DASDaemonClient *)self rootProcessHandle];
  bundle = [rootProcessHandle bundle];
  identifier = [bundle identifier];

  return identifier;
}

- (RBSProcessHandle)rootProcessHandle
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rootProcessHandle = selfCopy->_rootProcessHandle;
  if (!rootProcessHandle)
  {
    for (i = [(_DASDaemonClient *)selfCopy processHandle];
    {
      v5 = selfCopy->_rootProcessHandle;
      selfCopy->_rootProcessHandle = i;

      hostProcess = [(RBSProcessHandle *)selfCopy->_rootProcessHandle hostProcess];

      v7 = selfCopy->_rootProcessHandle;
      if (!hostProcess)
      {
        break;
      }

      [(RBSProcessHandle *)selfCopy->_rootProcessHandle hostProcess];
    }

    processHandle = [(_DASDaemonClient *)selfCopy processHandle];

    if (v7 == processHandle)
    {
      v9 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        processHandle2 = [(_DASDaemonClient *)selfCopy processHandle];
        sub_10012BEB4(processHandle2, v13, v9);
      }
    }

    rootProcessHandle = selfCopy->_rootProcessHandle;
  }

  v11 = rootProcessHandle;
  objc_sync_exit(selfCopy);

  return v11;
}

- (RBSProcessHandle)processHandle
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  processHandle = selfCopy->_processHandle;
  if (processHandle)
  {
    v4 = processHandle;
  }

  else
  {
    v5 = [RBSProcessIdentifier identifierWithPid:[(NSXPCConnection *)selfCopy->_connection processIdentifier]];
    v12 = 0;
    v6 = [RBSProcessHandle handleForIdentifier:v5 error:&v12];
    v7 = v12;
    v8 = selfCopy->_processHandle;
    selfCopy->_processHandle = v6;

    v9 = selfCopy->_processHandle;
    if (!v9 || v7)
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10012BE40();
      }

      v9 = selfCopy->_processHandle;
    }

    v4 = v9;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (void)handleClientInterruption
{
  [(_DASDaemonClient *)self cancelAllActivities];
  daemon = [(_DASDaemonClient *)self daemon];
  [daemon removeClient:self];
}

- (void)cancelAllActivities
{
  v3 = +[NSMutableSet set];
  v4 = self->_submittedTasks;
  objc_sync_enter(v4);
  [v3 unionSet:self->_submittedTasks];
  [(NSMutableSet *)self->_submittedTasks removeAllObjects];
  objc_sync_exit(v4);

  v5 = self->_startedTasks;
  objc_sync_enter(v5);
  [v3 unionSet:self->_startedTasks];
  [(NSMutableSet *)self->_startedTasks removeAllObjects];
  objc_sync_exit(v5);

  v6 = self->_delayedStartTasks;
  objc_sync_enter(v6);
  [v3 unionSet:self->_delayedStartTasks];
  [(NSMutableSet *)self->_delayedStartTasks removeAllObjects];
  objc_sync_exit(v6);

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if (![v11 requestsApplicationLaunch] || (objc_msgSend(v11, "shouldBePersisted") & 1) == 0)
        {
          [(_DASDaemon *)self->_daemon activityCanceled:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = _DASDaemonClient;
  [(_DASDaemonClient *)&v3 dealloc];
}

- (_DASDaemonClient)initWithDaemon:(id)daemon withConnection:(id)connection isRestricted:(BOOL)restricted
{
  daemonCopy = daemon;
  connectionCopy = connection;
  v29.receiver = self;
  v29.super_class = _DASDaemonClient;
  v11 = [(_DASDaemonClient *)&v29 init];
  v12 = v11;
  if (v11)
  {
    v11->_restricted = restricted;
    objc_storeStrong(&v11->_daemon, daemon);
    objc_storeStrong(&v12->_connection, connection);
    if (qword_10020B808 != -1)
    {
      sub_10012B974();
    }

    [(NSXPCConnection *)v12->_connection setRemoteObjectInterface:qword_10020B810];
    if (qword_10020B818 != -1)
    {
      sub_10012B99C();
    }

    [(NSXPCConnection *)v12->_connection setExportedInterface:qword_10020B820];
    [(NSXPCConnection *)v12->_connection setExportedObject:v12];
    [(NSXPCConnection *)v12->_connection resume];
    objc_initWeak(&location, v12);
    connection = v12->_connection;
    v23 = _NSConcreteStackBlock;
    v24 = 3221225472;
    v25 = sub_1000F2D48;
    v26 = &unk_1001B5468;
    objc_copyWeak(&v27, &location);
    [(NSXPCConnection *)connection setInvalidationHandler:&v23];
    v14 = [NSMutableSet set:v23];
    submittedTasks = v12->_submittedTasks;
    v12->_submittedTasks = v14;

    v16 = +[NSMutableSet set];
    startedTasks = v12->_startedTasks;
    v12->_startedTasks = v16;

    v18 = +[NSMutableSet set];
    delayedStartTasks = v12->_delayedStartTasks;
    v12->_delayedStartTasks = v18;

    v20 = +[NSMutableSet set];
    runningBGTasks = v12->_runningBGTasks;
    v12->_runningBGTasks = v20;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)removeKnownActivitiesFromSet:(id)set
{
  setCopy = set;
  v5 = self->_submittedTasks;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_submittedTasks;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [setCopy removeObject:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (id)unlockedActivitiesWithNames:(id)names inSet:(id)set
{
  namesCopy = names;
  setCopy = set;
  v7 = [namesCopy count];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F3064;
  v11[3] = &unk_1001B8A10;
  v8 = namesCopy;
  v12 = v8;
  v13 = v15;
  v14 = v7;
  v9 = [setCopy objectsPassingTest:v11];

  _Block_object_dispose(v15, 8);

  return v9;
}

- (id)activityNamesFromActivities:(id)activities
{
  activitiesCopy = activities;
  if ([activitiesCopy count])
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = activitiesCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          name = [*(*(&v13 + 1) + 8 * i) name];
          [v4 addObject:name];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [NSArray arrayWithArray:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)runActivitiesWithDelayedStart:(id)start
{
  startCopy = start;
  v5 = +[NSMutableSet set];
  v6 = self->_submittedTasks;
  objc_sync_enter(v6);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = startCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_submittedTasks containsObject:v11, v15])
        {
          [v5 addObject:v11];
          [(NSMutableSet *)self->_submittedTasks removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  if ([v5 count])
  {
    v12 = self->_delayedStartTasks;
    objc_sync_enter(v12);
    [(NSMutableSet *)self->_delayedStartTasks _DAS_unionSetOverridingExisting:v5];
    objc_sync_exit(v12);

    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v14 = [NSSet setWithSet:v5];
    [remoteObjectProxy runActivitiesWithDelayedStart:v14];
  }
}

- (void)runActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = +[NSMutableSet set];
  v6 = self->_submittedTasks;
  objc_sync_enter(v6);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = activitiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_submittedTasks containsObject:v11, v14])
        {
          [v5 addObject:v11];
          [(NSMutableSet *)self->_submittedTasks removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  if ([v5 count])
  {
    [(_DASDaemonClient *)self handleRunningActivities:v5];
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v13 = [NSSet setWithSet:v5];
    [remoteObjectProxy runActivities:v13];
  }
}

- (void)suspendActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = +[NSMutableSet set];
  v6 = self->_startedTasks;
  objc_sync_enter(v6);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = activitiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_startedTasks containsObject:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  if ([v5 count])
  {
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v13 = [NSSet setWithSet:v7];
    [remoteObjectProxy suspendActivities:v13];
  }
}

- (void)cancelActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = +[NSMutableSet set];
  v6 = self->_submittedTasks;
  objc_sync_enter(v6);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = activitiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_submittedTasks containsObject:v11])
        {
          [v5 addObject:v11];
          [(NSMutableSet *)self->_submittedTasks removeObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v12 = self->_delayedStartTasks;
  objc_sync_enter(v12);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v20 + 1) + 8 * j);
        if ([(NSMutableSet *)self->_delayedStartTasks containsObject:v17, v20])
        {
          [v5 addObject:v17];
          [(NSMutableSet *)self->_delayedStartTasks removeObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  objc_sync_exit(v12);
  if ([v5 count])
  {
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v19 = [NSSet setWithSet:v13];
    [remoteObjectProxy cancelActivities:v19];
  }
}

- (void)cancelActivitiesWithReason:(id)reason cancellationReason:(int64_t)cancellationReason
{
  reasonCopy = reason;
  v7 = +[NSMutableSet set];
  v8 = self->_submittedTasks;
  objc_sync_enter(v8);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = reasonCopy;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_submittedTasks containsObject:v13])
        {
          [v7 addObject:v13];
          [(NSMutableSet *)self->_submittedTasks removeObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v14 = self->_delayedStartTasks;
  objc_sync_enter(v14);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v9;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = *v23;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v22 + 1) + 8 * j);
        if ([(NSMutableSet *)self->_delayedStartTasks containsObject:v19, v22])
        {
          [v7 addObject:v19];
          [(NSMutableSet *)self->_delayedStartTasks removeObject:v19];
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v16);
  }

  objc_sync_exit(v14);
  if ([v7 count])
  {
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v21 = [NSSet setWithSet:v15];
    [remoteObjectProxy cancelActivitiesWithReason:v21 cancellationReason:cancellationReason];
  }
}

- (void)activity:(id)activity blockedOnPolicies:(id)policies
{
  connection = self->_connection;
  policiesCopy = policies;
  activityCopy = activity;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy activity:activityCopy blockedOnPolicies:policiesCopy];
}

- (void)activity:(id)activity runWithoutHonoringPolicies:(id)policies
{
  connection = self->_connection;
  policiesCopy = policies;
  activityCopy = activity;
  remoteObjectProxy = [(NSXPCConnection *)connection remoteObjectProxy];
  [remoteObjectProxy activity:activityCopy runWithoutHonoringPolicies:policiesCopy];
}

- (void)submitActivityInternal:(id)internal
{
  internalCopy = internal;
  v4 = self->_submittedTasks;
  objc_sync_enter(v4);
  if ([internalCopy userIdentifier] == -1)
  {
    [internalCopy setUserIdentifier:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
  }

  [internalCopy setPid:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
  [(_DASDaemonClient *)self setApplicationURLForActivity:internalCopy];
  [(NSMutableSet *)self->_submittedTasks _DAS_addOrReplaceObject:internalCopy];
  objc_sync_exit(v4);
}

- (void)submitActivitiesInternal:(id)internal
{
  internalCopy = internal;
  v5 = self->_submittedTasks;
  objc_sync_enter(v5);
  v6 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = internalCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 userIdentifier] == -1)
        {
          [v11 setUserIdentifier:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
        }

        [v11 setPid:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
        [(_DASDaemonClient *)self setApplicationURLForActivity:v11];
        [(NSMutableSet *)self->_submittedTasks _DAS_addOrReplaceObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v6);
  objc_sync_exit(v5);
}

- (void)submitActivity:(id)activity
{
  activityCopy = activity;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    [(_DASDaemonClient *)self submitActivityInternal:activityCopy];
    [(_DASDaemon *)self->_daemon submitActivity:activityCopy];
  }
}

- (void)submitActivities:(id)activities
{
  activitiesCopy = activities;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    [(_DASDaemonClient *)self submitActivitiesInternal:activitiesCopy];
    [(_DASDaemon *)self->_daemon submitActivities:activitiesCopy];
  }
}

- (void)handleRunningActivities:(id)activities
{
  activitiesCopy = activities;
  v4 = self->_startedTasks;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_startedTasks _DAS_unionSetOverridingExisting:activitiesCopy];
  objc_sync_exit(v4);

  [(_DASDaemon *)self->_daemon handleRunningActivities:activitiesCopy];
}

- (void)startedActivities:(id)activities
{
  activitiesCopy = activities;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012BA50(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = [NSSet setWithArray:activitiesCopy];
    v8 = self->_startedTasks;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_startedTasks unionSet:v7];
    objc_sync_exit(v8);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(_DASDaemon *)selfCopy->_daemon startedActivities:v7];
    objc_sync_exit(selfCopy);
  }
}

- (void)delayedStartActivities:(id)activities
{
  activitiesCopy = activities;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012BAE0(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = [NSSet setWithArray:activitiesCopy];
    v8 = self->_delayedStartTasks;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_delayedStartTasks unionSet:v7];
    objc_sync_exit(v8);
  }
}

- (void)activityStarted:(id)started
{
  startedCopy = started;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012BB70(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = self->_delayedStartTasks;
    objc_sync_enter(v7);
    if ([(NSMutableSet *)self->_delayedStartTasks containsObject:startedCopy])
    {
      [(NSMutableSet *)self->_delayedStartTasks removeObject:startedCopy];
      objc_sync_exit(v7);

      v8 = self->_startedTasks;
      objc_sync_enter(v8);
      [(NSMutableSet *)self->_startedTasks _DAS_addOrReplaceObject:startedCopy];
      objc_sync_exit(v8);

      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(_DASDaemon *)selfCopy->_daemon activityStarted:startedCopy];
      objc_sync_exit(selfCopy);
    }

    else
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        shortDescription = [startedCopy shortDescription];
        v12 = 138412290;
        v13 = shortDescription;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Can't start %@!,not scheduled to run!", &v12, 0xCu);
      }

      objc_sync_exit(v7);
    }
  }
}

- (BOOL)activityCompletedInternal:(id)internal
{
  internalCopy = internal;
  v5 = self->_startedTasks;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_startedTasks containsObject:internalCopy];
  if (v6)
  {
    [(NSMutableSet *)self->_startedTasks removeObject:internalCopy];
  }

  else
  {
    v7 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [internalCopy shortDescription];
      v12 = 138412290;
      v13 = shortDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Can't complete, %@ - not running, cancelling instead!", &v12, 0xCu);
    }
  }

  objc_sync_exit(v5);

  v9 = self->_submittedTasks;
  objc_sync_enter(v9);
  [(NSMutableSet *)self->_submittedTasks removeObject:internalCopy];
  objc_sync_exit(v9);

  v10 = self->_delayedStartTasks;
  objc_sync_enter(v10);
  [(NSMutableSet *)self->_delayedStartTasks removeObject:internalCopy];
  objc_sync_exit(v10);

  return v6;
}

- (void)activityCompleted:(id)completed
{
  completedCopy = completed;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012BC00(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = [(_DASDaemonClient *)self activityCompletedInternal:completedCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    daemon = selfCopy->_daemon;
    if (v7)
    {
      [(_DASDaemon *)daemon activityCompleted:completedCopy];
    }

    else
    {
      [(_DASDaemon *)daemon activityCanceled:completedCopy];
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)activityCanceled:(id)canceled
{
  canceledCopy = canceled;
  v6 = canceledCopy;
  if (self->_restricted && ([canceledCopy isContinuedProcessingTask] & 1) == 0)
  {
    v11 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10012BC90(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = self->_startedTasks;
    objc_sync_enter(v7);
    [(NSMutableSet *)self->_startedTasks removeObject:v6];
    objc_sync_exit(v7);

    v8 = self->_submittedTasks;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_submittedTasks removeObject:v6];
    objc_sync_exit(v8);

    v9 = self->_delayedStartTasks;
    objc_sync_enter(v9);
    [(NSMutableSet *)self->_delayedStartTasks removeObject:v6];
    objc_sync_exit(v9);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(_DASDaemon *)selfCopy->_daemon activityCanceled:v6];
    objc_sync_exit(selfCopy);
  }
}

- (void)activityCanceledWithReason:(id)reason expirationReason:(int64_t)expirationReason
{
  reasonCopy = reason;
  v8 = reasonCopy;
  if (self->_restricted && ([reasonCopy isContinuedProcessingTask] & 1) == 0)
  {
    v13 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10012BD20(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v9 = self->_startedTasks;
    objc_sync_enter(v9);
    [(NSMutableSet *)self->_startedTasks removeObject:v8];
    objc_sync_exit(v9);

    v10 = self->_submittedTasks;
    objc_sync_enter(v10);
    [(NSMutableSet *)self->_submittedTasks removeObject:v8];
    objc_sync_exit(v10);

    v11 = self->_delayedStartTasks;
    objc_sync_enter(v11);
    [(NSMutableSet *)self->_delayedStartTasks removeObject:v8];
    objc_sync_exit(v11);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(_DASDaemon *)selfCopy->_daemon activityCanceledWithReason:v8 expirationReason:expirationReason];
    objc_sync_exit(selfCopy);
  }
}

- (void)clientFailedtoExpireTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = identifierCopy;
  if (self->_restricted && ([identifierCopy isContinuedProcessingTask] & 1) == 0)
  {
    v11 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10012BDB0(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = self->_startedTasks;
    objc_sync_enter(v7);
    [(NSMutableSet *)self->_startedTasks removeObject:v6];
    objc_sync_exit(v7);

    v8 = self->_submittedTasks;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_submittedTasks removeObject:v6];
    objc_sync_exit(v8);

    v9 = self->_delayedStartTasks;
    objc_sync_enter(v9);
    [(NSMutableSet *)self->_delayedStartTasks removeObject:v6];
    objc_sync_exit(v9);

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(_DASDaemon *)selfCopy->_daemon clientFailedtoExpireTaskWithIdentifier:v6];
    objc_sync_exit(selfCopy);
  }
}

- (void)updateActivity:(id)activity withParameters:(id)parameters
{
  activityCopy = activity;
  parametersCopy = parameters;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(_DASDaemon *)selfCopy->_daemon updateActivity:activityCopy withParameters:parametersCopy];
  objc_sync_exit(selfCopy);
}

- (void)_resetWidgetBudgets
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = [v3 valueForEntitlement:@"com.apple.dasd.widgetBudgetReset"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon _resetWidgetBudgets];
  }

  else
  {
    v7 = [_DASDaemonLogger logForCategory:@"misuse"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = +[NSXPCConnection currentConnection];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Please file a bug for – client %{public}@ attempted to reset widget budgets but lacked appropriate entitlement", &v9, 0xCu);
    }
  }
}

- (void)createActivityGroup:(id)group
{
  groupCopy = group;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.networkd.configure_connection_pool"];
    if ([v7 BOOLValue])
    {
      [(_DASDaemon *)self->_daemon createActivityGroup:groupCopy];
    }

    else
    {
      v8 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unentitled client tried to create an Activity Group. Dropping on the floor", v9, 2u);
      }
    }
  }
}

- (void)submitActivity:(id)activity inGroupWithName:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  if (self->_restricted)
  {
    v9 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    [(_DASDaemonClient *)self submitActivityInternal:activityCopy];
    [(_DASDaemon *)self->_daemon submitActivity:activityCopy inGroupWithName:nameCopy];
  }
}

- (void)submitActivity:(id)activity inGroup:(id)group
{
  activityCopy = activity;
  groupCopy = group;
  if (self->_restricted)
  {
    v9 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    [(_DASDaemonClient *)self submitActivityInternal:activityCopy];
    [(_DASDaemon *)self->_daemon submitActivity:activityCopy inGroup:groupCopy];
  }
}

- (void)submitActivity:(id)activity inGroup:(id)group withHandler:(id)handler
{
  activityCopy = activity;
  groupCopy = group;
  handlerCopy = handler;
  if ([activityCopy userIdentifier] == -1)
  {
    [activityCopy setUserIdentifier:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
  }

  [activityCopy setPid:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
  [(_DASDaemonClient *)self setApplicationURLForActivity:activityCopy];
  v11 = self->_submittedTasks;
  objc_sync_enter(v11);
  [(NSMutableSet *)self->_submittedTasks _DAS_addOrReplaceObject:activityCopy];
  objc_sync_exit(v11);

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1000F53B0;
  v20 = sub_1000F53C0;
  v21 = 0;
  daemon = self->_daemon;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000F53C8;
  v15[3] = &unk_1001B8A38;
  v15[4] = &v22;
  v15[5] = &v16;
  [(_DASDaemon *)daemon submitActivity:activityCopy inGroup:groupCopy withHandler:v15];
  if (v23[3])
  {
    v13 = 1;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableSet *)self->_submittedTasks removeObject:activityCopy];
    objc_sync_exit(selfCopy);

    v13 = *(v23 + 24);
  }

  handlerCopy[2](handlerCopy, v13 & 1, v17[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

- (void)endLaunchWithReason:(id)reason forApp:(id)app
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", app];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon endLaunchWithReason:reason forApp:app];
  }
}

- (void)backgroundAppRefreshEnabledForApp:(id)app withHandler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon backgroundAppRefreshEnabledForApp:app withHandler:handler];
  }
}

- (void)disableAppRefreshForApps:(id)apps
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon disableAppRefreshForApps:apps];
  }
}

- (NSString)bundleIdentifier
{
  processHandle = [(_DASDaemonClient *)self processHandle];
  bundle = [processHandle bundle];
  identifier = [bundle identifier];

  return identifier;
}

- (BOOL)hasEntitlementsForRequestedResources:(int64_t)resources error:(id *)error
{
  if (resources)
  {
    v7 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.developer.background-tasks.continued-processing.gpu"];
    bOOLValue = [v7 BOOLValue];

    if (bOOLValue)
    {
      v4 = 0;
    }

    else
    {
      v8 = _DASActivitySchedulerErrorDomain;
      v13[0] = @"Requested Resource";
      v13[1] = @"Missing Entitlement";
      v14[0] = @"Background GPU";
      v14[1] = @"com.apple.developer.background-tasks.continued-processing.gpu";
      v9 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
      v4 = [NSError errorWithDomain:v8 code:8 userInfo:v9];
    }

    if (!+[_DASDeviceQuery supportsBackgroundGPU])
    {
      v10 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:&off_1001CAFB8];

      bOOLValue = 0;
      v4 = v10;
    }

    if (error && v4)
    {
      v11 = v4;
      *error = v4;
    }
  }

  else
  {
    v4 = 0;
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)hasEntitlementForCustomIconBundleIdentifier
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.das.private.bgtask.continuedprocessing.iconBundleIdentifier"];
  if ([v3 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v5 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.developer.web-browser-engine.networking"];
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

- (void)validateCTBGTaskRequestWithActivity:(id)activity
{
  daemon = self->_daemon;
  activityCopy = activity;
  enManager = [(_DASDaemon *)daemon enManager];
  [enManager setIsENActivity:activityCopy];
}

- (BOOL)isInternalContinuedProcessingActivity:(id)activity
{
  launchReason = [activity launchReason];
  v4 = [launchReason isEqualToString:_DASLaunchReasonContinuedProcessingInternal];

  return v4;
}

- (void)submitTaskRequest:(id)request withHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = [_DASActivity validateBGTaskRequestWithActivity:requestCopy];
  v9 = v8;
  if (!v8)
  {
    v24 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:0];
    handlerCopy[2](handlerCopy, v24);

    goto LABEL_73;
  }

  launchReason = [v8 launchReason];
  v11 = [launchReason isEqualToString:_DASLaunchReasonHealthResearch];

  if (v11)
  {
    p_connection = &self->_connection;
    v13 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.developer.backgroundtasks.healthresearch"];
    v14 = v13;
    if (!v13 || ([v13 BOOLValue] & 1) == 0)
    {
      v25 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_10012C42C(v9, p_connection);
      }

      v26 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:0 userInfo:0];
      handlerCopy[2](handlerCopy, v26);

      goto LABEL_73;
    }
  }

  isContinuedProcessingTask = [v9 isContinuedProcessingTask];
  if (isContinuedProcessingTask)
  {
    continuedProcessingWrapper = [v9 continuedProcessingWrapper];
    v83 = 0;
    v17 = -[_DASDaemonClient hasEntitlementsForRequestedResources:error:](self, "hasEntitlementsForRequestedResources:error:", [continuedProcessingWrapper resources], &v83);
    v18 = v83;

    if ((v17 & 1) == 0)
    {
      v27 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        name = [v9 name];
        processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
        *buf = 138543874;
        *&buf[4] = name;
        *&buf[12] = 1024;
        *&buf[14] = processIdentifier;
        *&buf[18] = 2112;
        *&buf[20] = v18;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@: Process %d not entitled for requested resources: %@", buf, 0x1Cu);
      }

      handlerCopy[2](handlerCopy, v18);
      goto LABEL_72;
    }

    continuedProcessingWrapper2 = [v9 continuedProcessingWrapper];
    iconBundleIdentifier = [continuedProcessingWrapper2 iconBundleIdentifier];
    if (iconBundleIdentifier)
    {
      hasEntitlementForCustomIconBundleIdentifier = [(_DASDaemonClient *)self hasEntitlementForCustomIconBundleIdentifier];

      if ((hasEntitlementForCustomIconBundleIdentifier & 1) == 0)
      {
        v22 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10012BF0C(v9, self);
        }

        v23 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:0 userInfo:0];
        handlerCopy[2](handlerCopy, v23);

LABEL_72:
        goto LABEL_73;
      }
    }

    else
    {
    }

    if ([(_DASDaemonClient *)self isInternalContinuedProcessingActivity:v9])
    {
      isForegroundAppProxy = 1;
    }

    else
    {
      continuedProcessingWrapper3 = [v9 continuedProcessingWrapper];
      isForegroundAppProxy = [continuedProcessingWrapper3 isForegroundAppProxy];
    }

    bundleIdentifier = [(_DASDaemonClient *)self bundleIdentifier];
    v31 = bundleIdentifier == 0;

    if ((v31 & isForegroundAppProxy) != 0)
    {
      v32 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [v9 name];
        *buf = 138543362;
        *&buf[4] = name2;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting submission even though we were unable to resolve the submitting bundle identifier (internal submission)", buf, 0xCu);
      }
    }

    else
    {
      bundleIdentifier2 = [(_DASDaemonClient *)self bundleIdentifier];
      v35 = bundleIdentifier2 == 0;

      if (v35)
      {
        v69 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_10012BFB0(v9);
        }

        v70 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:6 userInfo:0];
        handlerCopy[2](handlerCopy, v70);

        goto LABEL_72;
      }
    }

    rootBundleIdentifier = [(_DASDaemonClient *)self rootBundleIdentifier];
    if (rootBundleIdentifier)
    {
      clientProvidedIdentifier = [v9 clientProvidedIdentifier];
      rootBundleIdentifier2 = [(_DASDaemonClient *)self rootBundleIdentifier];
      v39 = [clientProvidedIdentifier hasPrefix:rootBundleIdentifier2];
    }

    else
    {
      v39 = 0;
    }

    continuedProcessingWrapper4 = [v9 continuedProcessingWrapper];
    isForegroundAppProxy2 = [continuedProcessingWrapper4 isForegroundAppProxy];

    if (((isForegroundAppProxy2 | v39) & 1) == 0)
    {
      v67 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_10012C040(v9, self);
      }

      v68 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:0];
      handlerCopy[2](handlerCopy, v68);

      goto LABEL_72;
    }

    v42 = +[_DASProcessLifecycleMonitor sharedMonitor];
    foregroundedApplications = [v42 foregroundedApplications];

    rootBundleIdentifier3 = [(_DASDaemonClient *)self rootBundleIdentifier];
    continuedProcessingWrapper5 = [v9 continuedProcessingWrapper];
    isForegroundAppProxy3 = [continuedProcessingWrapper5 isForegroundAppProxy];

    if (isForegroundAppProxy3)
    {
      relatedApplications = [v9 relatedApplications];
      firstObject = [relatedApplications firstObject];

      rootBundleIdentifier3 = firstObject;
    }

    v49 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_10012C10C(v9, self, v49);
    }

    if (!-[_DASDaemonClient isInternalContinuedProcessingActivity:](self, "isInternalContinuedProcessingActivity:", v9) && ([foregroundedApplications containsObject:rootBundleIdentifier3] & 1) == 0)
    {
      v71 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        name3 = [v9 name];
        rootBundleIdentifier4 = [(_DASDaemonClient *)self rootBundleIdentifier];
        *buf = 138543874;
        *&buf[4] = name3;
        *&buf[12] = 2112;
        *&buf[14] = foregroundedApplications;
        *&buf[22] = 2112;
        *&buf[24] = rootBundleIdentifier4;
        _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}@: Foregrounded apps (%@) don't include expected identifier: %@", buf, 0x20u);
      }

      v72 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:0 userInfo:0];
      handlerCopy[2](handlerCopy, v72);

      goto LABEL_73;
    }
  }

  clientProvidedIdentifier2 = [v9 clientProvidedIdentifier];
  if ([clientProvidedIdentifier2 hasPrefix:@"com.apple."])
  {
    bundleIdentifier3 = [(_DASDaemonClient *)self bundleIdentifier];
    v52 = [bundleIdentifier3 hasPrefix:@"com.apple."];

    if ((v52 & 1) == 0)
    {
      v53 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10012C1EC(self, v9);
      }

      v54 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:0];
      handlerCopy[2](handlerCopy, v54);

      goto LABEL_73;
    }
  }

  else
  {
  }

  rootBundleIdentifier5 = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (rootBundleIdentifier5)
  {
    relatedApplications2 = [v9 relatedApplications];
    v57 = [relatedApplications2 count] == 0;

    if (v57)
    {
      rootBundleIdentifier6 = [(_DASDaemonClient *)self rootBundleIdentifier];
      v87 = rootBundleIdentifier6;
      v59 = [NSArray arrayWithObjects:&v87 count:1];
      [v9 setRelatedApplications:v59];
    }
  }

  if (isContinuedProcessingTask)
  {
    [v9 setShouldBePersisted:1];
    [v9 setSuspendable:1];
    [v9 setGroupName:_DASDefaultContinuedProcessingGroupName];
  }

  else
  {
    [v9 setRequestsApplicationLaunch:1];
  }

  [v9 setUserIdentifier:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
  [(_DASDaemonClient *)self validateCTBGTaskRequestWithActivity:v9];
  daemon = self->_daemon;
  v82 = 0;
  v61 = [(_DASDaemon *)daemon canSubmitValidatedTaskRequest:v9 withError:&v82];
  v62 = v82;
  v63 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  v64 = v63;
  if (v61)
  {
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
    {
      sub_10012C318(v9, self);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_1000F53B0;
    v85 = sub_1000F53C0;
    v86 = 0;
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = 1;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1000F6468;
    v77[3] = &unk_1001B8A38;
    v77[4] = &v78;
    v77[5] = buf;
    [(_DASDaemonClient *)self submitActivity:v9 inGroup:0 withHandler:v77];
    if (*(v79 + 24) == 1 && !*(*&buf[8] + 40))
    {
      v66 = 0;
    }

    else
    {
      v65 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        sub_10012C3BC();
      }

      v66 = *(*&buf[8] + 40);
    }

    handlerCopy[2](handlerCopy, v66);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_10012C2A8();
    }

    handlerCopy[2](handlerCopy, v62);
  }

LABEL_73:
}

- (void)getPendingTaskRequestsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  rootBundleIdentifier = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (rootBundleIdentifier)
  {
    [(_DASDaemon *)self->_daemon getPendingTaskRequestsForApplication:rootBundleIdentifier withCompletionHandler:handlerCopy];
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "App missing application-identifier", v7, 2u);
    }

    handlerCopy[2](handlerCopy, &__NSArray0__struct);
  }
}

- (void)cancelTaskRequestWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  rootBundleIdentifier = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (rootBundleIdentifier)
  {
    [(_DASDaemon *)self->_daemon cancelTaskRequestWithIdentifier:identifierCopy forApplication:rootBundleIdentifier];
  }

  else
  {
    v9 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "App missing application-identifier", v10, 2u);
    }
  }

  handlerCopy[2](handlerCopy);
}

- (void)cancelAllTaskRequestsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  rootBundleIdentifier = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (rootBundleIdentifier)
  {
    [(_DASDaemon *)self->_daemon cancelAllTaskRequestsForApplication:rootBundleIdentifier];
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "App missing application-identifier", v7, 2u);
    }
  }

  handlerCopy[2](handlerCopy);
}

- (void)handleLaunchFromDaemonForActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = activitiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Telling client %@ to handle activities: %@", &v8, 0x16u);
  }

  v6 = self->_runningBGTasks;
  objc_sync_enter(v6);
  [(NSMutableSet *)self->_runningBGTasks unionSet:activitiesCopy];
  objc_sync_exit(v6);

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy handleLaunchFromDaemonForActivities:activitiesCopy];
}

- (void)willExpireBGTaskActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = +[NSMutableSet set];
  v6 = self->_runningBGTasks;
  objc_sync_enter(v6);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = activitiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([(NSMutableSet *)self->_runningBGTasks containsObject:v11, v14])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  if ([v5 count])
  {
    v12 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning client %@ for activities about to expire: %@", buf, 0x16u);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy willExpireBGTaskActivities:v5];
  }
}

- (void)establishConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Establishing connection from client: %@", &v6, 0xCu);
  }

  [(_DASDaemon *)self->_daemon establishConnectionFromClient:self withCompletionHandler:connectionCopy];
}

- (void)updateOngoingTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v8 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10012C4D0();
  }

  [(_DASDaemon *)self->_daemon updateOngoingTask:taskCopy completionHandler:handlerCopy];
}

- (void)updateProgressForOngoingTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v8 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10012C544(taskCopy);
  }

  [(_DASDaemon *)self->_daemon updateProgressForOngoingTask:taskCopy completionHandler:handlerCopy];
}

- (void)continuedProcessingDeviceCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  v5 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Queried for device resource capabilities", v6, 2u);
  }

  [(_DASDaemon *)self->_daemon continuedProcessingDeviceCapabilities:capabilitiesCopy];
}

- (void)acknowledgeSystemTaskLaunchWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 acknowledgeSystemTaskLaunchWithIdentifier:identifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)identifier retryAfter:(double)after completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v10 = +[_DASBGSystemTaskHelper sharedInstance];
  [v10 acknowledgeSystemTaskSuspensionWithIdentifier:identifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") retryAfter:-[NSXPCConnection effectiveUserIdentifier](self->_connection completionHandler:{"effectiveUserIdentifier"), handlerCopy, after}];
}

- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)identifier retryAfter:(double)after completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v10 = +[_DASBGSystemTaskHelper sharedInstance];
  [v10 handleClientLedSystemTaskExpirationWithIdentifier:identifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") retryAfter:-[NSXPCConnection effectiveUserIdentifier](self->_connection completionHandler:{"effectiveUserIdentifier"), handlerCopy, after}];
}

- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 handleClientFailedtoExpireTaskWithIdentifier:identifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)submitTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler
{
  handlerCopy = handler;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 submitTaskRequestWithIdentifier:identifierCopy descriptor:descriptorCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)updateTaskRequestWithIdentifier:(id)identifier descriptor:(id)descriptor completionHandler:(id)handler
{
  handlerCopy = handler;
  descriptorCopy = descriptor;
  identifierCopy = identifier;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 updateTaskRequestWithIdentifier:identifierCopy descriptor:descriptorCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)completeSystemTaskWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 completeSystemTaskWithIdentifier:identifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)resumeTaskSchedulingWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 resumeTaskSchedulingWithIdentifier:identifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)unregisterSystemTaskWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 unregisterSystemTaskWithIdentifier:identifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)reportSystemTaskWithIdentifier:(id)identifier producedResults:(id)results completionHandler:(id)handler
{
  handlerCopy = handler;
  resultsCopy = results;
  identifierCopy = identifier;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 reportSystemTaskWithIdentifier:identifierCopy producedResults:resultsCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)reportSystemTaskWithIdentifier:(id)identifier consumedResults:(id)results completionHandler:(id)handler
{
  handlerCopy = handler;
  resultsCopy = results;
  identifierCopy = identifier;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 reportSystemTaskWithIdentifier:identifierCopy consumedResults:resultsCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)resetResultsForIdentifier:(id)identifier byTaskWithIdentifier:(id)withIdentifier completionHandler:(id)handler
{
  handlerCopy = handler;
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 resetResultsForIdentifier:identifierCopy byTaskWithIdentifier:withIdentifierCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), handlerCopy}];
}

- (void)reportTaskWorkloadProgress:(id)progress target:(unint64_t)target completed:(unint64_t)completed category:(unint64_t)category subCategory:(id)subCategory completionHandler:(id)handler
{
  handlerCopy = handler;
  subCategoryCopy = subCategory;
  progressCopy = progress;
  v19 = +[_DASBGSystemTaskHelper sharedInstance];
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  LODWORD(v18) = [(NSXPCConnection *)self->_connection effectiveUserIdentifier];
  [v19 recordTaskWorkloadProgress:progressCopy target:target completed:completed category:category subCategory:subCategoryCopy withPID:processIdentifier withUID:v18 completionHandler:handlerCopy];
}

- (void)inspect:(id)inspect withHandler:(id)handler
{
  handlerCopy = handler;
  inspectCopy = inspect;
  v7 = +[_DASBGSystemTaskHelper sharedInstance];
  [v7 inspect:inspectCopy withHandler:handlerCopy];
}

- (void)resubmitRunningTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = +[_DASBGSystemTaskHelper sharedInstance];
  [v5 resubmitRunningTasks:tasksCopy withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:{"processIdentifier"), -[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
}

- (void)submittedActivitiesWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon submittedActivitiesWithHandler:handler];
  }
}

- (void)delayedRunningActivitiesWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon delayedRunningActivitiesWithHandler:handler];
  }
}

- (void)runningActivitiesWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon runningActivitiesWithHandler:handler];
  }
}

- (void)runningGroupActivitiesWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon runningGroupActivitiesWithHandler:handler];
  }
}

- (void)forceRunActivities:(id)activities
{
  activitiesCopy = activities;
  v6 = activitiesCopy;
  if (self->_restricted)
  {
    v7 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000F7D2C;
    v13[3] = &unk_1001B56E0;
    v13[4] = self;
    v14 = activitiesCopy;
    v8 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v13);
    v8[2](v8, v9, v10, v11, v12);
  }
}

- (void)runActivitiesWithUrgency:(int64_t)urgency activities:(id)activities
{
  if (self->_restricted)
  {
    activities = [_DASDaemonLogger logForCategory:@"bar", activities];
    if (os_log_type_enabled(activities, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon runActivitiesWithUrgency:urgency activities:activities];
  }
}

- (void)deferActivities:(id)activities withHandler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon deferActivities:activities withHandler:handler];
  }
}

- (void)currentPredictionsWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon currentPredictionsWithHandler:handler];
  }
}

- (void)currentAllocations:(unint64_t)allocations timeFilter:(id)filter bgsqlData:(id)data withHandler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", filter, data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon currentAllocations:allocations timeFilter:filter bgsqlData:data withHandler:handler];
  }
}

- (void)statisticsWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon statisticsWithHandler:handler];
  }
}

- (void)forceResetOfResultIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"dependencies"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v7 = +[_DASActivityDependencyManager sharedInstance];
    [v7 dastool_forceResetOfResultIdentifier:identifierCopy];
  }
}

- (void)queryStatusOfResultIdentifier:(id)identifier withHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (self->_restricted)
  {
    v9 = [_DASDaemonLogger logForCategory:@"dependencies"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v10 = +[_DASActivityDependencyManager sharedInstance];
    v11 = [v10 dastool_queryStatusOfResultIdentifier:identifierCopy];

    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)queryDependenciesOfTaskIdentifier:(id)identifier withHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (self->_restricted)
  {
    v9 = [_DASDaemonLogger logForCategory:@"dependencies"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    v10 = [(_DASDaemon *)self->_daemon getActivityWithName:identifierCopy];
    if (v10)
    {
      v11 = +[NSMutableDictionary dictionary];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v10;
      dependencies = [v10 dependencies];
      v13 = [dependencies countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(dependencies);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v18 = [_DASDaemonLogger logForCategory:@"dependencies"];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "dependency: %@", buf, 0xCu);
            }

            dictionary = [v17 dictionary];
            [v11 addEntriesFromDictionary:dictionary];
          }

          v14 = [dependencies countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }

      v28[0] = @"activityIdentifier";
      v10 = v23;
      name = [v23 name];
      v28[1] = @"dependencies";
      v29[0] = name;
      v29[1] = v11;
      v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      handlerCopy[2](handlerCopy, v21);
    }

    else
    {
      v22 = [_DASDaemonLogger logForCategory:@"dependencies"];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10012C5DC();
      }

      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)deleteLimitForActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"budgeting", name, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon deleteLimitForActivity:activity forLimiterWithName:name handler:handler];
  }
}

- (void)updateLimit:(double)limit forActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler
{
  if (self->_restricted)
  {
    limit = [_DASDaemonLogger logForCategory:@"budgeting", name, handler, limit];
    if (os_log_type_enabled(limit, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon updateLimit:activity forActivity:name forLimiterWithName:handler handler:limit];
  }
}

- (void)getLimiterResponseForActivity:(id)activity handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"budgeting", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getLimiterResponseForActivity:activity handler:handler];
  }
}

- (void)getRuntimeLimit:(id)limit handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"budgeting", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getRuntimeLimit:limit handler:handler];
  }
}

- (void)getElapsedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", filter, data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getElapsedRuntimes:runtimes timeFilter:filter bgsqlData:data handler:handler];
  }
}

- (void)getEstimatedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", filter, data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getEstimatedRuntimes:runtimes timeFilter:filter bgsqlData:data handler:handler];
  }
}

- (void)getConditionsPenalties:(id)penalties handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getConditionsPenalties:penalties handler:handler];
  }
}

- (void)getContentionPenalties:(id)penalties handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getContentionPenalties:penalties handler:handler];
  }
}

- (void)getFeatureTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", filter, data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getFeatureTimelines:timelines timeFilter:filter bgsqlData:data handler:handler];
  }
}

- (void)getActivityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", filter, data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getActivityTimelines:timelines timeFilter:filter bgsqlData:data handler:handler];
  }
}

- (void)getEligibilityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", filter, data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getEligibilityTimelines:timelines timeFilter:filter bgsqlData:data handler:handler];
  }
}

- (void)getDeviceConditionTimelines:(id)timelines bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getDeviceConditionTimelines:timelines bgsqlData:data handler:handler];
  }
}

- (void)getSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getSchedulerEfficiencyMetrics:metrics bgsqlData:data handler:handler];
  }
}

- (void)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getOvernightIntensiveSchedulerEfficiencyMetrics:metrics bgsqlData:data handler:handler];
  }
}

- (void)getInstallTimeline:(id)timeline bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getInstallTimeline:timeline bgsqlData:data handler:handler];
  }
}

- (void)getBuddyEvents:(id)events bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getBuddyEvents:events bgsqlData:data handler:handler];
  }
}

- (void)getEstimatedMADCompletionTimes:(id)times endDate:(id)date bgsqlData:(id)data handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"latency", date, data, handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getEstimatedMADCompletionTimes:times endDate:date bgsqlData:data handler:handler];
  }
}

- (void)getSortedCandidateActivities:(id)activities handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"client", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getSortedCandidateActivities:activities handler:handler];
  }
}

- (void)triggerScoreEvaluationAndRunActivities:(id)activities handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"client", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon triggerScoreEvaluationAndRunActivities:activities handler:handler];
  }
}

- (void)allBudgetsWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"budgeting"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon allBudgetsWithHandler:handler];
  }
}

- (void)balanceForBudgetWithName:(id)name withHandler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"budgeting", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon balanceForBudgetWithName:name withHandler:handler];
  }
}

- (void)setBalance:(double)balance forBudgetWithName:(id)name
{
  if (self->_restricted)
  {
    balance = [_DASDaemonLogger logForCategory:@"budgeting", balance];
    if (os_log_type_enabled(balance, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon setBalance:name forBudgetWithName:balance];
  }
}

- (void)decrementBy:(double)by forBudgetWithName:(id)name
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"budgeting", by];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon decrementBy:name forBudgetWithName:by];
  }
}

- (void)setCapacity:(double)capacity forBudgetWithName:(id)name
{
  if (self->_restricted)
  {
    capacity = [_DASDaemonLogger logForCategory:@"budgeting", capacity];
    if (os_log_type_enabled(capacity, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon setCapacity:name forBudgetWithName:capacity];
  }
}

- (void)policiesWithHandler:(id)handler
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon policiesWithHandler:handler];
  }
}

- (void)evaluatePolicies:(id)policies handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon evaluatePolicies:policies handler:handler];
  }
}

- (void)evaluateAllActivities:(id)activities handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon evaluateAllActivities:activities handler:handler];
  }
}

- (void)runProceedableActivities:(id)activities handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon runProceedableActivities:activities handler:handler];
  }
}

- (void)activityContainsOverrides:(id)overrides handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon activityContainsOverrides:overrides handler:handler];
  }
}

- (void)blockingPoliciesWithParameters:(id)parameters handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon blockingPoliciesWithParameters:parameters handler:handler];
  }
}

- (void)submitRateLimitConfiguration:(id)configuration handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon submitRateLimitConfiguration:configuration handler:handler];
  }
}

- (void)pauseWithParameters:(id)parameters handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon pauseWithParameters:parameters handler:handler];
  }
}

- (void)addPauseExceptParameter:(id)parameter handler:(id)handler
{
  if (self->_restricted)
  {
    handler = [_DASDaemonLogger logForCategory:@"bar", handler];
    if (os_log_type_enabled(handler, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon addPauseExceptParameter:parameter handler:handler];
  }
}

- (void)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0
{
  connection = self->_connection;
  handlerCopy = handler;
  valueCopy = value;
  qosCopy = qos;
  nameCopy = name;
  identifierCopy = identifier;
  v24 = [_DASBGSystemTask taskNameWithIdentifier:nameCopy UID:[(NSXPCConnection *)connection effectiveUserIdentifier]];

  [(_DASDaemon *)self->_daemon reportThroughputMetricsForIdentifier:identifierCopy taskName:v24 itemCount:count totalDuration:qosCopy qos:category workloadCategory:valueCopy expectedValue:duration withHandler:handlerCopy];
}

- (void)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0
{
  connection = self->_connection;
  handlerCopy = handler;
  valueCopy = value;
  qosCopy = qos;
  countCopy = count;
  completedCopy = completed;
  nameCopy = name;
  identifierCopy = identifier;
  v25 = [_DASBGSystemTask taskNameWithIdentifier:nameCopy UID:[(NSXPCConnection *)connection effectiveUserIdentifier]];

  [(_DASDaemon *)self->_daemon reportProgressMetricsForIdentifier:identifierCopy taskName:v25 itemsCompleted:completedCopy totalItemCount:countCopy qos:qosCopy workloadCategory:category expectedValue:valueCopy withHandler:handlerCopy];
}

- (void)prewarmApplication:(id)application
{
  if (self->_restricted)
  {
    v5 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon prewarmApplication:application];
  }
}

- (void)prewarmSuspendWithHandler:(id)handler
{
  handlerCopy = handler;
  rootBundleIdentifier = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (!rootBundleIdentifier)
  {
    handlerCopy[2](handlerCopy, 0);
  }

  [(_DASDaemon *)self->_daemon prewarmSuspendApplication:rootBundleIdentifier withHandler:handlerCopy];
}

@end