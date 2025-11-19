@interface _DASDaemonClient
- (BOOL)activityCompletedInternal:(id)a3;
- (BOOL)hasEntitlementForCustomIconBundleIdentifier;
- (BOOL)hasEntitlementsForRequestedResources:(int64_t)a3 error:(id *)a4;
- (BOOL)isInternalContinuedProcessingActivity:(id)a3;
- (NSString)bundleIdentifier;
- (NSString)rootBundleIdentifier;
- (RBSProcessHandle)processHandle;
- (RBSProcessHandle)rootProcessHandle;
- (_DASDaemonClient)initWithDaemon:(id)a3 withConnection:(id)a4 isRestricted:(BOOL)a5;
- (id)activityNamesFromActivities:(id)a3;
- (id)unlockedActivitiesWithNames:(id)a3 inSet:(id)a4;
- (void)_resetWidgetBudgets;
- (void)acknowledgeSystemTaskLaunchWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)a3 retryAfter:(double)a4 completionHandler:(id)a5;
- (void)activity:(id)a3 blockedOnPolicies:(id)a4;
- (void)activity:(id)a3 runWithoutHonoringPolicies:(id)a4;
- (void)activityCanceled:(id)a3;
- (void)activityCanceledWithReason:(id)a3 expirationReason:(int64_t)a4;
- (void)activityCompleted:(id)a3;
- (void)activityContainsOverrides:(id)a3 handler:(id)a4;
- (void)activityStarted:(id)a3;
- (void)addPauseExceptParameter:(id)a3 handler:(id)a4;
- (void)allBudgetsWithHandler:(id)a3;
- (void)backgroundAppRefreshEnabledForApp:(id)a3 withHandler:(id)a4;
- (void)balanceForBudgetWithName:(id)a3 withHandler:(id)a4;
- (void)blockingPoliciesWithParameters:(id)a3 handler:(id)a4;
- (void)cancelActivities:(id)a3;
- (void)cancelActivitiesWithReason:(id)a3 cancellationReason:(int64_t)a4;
- (void)cancelAllActivities;
- (void)cancelAllTaskRequestsWithCompletionHandler:(id)a3;
- (void)cancelTaskRequestWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)clientFailedtoExpireTaskWithIdentifier:(id)a3;
- (void)completeSystemTaskWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)continuedProcessingDeviceCapabilities:(id)a3;
- (void)createActivityGroup:(id)a3;
- (void)currentAllocations:(unint64_t)a3 timeFilter:(id)a4 bgsqlData:(id)a5 withHandler:(id)a6;
- (void)currentPredictionsWithHandler:(id)a3;
- (void)dealloc;
- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4;
- (void)deferActivities:(id)a3 withHandler:(id)a4;
- (void)delayedRunningActivitiesWithHandler:(id)a3;
- (void)delayedStartActivities:(id)a3;
- (void)deleteLimitForActivity:(id)a3 forLimiterWithName:(id)a4 handler:(id)a5;
- (void)disableAppRefreshForApps:(id)a3;
- (void)endLaunchWithReason:(id)a3 forApp:(id)a4;
- (void)establishConnection:(id)a3;
- (void)evaluateAllActivities:(id)a3 handler:(id)a4;
- (void)evaluatePolicies:(id)a3 handler:(id)a4;
- (void)forceResetOfResultIdentifier:(id)a3;
- (void)forceRunActivities:(id)a3;
- (void)getActivityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6;
- (void)getBuddyEvents:(id)a3 bgsqlData:(id)a4 handler:(id)a5;
- (void)getConditionsPenalties:(id)a3 handler:(id)a4;
- (void)getContentionPenalties:(id)a3 handler:(id)a4;
- (void)getDeviceConditionTimelines:(id)a3 bgsqlData:(id)a4 handler:(id)a5;
- (void)getElapsedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6;
- (void)getEligibilityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6;
- (void)getEstimatedMADCompletionTimes:(id)a3 endDate:(id)a4 bgsqlData:(id)a5 handler:(id)a6;
- (void)getEstimatedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6;
- (void)getFeatureTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6;
- (void)getInstallTimeline:(id)a3 bgsqlData:(id)a4 handler:(id)a5;
- (void)getLimiterResponseForActivity:(id)a3 handler:(id)a4;
- (void)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4 handler:(id)a5;
- (void)getPendingTaskRequestsWithCompletionHandler:(id)a3;
- (void)getRuntimeLimit:(id)a3 handler:(id)a4;
- (void)getSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4 handler:(id)a5;
- (void)getSortedCandidateActivities:(id)a3 handler:(id)a4;
- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)handleClientInterruption;
- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)a3 retryAfter:(double)a4 completionHandler:(id)a5;
- (void)handleLaunchFromDaemonForActivities:(id)a3;
- (void)handleRunningActivities:(id)a3;
- (void)inspect:(id)a3 withHandler:(id)a4;
- (void)pauseWithParameters:(id)a3 handler:(id)a4;
- (void)policiesWithHandler:(id)a3;
- (void)prewarmApplication:(id)a3;
- (void)prewarmSuspendWithHandler:(id)a3;
- (void)queryDependenciesOfTaskIdentifier:(id)a3 withHandler:(id)a4;
- (void)queryStatusOfResultIdentifier:(id)a3 withHandler:(id)a4;
- (void)removeKnownActivitiesFromSet:(id)a3;
- (void)reportProgressMetricsForIdentifier:(id)a3 taskName:(id)a4 itemsCompleted:(id)a5 totalItemCount:(id)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10;
- (void)reportSystemTaskWithIdentifier:(id)a3 consumedResults:(id)a4 completionHandler:(id)a5;
- (void)reportSystemTaskWithIdentifier:(id)a3 producedResults:(id)a4 completionHandler:(id)a5;
- (void)reportTaskWorkloadProgress:(id)a3 target:(unint64_t)a4 completed:(unint64_t)a5 category:(unint64_t)a6 subCategory:(id)a7 completionHandler:(id)a8;
- (void)reportThroughputMetricsForIdentifier:(id)a3 taskName:(id)a4 itemCount:(unint64_t)a5 totalDuration:(double)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10;
- (void)resetResultsForIdentifier:(id)a3 byTaskWithIdentifier:(id)a4 completionHandler:(id)a5;
- (void)resubmitRunningTasks:(id)a3;
- (void)resumeTaskSchedulingWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)runActivities:(id)a3;
- (void)runActivitiesWithDelayedStart:(id)a3;
- (void)runActivitiesWithUrgency:(int64_t)a3 activities:(id)a4;
- (void)runProceedableActivities:(id)a3 handler:(id)a4;
- (void)runningActivitiesWithHandler:(id)a3;
- (void)runningGroupActivitiesWithHandler:(id)a3;
- (void)setBalance:(double)a3 forBudgetWithName:(id)a4;
- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4;
- (void)startedActivities:(id)a3;
- (void)statisticsWithHandler:(id)a3;
- (void)submitActivities:(id)a3;
- (void)submitActivitiesInternal:(id)a3;
- (void)submitActivity:(id)a3;
- (void)submitActivity:(id)a3 inGroup:(id)a4;
- (void)submitActivity:(id)a3 inGroup:(id)a4 withHandler:(id)a5;
- (void)submitActivity:(id)a3 inGroupWithName:(id)a4;
- (void)submitActivityInternal:(id)a3;
- (void)submitRateLimitConfiguration:(id)a3 handler:(id)a4;
- (void)submitTaskRequest:(id)a3 withHandler:(id)a4;
- (void)submitTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5;
- (void)submittedActivitiesWithHandler:(id)a3;
- (void)suspendActivities:(id)a3;
- (void)triggerScoreEvaluationAndRunActivities:(id)a3 handler:(id)a4;
- (void)unregisterSystemTaskWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)updateActivity:(id)a3 withParameters:(id)a4;
- (void)updateLimit:(double)a3 forActivity:(id)a4 forLimiterWithName:(id)a5 handler:(id)a6;
- (void)updateOngoingTask:(id)a3 completionHandler:(id)a4;
- (void)updateProgressForOngoingTask:(id)a3 completionHandler:(id)a4;
- (void)updateTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5;
- (void)validateCTBGTaskRequestWithActivity:(id)a3;
- (void)willExpireBGTaskActivities:(id)a3;
@end

@implementation _DASDaemonClient

- (NSString)rootBundleIdentifier
{
  v2 = [(_DASDaemonClient *)self rootProcessHandle];
  v3 = [v2 bundle];
  v4 = [v3 identifier];

  return v4;
}

- (RBSProcessHandle)rootProcessHandle
{
  v2 = self;
  objc_sync_enter(v2);
  rootProcessHandle = v2->_rootProcessHandle;
  if (!rootProcessHandle)
  {
    for (i = [(_DASDaemonClient *)v2 processHandle];
    {
      v5 = v2->_rootProcessHandle;
      v2->_rootProcessHandle = i;

      v6 = [(RBSProcessHandle *)v2->_rootProcessHandle hostProcess];

      v7 = v2->_rootProcessHandle;
      if (!v6)
      {
        break;
      }

      [(RBSProcessHandle *)v2->_rootProcessHandle hostProcess];
    }

    v8 = [(_DASDaemonClient *)v2 processHandle];

    if (v7 == v8)
    {
      v9 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [(_DASDaemonClient *)v2 processHandle];
        sub_10012BEB4(v10, v13, v9);
      }
    }

    rootProcessHandle = v2->_rootProcessHandle;
  }

  v11 = rootProcessHandle;
  objc_sync_exit(v2);

  return v11;
}

- (RBSProcessHandle)processHandle
{
  v2 = self;
  objc_sync_enter(v2);
  processHandle = v2->_processHandle;
  if (processHandle)
  {
    v4 = processHandle;
  }

  else
  {
    v5 = [RBSProcessIdentifier identifierWithPid:[(NSXPCConnection *)v2->_connection processIdentifier]];
    v12 = 0;
    v6 = [RBSProcessHandle handleForIdentifier:v5 error:&v12];
    v7 = v12;
    v8 = v2->_processHandle;
    v2->_processHandle = v6;

    v9 = v2->_processHandle;
    if (!v9 || v7)
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10012BE40();
      }

      v9 = v2->_processHandle;
    }

    v4 = v9;
  }

  objc_sync_exit(v2);

  return v4;
}

- (void)handleClientInterruption
{
  [(_DASDaemonClient *)self cancelAllActivities];
  v3 = [(_DASDaemonClient *)self daemon];
  [v3 removeClient:self];
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

- (_DASDaemonClient)initWithDaemon:(id)a3 withConnection:(id)a4 isRestricted:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v29.receiver = self;
  v29.super_class = _DASDaemonClient;
  v11 = [(_DASDaemonClient *)&v29 init];
  v12 = v11;
  if (v11)
  {
    v11->_restricted = a5;
    objc_storeStrong(&v11->_daemon, a3);
    objc_storeStrong(&v12->_connection, a4);
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

- (void)removeKnownActivitiesFromSet:(id)a3
{
  v4 = a3;
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

        [v4 removeObject:{*(*(&v10 + 1) + 8 * v9), v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (id)unlockedActivitiesWithNames:(id)a3 inSet:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000F3064;
  v11[3] = &unk_1001B8A10;
  v8 = v5;
  v12 = v8;
  v13 = v15;
  v14 = v7;
  v9 = [v6 objectsPassingTest:v11];

  _Block_object_dispose(v15, 8);

  return v9;
}

- (id)activityNamesFromActivities:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = +[NSMutableArray array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
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

          v10 = [*(*(&v13 + 1) + 8 * i) name];
          [v4 addObject:v10];
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

- (void)runActivitiesWithDelayedStart:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = self->_submittedTasks;
  objc_sync_enter(v6);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v4;
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

    v13 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v14 = [NSSet setWithSet:v5];
    [v13 runActivitiesWithDelayedStart:v14];
  }
}

- (void)runActivities:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = self->_submittedTasks;
  objc_sync_enter(v6);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
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
    v12 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v13 = [NSSet setWithSet:v5];
    [v12 runActivities:v13];
  }
}

- (void)suspendActivities:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = self->_startedTasks;
  objc_sync_enter(v6);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
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
    v12 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v13 = [NSSet setWithSet:v7];
    [v12 suspendActivities:v13];
  }
}

- (void)cancelActivities:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = self->_submittedTasks;
  objc_sync_enter(v6);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v4;
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
    v18 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v19 = [NSSet setWithSet:v13];
    [v18 cancelActivities:v19];
  }
}

- (void)cancelActivitiesWithReason:(id)a3 cancellationReason:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSMutableSet set];
  v8 = self->_submittedTasks;
  objc_sync_enter(v8);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v6;
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
    v20 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v21 = [NSSet setWithSet:v15];
    [v20 cancelActivitiesWithReason:v21 cancellationReason:a4];
  }
}

- (void)activity:(id)a3 blockedOnPolicies:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v8 activity:v7 blockedOnPolicies:v6];
}

- (void)activity:(id)a3 runWithoutHonoringPolicies:(id)a4
{
  connection = self->_connection;
  v6 = a4;
  v7 = a3;
  v8 = [(NSXPCConnection *)connection remoteObjectProxy];
  [v8 activity:v7 runWithoutHonoringPolicies:v6];
}

- (void)submitActivityInternal:(id)a3
{
  v5 = a3;
  v4 = self->_submittedTasks;
  objc_sync_enter(v4);
  if ([v5 userIdentifier] == -1)
  {
    [v5 setUserIdentifier:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
  }

  [v5 setPid:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
  [(_DASDaemonClient *)self setApplicationURLForActivity:v5];
  [(NSMutableSet *)self->_submittedTasks _DAS_addOrReplaceObject:v5];
  objc_sync_exit(v4);
}

- (void)submitActivitiesInternal:(id)a3
{
  v4 = a3;
  v5 = self->_submittedTasks;
  objc_sync_enter(v5);
  v6 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v4;
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

- (void)submitActivity:(id)a3
{
  v5 = a3;
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
    [(_DASDaemonClient *)self submitActivityInternal:v5];
    [(_DASDaemon *)self->_daemon submitActivity:v5];
  }
}

- (void)submitActivities:(id)a3
{
  v5 = a3;
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
    [(_DASDaemonClient *)self submitActivitiesInternal:v5];
    [(_DASDaemon *)self->_daemon submitActivities:v5];
  }
}

- (void)handleRunningActivities:(id)a3
{
  v5 = a3;
  v4 = self->_startedTasks;
  objc_sync_enter(v4);
  [(NSMutableSet *)self->_startedTasks _DAS_unionSetOverridingExisting:v5];
  objc_sync_exit(v4);

  [(_DASDaemon *)self->_daemon handleRunningActivities:v5];
}

- (void)startedActivities:(id)a3
{
  v5 = a3;
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
    v7 = [NSSet setWithArray:v5];
    v8 = self->_startedTasks;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_startedTasks unionSet:v7];
    objc_sync_exit(v8);

    v9 = self;
    objc_sync_enter(v9);
    [(_DASDaemon *)v9->_daemon startedActivities:v7];
    objc_sync_exit(v9);
  }
}

- (void)delayedStartActivities:(id)a3
{
  v5 = a3;
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
    v7 = [NSSet setWithArray:v5];
    v8 = self->_delayedStartTasks;
    objc_sync_enter(v8);
    [(NSMutableSet *)self->_delayedStartTasks unionSet:v7];
    objc_sync_exit(v8);
  }
}

- (void)activityStarted:(id)a3
{
  v5 = a3;
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
    if ([(NSMutableSet *)self->_delayedStartTasks containsObject:v5])
    {
      [(NSMutableSet *)self->_delayedStartTasks removeObject:v5];
      objc_sync_exit(v7);

      v8 = self->_startedTasks;
      objc_sync_enter(v8);
      [(NSMutableSet *)self->_startedTasks _DAS_addOrReplaceObject:v5];
      objc_sync_exit(v8);

      v9 = self;
      objc_sync_enter(v9);
      [(_DASDaemon *)v9->_daemon activityStarted:v5];
      objc_sync_exit(v9);
    }

    else
    {
      v10 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v5 shortDescription];
        v12 = 138412290;
        v13 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Can't start %@!,not scheduled to run!", &v12, 0xCu);
      }

      objc_sync_exit(v7);
    }
  }
}

- (BOOL)activityCompletedInternal:(id)a3
{
  v4 = a3;
  v5 = self->_startedTasks;
  objc_sync_enter(v5);
  v6 = [(NSMutableSet *)self->_startedTasks containsObject:v4];
  if (v6)
  {
    [(NSMutableSet *)self->_startedTasks removeObject:v4];
  }

  else
  {
    v7 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v4 shortDescription];
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Can't complete, %@ - not running, cancelling instead!", &v12, 0xCu);
    }
  }

  objc_sync_exit(v5);

  v9 = self->_submittedTasks;
  objc_sync_enter(v9);
  [(NSMutableSet *)self->_submittedTasks removeObject:v4];
  objc_sync_exit(v9);

  v10 = self->_delayedStartTasks;
  objc_sync_enter(v10);
  [(NSMutableSet *)self->_delayedStartTasks removeObject:v4];
  objc_sync_exit(v10);

  return v6;
}

- (void)activityCompleted:(id)a3
{
  v5 = a3;
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
    v7 = [(_DASDaemonClient *)self activityCompletedInternal:v5];
    v8 = self;
    objc_sync_enter(v8);
    daemon = v8->_daemon;
    if (v7)
    {
      [(_DASDaemon *)daemon activityCompleted:v5];
    }

    else
    {
      [(_DASDaemon *)daemon activityCanceled:v5];
    }

    objc_sync_exit(v8);
  }
}

- (void)activityCanceled:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_restricted && ([v5 isContinuedProcessingTask] & 1) == 0)
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

    v10 = self;
    objc_sync_enter(v10);
    [(_DASDaemon *)v10->_daemon activityCanceled:v6];
    objc_sync_exit(v10);
  }
}

- (void)activityCanceledWithReason:(id)a3 expirationReason:(int64_t)a4
{
  v7 = a3;
  v8 = v7;
  if (self->_restricted && ([v7 isContinuedProcessingTask] & 1) == 0)
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

    v12 = self;
    objc_sync_enter(v12);
    [(_DASDaemon *)v12->_daemon activityCanceledWithReason:v8 expirationReason:a4];
    objc_sync_exit(v12);
  }
}

- (void)clientFailedtoExpireTaskWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_restricted && ([v5 isContinuedProcessingTask] & 1) == 0)
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

    v10 = self;
    objc_sync_enter(v10);
    [(_DASDaemon *)v10->_daemon clientFailedtoExpireTaskWithIdentifier:v6];
    objc_sync_exit(v10);
  }
}

- (void)updateActivity:(id)a3 withParameters:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  [(_DASDaemon *)v7->_daemon updateActivity:v8 withParameters:v6];
  objc_sync_exit(v7);
}

- (void)_resetWidgetBudgets
{
  v3 = +[NSXPCConnection currentConnection];
  v4 = [v3 valueForEntitlement:@"com.apple.dasd.widgetBudgetReset"];
  v5 = [v4 BOOLValue];

  if (v5)
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

- (void)createActivityGroup:(id)a3
{
  v5 = a3;
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
      [(_DASDaemon *)self->_daemon createActivityGroup:v5];
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

- (void)submitActivity:(id)a3 inGroupWithName:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    [(_DASDaemonClient *)self submitActivityInternal:v7];
    [(_DASDaemon *)self->_daemon submitActivity:v7 inGroupWithName:v8];
  }
}

- (void)submitActivity:(id)a3 inGroup:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    [(_DASDaemonClient *)self submitActivityInternal:v7];
    [(_DASDaemon *)self->_daemon submitActivity:v7 inGroup:v8];
  }
}

- (void)submitActivity:(id)a3 inGroup:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 userIdentifier] == -1)
  {
    [v8 setUserIdentifier:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
  }

  [v8 setPid:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
  [(_DASDaemonClient *)self setApplicationURLForActivity:v8];
  v11 = self->_submittedTasks;
  objc_sync_enter(v11);
  [(NSMutableSet *)self->_submittedTasks _DAS_addOrReplaceObject:v8];
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
  [(_DASDaemon *)daemon submitActivity:v8 inGroup:v9 withHandler:v15];
  if (v23[3])
  {
    v13 = 1;
  }

  else
  {
    v14 = self;
    objc_sync_enter(v14);
    [(NSMutableSet *)self->_submittedTasks removeObject:v8];
    objc_sync_exit(v14);

    v13 = *(v23 + 24);
  }

  v10[2](v10, v13 & 1, v17[5]);
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

- (void)endLaunchWithReason:(id)a3 forApp:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon endLaunchWithReason:a3 forApp:a4];
  }
}

- (void)backgroundAppRefreshEnabledForApp:(id)a3 withHandler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon backgroundAppRefreshEnabledForApp:a3 withHandler:a4];
  }
}

- (void)disableAppRefreshForApps:(id)a3
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

    [(_DASDaemon *)daemon disableAppRefreshForApps:a3];
  }
}

- (NSString)bundleIdentifier
{
  v2 = [(_DASDaemonClient *)self processHandle];
  v3 = [v2 bundle];
  v4 = [v3 identifier];

  return v4;
}

- (BOOL)hasEntitlementsForRequestedResources:(int64_t)a3 error:(id *)a4
{
  if (a3)
  {
    v7 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.developer.background-tasks.continued-processing.gpu"];
    v5 = [v7 BOOLValue];

    if (v5)
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

      v5 = 0;
      v4 = v10;
    }

    if (a4 && v4)
    {
      v11 = v4;
      *a4 = v4;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  return v5;
}

- (BOOL)hasEntitlementForCustomIconBundleIdentifier
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.das.private.bgtask.continuedprocessing.iconBundleIdentifier"];
  if ([v3 BOOLValue])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(NSXPCConnection *)self->_connection valueForEntitlement:@"com.apple.developer.web-browser-engine.networking"];
    v4 = [v5 BOOLValue];
  }

  return v4;
}

- (void)validateCTBGTaskRequestWithActivity:(id)a3
{
  daemon = self->_daemon;
  v4 = a3;
  v5 = [(_DASDaemon *)daemon enManager];
  [v5 setIsENActivity:v4];
}

- (BOOL)isInternalContinuedProcessingActivity:(id)a3
{
  v3 = [a3 launchReason];
  v4 = [v3 isEqualToString:_DASLaunchReasonContinuedProcessingInternal];

  return v4;
}

- (void)submitTaskRequest:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_DASActivity validateBGTaskRequestWithActivity:v6];
  v9 = v8;
  if (!v8)
  {
    v24 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:0];
    v7[2](v7, v24);

    goto LABEL_73;
  }

  v10 = [v8 launchReason];
  v11 = [v10 isEqualToString:_DASLaunchReasonHealthResearch];

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
      v7[2](v7, v26);

      goto LABEL_73;
    }
  }

  v15 = [v9 isContinuedProcessingTask];
  if (v15)
  {
    v16 = [v9 continuedProcessingWrapper];
    v83 = 0;
    v17 = -[_DASDaemonClient hasEntitlementsForRequestedResources:error:](self, "hasEntitlementsForRequestedResources:error:", [v16 resources], &v83);
    v18 = v83;

    if ((v17 & 1) == 0)
    {
      v27 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v73 = [v9 name];
        v74 = [(NSXPCConnection *)self->_connection processIdentifier];
        *buf = 138543874;
        *&buf[4] = v73;
        *&buf[12] = 1024;
        *&buf[14] = v74;
        *&buf[18] = 2112;
        *&buf[20] = v18;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@: Process %d not entitled for requested resources: %@", buf, 0x1Cu);
      }

      v7[2](v7, v18);
      goto LABEL_72;
    }

    v19 = [v9 continuedProcessingWrapper];
    v20 = [v19 iconBundleIdentifier];
    if (v20)
    {
      v21 = [(_DASDaemonClient *)self hasEntitlementForCustomIconBundleIdentifier];

      if ((v21 & 1) == 0)
      {
        v22 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10012BF0C(v9, self);
        }

        v23 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:0 userInfo:0];
        v7[2](v7, v23);

LABEL_72:
        goto LABEL_73;
      }
    }

    else
    {
    }

    if ([(_DASDaemonClient *)self isInternalContinuedProcessingActivity:v9])
    {
      v28 = 1;
    }

    else
    {
      v29 = [v9 continuedProcessingWrapper];
      v28 = [v29 isForegroundAppProxy];
    }

    v30 = [(_DASDaemonClient *)self bundleIdentifier];
    v31 = v30 == 0;

    if ((v31 & v28) != 0)
    {
      v32 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v9 name];
        *buf = 138543362;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%{public}@: Accepting submission even though we were unable to resolve the submitting bundle identifier (internal submission)", buf, 0xCu);
      }
    }

    else
    {
      v34 = [(_DASDaemonClient *)self bundleIdentifier];
      v35 = v34 == 0;

      if (v35)
      {
        v69 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          sub_10012BFB0(v9);
        }

        v70 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:6 userInfo:0];
        v7[2](v7, v70);

        goto LABEL_72;
      }
    }

    v36 = [(_DASDaemonClient *)self rootBundleIdentifier];
    if (v36)
    {
      v37 = [v9 clientProvidedIdentifier];
      v38 = [(_DASDaemonClient *)self rootBundleIdentifier];
      v39 = [v37 hasPrefix:v38];
    }

    else
    {
      v39 = 0;
    }

    v40 = [v9 continuedProcessingWrapper];
    v41 = [v40 isForegroundAppProxy];

    if (((v41 | v39) & 1) == 0)
    {
      v67 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_10012C040(v9, self);
      }

      v68 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:0];
      v7[2](v7, v68);

      goto LABEL_72;
    }

    v42 = +[_DASProcessLifecycleMonitor sharedMonitor];
    v43 = [v42 foregroundedApplications];

    v44 = [(_DASDaemonClient *)self rootBundleIdentifier];
    v45 = [v9 continuedProcessingWrapper];
    v46 = [v45 isForegroundAppProxy];

    if (v46)
    {
      v47 = [v9 relatedApplications];
      v48 = [v47 firstObject];

      v44 = v48;
    }

    v49 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_10012C10C(v9, self, v49);
    }

    if (!-[_DASDaemonClient isInternalContinuedProcessingActivity:](self, "isInternalContinuedProcessingActivity:", v9) && ([v43 containsObject:v44] & 1) == 0)
    {
      v71 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v75 = [v9 name];
        v76 = [(_DASDaemonClient *)self rootBundleIdentifier];
        *buf = 138543874;
        *&buf[4] = v75;
        *&buf[12] = 2112;
        *&buf[14] = v43;
        *&buf[22] = 2112;
        *&buf[24] = v76;
        _os_log_error_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "%{public}@: Foregrounded apps (%@) don't include expected identifier: %@", buf, 0x20u);
      }

      v72 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:0 userInfo:0];
      v7[2](v7, v72);

      goto LABEL_73;
    }
  }

  v50 = [v9 clientProvidedIdentifier];
  if ([v50 hasPrefix:@"com.apple."])
  {
    v51 = [(_DASDaemonClient *)self bundleIdentifier];
    v52 = [v51 hasPrefix:@"com.apple."];

    if ((v52 & 1) == 0)
    {
      v53 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        sub_10012C1EC(self, v9);
      }

      v54 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:0];
      v7[2](v7, v54);

      goto LABEL_73;
    }
  }

  else
  {
  }

  v55 = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (v55)
  {
    v56 = [v9 relatedApplications];
    v57 = [v56 count] == 0;

    if (v57)
    {
      v58 = [(_DASDaemonClient *)self rootBundleIdentifier];
      v87 = v58;
      v59 = [NSArray arrayWithObjects:&v87 count:1];
      [v9 setRelatedApplications:v59];
    }
  }

  if (v15)
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

    v7[2](v7, v66);
    _Block_object_dispose(&v78, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_10012C2A8();
    }

    v7[2](v7, v62);
  }

LABEL_73:
}

- (void)getPendingTaskRequestsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (v5)
  {
    [(_DASDaemon *)self->_daemon getPendingTaskRequestsForApplication:v5 withCompletionHandler:v4];
  }

  else
  {
    v6 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "App missing application-identifier", v7, 2u);
    }

    v4[2](v4, &__NSArray0__struct);
  }
}

- (void)cancelTaskRequestWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (v8)
  {
    [(_DASDaemon *)self->_daemon cancelTaskRequestWithIdentifier:v6 forApplication:v8];
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

  v7[2](v7);
}

- (void)cancelAllTaskRequestsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (v5)
  {
    [(_DASDaemon *)self->_daemon cancelAllTaskRequestsForApplication:v5];
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

  v4[2](v4);
}

- (void)handleLaunchFromDaemonForActivities:(id)a3
{
  v4 = a3;
  v5 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Telling client %@ to handle activities: %@", &v8, 0x16u);
  }

  v6 = self->_runningBGTasks;
  objc_sync_enter(v6);
  [(NSMutableSet *)self->_runningBGTasks unionSet:v4];
  objc_sync_exit(v6);

  v7 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [v7 handleLaunchFromDaemonForActivities:v4];
}

- (void)willExpireBGTaskActivities:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v6 = self->_runningBGTasks;
  objc_sync_enter(v6);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
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
      v19 = self;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Warning client %@ for activities about to expire: %@", buf, 0x16u);
    }

    v13 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v13 willExpireBGTaskActivities:v5];
  }
}

- (void)establishConnection:(id)a3
{
  v4 = a3;
  v5 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Establishing connection from client: %@", &v6, 0xCu);
  }

  [(_DASDaemon *)self->_daemon establishConnectionFromClient:self withCompletionHandler:v4];
}

- (void)updateOngoingTask:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10012C4D0();
  }

  [(_DASDaemon *)self->_daemon updateOngoingTask:v6 completionHandler:v7];
}

- (void)updateProgressForOngoingTask:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10012C544(v6);
  }

  [(_DASDaemon *)self->_daemon updateProgressForOngoingTask:v6 completionHandler:v7];
}

- (void)continuedProcessingDeviceCapabilities:(id)a3
{
  v4 = a3;
  v5 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Queried for device resource capabilities", v6, 2u);
  }

  [(_DASDaemon *)self->_daemon continuedProcessingDeviceCapabilities:v4];
}

- (void)acknowledgeSystemTaskLaunchWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 acknowledgeSystemTaskLaunchWithIdentifier:v7 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v6}];
}

- (void)acknowledgeSystemTaskSuspensionWithIdentifier:(id)a3 retryAfter:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[_DASBGSystemTaskHelper sharedInstance];
  [v10 acknowledgeSystemTaskSuspensionWithIdentifier:v9 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") retryAfter:-[NSXPCConnection effectiveUserIdentifier](self->_connection completionHandler:{"effectiveUserIdentifier"), v8, a4}];
}

- (void)handleClientLedSystemTaskExpirationWithIdentifier:(id)a3 retryAfter:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[_DASBGSystemTaskHelper sharedInstance];
  [v10 handleClientLedSystemTaskExpirationWithIdentifier:v9 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") retryAfter:-[NSXPCConnection effectiveUserIdentifier](self->_connection completionHandler:{"effectiveUserIdentifier"), v8, a4}];
}

- (void)handleClientFailedtoExpireTaskWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 handleClientFailedtoExpireTaskWithIdentifier:v7 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v6}];
}

- (void)submitTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 submitTaskRequestWithIdentifier:v10 descriptor:v9 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v8}];
}

- (void)updateTaskRequestWithIdentifier:(id)a3 descriptor:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 updateTaskRequestWithIdentifier:v10 descriptor:v9 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v8}];
}

- (void)completeSystemTaskWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 completeSystemTaskWithIdentifier:v7 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v6}];
}

- (void)resumeTaskSchedulingWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 resumeTaskSchedulingWithIdentifier:v7 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v6}];
}

- (void)unregisterSystemTaskWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[_DASBGSystemTaskHelper sharedInstance];
  [v8 unregisterSystemTaskWithIdentifier:v7 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v6}];
}

- (void)reportSystemTaskWithIdentifier:(id)a3 producedResults:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 reportSystemTaskWithIdentifier:v10 producedResults:v9 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v8}];
}

- (void)reportSystemTaskWithIdentifier:(id)a3 consumedResults:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 reportSystemTaskWithIdentifier:v10 consumedResults:v9 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v8}];
}

- (void)resetResultsForIdentifier:(id)a3 byTaskWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[_DASBGSystemTaskHelper sharedInstance];
  [v11 resetResultsForIdentifier:v10 byTaskWithIdentifier:v9 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:"processIdentifier") completionHandler:{-[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier"), v8}];
}

- (void)reportTaskWorkloadProgress:(id)a3 target:(unint64_t)a4 completed:(unint64_t)a5 category:(unint64_t)a6 subCategory:(id)a7 completionHandler:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a3;
  v19 = +[_DASBGSystemTaskHelper sharedInstance];
  v17 = [(NSXPCConnection *)self->_connection processIdentifier];
  LODWORD(v18) = [(NSXPCConnection *)self->_connection effectiveUserIdentifier];
  [v19 recordTaskWorkloadProgress:v16 target:a4 completed:a5 category:a6 subCategory:v15 withPID:v17 withUID:v18 completionHandler:v14];
}

- (void)inspect:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_DASBGSystemTaskHelper sharedInstance];
  [v7 inspect:v6 withHandler:v5];
}

- (void)resubmitRunningTasks:(id)a3
{
  v4 = a3;
  v5 = +[_DASBGSystemTaskHelper sharedInstance];
  [v5 resubmitRunningTasks:v4 withPID:-[NSXPCConnection processIdentifier](self->_connection withUID:{"processIdentifier"), -[NSXPCConnection effectiveUserIdentifier](self->_connection, "effectiveUserIdentifier")}];
}

- (void)submittedActivitiesWithHandler:(id)a3
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

    [(_DASDaemon *)daemon submittedActivitiesWithHandler:a3];
  }
}

- (void)delayedRunningActivitiesWithHandler:(id)a3
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

    [(_DASDaemon *)daemon delayedRunningActivitiesWithHandler:a3];
  }
}

- (void)runningActivitiesWithHandler:(id)a3
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

    [(_DASDaemon *)daemon runningActivitiesWithHandler:a3];
  }
}

- (void)runningGroupActivitiesWithHandler:(id)a3
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

    [(_DASDaemon *)daemon runningGroupActivitiesWithHandler:a3];
  }
}

- (void)forceRunActivities:(id)a3
{
  v5 = a3;
  v6 = v5;
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
    v14 = v5;
    v8 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v13);
    v8[2](v8, v9, v10, v11, v12);
  }
}

- (void)runActivitiesWithUrgency:(int64_t)a3 activities:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon runActivitiesWithUrgency:a3 activities:a4];
  }
}

- (void)deferActivities:(id)a3 withHandler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon deferActivities:a3 withHandler:a4];
  }
}

- (void)currentPredictionsWithHandler:(id)a3
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

    [(_DASDaemon *)daemon currentPredictionsWithHandler:a3];
  }
}

- (void)currentAllocations:(unint64_t)a3 timeFilter:(id)a4 bgsqlData:(id)a5 withHandler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"bar", a4, a5, a6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon currentAllocations:a3 timeFilter:a4 bgsqlData:a5 withHandler:a6];
  }
}

- (void)statisticsWithHandler:(id)a3
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

    [(_DASDaemon *)daemon statisticsWithHandler:a3];
  }
}

- (void)forceResetOfResultIdentifier:(id)a3
{
  v5 = a3;
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
    [v7 dastool_forceResetOfResultIdentifier:v5];
  }
}

- (void)queryStatusOfResultIdentifier:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v11 = [v10 dastool_queryStatusOfResultIdentifier:v7];

    v8[2](v8, v11);
  }
}

- (void)queryDependenciesOfTaskIdentifier:(id)a3 withHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
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
    v10 = [(_DASDaemon *)self->_daemon getActivityWithName:v7];
    if (v10)
    {
      v11 = +[NSMutableDictionary dictionary];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v10;
      v12 = [v10 dependencies];
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v18 = [_DASDaemonLogger logForCategory:@"dependencies"];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "dependency: %@", buf, 0xCu);
            }

            v19 = [v17 dictionary];
            [v11 addEntriesFromDictionary:v19];
          }

          v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }

      v28[0] = @"activityIdentifier";
      v10 = v23;
      v20 = [v23 name];
      v28[1] = @"dependencies";
      v29[0] = v20;
      v29[1] = v11;
      v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
      v8[2](v8, v21);
    }

    else
    {
      v22 = [_DASDaemonLogger logForCategory:@"dependencies"];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10012C5DC();
      }

      v8[2](v8, 0);
    }
  }
}

- (void)deleteLimitForActivity:(id)a3 forLimiterWithName:(id)a4 handler:(id)a5
{
  if (self->_restricted)
  {
    v7 = [_DASDaemonLogger logForCategory:@"budgeting", a4, a5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon deleteLimitForActivity:a3 forLimiterWithName:a4 handler:a5];
  }
}

- (void)updateLimit:(double)a3 forActivity:(id)a4 forLimiterWithName:(id)a5 handler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"budgeting", a5, a6, a3];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon updateLimit:a4 forActivity:a5 forLimiterWithName:a6 handler:a3];
  }
}

- (void)getLimiterResponseForActivity:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"budgeting", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getLimiterResponseForActivity:a3 handler:a4];
  }
}

- (void)getRuntimeLimit:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"budgeting", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getRuntimeLimit:a3 handler:a4];
  }
}

- (void)getElapsedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"latency", a4, a5, a6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getElapsedRuntimes:a3 timeFilter:a4 bgsqlData:a5 handler:a6];
  }
}

- (void)getEstimatedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"latency", a4, a5, a6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getEstimatedRuntimes:a3 timeFilter:a4 bgsqlData:a5 handler:a6];
  }
}

- (void)getConditionsPenalties:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"latency", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getConditionsPenalties:a3 handler:a4];
  }
}

- (void)getContentionPenalties:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"latency", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getContentionPenalties:a3 handler:a4];
  }
}

- (void)getFeatureTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"latency", a4, a5, a6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getFeatureTimelines:a3 timeFilter:a4 bgsqlData:a5 handler:a6];
  }
}

- (void)getActivityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"latency", a4, a5, a6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getActivityTimelines:a3 timeFilter:a4 bgsqlData:a5 handler:a6];
  }
}

- (void)getEligibilityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"latency", a4, a5, a6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getEligibilityTimelines:a3 timeFilter:a4 bgsqlData:a5 handler:a6];
  }
}

- (void)getDeviceConditionTimelines:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  if (self->_restricted)
  {
    v7 = [_DASDaemonLogger logForCategory:@"latency", a4, a5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getDeviceConditionTimelines:a3 bgsqlData:a4 handler:a5];
  }
}

- (void)getSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  if (self->_restricted)
  {
    v7 = [_DASDaemonLogger logForCategory:@"latency", a4, a5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getSchedulerEfficiencyMetrics:a3 bgsqlData:a4 handler:a5];
  }
}

- (void)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  if (self->_restricted)
  {
    v7 = [_DASDaemonLogger logForCategory:@"latency", a4, a5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getOvernightIntensiveSchedulerEfficiencyMetrics:a3 bgsqlData:a4 handler:a5];
  }
}

- (void)getInstallTimeline:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  if (self->_restricted)
  {
    v7 = [_DASDaemonLogger logForCategory:@"latency", a4, a5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getInstallTimeline:a3 bgsqlData:a4 handler:a5];
  }
}

- (void)getBuddyEvents:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  if (self->_restricted)
  {
    v7 = [_DASDaemonLogger logForCategory:@"latency", a4, a5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getBuddyEvents:a3 bgsqlData:a4 handler:a5];
  }
}

- (void)getEstimatedMADCompletionTimes:(id)a3 endDate:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  if (self->_restricted)
  {
    v8 = [_DASDaemonLogger logForCategory:@"latency", a4, a5, a6];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getEstimatedMADCompletionTimes:a3 endDate:a4 bgsqlData:a5 handler:a6];
  }
}

- (void)getSortedCandidateActivities:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"client", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon getSortedCandidateActivities:a3 handler:a4];
  }
}

- (void)triggerScoreEvaluationAndRunActivities:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"client", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon triggerScoreEvaluationAndRunActivities:a3 handler:a4];
  }
}

- (void)allBudgetsWithHandler:(id)a3
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

    [(_DASDaemon *)daemon allBudgetsWithHandler:a3];
  }
}

- (void)balanceForBudgetWithName:(id)a3 withHandler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"budgeting", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon balanceForBudgetWithName:a3 withHandler:a4];
  }
}

- (void)setBalance:(double)a3 forBudgetWithName:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"budgeting", a3];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon setBalance:a4 forBudgetWithName:a3];
  }
}

- (void)decrementBy:(double)a3 forBudgetWithName:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"budgeting", a3];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon decrementBy:a4 forBudgetWithName:a3];
  }
}

- (void)setCapacity:(double)a3 forBudgetWithName:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"budgeting", a3];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon setCapacity:a4 forBudgetWithName:a3];
  }
}

- (void)policiesWithHandler:(id)a3
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

    [(_DASDaemon *)daemon policiesWithHandler:a3];
  }
}

- (void)evaluatePolicies:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon evaluatePolicies:a3 handler:a4];
  }
}

- (void)evaluateAllActivities:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon evaluateAllActivities:a3 handler:a4];
  }
}

- (void)runProceedableActivities:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon runProceedableActivities:a3 handler:a4];
  }
}

- (void)activityContainsOverrides:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon activityContainsOverrides:a3 handler:a4];
  }
}

- (void)blockingPoliciesWithParameters:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon blockingPoliciesWithParameters:a3 handler:a4];
  }
}

- (void)submitRateLimitConfiguration:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon submitRateLimitConfiguration:a3 handler:a4];
  }
}

- (void)pauseWithParameters:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon pauseWithParameters:a3 handler:a4];
  }
}

- (void)addPauseExceptParameter:(id)a3 handler:(id)a4
{
  if (self->_restricted)
  {
    v6 = [_DASDaemonLogger logForCategory:@"bar", a4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10012B9C4(a2);
    }

    [(NSXPCConnection *)self->_connection invalidate];
  }

  else
  {
    daemon = self->_daemon;

    [(_DASDaemon *)daemon addPauseExceptParameter:a3 handler:a4];
  }
}

- (void)reportThroughputMetricsForIdentifier:(id)a3 taskName:(id)a4 itemCount:(unint64_t)a5 totalDuration:(double)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10
{
  connection = self->_connection;
  v19 = a10;
  v20 = a9;
  v21 = a7;
  v22 = a4;
  v23 = a3;
  v24 = [_DASBGSystemTask taskNameWithIdentifier:v22 UID:[(NSXPCConnection *)connection effectiveUserIdentifier]];

  [(_DASDaemon *)self->_daemon reportThroughputMetricsForIdentifier:v23 taskName:v24 itemCount:a5 totalDuration:v21 qos:a8 workloadCategory:v20 expectedValue:a6 withHandler:v19];
}

- (void)reportProgressMetricsForIdentifier:(id)a3 taskName:(id)a4 itemsCompleted:(id)a5 totalItemCount:(id)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10
{
  connection = self->_connection;
  v17 = a10;
  v18 = a9;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v25 = [_DASBGSystemTask taskNameWithIdentifier:v22 UID:[(NSXPCConnection *)connection effectiveUserIdentifier]];

  [(_DASDaemon *)self->_daemon reportProgressMetricsForIdentifier:v23 taskName:v25 itemsCompleted:v21 totalItemCount:v20 qos:v19 workloadCategory:a8 expectedValue:v18 withHandler:v17];
}

- (void)prewarmApplication:(id)a3
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

    [(_DASDaemon *)daemon prewarmApplication:a3];
  }
}

- (void)prewarmSuspendWithHandler:(id)a3
{
  v5 = a3;
  v4 = [(_DASDaemonClient *)self rootBundleIdentifier];
  if (!v4)
  {
    v5[2](v5, 0);
  }

  [(_DASDaemon *)self->_daemon prewarmSuspendApplication:v4 withHandler:v5];
}

@end