@interface _DASDaemon
+ (_DASDaemon)sharedInstance;
- (BOOL)addLaunchRequest:(id)a3;
- (BOOL)canSubmitValidatedTaskRequest:(id)a3 withError:(id *)a4;
- (BOOL)doesInternalGroupsContainGroupName:(id)a3 groupName:(id)a4;
- (BOOL)evaluateAllActivitiesFor:(id)a3 writingToFile:(id)a4;
- (BOOL)evaluatePoliciesForActivitiesChunk:(id)a3 writingToFile:(id)a4;
- (BOOL)isActivitySuspendable:(id)a3 withStartDate:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)pausedParametersApplyToActivity:(id)a3;
- (BOOL)removeTempBGSQLFile:(id)a3;
- (BOOL)shouldActivity:(id)a3 runWithActivities:(id)a4 atDate:(id)a5;
- (BOOL)shouldEvaluateTask:(id)a3 atDate:(id)a4;
- (BOOL)shouldPreemptActivity:(id)a3 forFastPassActivity:(id)a4;
- (BOOL)shouldRunActivityNow:(id)a3;
- (BOOL)shouldRunActivityNow:(id)a3 withOtherActivities:(id)a4;
- (BOOL)testModeConstraintsApplyToActivity:(id)a3;
- (BOOL)testModeConstraintsRequireOverridingDecisionWithScores:(id)a3 ignoredPolicies:(id)a4 honoredPolicies:(id)a5;
- (BOOL)validateConfigurationForActivity:(id)a3;
- (NSString)description;
- (id)activityMatchingPredicate:(id)a3;
- (id)allActivityGroups;
- (id)allPendingBackgroundTasks;
- (id)allPendingPushLaunchTasks;
- (id)allPendingRestartTasks;
- (id)allPendingSyncOnBackupTasks;
- (id)allPendingTasks;
- (id)allPrerunningTasks;
- (id)allTasks;
- (id)allTimewiseEligibleNetworkTasksAllowingCell:(BOOL)a3;
- (id)candidateGroupActivityForPreemption:(id)a3;
- (id)clientForActivity:(id)a3;
- (id)createTempBGSQLFile:(id)a3;
- (id)currentReportingConditions;
- (id)earlyToday;
- (id)evaluatePolicies:(id)a3;
- (id)getActivitiesToSkipFromCandidateActivities:(id)a3;
- (id)getActivityAllocationStats:(unint64_t)a3 timeFilter:(id)a4 filepath:(id)a5;
- (id)getActivityRunningWithName:(id)a3;
- (id)getActivityRunningWithUUID:(id)a3;
- (id)getActivityWithName:(id)a3;
- (id)getActivityWithUUID:(id)a3;
- (id)initAsAnonymous:(BOOL)a3 withContext:(id)a4;
- (id)sortCandidateActivities:(id)a3;
- (id)startedTasks;
- (id)tasksNoLongerEligible;
- (id)tasksNoLongerEligibleFromTasks:(id)a3;
- (id)widgetRefreshStatistics;
- (id)widgetViewsStatistics;
- (int64_t)additionalCapacityForActivity:(id)a3 inGroupWithName:(id)a4 shouldTryToSuspend:(BOOL)a5;
- (int64_t)capacityFromGroupMax:(int64_t)a3 forPriority:(unint64_t)a4;
- (int64_t)currentLoadFromActivities:(id)a3 inGroupWithName:(id)a4;
- (unint64_t)requestCountForApplication:(id)a3;
- (unint64_t)submittedTaskCount;
- (void)_prewarmSuspendForMessage:(id)a3;
- (void)_prewarmSuspendHandleIncoming:(id)a3 onConnection:(id)a4;
- (void)_resetWidgetBudgets;
- (void)_unexpectedXPCObject:(id)a3 WithLog:(id)a4;
- (void)activity:(id)a3 blockedOnPolicies:(id)a4;
- (void)activity:(id)a3 runWithoutHonoringPolicies:(id)a4;
- (void)activityCanceledWithReason:(id)a3 expirationReason:(int64_t)a4;
- (void)activityCompleted:(id)a3 withSuccess:(BOOL)a4;
- (void)activityContainsOverrides:(id)a3 handler:(id)a4;
- (void)activityStarted:(id)a3;
- (void)activityStartedWithParameters:(id)a3;
- (void)activityStoppedWithParameters:(id)a3;
- (void)addConstraint:(unint64_t)a3 forSchedulingPriority:(unint64_t)a4;
- (void)addPauseExceptParameter:(id)a3 handler:(id)a4;
- (void)addPendingActivitiesToGroups:(id)a3;
- (void)addPendingActivity:(id)a3 toGroup:(id)a4 withReason:(id)a5;
- (void)addPendingActivity:(id)a3 toGroupWithName:(id)a4;
- (void)addPrerunningActivity:(id)a3 toGroupWithName:(id)a4;
- (void)addRunningActivity:(id)a3 toGroupWithName:(id)a4;
- (void)addTriggersToActivity:(id)a3;
- (void)advanceAppLaunchDateIfNecessaryForActivity:(id)a3;
- (void)allBudgetsWithHandler:(id)a3;
- (void)allClientsDo:(id)a3;
- (void)associateActivity:(id)a3 withTriggerKeys:(id)a4;
- (void)backgroundAppRefreshEnabledForApp:(id)a3 withHandler:(id)a4;
- (void)balanceForBudgetWithName:(id)a3 withHandler:(id)a4;
- (void)beginWorkForActivity:(id)a3;
- (void)blockingPoliciesWithParameters:(id)a3 handler:(id)a4;
- (void)cancelActivities:(id)a3;
- (void)cancelActivitiesWithIdentifiers:(id)a3;
- (void)cancelActivitiesWithReason:(id)a3 cancellationReason:(int64_t)a4;
- (void)cancelAllBackgroundTasks;
- (void)cancelAllTaskRequestsForApplication:(id)a3;
- (void)cancelAppRefreshTasksForApps:(id)a3;
- (void)cancelBackgroundTasksForApps:(id)a3;
- (void)cancelContactTracingTasksForApps:(id)a3;
- (void)cancelLaunchesOfTypes:(id)a3 forApps:(id)a4;
- (void)cancelPushLaunchTasksForApps:(id)a3;
- (void)cancelTaskRequestWithIdentifier:(id)a3 forApplication:(id)a4;
- (void)chooseActivitiesToRunFromCandidateActivities:(id)a3 toBeRunActivities:(id)a4 toLaunchApplications:(id)a5 toLaunchExtension:(id)a6;
- (void)cleanupForActivity:(id)a3 wasCompleted:(BOOL)a4;
- (void)clearActivityFromPrerunning:(id)a3;
- (void)clearRecentlyLaunchedApps;
- (void)clientFailedtoExpireTaskWithIdentifier:(id)a3;
- (void)computeStaticPriorityForActivity:(id)a3;
- (void)continuedProcessingDeviceCapabilities:(id)a3;
- (void)createActivityGroup:(id)a3;
- (void)createDefaultActivityGroups;
- (void)createPowerAssertion:(id)a3;
- (void)currentAllocations:(unint64_t)a3 timeFilter:(id)a4 bgsqlData:(id)a5 withHandler:(id)a6;
- (void)currentPredictionsWithHandler:(id)a3;
- (void)deferActivities:(id)a3 withHandler:(id)a4;
- (void)delayLaunchesOfType:(id)a3 forApps:(id)a4;
- (void)delayedRunningActivitiesWithHandler:(id)a3;
- (void)deleteLimitForActivity:(id)a3 forLimiterWithName:(id)a4 handler:(id)a5;
- (void)determineNextTimerFireDateAndSchedule;
- (void)disableAppRefreshForApps:(id)a3;
- (void)endLaunchWithReason:(id)a3 forApp:(id)a4;
- (void)enterTestModeWithParameters:(id)a3 reset:(BOOL)a4 handler:(id)a5;
- (void)establishConnectionFromClient:(id)a3 withCompletionHandler:(id)a4;
- (void)evaluateAllActivities:(id)a3 handler:(id)a4;
- (void)evaluateAssertions;
- (void)evaluatePolicies:(id)a3 handler:(id)a4;
- (void)evaluateScoreAndRunActivities:(id)a3;
- (void)evaluateScoreAndRunAllActivitiesForReason:(id)a3;
- (void)extensionActivity:(id)a3 finishedWithStatus:(unsigned __int8)a4;
- (void)filterAndAddActivity:(id)a3 toCandidateActivities:(id)a4 orCancelActivities:(id)a5 groupNames:(id)a6 allowsBackgroundTasks:(BOOL)a7 backupRequested:(BOOL)a8 inADarkWake:(BOOL)a9 isLPMEnforced:(BOOL)a10 now:(id)a11 externallyPowered:(BOOL)a12;
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
- (void)getPendingTaskRequestsForApplication:(id)a3 withCompletionHandler:(id)a4;
- (void)getRuntimeLimit:(id)a3 handler:(id)a4;
- (void)getSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4 handler:(id)a5;
- (void)getSortedCandidateActivities:(id)a3 handler:(id)a4;
- (void)handleCompletedActivities:(id)a3;
- (void)handleRunningActivities:(id)a3;
- (void)handleSysdiagnoseStartEvent;
- (void)handleTriggers:(id)a3;
- (void)immediatelyBeginWorkForActivity:(id)a3;
- (void)informObserversOfActivitiesCompleted:(id)a3 withSuccess:(BOOL)a4;
- (void)informObserversOfActivitiesNowRunning:(id)a3;
- (void)informObserversOfActivitiesSubmitted:(id)a3;
- (void)informObserversOfActivitiesSuspended:(id)a3;
- (void)launchApplication:(id)a3 applicationURL:(id)a4 additionalOptions:(id)a5 completion:(id)a6;
- (void)loadState;
- (void)loadStateWhenAvailable;
- (void)loadTestingDefaults;
- (void)logLimitations:(id)a3;
- (void)moveActivityToPrerunning:(id)a3;
- (void)moveActivityToRunning:(id)a3;
- (void)moveToPending:(id)a3;
- (void)pauseWithParameters:(id)a3 handler:(id)a4;
- (void)periodicCalculationForOptimal;
- (void)policiesWithHandler:(id)a3;
- (void)preemptCandidateActivities:(id)a3 forFastPass:(id)a4;
- (void)prewarmApplication:(id)a3;
- (void)prewarmSuspendApplication:(id)a3 withHandler:(id)a4;
- (void)recordToTaskRegistry:(id)a3 lifeCycleStateName:(id)a4;
- (void)registerForActivityLifecycleObservation:(id)a3;
- (void)registerForNetworkPathEvaluation;
- (void)registerForTrial;
- (void)registerTriggersWithContextStoreForPolicies:(id)a3;
- (void)releaseAssertions:(id)a3;
- (void)releasePowerAssertion:(id)a3;
- (void)removeActivityFromGroupToPendingTasks:(id)a3;
- (void)removeActivityFromIncompatibleActivitiesMap:(id)a3;
- (void)removeActivityFromNestedMaps:(id)a3;
- (void)removeActivityFromTriggerMap:(id)a3;
- (void)removeClient:(id)a3;
- (void)removeConstraint:(unint64_t)a3 forSchedulingPriority:(unint64_t)a4;
- (void)removeDuplicateLaunchTasks:(id)a3;
- (void)removeGroupTrackingFor:(id)a3 from:(id)a4;
- (void)removeLaunchRequest:(id)a3;
- (void)reportActivity:(id)a3 wasEvaluatedWithDecision:(int64_t)a4;
- (void)reportActivityTiming:(id)a3;
- (void)reportCustomCheckpoint:(unint64_t)a3 forTask:(id)a4 withHandler:(id)a5;
- (void)reportFeatureCheckpoint:(unint64_t)a3 forFeature:(unint64_t)a4 atDate:(id)a5 withHandler:(id)a6;
- (void)reportOversizeLoadSymptomForActivity:(id)a3 atStart:(BOOL)a4;
- (void)reportPostRestoreCheckpoint:(unint64_t)a3 withParameters:(id)a4;
- (void)reportProgressMetricsForIdentifier:(id)a3 taskName:(id)a4 itemsCompleted:(id)a5 totalItemCount:(id)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10;
- (void)reportSystemWorkload:(unint64_t)a3 ofCategory:(unint64_t)a4 withHandler:(id)a5;
- (void)reportThroughputMetricsForIdentifier:(id)a3 taskName:(id)a4 itemCount:(unint64_t)a5 totalDuration:(double)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10;
- (void)runActivities:(id)a3;
- (void)runActivitiesAndRemoveUnknown:(id)a3;
- (void)runActivitiesWithUrgency:(int64_t)a3 activities:(id)a4;
- (void)runApplicationLaunchActivities:(id)a3;
- (void)runExtensionLaunchActivities:(id)a3;
- (void)runLaunchTasks:(id)a3 forApplication:(id)a4 forApplicationURL:(id)a5 onLaunch:(id)a6 onCompletion:(id)a7 onFailure:(id)a8;
- (void)runLocalActivity:(id)a3;
- (void)runProceedableActivities:(id)a3 handler:(id)a4;
- (void)runningActivitiesWithHandler:(id)a3;
- (void)runningGroupActivitiesWithHandler:(id)a3;
- (void)scheduleConnectionTimeoutForPid:(int)a3;
- (void)scheduleTimerForActivity:(id)a3;
- (void)scheduleTimerOnBehalfOf:(id)a3 between:(double)a4 and:(double)a5 waking:(BOOL)a6;
- (void)schedulingTimerFired;
- (void)setupDatabaseMaintenance;
- (void)setupPrewarmSuspendListener;
- (void)setupTimers;
- (void)solicitActivityResubmission;
- (void)start;
- (void)startedActivities:(id)a3;
- (void)statisticsWithHandler:(id)a3;
- (void)submitActivities:(id)a3;
- (void)submitActivity:(id)a3 inGroup:(id)a4;
- (void)submitActivity:(id)a3 inGroup:(id)a4 withHandler:(id)a5;
- (void)submitRateLimitConfiguration:(id)a3 handler:(id)a4;
- (void)submittedActivitiesWithHandler:(id)a3;
- (void)suspendActivities:(id)a3;
- (void)suspendActivity:(id)a3;
- (void)suspendAndCancelActivitiesWithIdentifiers:(id)a3 denialReason:(unint64_t)a4;
- (void)suspendPlugin:(id)a3;
- (void)triggerScoreEvaluationAndRunActivities:(id)a3 handler:(id)a4;
- (void)unprotectedEvaluateScoreAndRunActivities:(id)a3;
- (void)updateActivity:(id)a3 withParameters:(id)a4;
- (void)updateLimit:(double)a3 forActivity:(id)a4 forLimiterWithName:(id)a5 handler:(id)a6;
- (void)updateOngoingTask:(id)a3 completionHandler:(id)a4;
- (void)updateProgressForOngoingTask:(id)a3 completionHandler:(id)a4;
- (void)updateSuspendRequestDate:(id)a3 forActivity:(id)a4 withReason:(id)a5;
- (void)updateSystemConstraintsWithParameters:(id)a3;
- (void)updateTrialParameters;
- (void)updateiCPLTasksBlocked:(unint64_t)a3;
- (void)warnBGTaskClientsForActivitiesAboutToExpire:(id)a3;
@end

@implementation _DASDaemon

- (void)schedulingTimerFired
{
  v7 = os_transaction_create();
  v3 = +[NSDate date];
  v4 = +[NSLocale currentLocale];
  v5 = [v3 descriptionWithLocale:v4];
  v6 = [NSString stringWithFormat:@"Periodic timer fired (%@)", v5];

  [(_DASDaemon *)self evaluateScoreAndRunAllActivitiesForReason:v6];
  [(_DASDaemon *)self determineNextTimerFireDateAndSchedule];
}

+ (_DASDaemon)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7B24;
  block[3] = &unk_1001B54A0;
  block[4] = a1;
  if (qword_10020B7C0 != -1)
  {
    dispatch_once(&qword_10020B7C0, block);
  }

  v2 = qword_10020B7C8;

  return v2;
}

- (void)determineNextTimerFireDateAndSchedule
{
  v3 = +[NSDate date];
  os_unfair_recursive_lock_lock_with_options();
  v68 = [NSMutableArray arrayWithCapacity:[(NSMutableSet *)self->_pendingTasks count]];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v4 = self->_pendingTasks;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (!v5)
  {
    v69 = 0;
    goto LABEL_32;
  }

  v6 = v5;
  v69 = 0;
  v7 = *v75;
  do
  {
    v8 = 0;
    do
    {
      if (*v75 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v74 + 1) + 8 * v8);
      if (([v9 triggersRestart] & 1) != 0 || (objc_msgSend(v9, "startBefore"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceDate:", v3), v12 = v11, v10, v12 > 0.0))
      {
        if (![v9 requiresNetwork] || -[_DASNetworkEvaluationMonitor isNetworkPathAvailableForActivity:](self->_networkEvaluationMonitor, "isNetworkPathAvailableForActivity:", v9))
        {
          v13 = [_DASSystemContext isPluggedIn:self->_context];
          if (![v9 requiresPlugin] || v13 != 0)
          {
            v15 = +[_DASSmartPowerNapPolicy policyInstance];
            v16 = [v15 appliesToActivity:v9];

            if (v16)
            {
              v17 = +[_DASSmartPowerNapPolicy policyInstance];
              v18 = [v17 responseForActivity:v9 withState:self->_context];

              if ([v18 policyDecision] == 33 || objc_msgSend(v18, "policyDecision") == 100)
              {
LABEL_21:

                goto LABEL_22;
              }
            }

            v19 = +[_DASLowPowerModePolicy policyInstance];
            v20 = [v19 appliesToActivity:v9];

            if (v20)
            {
              v21 = +[_DASLowPowerModePolicy policyInstance];
              v18 = [v21 responseForActivity:v9 withState:self->_context];

              if ([v18 policyDecision] == 33 || objc_msgSend(v18, "policyDecision") == 100)
              {
                goto LABEL_21;
              }
            }

            [v68 addObject:v9];
            if (v69)
            {
              v22 = [v69 startBefore];
              v23 = [v9 startBefore];
              [v22 timeIntervalSinceDate:v23];
              v25 = v24;

              if (v25 >= 0.0)
              {
                v26 = v9;

                v69 = v26;
              }
            }

            else
            {
              v69 = v9;
            }
          }
        }
      }

LABEL_22:
      v8 = v8 + 1;
    }

    while (v6 != v8);
    v27 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v74 objects:v79 count:16];
    v6 = v27;
  }

  while (v27);
LABEL_32:

  os_unfair_recursive_lock_unlock();
  if ([v68 count])
  {
    v28 = [v69 schedulingPriority];
    v29 = _DASSchedulingPriorityUtility;
    v30 = [v69 startBefore];
    [v30 timeIntervalSinceDate:v3];
    v32 = v31;

    if (v32 <= 0.0)
    {
      v39 = [v69 name];
      [(_DASDaemon *)self scheduleTimerOnBehalfOf:v39 between:v28 > v29 and:600.0 waking:900.0];
    }

    else
    {
      v33 = [v69 startBefore];
      v34 = [v69 predictedOptimalStartDate];
      [v33 timeIntervalSinceDate:v34];
      if (v35 >= 90.0)
      {
      }

      else
      {
        v36 = [v69 predictedOptimalStartDate];
        [v36 timeIntervalSinceDate:v3];
        v38 = v37;

        if (v38 > 0.0)
        {
          [(_DASDaemon *)self scheduleTimerForActivity:v69];
          goto LABEL_56;
        }
      }

      v67 = v28;
      v39 = [v69 predictedOptimalStartDate];
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v40 = v68;
      v41 = [v40 countByEnumeratingWithState:&v70 objects:v78 count:16];
      v66 = v29;
      if (v41)
      {
        v42 = v41;
        v43 = *v71;
        do
        {
          for (i = 0; i != v42; i = i + 1)
          {
            if (*v71 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v70 + 1) + 8 * i);
            v46 = [v45 predictedOptimalStartDate];
            v47 = v46;
            if (v46)
            {
              [v46 timeIntervalSinceDate:v3];
              if (v48 >= 0.0)
              {
                v49 = [v69 startBefore];
                [v47 timeIntervalSinceDate:v49];
                v51 = v50;

                if (v51 <= 0.0)
                {
                  [v47 timeIntervalSinceDate:v39];
                  if (v52 > 0.0)
                  {
                    v53 = [v45 predictedOptimalStartDate];

                    v39 = v53;
                  }
                }
              }
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v42);
      }

      [v39 timeIntervalSinceDate:v3];
      v55 = v54;
      v56 = [v69 startBefore];
      [v56 timeIntervalSinceDate:v3];
      v58 = v57;

      [v39 timeIntervalSinceDate:v3];
      v60 = v59;
      v61 = [v69 name];
      if (v60 >= 0.0)
      {
        v63 = self;
        v64 = v61;
        v65 = v55;
        v62 = v58;
      }

      else
      {
        v62 = v58 + 90.0;
        v63 = self;
        v64 = v61;
        v65 = v58;
      }

      [(_DASDaemon *)v63 scheduleTimerOnBehalfOf:v64 between:v67 > v66 and:v65 waking:v62, v66];
    }
  }

LABEL_56:
}

- (id)tasksNoLongerEligible
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_runningTasks allObjects];
  os_unfair_recursive_lock_unlock();
  v4 = [(_DASDaemon *)self tasksNoLongerEligibleFromTasks:v3];

  return v4;
}

- (id)currentReportingConditions
{
  v29 = 0;
  v3 = [_DASNetworkQualityPolicy currentNetworkQualityWithContext:self->_context interface:&v29];
  context = self->_context;
  v5 = +[_CDContextQueries keyPathForBatteryStateDataDictionary];
  v6 = [(_CDLocalContext *)context objectForKeyedSubscript:v5];

  v30[0] = @"batteryLevel";
  v28 = +[_CDContextQueries batteryPercentageKey];
  v7 = [v6 objectForKeyedSubscript:v28];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &off_1001CA4E0;
  }

  v31[0] = v9;
  v30[1] = @"onCharger";
  v27 = +[_CDContextQueries batteryExternalConnectedKey];
  v10 = [v6 objectForKeyedSubscript:v27];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &off_1001CA4E0;
  }

  v31[1] = v12;
  v30[2] = @"nwInterface";
  v13 = [NSNumber numberWithInteger:v29];
  v31[2] = v13;
  v30[3] = @"nwQuality";
  v14 = [NSNumber numberWithInteger:v3];
  v31[3] = v14;
  v30[4] = @"idle";
  v15 = self->_context;
  v16 = +[_CDContextQueries keyPathForInUseStatus];
  v17 = [(_CDLocalContext *)v15 objectForKeyedSubscript:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = &off_1001CA4E0;
  }

  v31[4] = v19;
  v30[5] = @"thermalLevel";
  v20 = self->_context;
  v21 = +[_CDContextQueries keyPathForThermalPressureLevel];
  v22 = [(_CDLocalContext *)v20 objectForKeyedSubscript:v21];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &off_1001CA4E0;
  }

  v31[5] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:6];

  return v25;
}

- (id)initAsAnonymous:(BOOL)a3 withContext:(id)a4
{
  v4 = a3;
  v6 = a4;
  v176.receiver = self;
  v176.super_class = _DASDaemon;
  v7 = [(_DASDaemon *)&v176 init];
  v8 = v7;
  if (v7)
  {
    v163 = v4;
    [(_DASDaemon *)v7 setupPrewarmSuspendListener];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.dasscheduler.batchingqueue.taskevaluation", v9);
    evaluationQueue = v8->_evaluationQueue;
    v8->_evaluationQueue = v10;

    v12 = +[NSMutableArray array];
    clients = v8->_clients;
    v8->_clients = v12;

    v14 = +[NSMutableDictionary dictionary];
    connectedBGTaskClients = v8->_connectedBGTaskClients;
    v8->_connectedBGTaskClients = v14;

    v16 = +[NSMutableDictionary dictionary];
    activitiesWaitingForBGTaskClients = v8->_activitiesWaitingForBGTaskClients;
    v8->_activitiesWaitingForBGTaskClients = v16;

    v8->_activityStateLock = 0;
    v18 = +[NSMutableSet set];
    submittedTasks = v8->_submittedTasks;
    v8->_submittedTasks = v18;

    v20 = +[NSMutableSet set];
    pendingTasks = v8->_pendingTasks;
    v8->_pendingTasks = v20;

    v22 = +[NSMutableSet set];
    prerunningTasks = v8->_prerunningTasks;
    v8->_prerunningTasks = v22;

    v24 = +[NSMutableSet set];
    runningTasks = v8->_runningTasks;
    v8->_runningTasks = v24;

    *&v8->_recomEngineDisabled = 0;
    v8->_groupLock._os_unfair_lock_opaque = 0;
    v26 = +[NSMutableDictionary dictionary];
    groups = v8->_groups;
    v8->_groups = v26;

    v28 = +[NSMutableDictionary dictionary];
    groupToPendingTasks = v8->_groupToPendingTasks;
    v8->_groupToPendingTasks = v28;

    v30 = +[NSMutableDictionary dictionary];
    groupToRunningTasks = v8->_groupToRunningTasks;
    v8->_groupToRunningTasks = v30;

    v32 = +[NSMutableDictionary dictionary];
    groupToPrerunningTasks = v8->_groupToPrerunningTasks;
    v8->_groupToPrerunningTasks = v32;

    v8->_applicationLaunchRequestsLock = 0;
    v34 = +[NSMutableDictionary dictionary];
    applicationLaunchRequests = v8->_applicationLaunchRequests;
    v8->_applicationLaunchRequests = v34;

    v36 = +[NSMutableDictionary dictionary];
    applicationsLaunched = v8->_applicationsLaunched;
    v8->_applicationsLaunched = v36;

    v38 = +[NSMutableDictionary dictionary];
    extensionLaunchRequests = v8->_extensionLaunchRequests;
    v8->_extensionLaunchRequests = v38;

    v40 = +[NSMutableDictionary dictionary];
    recentlyLaunchedApps = v8->_recentlyLaunchedApps;
    v8->_recentlyLaunchedApps = v40;

    v42 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.dasd.testingDefaults"];
    testingDefaults = v8->_testingDefaults;
    v8->_testingDefaults = v42;

    v44 = +[NSMutableDictionary dictionary];
    powerAssertions = v8->_powerAssertions;
    v8->_powerAssertions = v44;

    [(_DASDaemon *)v8 loadTestingDefaults];
    v164 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
    v46 = [v164 integerForKey:@"enRelaunchInterval"];
    if (v46 >= 1 && *&qword_10020A510 > v46)
    {
      *&qword_10020A510 = (v46 >> 2);
    }

    if ((_set_user_dir_suffix() & 1) == 0)
    {
      v47 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Unable to set temporary file directory", buf, 2u);
      }
    }

    v48 = NSTemporaryDirectory();
    v8->_signpostLock._os_unfair_lock_opaque = 0;
    v49 = +[NSMutableSet set];
    signpostActivitiesRunningDeviceActive = v8->_signpostActivitiesRunningDeviceActive;
    v8->_signpostActivitiesRunningDeviceActive = v49;

    v51 = +[NSMutableSet set];
    signpostActivitiesRunningScreenOff = v8->_signpostActivitiesRunningScreenOff;
    v8->_signpostActivitiesRunningScreenOff = v51;

    v53 = +[NSCountedSet set];
    launchesPerApp = v8->_launchesPerApp;
    v8->_launchesPerApp = v53;

    v55 = dispatch_get_global_queue(-32768, 0);
    v56 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v55);
    launchTimeResetTimer = v8->_launchTimeResetTimer;
    v8->_launchTimeResetTimer = v56;

    v58 = v8->_launchTimeResetTimer;
    v59 = dispatch_walltime(0, 3600000000000);
    dispatch_source_set_timer(v58, v59, 0x34630B8A000uLL, 0xDF8475800uLL);
    v60 = v8->_launchTimeResetTimer;
    dispatch_set_qos_class_fallback();
    v61 = v8->_launchTimeResetTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000C8824;
    handler[3] = &unk_1001B5668;
    v62 = v8;
    v174 = v62;
    dispatch_source_set_event_handler(v61, handler);
    dispatch_resume(v8->_launchTimeResetTimer);
    v63 = v8->_evaluationQueue;
    v171[0] = _NSConcreteStackBlock;
    v171[1] = 3221225472;
    v171[2] = sub_1000C88A8;
    v171[3] = &unk_1001B83E0;
    v64 = v62;
    v172 = v64;
    v65 = [_DASBatchingQueue queueWithName:@"com.apple.dasscheduler.triggerbatchingqueue" maxBatchingDelay:10 maxQueueDepth:v63 queue:v171 workItemsHandler:2.0];
    triggerBatchingQueue = v64->_triggerBatchingQueue;
    v64->_triggerBatchingQueue = v65;

    v67 = [_DASBatchingQueue queueWithName:@"com.apple.dasscheduler.triggerRecorder" maxBatchingDelay:30 maxQueueDepth:v8->_evaluationQueue queue:&stru_1001B8420 workItemsHandler:5.0];
    triggerRecorderBatchingQueue = v64->_triggerRecorderBatchingQueue;
    v64->_triggerRecorderBatchingQueue = v67;

    v69 = v8->_evaluationQueue;
    v169[0] = _NSConcreteStackBlock;
    v169[1] = 3221225472;
    v169[2] = sub_1000C8918;
    v169[3] = &unk_1001B83E0;
    v70 = v64;
    v170 = v70;
    v71 = [_DASBatchingQueue queueWithName:@"com.apple.dasscheduler.activitycompletionbatchingqueue" maxBatchingDelay:15 maxQueueDepth:v69 queue:v169 workItemsHandler:15.0];
    activityCompletedBatchingQueue = v70->_activityCompletedBatchingQueue;
    v70->_activityCompletedBatchingQueue = v71;

    v73 = v8->_evaluationQueue;
    v167[0] = _NSConcreteStackBlock;
    v167[1] = 3221225472;
    v167[2] = sub_1000C8924;
    v167[3] = &unk_1001B83E0;
    v74 = v70;
    v168 = v74;
    v75 = [_DASBatchingQueue queueWithName:@"com.apple.das.networkActivitiesQueue" maxBatchingDelay:256 maxQueueDepth:v73 queue:v167 workItemsHandler:1.0];
    networkActivitiesQueue = v74->_networkActivitiesQueue;
    v74->_networkActivitiesQueue = v75;

    if (v6)
    {
      v77 = v6;
    }

    else
    {
      v77 = +[_CDClientContext userContext];
    }

    context = v74->_context;
    v74->_context = v77;

    v79 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Initializing DASDaemon...", buf, 2u);
    }

    v80 = [_DASUserRequestedBackupTaskManager managerWithContext:v74->_context];
    backupTaskManager = v74->_backupTaskManager;
    v74->_backupTaskManager = v80;

    v82 = +[_DASNetworkEvaluationMonitor sharedInstance];
    networkEvaluationMonitor = v74->_networkEvaluationMonitor;
    v74->_networkEvaluationMonitor = v82;

    v84 = [_DASSleepWakeMonitor sharedMonitorWithDaemon:v74];
    sleepWakeMonitor = v74->_sleepWakeMonitor;
    v74->_sleepWakeMonitor = v84;

    [(_DASDaemon *)v74 registerForNetworkPathEvaluation];
    v86 = +[_DASPolicyManager allPoliciesForPlatform];
    [(_DASDaemon *)v74 registerTriggersWithContextStoreForPolicies:v86];
    v87 = +[NSMutableDictionary dictionary];
    triggerToActivitiesMap = v74->_triggerToActivitiesMap;
    v74->_triggerToActivitiesMap = v87;

    v89 = +[NSMutableDictionary dictionary];
    activityToIncompatibleActivitiesMap = v74->_activityToIncompatibleActivitiesMap;
    v74->_activityToIncompatibleActivitiesMap = v89;

    v91 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v92 = dispatch_queue_create("com.apple.duetactivityscheduler.timeschedulingqueue", v91);
    timerSchedulingQueue = v74->_timerSchedulingQueue;
    v74->_timerSchedulingQueue = v92;

    v94 = +[NSDate distantPast];
    timerEarliestFireDate = v74->_timerEarliestFireDate;
    v74->_timerEarliestFireDate = v94;

    v96 = +[NSDate distantFuture];
    timerLatestFireDate = v74->_timerLatestFireDate;
    v74->_timerLatestFireDate = v96;

    v98 = +[_DASTrialManager sharedInstance];
    trialManager = v74->_trialManager;
    v74->_trialManager = v98;

    v100 = [_DASTrialManager sharedInstanceForProject:364 withNamespace:@"COREOS_POWER_EXPERIENCE_POWER_TUNING"];
    trialManagerForPowerExperience = v74->_trialManagerForPowerExperience;
    v74->_trialManagerForPowerExperience = v100;

    [(_DASTrialManager *)v74->_trialManager addDelegate:v74];
    v165[0] = _NSConcreteStackBlock;
    v165[1] = 3221225472;
    v165[2] = sub_1000C8A18;
    v165[3] = &unk_1001B5668;
    v102 = v74;
    v166 = v102;
    v103 = [_DASTimer timerWithCallback:v165];
    v104 = v102[25];
    v102[25] = v103;

    [v102 setupTimers];
    v105 = [_DASCoreDataStore storageWithDirectory:@"/var/mobile/Library/DuetActivityScheduler" readOnly:0];
    v106 = v102[42];
    v102[42] = v105;

    if (v163)
    {
      v107 = +[NSXPCListener anonymousListener];
    }

    else
    {
      v108 = [NSXPCListener alloc];
      v107 = [v108 initWithMachServiceName:_DASDaemonServiceName];
    }

    v109 = v102[22];
    v102[22] = v107;

    [v102[22] setDelegate:v102];
    v110 = +[NSXPCListener anonymousListener];
    v111 = v102[23];
    v102[23] = v110;

    [v102[23] setDelegate:v102];
    [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.startup" byCount:1];
    v112 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v113 = dispatch_queue_create("com.apple.duetactivityscheduler.backgroundLaunchQueue", v112);
    v114 = v102[62];
    v102[62] = v113;

    v115 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v116 = dispatch_queue_attr_make_with_qos_class(v115, QOS_CLASS_BACKGROUND, 0);
    v117 = dispatch_queue_create("com.apple.duetactivityscheduler.telemetryQueue", v116);
    v118 = v102[33];
    v102[33] = v117;

    v119 = v74->_context;
    v120 = +[_DASPhotosPolicy keyPathForPhotosIsBlocked];
    v121 = [(_CDLocalContext *)v119 objectForKeyedSubscript:v120];

    if (v121)
    {
      v102[73] = [v121 unsignedIntegerValue];
    }

    else
    {
      [v102 updateiCPLTasksBlocked:0];
    }

    *(v102 + 4) = 0;
    v122 = [_CDContextualKeyPath keyPathWithKey:@"/das/utilityConstraints"];
    v123 = v102[74];
    v102[74] = v122;

    v124 = [_CDContextualKeyPath keyPathWithKey:@"/das/maintenanceConstraints"];
    v125 = v102[75];
    v102[75] = v124;

    v126 = [(_CDLocalContext *)v74->_context objectForKeyedSubscript:v102[74]];
    v127 = v126;
    if (v126)
    {
      v102[76] = [v126 unsignedIntegerValue];
    }

    v128 = [(_CDLocalContext *)v74->_context objectForKeyedSubscript:v102[75]];
    v129 = v128;
    if (v128)
    {
      v102[77] = [v128 unsignedIntegerValue];
    }

    v130 = +[_DASBudgetManager sharedInstance];
    v131 = v102[69];
    v102[69] = v130;

    v132 = +[_DASActivityDependencyManager sharedInstance];
    v133 = v102[70];
    v102[70] = v132;

    v134 = [[_DASAssertionArbiter alloc] initWithDelegate:v102];
    v135 = v102[71];
    v102[71] = v134;

    v136 = +[_DASProgressReportingMonitor sharedMonitor];
    v137 = v102[72];
    v102[72] = v136;

    v138 = objc_opt_new();
    v139 = v102[51];
    v102[51] = v138;

    v140 = +[_DASBatteryTemperatureRecorder sharedInstance];
    v141 = +[_DASActivityProfiler sharedProfiler];
    v142 = v102[88];
    v102[88] = v141;

    v143 = +[_DASIntensityValidator sharedInstance];
    v144 = v102[57];
    v102[57] = v143;

    v145 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v146 = dispatch_queue_create("com.apple.duetactivityscheduler.intensityValidatorQueue", v145);
    v147 = v102[58];
    v102[58] = v146;

    v148 = +[NSMutableSet set];
    v149 = v102[84];
    v102[84] = v148;

    v150 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v151 = dispatch_queue_create("com.apple.duetactivityscheduler.lifecycleObservationQueue", v150);
    v152 = v102[85];
    v102[85] = v151;

    v153 = +[_DASRuntimeLimiter sharedLimiter];
    v154 = v102[53];
    v102[53] = v153;

    v155 = +[_DASShadowPolicyEvaluator sharedShadowPolicyEvaluator];
    v156 = v102[54];
    v102[54] = v155;

    v157 = +[_DASNotificationManager sharedManager];
    v158 = v102[94];
    v102[94] = v157;

    v159 = +[_DASFeatureDurationTracker sharedInstance];
    v160 = v102[56];
    v102[56] = v159;

    v161 = +[_DASIssueDetector sharedInstance];
    [v161 schedule];
  }

  return v8;
}

- (void)solicitActivityResubmission
{
  v2 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Soliciting activities for resubmission.", v3, 2u);
  }

  notify_post([@"com.appple.duet.activityscheduler.requestActivityResubmission" UTF8String]);
}

- (void)registerForTrial
{
  v3 = +[_DASTrialManager sharedInstance];
  [v3 addDelegate:self];
}

- (void)updateTrialParameters
{
  v3 = [(_DASTrialManager *)self->_trialManager factorWithName:@"Disabled"];
  v4 = +[_DASDaemonLogger defaultCategory];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 67109120;
      v39 = [v3 BOOLeanValue];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trial: recomEngineDisabled set to %d", buf, 8u);
    }

    self->_recomEngineDisabled = [v3 BOOLeanValue];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Trial: Failed to load recomEngineDisabled", buf, 2u);
    }
  }

  v37 = v3;
  v6 = [(_DASTrialManager *)self->_trialManager factorWithName:@"ImmediateRuntimeDisabled"];
  if (v6)
  {
    self->_dasImmediateRuntimeDisabled = [v6 BOOLeanValue];
    v7 = +[_DASDaemonLogger defaultCategory];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    dasImmediateRuntimeDisabled = self->_dasImmediateRuntimeDisabled;
    *buf = 67109120;
    v39 = dasImmediateRuntimeDisabled;
    v9 = "Trial: dasImmediateRuntimeDisabled set to %d";
    v10 = v7;
    v11 = 8;
  }

  else
  {
    v7 = +[_DASDaemonLogger defaultCategory];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v9 = "Trial: Failed to load dasImmediateRuntimeDisabled";
    v10 = v7;
    v11 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_14:

  v12 = [(_DASTrialManager *)self->_trialManager factorWithName:@"Sched_MaxAllowableDurationSeconds"];
  v13 = v12;
  if (v12)
  {
    [v12 doubleValue];
  }

  v14 = qword_10020A518;
  v15 = [(_DASTrialManager *)self->_trialManager factorWithName:@"Sched_DefaultGroupMax"];

  if (v15)
  {
    qword_10020A518 = [v15 longValue];
  }

  v16 = qword_10020A520;
  v17 = [(_DASTrialManager *)self->_trialManager factorWithName:@"Sched_NetworkDefaultGroupMax"];

  if (v17)
  {
    qword_10020A520 = [v17 longValue];
  }

  v18 = qword_10020A528;
  if (_os_feature_enabled_impl())
  {
    v19 = [(_DASTrialManager *)self->_trialManager factorWithName:@"Sched_IntensiveDefaultGroupMax"];

    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = [v19 longValue];
    v17 = v19;
  }

  else
  {
    v20 = 1;
  }

  qword_10020A528 = v20;

LABEL_25:
  runtimeAllocator = self->_runtimeAllocator;
  if (runtimeAllocator)
  {
    [(_DASDynamicRuntimeAllocator *)runtimeAllocator updateConcurrencyLimit:qword_10020A528];
  }

  v22 = qword_10020A530;
  v23 = [(_DASTrialManager *)self->_trialManager factorWithName:@"ContinuedProcessingConcurrencyLimit"];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 longValue];
    qword_10020A530 = v25;
  }

  else
  {
    v25 = qword_10020A530;
  }

  if (qword_10020A518 != v14 || qword_10020A520 != v16 || qword_10020A528 != v18 || v25 != v22)
  {
    [(_DASDaemon *)self createDefaultActivityGroups];
  }

  os_unfair_lock_lock(&self->_groupLock);
  v26 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultIntensiveGroupName];
  v27 = [v26 maxConcurrent];
  if (v27 == qword_10020A528)
  {
    v28 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultNetworkGroupName];
    v29 = [v28 maxConcurrent];
    if (v29 == qword_10020A520)
    {
      v30 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultGroupName];
      v31 = [v30 maxConcurrent];
      if (v31 == qword_10020A518)
      {
        v32 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultContinuedProcessingGroupName];
        v33 = [v32 maxConcurrent];
        v34 = qword_10020A530;

        os_unfair_lock_unlock(&self->_groupLock);
        if (v33 == v34)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }
    }
  }

  os_unfair_lock_unlock(&self->_groupLock);
LABEL_43:
  v35 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Trial: group maxConcurrent mismatches from default group concurrency configuration. Creating and updating default activity groups.", buf, 2u);
  }

  [(_DASDaemon *)self createDefaultActivityGroups];
LABEL_46:
}

- (void)registerForActivityLifecycleObservation:(id)a3
{
  v4 = a3;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C910C;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(activityLifecycleObservingRegistryQueue, v7);
}

- (void)createPowerAssertion:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    if (([v4 requestsApplicationLaunch] & 1) == 0)
    {
      v5 = +[_DASRequiresPluggedInPolicy policyInstance];
      v6 = [v5 isExternallyPowered];

      if ((v6 & 1) != 0 || [v4 preventDeviceSleep])
      {
        v7 = [_DASDaemonLogger logForCategory:@"lifecycle"];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v4 name];
          *buf = 138412802;
          v35 = v8;
          v36 = 1024;
          *v37 = [v4 preventDeviceSleep];
          *&v37[4] = 1024;
          *&v37[6] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Activity %@ has preventDeviceSleep %d. Externally Powered: %d", buf, 0x18u);
        }

        if ([v4 preventDeviceSleep])
        {
          v9 = @"-ClientRequested";
        }

        else
        {
          v9 = &stru_1001BA3C0;
        }

        v10 = [v4 name];
        v11 = [NSString stringWithFormat:@"DASActivity%@:%@", v9, v10];

        v12 = [NSMutableDictionary alloc];
        v32[0] = @"AssertType";
        v32[1] = @"AssertName";
        v33[0] = @"PreventUserIdleSystemSleep";
        v33[1] = v11;
        v13 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
        v14 = [v12 initWithDictionary:v13];

        if ([v4 pid])
        {
          v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 pid]);
          [v14 setObject:v15 forKeyedSubscript:@"AssertionOnBehalfOfPID"];
        }

        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"AllowsDeviceRestart"];
        v16 = [(_DASDaemon *)self powerAssertions];
        objc_sync_enter(v16);
        v17 = [(_DASDaemon *)self powerAssertions];
        v18 = [v4 uuid];
        v19 = [v17 objectForKeyedSubscript:v18];

        if (v19)
        {
          v20 = [_DASDaemonLogger logForCategory:@"lifecycle"];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v4 uuid];
            v22 = [(_DASDaemon *)self powerAssertions];
            v23 = [v4 uuid];
            v24 = [v22 objectForKeyedSubscript:v23];
            *buf = 138412546;
            v35 = v21;
            v36 = 2112;
            *v37 = v24;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Assertion already exists for UUID %@ %@", buf, 0x16u);
          }

          goto LABEL_23;
        }

        AssertionID = 0;
        v25 = IOPMAssertionCreateWithProperties(v14, &AssertionID);
        if (v25)
        {
          v26 = [_DASDaemonLogger logForCategory:@"lifecycle"];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v35) = v25;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to create an assertion 0x%x", buf, 8u);
          }
        }

        else
        {
          v27 = [NSNumber numberWithUnsignedInt:AssertionID];
          v28 = [(_DASDaemon *)self powerAssertions];
          v29 = [v4 uuid];
          [v28 setObject:v27 forKeyedSubscript:v29];

          if (![v4 preventDeviceSleep])
          {
LABEL_23:
            objc_sync_exit(v16);

            goto LABEL_24;
          }

          v26 = [_DASDaemonLogger logForCategory:@"lifecycle"];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v4 name];
            *buf = 138412546;
            v35 = v30;
            v36 = 1024;
            *v37 = AssertionID;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Creating assertion for  %@ %u", buf, 0x12u);
          }
        }

        goto LABEL_23;
      }
    }
  }

LABEL_24:
}

- (void)releasePowerAssertion:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(_DASDaemon *)self powerAssertions];
    objc_sync_enter(v5);
    v6 = [(_DASDaemon *)self powerAssertions];
    v7 = [v4 uuid];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [v8 unsignedIntValue];
      if ([v4 preventDeviceSleep])
      {
        v10 = [_DASDaemonLogger logForCategory:@"lifecycle"];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v4 name];
          v14 = 138412546;
          v15 = v11;
          v16 = 1024;
          v17 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Releasing assertion for %@ %u", &v14, 0x12u);
        }
      }

      IOPMAssertionRelease(v9);
      v12 = [(_DASDaemon *)self powerAssertions];
      v13 = [v4 uuid];
      [v12 removeObjectForKey:v13];
    }

    objc_sync_exit(v5);
  }
}

- (void)releaseAssertions:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v18 = v4;
    obj = [(_DASDaemon *)self powerAssertions];
    objc_sync_enter(obj);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          v10 = [(_DASDaemon *)self powerAssertions];
          v11 = [v9 uuid];
          v12 = [v10 objectForKeyedSubscript:v11];

          if (v12)
          {
            v13 = [v12 unsignedIntValue];
            v14 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = [v9 name];
              *buf = 138412546;
              v25 = v15;
              v26 = 1024;
              v27 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Releasing assertion for %@ %u", buf, 0x12u);
            }

            IOPMAssertionRelease(v13);
            v16 = [(_DASDaemon *)self powerAssertions];
            v17 = [v9 uuid];
            [v16 removeObjectForKey:v17];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v6);
    }

    objc_sync_exit(obj);
    v4 = v18;
  }
}

- (void)evaluateAssertions
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[_DASRequiresPluggedInPolicy policyInstance];
    v4 = [v3 isExternallyPowered];

    if ((v4 & 1) == 0)
    {
      v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Evaluating assertions on external power state change", buf, 2u);
      }

      v6 = +[NSMutableSet set];
      v7 = [(_DASDaemon *)self powerAssertions];
      objc_sync_enter(v7);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = [(_DASDaemon *)self powerAssertions];
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [(_DASDaemon *)self getActivityRunningWithUUID:*(*(&v22 + 1) + 8 * v11)];
            v13 = v12;
            if (v12 && ([v12 preventDeviceSleep] & 1) == 0)
            {
              [v6 addObject:v13];
            }

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v9);
      }

      objc_sync_exit(v7);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v14 = v6;
      v15 = [v14 countByEnumeratingWithState:&v18 objects:v27 count:16];
      if (v15)
      {
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [(_DASDaemon *)self releasePowerAssertion:*(*(&v18 + 1) + 8 * v17), v18];
            v17 = v17 + 1;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v18 objects:v27 count:16];
        }

        while (v15);
      }
    }
  }
}

- (void)setupTimers
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_evaluationQueue);
  optimalScoringTimer = self->_optimalScoringTimer;
  self->_optimalScoringTimer = v3;

  v5 = self->_optimalScoringTimer;
  dispatch_set_qos_class_fallback();
  v6 = self->_optimalScoringTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000C9F58;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v7 = self->_optimalScoringTimer;
  v8 = dispatch_walltime(0, 21600000000000);
  dispatch_source_set_timer(v7, v8, 0x13A52453C000uLL, 0x34630B8A000uLL);
  dispatch_resume(self->_optimalScoringTimer);
  [(_DASDaemon *)self setupDatabaseMaintenance];
  v9 = dispatch_queue_create("com.apple.dasd.groupsqueue", 0);
  groupMonitoringQueue = self->_groupMonitoringQueue;
  self->_groupMonitoringQueue = v9;

  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_groupMonitoringQueue);
  groupMonitoringTimer = self->_groupMonitoringTimer;
  self->_groupMonitoringTimer = v11;

  v13 = self->_groupMonitoringTimer;
  dispatch_set_qos_class_fallback();
  v14 = self->_groupMonitoringTimer;
  v15 = dispatch_walltime(0, 180000000000);
  dispatch_source_set_timer(v14, v15, 0x29E8D60800uLL, 0x3B9ACA00uLL);
  v16 = self->_groupMonitoringTimer;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000A3BC;
  v17[3] = &unk_1001B5668;
  v17[4] = self;
  dispatch_source_set_event_handler(v16, v17);
  dispatch_activate(self->_groupMonitoringTimer);
}

- (void)scheduleTimerForActivity:(id)a3
{
  v4 = a3;
  v13 = +[NSDate date];
  v5 = [v4 name];
  v6 = [v4 predictedOptimalStartDate];
  [v6 timeIntervalSinceDate:v13];
  v8 = v7;
  v9 = [v4 startBefore];
  [v9 timeIntervalSinceDate:v13];
  v11 = v10;
  v12 = [v4 schedulingPriority];

  [(_DASDaemon *)self scheduleTimerOnBehalfOf:v5 between:v12 > _DASSchedulingPriorityUtility and:v8 waking:v11];
}

- (void)scheduleTimerOnBehalfOf:(id)a3 between:(double)a4 and:(double)a5 waking:(BOOL)a6
{
  v10 = a3;
  timerSchedulingQueue = self->_timerSchedulingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CA11C;
  block[3] = &unk_1001B8448;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_sync(timerSchedulingQueue, block);
}

- (void)setupDatabaseMaintenance
{
  v3 = dispatch_get_global_queue(0, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  databaseMaintenanceTimer = self->_databaseMaintenanceTimer;
  self->_databaseMaintenanceTimer = v4;

  v6 = self->_databaseMaintenanceTimer;
  dispatch_set_qos_class_fallback();
  v7 = self->_databaseMaintenanceTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000CA4A8;
  handler[3] = &unk_1001B5668;
  handler[4] = self;
  dispatch_source_set_event_handler(v7, handler);
  v8 = self->_databaseMaintenanceTimer;
  v9 = dispatch_walltime(0, 86400000000000);
  dispatch_source_set_timer(v8, v9, 0x4E94914F0000uLL, 0x4E94914F0000uLL);
  dispatch_resume(self->_databaseMaintenanceTimer);
}

- (void)removeDuplicateLaunchTasks:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableSet set];
  v29 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v3;
  v30 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v30)
  {
    v28 = *v43;
    do
    {
      v5 = 0;
      do
      {
        if (*v43 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v42 + 1) + 8 * v5);
        if ([v6 isBackgroundTaskActivity])
        {
          [v6 clientProvidedIdentifier];
        }

        else
        {
          [v6 name];
        }
        v31 = ;
        v32 = v5;
        v7 = [v29 objectForKeyedSubscript:v31];
        if (!v7)
        {
          v7 = +[NSMutableArray array];
        }

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v39;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v39 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v38 + 1) + 8 * i);
              if ([v6 isBackgroundTaskActivity])
              {
                if ([v13 isBackgroundTaskActivity])
                {
                  v37 = 0;
                  if ([v6 shouldReplaceActivity:v13 andKeepsSubmitted:&v37])
                  {
                    v14 = v37;
                    v15 = [v6 submitDate];
                    v16 = [v13 submitDate];
                    [v15 timeIntervalSinceDate:v16];
                    if (v14)
                    {
                      v18 = -v17;
                    }

                    else
                    {
                      v18 = v17;
                    }

                    if (v18 <= 0.0)
                    {
                      v19 = v6;
                    }

                    else
                    {
                      v19 = v13;
                    }

                    [v4 addObject:v19];
                  }
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v10);
        }

        v5 = v32 + 1;
      }

      while ((v32 + 1) != v30);
      v30 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v30);
  }

  [obj minusSet:v4];
  v20 = [_DASDaemonLogger logForCategory:@"persistence"];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A35C();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v4;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(_DASDataStore *)self->_store deleteActivity:*(*(&v33 + 1) + 8 * j)];
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v23);
  }
}

- (void)loadState
{
  v3 = objc_alloc_init(_DASDataProtectionStateMonitor);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2810000000;
  v12 = &unk_1001A2775;
  v13 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007C7C;
  v8[3] = &unk_1001B8470;
  v8[5] = &v9;
  v8[6] = &v14;
  v8[4] = self;
  [(_DASDataProtectionStateMonitor *)v3 setChangeHandler:v8];
  v4 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v5 = [(_DASDataProtectionStateMonitor *)v3 isDataAvailableFor:v4];

  if (v5)
  {
    os_unfair_lock_lock(v10 + 8);
    if ((v15[3] & 1) == 0)
    {
      [(_DASDaemon *)self loadStateWhenAvailable];
      *(v15 + 24) = 1;
    }

    os_unfair_lock_unlock(v10 + 8);
    [(_DASDaemon *)self registerForTrial];
    [(_DASDaemon *)self updateTrialParameters];
  }

  else
  {
    v6 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Class C not yet available. Not loading activities", v7, 2u);
    }
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v14, 8);
}

- (void)loadStateWhenAvailable
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableSet set];
  v7 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Loading saved activities.", buf, 2u);
  }

  [(_DASDataStore *)self->_store deleteActivitiesIfRequired];
  [(_DASDataStore *)self->_store loadPendingLaunchTasks:v5];
  [(_DASDataStore *)self->_store loadAllGroups:v6];
  [(_DASDaemon *)self removeDuplicateLaunchTasks:v5];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (!v9)
  {

LABEL_24:
    [(_DASDaemon *)self createDefaultActivityGroups];
    goto LABEL_25;
  }

  v10 = v9;
  v31 = v5;
  v32 = v4;
  v33 = v3;
  v34 = 0;
  v35 = 0;
  v11 = 0;
  v12 = *v37;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v37 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v14 = *(*(&v36 + 1) + 8 * i);
      v15 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v14 name];
        v17 = [v14 maxConcurrent];
        *buf = 138412546;
        v41 = v16;
        v42 = 2048;
        v43 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading group %@ (capacity=%lld).", buf, 0x16u);
      }

      os_unfair_lock_lock(&self->_groupLock);
      groups = self->_groups;
      v19 = [v14 name];
      [(NSMutableDictionary *)groups setObject:v14 forKeyedSubscript:v19];

      os_unfair_lock_unlock(&self->_groupLock);
      v20 = [v14 name];
      LOBYTE(v19) = [v20 isEqualToString:_DASDefaultIntensiveGroupName];

      if (v19)
      {
        v11 = 1;
      }

      else
      {
        v21 = [v14 name];
        v22 = [v21 isEqualToString:_DASDefaultNetworkGroupName];

        if (v22)
        {
          BYTE4(v35) = 1;
        }

        else
        {
          v23 = [v14 name];
          v24 = [v23 isEqualToString:_DASDefaultGroupName];

          if (v24)
          {
            BYTE4(v34) = 1;
          }

          else
          {
            v25 = [v14 name];
            v26 = [v25 isEqualToString:_DASDefaultRemoteGroupName];

            if (v26)
            {
              LOBYTE(v34) = 1;
            }

            else
            {
              v27 = [v14 name];
              v28 = [v27 isEqualToString:_DASDefaultContinuedProcessingGroupName];

              LOBYTE(v35) = v28 | v35;
            }
          }
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v36 objects:v44 count:16];
  }

  while (v10);
  v29 = BYTE4(v35) & BYTE4(v34) & v11 & v34 & v35;

  v4 = v32;
  v3 = v33;
  v5 = v31;
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  v30 = [v5 allObjects];
  [(_DASDaemon *)self submitActivities:v30];

  objc_autoreleasePoolPop(v4);
}

- (void)loadTestingDefaults
{
  v3 = [(NSUserDefaults *)self->_testingDefaults objectForKey:@"testModeParameters"];
  testModeParameters = self->_testModeParameters;
  self->_testModeParameters = v3;

  v5 = [(NSUserDefaults *)self->_testingDefaults objectForKey:@"testModeLastUpdated"];
  v6 = v5;
  if (self->_testModeParameters)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:v6];
    if (v9 > 86400.0)
    {
      v10 = self->_testModeParameters;
      self->_testModeParameters = 0;

      [(NSUserDefaults *)self->_testingDefaults setObject:0 forKey:@"testModeParameters"];
    }

    v11 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = self->_testModeParameters;
      v24 = 138412290;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Test mode parameters: %@", &v24, 0xCu);
    }
  }

  v13 = [(NSUserDefaults *)self->_testingDefaults objectForKey:@"pausedParameters"];
  pausedParameters = self->_pausedParameters;
  self->_pausedParameters = v13;

  if (self->_pausedParameters)
  {
    v15 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_pausedParameters;
      v24 = 138412290;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Paused parameters: %@", &v24, 0xCu);
    }
  }

  v17 = [(NSUserDefaults *)self->_testingDefaults objectForKey:@"taskRegistryMode"];
  self->_taskRegistryMode = v17 != 0;

  if (self->_taskRegistryMode)
  {
    v18 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      taskRegistryMode = self->_taskRegistryMode;
      v24 = 67109120;
      LODWORD(v25) = taskRegistryMode;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Task Registry Mode: %i", &v24, 8u);
    }
  }

  v20 = [(NSUserDefaults *)self->_testingDefaults objectForKey:@"taskRegistryProcesses"];
  taskRegistryProcesses = self->_taskRegistryProcesses;
  self->_taskRegistryProcesses = v20;

  if (self->_taskRegistryProcesses)
  {
    v22 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_taskRegistryProcesses;
      v24 = 138412290;
      v25 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Task Registry Processes: %@", &v24, 0xCu);
    }
  }
}

- (int64_t)capacityFromGroupMax:(int64_t)a3 forPriority:(unint64_t)a4
{
  if (_DASSchedulingPriorityUserInitiatedOvercommit <= a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return a3 << (_DASSchedulingPriorityUserInitiated <= a4);
  }
}

- (int64_t)currentLoadFromActivities:(id)a3 inGroupWithName:(id)a4
{
  v5 = a3;
  if ([a4 hasPrefix:@"com.apple.dasd"])
  {
    v6 = +[NSDate date];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = [v13 startDate];
          [v14 timeIntervalSinceDate:v6];
          v16 = v15;

          if (v16 > 0.0)
          {
            v17 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v23 = [v13 startDate];
              *buf = 138412546;
              v34 = v13;
              v35 = 2112;
              v36 = v23;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Adjusting start date for %@ to %@", buf, 0x16u);
            }

            v18 = [v6 dateByAddingTimeInterval:-300.0];
            [v13 setStartDate:v18];
          }

          v19 = [v13 startDate];
          if (v19)
          {
            v20 = [v13 startDate];
            [v6 timeIntervalSinceDate:v20];
            v22 = v21 * -0.6931472;
          }

          else
          {
            v22 = -0.0;
          }

          v11 = v11 + exp(v22 / 2700.0);
        }

        v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v9);
    }

    else
    {
      v11 = 0.0;
    }

    v25 = [v7 count];
    v26 = ceil(v11);
    if (v26 > v25)
    {
      v26 = v25;
    }

    v24 = v26;

    v5 = v28;
  }

  else
  {
    v24 = [v5 count];
  }

  return v24;
}

- (int64_t)additionalCapacityForActivity:(id)a3 inGroupWithName:(id)a4 shouldTryToSuspend:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v66 = v8;
    os_unfair_lock_lock(&self->_groupLock);
    v10 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:v9];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 maxConcurrent];
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    os_unfair_lock_unlock(&self->_groupLock);
    os_unfair_lock_lock(&self->_groupLock);
    v14 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:v9];
    v15 = [v14 copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = +[NSSet set];
    }

    v18 = v17;

    v19 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v9];
    v20 = [v19 copy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = +[NSSet set];
    }

    v23 = v22;

    v24 = [v23 setByAddingObjectsFromSet:v18];
    v25 = [v24 containsObject:v66];
    v65 = v24;
    v26 = [(_DASDaemon *)self currentLoadFromActivities:v24 inGroupWithName:v9];
    v27 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v73 = v9;
      v74 = 2048;
      v75 = v26;
      v76 = 2048;
      v77 = [v18 count];
      _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "%@: Current Load=%lld (Pre-running=%lld)", buf, 0x20u);
    }

    os_unfair_lock_unlock(&self->_groupLock);
    if (v25)
    {
      v13 = 1;
      v8 = v66;
LABEL_66:

      goto LABEL_67;
    }

    v64 = v23;
    if ([v66 requiresNetwork])
    {
      v28 = [_CDNetworkContext wifiQuality:self->_context];
      v29 = [_CDNetworkContext cellQuality:self->_context];
      v30 = [_CDNetworkContext cellInterfaceClass:self->_context];
      v33 = v28 < 1 && v29 > 0 && v30 == 3;
      v12 <<= v33;
    }

    v63 = v18;
    if ([v66 requiresNetwork] && (+[_CDNetworkContext wifiQuality:](_CDNetworkContext, "wifiQuality:", self->_context) > 50 || +[_CDNetworkContext cellQuality:](_CDNetworkContext, "cellQuality:", self->_context) > 50 || +[_CDNetworkContext wiredQuality:](_CDNetworkContext, "wiredQuality:", self->_context) >= 51))
    {
      v12 = -[_DASDaemon capacityFromGroupMax:forPriority:](self, "capacityFromGroupMax:forPriority:", v12, [v66 schedulingPriority]);
    }

    v13 = v12 - v26;
    v34 = +[NSDate now];
    v8 = v66;
    if (!v5 || v13 > 0)
    {
LABEL_65:

      v18 = v63;
      goto LABEL_66;
    }

    v60 = v13;
    v61 = v11;
    v62 = v9;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v35 = v65;
    v36 = [v35 countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (!v36)
    {
      goto LABEL_56;
    }

    v37 = v36;
    v38 = *v68;
LABEL_36:
    v39 = 0;
    while (1)
    {
      if (*v68 != v38)
      {
        objc_enumerationMutation(v35);
      }

      v40 = *(*(&v67 + 1) + 8 * v39);
      v41 = [v40 suspendRequestDate];

      if (v41)
      {
        goto LABEL_46;
      }

      if ([(_DASFairScheduleManager *)self->_fairScheduleManager compareActivity:v8 withActivity:v40]!= -1)
      {
        goto LABEL_41;
      }

      v47 = [v8 fileProtection];

      if (v47)
      {
        v48 = +[_DASFileProtectionPolicy policyInstance];
        v49 = [v48 responseForActivity:v8 withState:self->_context];

        v50 = [v49 policyDecision];
        if (v50 == 33)
        {
          goto LABEL_41;
        }
      }

      if ([(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator shouldDelaySuspendingRunningActivity:v40 forPendingTask:v8])
      {
        break;
      }

      v42 = 1;
LABEL_42:
      v43 = [v40 startDate];
      v44 = [(_DASDaemon *)self shouldSuspendLongRunningActivity:v40 withStartDate:v43 whileBlockingOtherTasks:v42 atDate:v34];

      v8 = v66;
      if (v44)
      {
        v45 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v66 name];
          *buf = 138543618;
          v73 = v40;
          v74 = 2112;
          v75 = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Group full! Found long running activity %{public}@ to suspend, making room for %@", buf, 0x16u);

          v8 = v66;
        }

        [(_DASDaemon *)self updateSuspendRequestDate:v34 forActivity:v40 withReason:@"Limitations"];
        [(_DASDaemon *)self suspendActivity:v40];
      }

LABEL_46:
      if (v37 == ++v39)
      {
        v54 = [v35 countByEnumeratingWithState:&v67 objects:v71 count:16];
        v37 = v54;
        if (!v54)
        {
LABEL_56:

          v55 = [v8 schedulingPriority];
          if (v55 <= _DASSchedulingPriorityDefault)
          {
            v56 = 0;
            v11 = v61;
            v9 = v62;
            v23 = v64;
            v13 = v60;
          }

          else
          {
            v56 = [(_DASDaemon *)self candidateGroupActivityForPreemption:v35];
            v11 = v61;
            v9 = v62;
            v23 = v64;
            v13 = v60;
            if (v56)
            {
              v57 = [v8 suspendRequestDate];

              if (!v57)
              {
                v58 = +[_DASDaemonLogger defaultCategory];
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v73 = v56;
                  v74 = 2114;
                  v75 = v66;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Preempting %{public}@ to unblock high priority %{public}@", buf, 0x16u);
                }

                [(_DASDaemon *)self updateSuspendRequestDate:v34 forActivity:v56 withReason:@"Preemption"];
                [(_DASDaemon *)self suspendActivity:v56];
              }

              v8 = v66;
            }
          }

          goto LABEL_65;
        }

        goto LABEL_36;
      }
    }

    v51 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v40 name];
      v53 = [v8 name];
      *buf = 138412546;
      v73 = v52;
      v74 = 2112;
      v75 = v53;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Overrode decision to suspend %@ for %@", buf, 0x16u);
    }

LABEL_41:
    v42 = 0;
    goto LABEL_42;
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_67:

  return v13;
}

- (void)cancelLaunchesOfTypes:(id)a3 forApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  v21 = self;
  os_unfair_recursive_lock_lock_with_options();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v22)
  {
    v20 = *v28;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = [(NSMutableDictionary *)v21->_applicationLaunchRequests objectForKeyedSubscript:v10];
        v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v24;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v24 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v23 + 1) + 8 * j);
              if (([v16 isContactTracingBackgroundActivity] & 1) == 0)
              {
                v17 = [v16 launchReason];
                v18 = [v6 containsObject:v17];

                if (v18)
                {
                  [v8 addObject:v16];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v13);
        }
      }

      v22 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v22);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)v21 cancelActivities:v8];
}

- (void)cancelPushLaunchTasksForApps:(id)a3
{
  v4 = _DASLaunchReasonBackgroundRemoteNotification;
  v5 = a3;
  v6 = [NSSet setWithObject:v4];
  [(_DASDaemon *)self cancelLaunchesOfTypes:v6 forApps:v5];
}

- (void)cancelAppRefreshTasksForApps:(id)a3
{
  v4 = _DASLaunchReasonBackgroundRefresh;
  v5 = a3;
  v6 = [NSSet setWithObject:v4];
  [(_DASDaemon *)self cancelLaunchesOfTypes:v6 forApps:v5];
}

- (void)cancelBackgroundTasksForApps:(id)a3
{
  v4 = _DASLaunchReasonBackgroundRefresh;
  v5 = _DASLaunchReasonBackgroundProcessing;
  v6 = _DASLaunchReasonHealthResearch;
  v7 = a3;
  v8 = [NSSet setWithObjects:v4, v5, v6, 0];
  [(_DASDaemon *)self cancelLaunchesOfTypes:v8 forApps:v7];
}

- (void)cancelContactTracingTasksForApps:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v10];
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v18 + 1) + 8 * j);
              if ([v16 isContactTracingBackgroundActivity])
              {
                [v5 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)self cancelActivities:v5];
}

- (void)cancelAllBackgroundTasks
{
  v3 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  applicationLaunchRequests = self->_applicationLaunchRequests;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CC1DC;
  v6[3] = &unk_1001B8498;
  v7 = v3;
  v5 = v3;
  [(NSMutableDictionary *)applicationLaunchRequests enumerateKeysAndObjectsUsingBlock:v6];

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)self cancelActivities:v5];
}

- (void)delayLaunchesOfType:(id)a3 forApps:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35 = +[NSDate date];
  v31 = self;
  os_unfair_recursive_lock_lock_with_options();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v7;
  v32 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v32)
  {
    v30 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v8);
        }

        v33 = v9;
        v10 = *(*(&v41 + 1) + 8 * v9);
        v11 = [(NSMutableDictionary *)v31->_applicationLaunchRequests objectForKeyedSubscript:v10];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v38;
          v34 = *v38;
          do
          {
            v15 = 0;
            v36 = v13;
            do
            {
              if (*v38 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v37 + 1) + 8 * v15);
              v17 = [v16 launchReason];
              v18 = [v17 isEqualToString:v6];

              if (v18)
              {
                v19 = [v16 startAfter];
                v20 = [v8 objectForKeyedSubscript:v10];
                [v20 doubleValue];
                v21 = [v35 dateByAddingTimeInterval:?];

                [v21 timeIntervalSinceDate:v19];
                if (v22 > 0.0)
                {
                  v23 = v22;
                  [v16 setStartAfter:v21];
                  v24 = [v16 startBefore];
                  [v24 dateByAddingTimeInterval:v23];
                  v25 = v11;
                  v26 = v6;
                  v27 = v10;
                  v29 = v28 = v8;
                  [v16 setStartBefore:v29];

                  v8 = v28;
                  v10 = v27;
                  v6 = v26;
                  v11 = v25;
                  v14 = v34;
                }

                v13 = v36;
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
          }

          while (v13);
        }

        v9 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v32);
  }

  os_unfair_recursive_lock_unlock();
}

- (BOOL)addLaunchRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 relatedApplications];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 relatedApplications];
    v8 = [v7 firstObject];

    os_unfair_recursive_lock_lock_with_options();
    v9 = [v4 requestsExtensionLaunch];
    v10 = 144;
    if (v9)
    {
      v10 = 160;
    }

    v11 = *(&self->super.isa + v10);
    v12 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 launchReason];
      *buf = 138412802;
      v45 = v13;
      v46 = 2112;
      v47 = v8;
      v48 = 2112;
      v49 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Adding a launch request (%@) for application %@ by activity %@", buf, 0x20u);
    }

    v14 = [v11 objectForKeyedSubscript:v8];
    v15 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v45 = v8;
      v46 = 2112;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Pre-existing launch requests for %@: %@", buf, 0x16u);
    }

    if (!v14)
    {
      v14 = +[NSMutableSet set];
      [v11 setObject:v14 forKeyedSubscript:v8];
    }

    buf[0] = 1;
    if ([v4 isBackgroundTaskActivity])
    {
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v39;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v39 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v38 + 1) + 8 * i);
            v22 = [v4 shouldReplaceActivity:v21 andKeepsSubmitted:buf];
            if (buf[0] == 1 && v22 != 0)
            {
              v31 = v21;
              goto LABEL_39;
            }

            if (!buf[0])
            {
              goto LABEL_35;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v38 objects:v43 count:16];
          v31 = 0;
        }

        while (v18);
      }

      else
      {
LABEL_35:
        v31 = 0;
      }

LABEL_39:

      if ((buf[0] & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v36 = 0uLL;
      v37 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v25 = v14;
      v31 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v31)
      {
        v26 = *v35;
LABEL_28:
        v27 = 0;
        while (1)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v25);
          }

          v28 = *(*(&v34 + 1) + 8 * v27);
          if ([v28 isIdenticalLaunchTo:{v4, v34}])
          {
            break;
          }

          if (v31 == ++v27)
          {
            v31 = [v25 countByEnumeratingWithState:&v34 objects:v42 count:16];
            if (v31)
            {
              goto LABEL_28;
            }

            goto LABEL_38;
          }
        }

        if ([v4 overwritesPrevious])
        {
          v31 = v28;
          v29 = [v31 startAfter];
          [v4 setStartAfter:v29];

          v30 = [v31 startBefore];
          [v4 setStartBefore:v30];

          goto LABEL_38;
        }

        os_unfair_recursive_lock_unlock();

        v31 = 0;
        v24 = 0;
        goto LABEL_44;
      }

LABEL_38:
    }

    [v14 _DAS_addOrReplaceObject:{v4, v34}];
LABEL_41:
    os_unfair_recursive_lock_unlock();
    if (v31)
    {
      v32 = [NSSet setWithObject:v31];
      [(_DASDaemon *)self cancelActivities:v32];
    }

    v24 = buf[0];
LABEL_44:

    goto LABEL_45;
  }

  v24 = 1;
LABEL_45:

  return v24 & 1;
}

- (void)removeLaunchRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 relatedApplications];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 relatedApplications];
    v8 = [v7 firstObject];

    os_unfair_recursive_lock_lock_with_options();
    v9 = [v4 requestsExtensionLaunch];
    v10 = 144;
    if (v9)
    {
      v10 = 160;
    }

    v11 = *(&self->super.isa + v10);
    v12 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing a launch request for application %@ by activity %@", &v16, 0x16u);
    }

    v13 = [v11 objectForKeyedSubscript:v8];
    [v13 removeObject:v4];

    v14 = [v11 objectForKeyedSubscript:v8];
    v15 = [v14 count];

    if (!v15)
    {
      [v11 removeObjectForKey:v8];
    }

    os_unfair_recursive_lock_unlock();
  }
}

- (unint64_t)requestCountForApplication:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v4];

  v6 = [v5 count];
  os_unfair_recursive_lock_unlock();
  return v6;
}

- (void)start
{
  [(_DASDaemon *)self loadState];
  v3 = +[_DASDynamicRuntimeAllocator sharedAllocator];
  runtimeAllocator = self->_runtimeAllocator;
  self->_runtimeAllocator = v3;

  [(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator updateConcurrencyLimit:qword_10020A528];
  v5 = +[_DASConfigurationLimiter sharedLimiter];
  configurationLimiter = self->_configurationLimiter;
  self->_configurationLimiter = v5;

  v7 = +[_DASActivityRateLimitManager sharedLimiter];
  rateLimiter = self->_rateLimiter;
  self->_rateLimiter = v7;

  v9 = +[_DASRuntimeTrackerManager sharedRuntimeTrackerManager];
  runtimeTrackerManager = self->_runtimeTrackerManager;
  self->_runtimeTrackerManager = v9;

  v11 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating _DASBGSystemTaskHelper", buf, 2u);
  }

  v12 = +[_DASBGSystemTaskHelper sharedInstance];
  [v12 startWithListener:self->_bgstListener];

  v13 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Activating listener", buf, 2u);
  }

  [(NSXPCListener *)self->_listener activate];
  [(_DASDaemon *)self solicitActivityResubmission];
  +[_DASDataCollectionTasks schedule];
  +[_DASAutoBugCaptureHelper schedule];
  v14 = [_DASSmartPowerNapMonitor sharedMonitorWithDaemon:self];
  smartPowerNapMonitor = self->_smartPowerNapMonitor;
  self->_smartPowerNapMonitor = v14;

  if (+[_DASConfig isiPhone])
  {
    v16 = +[_DASCPMModeMonitor sharedMonitor];
    cpmModeMonitor = self->_cpmModeMonitor;
    self->_cpmModeMonitor = v16;
  }

  v18 = [_DASRemoteDeviceNearbyMonitor sharedMonitorWithDaemon:self];
  remoteDeviceNearbyMonitor = self->_remoteDeviceNearbyMonitor;
  self->_remoteDeviceNearbyMonitor = v18;

  v20 = [_DASRemoteDeviceWakeMonitor sharedMonitorWithDaemon:self];
  remoteDeviceWakeMonitor = self->_remoteDeviceWakeMonitor;
  self->_remoteDeviceWakeMonitor = v20;

  v22 = +[_DASProcessLifecycleMonitor sharedMonitor];
  processLifecycleMonitor = self->_processLifecycleMonitor;
  self->_processLifecycleMonitor = v22;

  v24 = [_DASDiskSpaceMonitor sharedMonitorWithDaemon:self];
  diskSpaceMonitor = self->_diskSpaceMonitor;
  self->_diskSpaceMonitor = v24;

  v26 = [_DASRemoteDeviceActivityMonitor sharedMonitorWithDaemon:self];
  remoteDeviceActivityMonitor = self->_remoteDeviceActivityMonitor;
  self->_remoteDeviceActivityMonitor = v26;

  v28 = +[_DASBacklightStateMonitor sharedInstance];
  backlightStateMonitor = self->_backlightStateMonitor;
  self->_backlightStateMonitor = v28;

  v30 = +[_DASContinuedProcessingTaskUIClient sharedClient];
  continuedProcessingTaskClient = self->_continuedProcessingTaskClient;
  self->_continuedProcessingTaskClient = v30;

  *buf = 0;
  evaluationQueue = self->_evaluationQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000CD144;
  handler[3] = &unk_1001B5B78;
  handler[4] = self;
  notify_register_dispatch("com.apple.sysdiagnose.sysdiagnoseStarted", buf, evaluationQueue, handler);
  v33 = dlopen_preflight("/System/Library/Frameworks/UIKit.framework/UIKit");
  byte_10020B7D0 = v33;
  if (v33)
  {
    v34 = [_DASBlueListManager managerWithContext:self->_context];
    blueListManager = self->_blueListManager;
    self->_blueListManager = v34;

    v36 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v37 = dispatch_queue_create("com.apple.duetactivityscheduler.activityLaunchQueue", v36);
    activityLaunchQueue = self->_activityLaunchQueue;
    self->_activityLaunchQueue = v37;

    v39 = [_DASBARScheduler barSchedulerWithScheduler:self];
    barScheduler = self->_barScheduler;
    self->_barScheduler = v39;

    v41 = os_transaction_create();
    [(_DASBARScheduler *)self->_barScheduler start];
    [(_DASDaemon *)self registerForTrial];
    [(_DASDaemon *)self updateTrialParameters];
    if (self->_recomEngineDisabled)
    {
      v42 = +[_DASSwapPredictionManager sharedInstance];
      swapManager = self->_swapManager;
      self->_swapManager = v42;

      [(_DASSwapPredictionManager *)self->_swapManager start];
    }

    else
    {
      v44 = +[_APRSManager sharedInstance];
      appResumeManager = self->_appResumeManager;
      self->_appResumeManager = v44;
    }

    v46 = objc_alloc_init(_DASClosureManager);
    closureManager = self->_closureManager;
    self->_closureManager = v46;
  }

  else
  {
    v41 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "UIKit framework not found...", v56, 2u);
    }
  }

  v48 = +[_DASDock dockManager];
  applicationDock = self->_applicationDock;
  self->_applicationDock = v48;

  v50 = +[_DASBackgroundAppKillDemo sharedInstance];
  bgAppKillDemoInstance = self->_bgAppKillDemoInstance;
  self->_bgAppKillDemoInstance = v50;

  v52 = +[_DASENManager manager];
  enManager = self->_enManager;
  self->_enManager = v52;

  +[_DASENManager schedulePeriodicRelaunchTask];
  v54 = +[_DASClientMetricsRecorder sharedInstance];
  [v54 registerReportTaskInfoTask];

  v55 = +[_DASClientMetricsRecorder sharedInstance];
  [v55 registerFeatureStatusTask];
}

- (void)handleSysdiagnoseStartEvent
{
  v3 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sysdiagnose started, suspending running tasks if any", buf, 2u);
  }

  os_unfair_recursive_lock_lock_with_options();
  v4 = +[NSMutableSet set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_runningTasks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
        v11 = [v10 suspendRequestDate];
        if (v11)
        {
        }

        else
        {
          v12 = [v10 schedulingPriority];
          if (v12 < _DASSchedulingPriorityUserInitiated || [v10 isIntensive])
          {
            v13 = +[NSDate now];
            [(_DASDaemon *)self updateSuspendRequestDate:v13 forActivity:v10 withReason:@"Sysdiagnose"];

            [v4 addObject:v10];
          }
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    [(_DASDaemon *)self suspendActivities:v4];
  }

  os_unfair_recursive_lock_unlock();
}

- (unint64_t)submittedTaskCount
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_pendingTasks count];
  os_unfair_recursive_lock_unlock();
  return v3;
}

- (id)allPendingTasks
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_pendingTasks copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)allPendingRestartTasks
{
  v3 = +[NSMutableSet set];
  v4 = self->_triggerToActivitiesMap;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)self->_triggerToActivitiesMap objectForKeyedSubscript:@"com.apple.duetactivityscheduler.restartpolicy.assertionsheld"];
  if (v5)
  {
    [v3 unionSet:v5];
  }

  objc_sync_exit(v4);

  return v3;
}

- (id)allPendingPushLaunchTasks
{
  v3 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  applicationLaunchRequests = self->_applicationLaunchRequests;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD578;
  v7[3] = &unk_1001B8498;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)applicationLaunchRequests enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (id)allPendingBackgroundTasks
{
  v3 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  applicationLaunchRequests = self->_applicationLaunchRequests;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CD780;
  v7[3] = &unk_1001B8498;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)applicationLaunchRequests enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_recursive_lock_unlock();

  return v5;
}

- (id)allPendingSyncOnBackupTasks
{
  v3 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_pendingTasks;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 userRequestedBackupTask])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)allTimewiseEligibleNetworkTasksAllowingCell:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSMutableSet set];
  v6 = +[NSDate date];
  v7 = self->_triggerToActivitiesMap;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_triggerToActivitiesMap objectForKeyedSubscript:@"com.apple.duetactivityscheduler.nwstatus.wifi"];
  v9 = v8;
  if (v8)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if (([v14 timewiseEligibleAtDate:{v6, v16}] & v3) == 1 && (objc_msgSend(v14, "requiresInexpensiveNetworking") & 1) == 0)
          {
            [v5 addObject:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  objc_sync_exit(v7);

  return v5;
}

- (id)startedTasks
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_runningTasks copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)allPrerunningTasks
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_prerunningTasks copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (id)allTasks
{
  v3 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  [v3 unionSet:self->_prerunningTasks];
  [v3 unionSet:self->_runningTasks];
  [v3 unionSet:self->_pendingTasks];
  os_unfair_recursive_lock_unlock();
  v4 = [v3 copy];

  return v4;
}

- (id)allActivityGroups
{
  os_unfair_lock_lock(&self->_groupLock);
  v3 = [(NSMutableDictionary *)self->_groups copy];
  os_unfair_lock_unlock(&self->_groupLock);

  return v3;
}

- (void)createDefaultActivityGroups
{
  v3 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = _DASDefaultNetworkGroupName;
    v5 = [NSNumber numberWithInteger:qword_10020A520];
    *buf = 138412546;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Creating %@ (Limit: %@)", buf, 0x16u);
  }

  v6 = [_DASActivityGroup groupWithName:_DASDefaultNetworkGroupName maxConcurrent:qword_10020A520];
  [(_DASDaemon *)self createActivityGroup:v6];
  v7 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _DASDefaultGroupName;
    v9 = [NSNumber numberWithInteger:qword_10020A518];
    *buf = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Creating %@ (Limit: %@)", buf, 0x16u);
  }

  v23 = [_DASActivityGroup groupWithName:_DASDefaultGroupName maxConcurrent:qword_10020A518];
  [(_DASDaemon *)self createActivityGroup:?];
  v10 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = _DASDefaultIntensiveGroupName;
    v12 = [NSNumber numberWithInteger:qword_10020A528];
    *buf = 138412546;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Creating %@ (Limit: %@)", buf, 0x16u);
  }

  v13 = [_DASActivityGroup groupWithName:_DASDefaultIntensiveGroupName maxConcurrent:qword_10020A528];
  [(_DASDaemon *)self createActivityGroup:v13];
  v14 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = _DASDefaultRemoteGroupName;
    v16 = [NSNumber numberWithInteger:10];
    *buf = 138412546;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Creating %@ (Limit: %@)", buf, 0x16u);
  }

  v17 = [_DASActivityGroup groupWithName:_DASDefaultRemoteGroupName maxConcurrent:10];
  [(_DASDaemon *)self createActivityGroup:v17];
  v18 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v6;
    v20 = _DASDefaultContinuedProcessingGroupName;
    v21 = [NSNumber numberWithInteger:qword_10020A530];
    *buf = 138412546;
    v25 = v20;
    v6 = v19;
    v26 = 2112;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating %@ (Limit: %@)", buf, 0x16u);
  }

  v22 = [_DASActivityGroup groupWithName:_DASDefaultContinuedProcessingGroupName maxConcurrent:qword_10020A530];
  [(_DASDaemon *)self createActivityGroup:v22];
}

- (NSString)description
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_runningTasks description];
  os_unfair_recursive_lock_unlock();
  v4 = [NSString stringWithFormat:@"<%@: Listener: %@, Clients: %@, Started Tasks: %@", objc_opt_class(), self->_listener, self->_clients, v3];

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if ([v6 isEqual:v8->_listener])
  {
    v9 = [v7 valueForEntitlement:@"com.apple.duet.activityscheduler.allow"];
    v10 = [v7 valueForEntitlement:@"application-identifier"];
    if (+[_DASConfig isInternalBuild](_DASConfig, "isInternalBuild") && ([v10 isEqualToString:@"com.apple.Preferences"] & 1) != 0 || v9 && (-[NSObject BOOLValue](v9, "BOOLValue") & 1) != 0)
    {
      v11 = 0;
    }

    else
    {
      v12 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Creating restricted client for connection %@", &v16, 0xCu);
      }

      v11 = 1;
    }
  }

  else
  {
    if (![v6 isEqual:v8->_bgstListener])
    {
      v11 = 0;
      goto LABEL_17;
    }

    v9 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating unrestricted client connection for BGSTHelper %@", &v16, 0xCu);
    }

    v11 = 0;
  }

LABEL_17:
  v13 = [_DASDaemonClient clientForDaemon:v8 withConnection:v7 isRestricted:v11];
  v14 = v8->_clients;
  objc_sync_enter(v14);
  [(NSMutableArray *)v8->_clients addObject:v13];
  objc_sync_exit(v14);

  objc_sync_exit(v8);
  return 1;
}

- (void)removeClient:(id)a3
{
  v12 = a3;
  v4 = self->_clients;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_clients removeObject:v12];
  objc_sync_exit(v4);

  v5 = self->_connectedBGTaskClients;
  objc_sync_enter(v5);
  v6 = [v12 connection];
  v7 = [v6 processIdentifier];

  connectedBGTaskClients = self->_connectedBGTaskClients;
  v9 = [NSNumber numberWithInt:v7];
  [(NSMutableDictionary *)connectedBGTaskClients removeObjectForKey:v9];

  activitiesWaitingForBGTaskClients = self->_activitiesWaitingForBGTaskClients;
  v11 = [NSNumber numberWithInt:v7];
  [(NSMutableDictionary *)activitiesWaitingForBGTaskClients removeObjectForKey:v11];

  objc_sync_exit(v5);
}

- (void)allClientsDo:(id)a3
{
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_clients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v4[2](v4, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (id)clientForActivity:(id)a3
{
  v4 = a3;
  v5 = self->_clients;
  objc_sync_enter(v5);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_clients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 startedTasks];
        objc_sync_enter(v11);
        v12 = [v10 startedTasks];
        v13 = [v12 containsObject:v4];

        if (v13)
        {
          v7 = v10;
          objc_sync_exit(v11);

          goto LABEL_11;
        }

        objc_sync_exit(v11);
      }

      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v5);

  return v7;
}

- (void)runLocalActivity:(id)a3
{
  v4 = a3;
  v5 = [NSSet setWithObject:v4];
  [(_DASDaemon *)self handleRunningActivities:v5];

  v6 = [v4 handlerQueue];
  launchQueue = v6;
  if (!v6)
  {
    launchQueue = self->_launchQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE970;
  block[3] = &unk_1001B5668;
  v10 = v4;
  v8 = v4;
  dispatch_async(launchQueue, block);
}

- (void)runActivities:(id)a3
{
  v4 = a3;
  v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Running activities : %@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v37 = +[NSMutableSet set];
  v40 = +[NSMutableSet set];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
  if (v6)
  {
    v7 = *v61;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v61 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v60 + 1) + 8 * i);
        [(_DASDaemon *)self reportActivityTiming:v9];
        [(_DASDaemon *)self reportOversizeLoadSymptomForActivity:v9 atStart:1];
        v10 = [v9 delayedStart];
        v11 = v40;
        if (v10)
        {
          v12 = [_DASDaemonLogger logForCategory:@"lifecycle"];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v9;
            _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Activity %@ has delayed start", buf, 0xCu);
          }

          v11 = v37;
        }

        [v11 addObject:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
    }

    while (v6);
  }

  if ([v40 count])
  {
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000CF464;
    v58[3] = &unk_1001B84C0;
    v13 = v40;
    v59 = v13;
    [(_DASDaemon *)self allClientsDo:v58];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v36 = v13;
    v14 = [v36 countByEnumeratingWithState:&v54 objects:v71 count:16];
    if (!v14)
    {
      goto LABEL_34;
    }

    v15 = *v55;
    while (1)
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(v36);
        }

        v17 = *(*(&v54 + 1) + 8 * j);
        if (![v17 isContinuedProcessingTask])
        {
LABEL_31:
          [(_DASDaemon *)self createPowerAssertion:v17];
          continue;
        }

        v18 = -[_DASAssertionArbiter assertionGroupForActivity:targetPID:](self->_assertionArbiter, "assertionGroupForActivity:targetPID:", v17, [v17 pid]);
        v19 = v18;
        if (v18)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v70 = 0;
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_1000CF470;
          v53[3] = &unk_1001B84E8;
          v53[5] = self;
          v53[6] = buf;
          v53[4] = v17;
          [v18 setWarningHandler:v53];
          v51[0] = 0;
          v51[1] = v51;
          v51[2] = 0x2020000000;
          v52 = 0;
          objc_initWeak(&location, v19);
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1000CF598;
          v48[3] = &unk_1001B8510;
          v48[5] = self;
          v48[6] = v51;
          v48[4] = v17;
          objc_copyWeak(&v49, &location);
          [v19 setInvalidationHandler:v48];
          v47 = 0;
          v20 = [v19 acquireWithError:&v47];
          v21 = v47;
          if (v20)
          {
            v22 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *v65 = 138412290;
              v66 = v17;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Successfully acquired assertions for %@", v65, 0xCu);
            }
          }

          else
          {
            v22 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *v65 = 138412546;
              v66 = v17;
              v67 = 2112;
              v68 = v21;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to acquire assertions for %@ with error: %@", v65, 0x16u);
            }
          }

          objc_destroyWeak(&v49);
          objc_destroyWeak(&location);
          _Block_object_dispose(v51, 8);
          _Block_object_dispose(buf, 8);

          if (v20)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v23 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v17;
            _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to create RBS assertions for %@", buf, 0xCu);
          }
        }
      }

      v14 = [v36 countByEnumeratingWithState:&v54 objects:v71 count:16];
      if (!v14)
      {
LABEL_34:

        break;
      }
    }
  }

  if ([v37 count])
  {
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000CF7A8;
    v45[3] = &unk_1001B84C0;
    v46 = v37;
    [(_DASDaemon *)self allClientsDo:v45];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obja = obj;
  v24 = [obja countByEnumeratingWithState:&v41 objects:v64 count:16];
  if (v24)
  {
    v25 = *v42;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v41 + 1) + 8 * k);
        v28 = [v27 startHandler];

        if (v28)
        {
          [(_DASDaemon *)self runLocalActivity:v27];
        }

        else if (([v27 requestsApplicationLaunch] & 1) == 0)
        {
          v29 = [v27 widgetID];
          if (v29)
          {
          }

          else if (([v27 delayedStart] & 1) == 0)
          {
            v30 = +[_DASPLLogger sharedInstance];
            [v30 recordActivityLifeCycleStart:v27];

            [(_DASDaemon *)self recordToTaskRegistry:v27 lifeCycleStateName:@"started"];
          }
        }

        if ([_DASPhotosPolicy isiCPLActivity:v27])
        {
          v31 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [NSNumber numberWithUnsignedInteger:self->_photosIsBlocked];
            *buf = 138543618;
            *&buf[4] = v27;
            *&buf[12] = 2112;
            *&buf[14] = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Reporting photos activity no longer blocked: %{public}@ (was %@)", buf, 0x16u);
          }

          [(_DASDaemon *)self updateiCPLTasksBlocked:0];
          if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:v27]&& [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor isRegistered])
          {
            [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor unregisterForRemoteDeviceActiveNotifications];
          }
        }

        if ([v27 isContinuedProcessingTask])
        {
          v33 = [NSSet setWithObject:v27];
          [(_DASDaemon *)self informObserversOfActivitiesNowRunning:v33];
        }

        v34 = +[NSDate date];
        if ([v27 overdueAtDate:v34])
        {
          if (([v27 requiresPlugin] & 1) == 0)
          {
            [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.missedDeadlineCount.nonPlugin" byCount:1];
          }

          if (([v27 requiresNetwork] & 1) == 0)
          {
            [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.missedDeadlineCount.nonNetwork" byCount:1];
          }

          if (([v27 requiresNetwork] & 1) == 0 && (objc_msgSend(v27, "requiresPlugin") & 1) == 0)
          {
            [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.missedDeadlineCount.nonPluginNetwork" byCount:1];
          }

          [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.missedDeadlineCount" byCount:1];
        }
      }

      v24 = [obja countByEnumeratingWithState:&v41 objects:v64 count:16];
    }

    while (v24);
  }

  objc_autoreleasePoolPop(context);
}

- (void)runActivitiesAndRemoveUnknown:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  [(_DASDaemon *)self runActivities:v4];
  v5 = +[NSMutableSet set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v46;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v46 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v45 + 1) + 8 * i);
        if (([v11 delayedStart] & 1) == 0)
        {
          if ([v11 requestsApplicationLaunch])
          {
            v12 = [(_DASDaemon *)self clientForActivity:v11];

            if (!v12)
            {
              v13 = [_DASDaemonLogger logForCategory:@"lifecycle"];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v53 = v11;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Launch Task %@ has no known client", buf, 0xCu);
              }

              [(_DASDaemon *)self activityCompleted:v11];
              [v5 addObject:v11];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v8);
  }

  [v6 minusSet:v5];
  os_unfair_recursive_lock_lock_with_options();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v14 = self->_runningTasks;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
LABEL_16:
    v18 = 0;
    while (1)
    {
      if (*v42 != v17)
      {
        objc_enumerationMutation(v14);
      }

      [v6 removeObject:*(*(&v41 + 1) + 8 * v18)];
      if (![v6 count])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v16)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  os_unfair_recursive_lock_unlock();
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = [v6 copy];
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        if ([v24 delayedStart])
        {
          [v6 removeObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v21);
  }

  if ([v6 count])
  {
    v25 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v6;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No XPC Connection to client for activities: %@", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v6;
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v33 + 1) + 8 * k);
          if ([v31 requestsApplicationLaunch])
          {
            [(_DASDaemon *)self activityCompleted:v31];
          }

          else if (([v31 requestsExtensionLaunch] & 1) == 0)
          {
            [(_DASDaemon *)self activityCanceled:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v28);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (void)clearRecentlyLaunchedApps
{
  context = objc_autoreleasePoolPush();
  v3 = self->_recentlyLaunchedApps;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->_recentlyLaunchedApps count]>= 0x1A)
  {
    v4 = [(NSMutableDictionary *)self->_recentlyLaunchedApps allKeys];
    v5 = +[NSDate date];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v7)
    {
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [(NSMutableDictionary *)self->_recentlyLaunchedApps objectForKeyedSubscript:v10];
          [v5 timeIntervalSinceDate:v11];
          v13 = v12 > 450.0;

          if (v13)
          {
            [(NSMutableDictionary *)self->_recentlyLaunchedApps removeObjectForKey:v10];
            [(NSCountedSet *)self->_launchesPerApp removeObject:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    if ([(NSMutableDictionary *)self->_recentlyLaunchedApps count]>= 0x1A)
    {
      v14 = [(NSMutableDictionary *)self->_recentlyLaunchedApps allKeys];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = v14;
      v15 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v15)
      {
        v16 = *v26;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v6);
            }

            v18 = *(*(&v25 + 1) + 8 * j);
            v19 = [(NSMutableDictionary *)self->_recentlyLaunchedApps objectForKeyedSubscript:v18];
            [v5 timeIntervalSinceDate:v19];
            v21 = v20 > 225.0;

            if (v21)
            {
              [(NSMutableDictionary *)self->_recentlyLaunchedApps removeObjectForKey:v18];
              [(NSCountedSet *)self->_launchesPerApp removeObject:v18];
            }
          }

          v15 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v15);
      }

      while ([(NSMutableDictionary *)self->_recentlyLaunchedApps count]>= 0x1A)
      {
        v22 = [(NSMutableDictionary *)self->_recentlyLaunchedApps allKeys];

        v23 = [v22 objectAtIndex:{arc4random_uniform(objc_msgSend(v22, "count"))}];
        [(NSMutableDictionary *)self->_recentlyLaunchedApps removeObjectForKey:v23];
        [(NSCountedSet *)self->_launchesPerApp removeObject:v23];

        v6 = v22;
      }
    }
  }

  objc_sync_exit(v3);

  objc_autoreleasePoolPop(context);
}

- (void)runLaunchTasks:(id)a3 forApplication:(id)a4 forApplicationURL:(id)a5 onLaunch:(id)a6 onCompletion:(id)a7 onFailure:(id)a8
{
  v14 = a3;
  v90 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = os_transaction_create();
  oslog = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v122 = v14;
    v123 = 2112;
    v124 = v90;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Running launch tasks: %@ for application: %@", buf, 0x16u);
  }

  v88 = dispatch_group_create();
  v20 = +[NSMutableDictionary dictionary];
  v87 = +[NSMutableSet set];
  if (byte_10020B7D0)
  {
    v67 = v20;
    v68 = v19;
    v72 = v18;
    v69 = v17;
    v70 = v15;
    v91 = +[NSMutableDictionary dictionary];
    v80 = +[NSMutableDictionary dictionary];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v71 = v14;
    obj = v14;
    v21 = [obj countByEnumeratingWithState:&v111 objects:v119 count:16];
    if (!v21)
    {
      goto LABEL_30;
    }

    v23 = v21;
    v86 = *v112;
    v24 = _DASLaunchReasonBackgroundFetch;
    v84 = _DASLaunchReasonBackgroundRemoteNotification;
    v83 = _DASLaunchReasonNSURLSessionComplete;
    v79 = _DASLaunchReasonSignificantLocationChange;
    v78 = _DASLaunchReasonHealthKit;
    v76 = _DASLaunchReasonBackgroundRefresh;
    v75 = _DASLaunchReasonBackgroundProcessing;
    v74 = _DASLaunchReasonHealthResearch;
    v77 = _DASLaunchOptionsSignificantLocationChange;
    v81 = _DASLaunchOptionsNSURLSession;
    v82 = _DASRemoteNotificationPayloadKey;
    *&v22 = 138412546;
    v66 = v22;
    while (1)
    {
      v25 = 0;
      do
      {
        if (*v112 != v86)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v111 + 1) + 8 * v25);
        [(_DASDaemon *)self moveActivityToPrerunning:v26, v66];
        v105[0] = _NSConcreteStackBlock;
        v105[1] = 3221225472;
        v105[2] = sub_1000D0910;
        v105[3] = &unk_1001B8538;
        v27 = oslog;
        v106 = v27;
        v107 = v90;
        v108 = v26;
        v109 = v88;
        v110 = self;
        v28 = objc_retainBlock(v105);
        v29 = [v26 launchReason];
        v30 = [v29 isEqualToString:v24];

        if (v30)
        {
          v31 = [[UISFetchContentInBackgroundAction alloc] initWithHandler:v28];
          v32 = [v26 uuid];
          v33 = v91;
          v34 = v31;
          v35 = v32;
          goto LABEL_11;
        }

        v36 = [v26 launchReason];
        v37 = [v36 isEqualToString:v84];

        if (v37)
        {
          v38 = [v26 userInfo];
          v32 = [v38 objectForKeyedSubscript:v82];

          v31 = [[UISHandleRemoteNotificationAction alloc] initWithRemoteNotificationPayload:v32 withHandler:v28];
          v39 = [v26 uuid];
          [v91 setObject:v31 forKeyedSubscript:v39];

          goto LABEL_14;
        }

        v41 = [v26 launchReason];
        v42 = [v41 isEqualToString:v83];

        if (v42)
        {
          v43 = [v26 userInfo];
          v44 = [v43 objectForKeyedSubscript:v81];

          if (v44)
          {
            v31 = [v26 userInfo];
            v32 = [v31 objectForKeyedSubscript:v81];
            v33 = v80;
            v34 = v32;
            v35 = v81;
LABEL_11:
            [v33 setObject:v34 forKeyedSubscript:v35];
LABEL_14:
          }

LABEL_15:
          v40 = [v26 launchReason];
          [v87 addObject:v40];
          goto LABEL_16;
        }

        v45 = [v26 launchReason];
        v46 = [v45 isEqualToString:v79];

        if (v46)
        {
          v31 = [v26 userInfo];
          v32 = [v31 objectForKeyedSubscript:v77];
          [v80 addEntriesFromDictionary:v32];
          goto LABEL_14;
        }

        v47 = [v26 launchReason];
        v48 = [v47 isEqualToString:v78];

        if (v48)
        {
          goto LABEL_15;
        }

        v49 = [v26 launchReason];
        v50 = [v49 isEqualToString:v76];

        if (v50)
        {
          goto LABEL_15;
        }

        v51 = [v26 launchReason];
        v52 = [v51 isEqualToString:v75];

        if (v52)
        {
          goto LABEL_15;
        }

        v53 = [v26 launchReason];
        v54 = [v53 isEqualToString:v74];

        if (v54)
        {
          goto LABEL_15;
        }

        v40 = v27;
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          v55 = [v26 launchReason];
          *buf = v66;
          v122 = v55;
          v123 = 2112;
          v124 = v90;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Encountered unexpected launch reason %@ for %@", buf, 0x16u);
        }

LABEL_16:

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v56 = [obj countByEnumeratingWithState:&v111 objects:v119 count:16];
      v23 = v56;
      if (!v56)
      {
LABEL_30:

        v57 = [v91 allValues];
        v20 = v67;
        [v67 setObject:v57 forKeyedSubscript:FBSOpenApplicationOptionKeyActions];

        if (![(_DASBARScheduler *)self->_barScheduler applicationStateRequiresImmediateDelivery:v90])
        {
          [v67 setObject:&off_1001CA468 forKeyedSubscript:FBSOpenApplicationOptionKeyLaunchIntent];
        }

        [v67 setObject:v80 forKeyedSubscript:FBSOpenApplicationOptionKeyPayloadOptions];
        v15 = v70;
        v19 = v68;
        v17 = v69;
        v18 = v72;
        if ([v87 count])
        {
          activityLaunchQueue = self->_activityLaunchQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000D0B6C;
          block[3] = &unk_1001B8600;
          v93 = v68;
          v94 = v88;
          v95 = self;
          v96 = v90;
          v97 = v70;
          v98 = v67;
          v99 = oslog;
          v102 = v72;
          v103 = v16;
          v100 = obj;
          v101 = v91;
          v104 = v69;
          dispatch_async(activityLaunchQueue, block);
        }

        else
        {
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            sub_10012A3C4();
          }

          v69[2](v69);
        }

        v14 = v71;

        goto LABEL_48;
      }
    }
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "UIKit is not enabled!", buf, 2u);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v91 = v14;
  v59 = [v91 countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (v59)
  {
    v60 = v59;
    v73 = v18;
    v61 = v16;
    v62 = v15;
    v63 = v20;
    v64 = *v116;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v116 != v64)
        {
          objc_enumerationMutation(v91);
        }

        [(_DASDaemon *)self activityCanceled:*(*(&v115 + 1) + 8 * i)];
      }

      v60 = [v91 countByEnumeratingWithState:&v115 objects:v120 count:16];
    }

    while (v60);
    v20 = v63;
    v15 = v62;
    v16 = v61;
    v18 = v73;
  }

LABEL_48:
}

- (void)launchApplication:(id)a3 applicationURL:(id)a4 additionalOptions:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = a5;
  v11 = [_DASDaemonLogger logForCategory:@"bar"];
  v12 = [NSMutableDictionary dictionaryWithDictionary:v10];

  v25 = FBSOpenApplicationOptionKeyActivateSuspended;
  v26 = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [v12 addEntriesFromDictionary:v13];

  v14 = [FBSOpenApplicationOptions optionsWithDictionary:v12];
  v15 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Launching with FBSOpenApplicationService for application %@", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D1CE8;
  v19[3] = &unk_1001B8628;
  v20 = v11;
  v21 = v8;
  v22 = v9;
  v16 = v9;
  v17 = v8;
  v18 = v11;
  [v15 openApplication:v17 withOptions:v14 completion:v19];
}

- (void)runExtensionLaunchActivities:(id)a3
{
  v4 = a3;
  v23 = os_transaction_create();
  v5 = +[NSDate date];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    v10 = _DASExtensionLaunchReasonMLCompute;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        [(_DASDaemon *)self prepareActivityForStart:v12 atTime:v5];
        v13 = [v12 launchReason];
        v14 = [v13 isEqualToString:v10];

        if (v14)
        {
          v15 = [v12 extensionIdentifier];
          v16 = [_DASPlugin pluginForIdentifier:v15 ofType:@"com.apple.ml-extension"];

          if (v16)
          {
            [v16 setPluginDelegate:self];
            v17 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v30 = v12;
              v31 = 2112;
              v32 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Activity: %@ requesting launch of extension: %@", buf, 0x16u);
            }

            [v16 performActivity:v12];
            if ([v12 pid] > 0)
            {
              v18 = [v12 duration] * 1.5;
              if (v18 >= _DASActivityDurationLong)
              {
                v18 = _DASActivityDurationLong;
              }

              v19 = dispatch_time(0, (v18 * 1000000000.0));
              evaluationQueue = self->_evaluationQueue;
              block[0] = _NSConcreteStackBlock;
              block[1] = 3221225472;
              block[2] = sub_1000D2268;
              block[3] = &unk_1001B56E0;
              block[4] = v12;
              block[5] = self;
              dispatch_after(v19, evaluationQueue, block);
              goto LABEL_21;
            }

            v22 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v12;
              _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Extension failed to launch for activity %@", buf, 0xCu);
            }

            [v16 unload];
          }

          else
          {
            v21 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v30 = v12;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Unable to find extension for activity %@", buf, 0xCu);
            }
          }

          [(_DASDaemon *)self activityCompleted:v12];
LABEL_21:

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }
}

- (void)addPendingActivity:(id)a3 toGroup:(id)a4 withReason:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock(&self->_groupLock);
  v11 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v9];
  [v11 removeObject:v8];

  v12 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:v9];
  [v12 removeObject:v8];

  v13 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v9];
    v17 = 138413058;
    v18 = v10;
    v19 = 2114;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2048;
    v24 = [v14 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NO LONGER RUNNING %@ %{public}@ ...Tasks running in group [%@] are %ld!", &v17, 0x2Au);
  }

  v15 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v9];
  if (v15)
  {
    v16 = v15;
    [v15 addObject:v8];
  }

  else
  {
    v16 = [NSMutableSet setWithObject:v8];
    [(NSMutableDictionary *)self->_groupToPendingTasks setObject:v16 forKeyedSubscript:v9];
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)moveToPending:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableSet *)self->_runningTasks count];
  [(NSMutableSet *)self->_prerunningTasks removeObject:v4];
  [(NSMutableSet *)self->_runningTasks removeObject:v4];
  [(NSMutableSet *)self->_submittedTasks removeObject:v4];
  [(NSMutableSet *)self->_pendingTasks addObject:v4];

  if (v5)
  {
    [(NSMutableSet *)self->_runningTasks count];
  }

  v6 = [_DASDaemonLogger logForCategory:@"runningTasks"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A598(&self->_runningTasks);
  }

  os_unfair_recursive_lock_unlock();
}

- (void)runApplicationLaunchActivities:(id)a3
{
  v4 = a3;
  v42 = os_transaction_create();
  v5 = +[NSMutableSet set];
  v6 = +[NSDate date];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
  if (v7)
  {
    v8 = *v84;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v84 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v83 + 1) + 8 * i);
        if ([v10 requestsApplicationLaunch])
        {
          v11 = [v10 relatedApplications];
          v12 = [v11 firstObject];

          if (v12)
          {
            [v5 addObject:v12];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v83 objects:v95 count:16];
    }

    while (v7);
  }

  v43 = [obj mutableCopy];
  v51 = +[NSMutableSet set];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v41 = v5;
  v45 = [v41 countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (v45)
  {
    v44 = *v80;
    do
    {
      for (j = 0; j != v45; j = j + 1)
      {
        if (*v80 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v48 = *(*(&v79 + 1) + 8 * j);
        v52 = +[NSMutableSet set];
        os_unfair_recursive_lock_lock_with_options();
        v49 = [(NSMutableSet *)self->_runningTasks copy];
        os_unfair_recursive_lock_unlock();
        os_unfair_recursive_lock_lock_with_options();
        v13 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v48];
        v14 = [v13 copy];

        os_unfair_recursive_lock_unlock();
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v75 objects:v93 count:16];
        if (v16)
        {
          v17 = *v76;
          do
          {
            for (k = 0; k != v16; k = k + 1)
            {
              if (*v76 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v75 + 1) + 8 * k);
              if ([v19 wasForceRun])
              {
LABEL_23:
                if ([(_DASBARScheduler *)self->_barScheduler backgroundLaunchAllowedForBGTaskActivity:v19])
                {
                  [v52 addObject:v19];
                  [v19 setStartDate:v6];
                  v20 = [_DASDaemonLogger logForCategory:@"lifecycle"];
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v90 = v19;
                    v91 = 2112;
                    v92 = v48;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Activity: %@ requesting launch of application: %@", buf, 0x16u);
                  }
                }

                else
                {
                  [v51 addObject:v19];
                  v20 = [_DASDaemonLogger logForCategory:@"lifecycle"];
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v90 = v19;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Background launch not allowed for %@, cancelling", buf, 0xCu);
                  }
                }

                goto LABEL_41;
              }

              if ([v19 timewiseEligibleAtDate:v6])
              {
                if ([v49 containsObject:v19])
                {
                  v20 = [_DASDaemonLogger logForCategory:@"lifecycle"];
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v90 = v19;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Skipping activity %@ because it's already running", buf, 0xCu);
                  }
                }

                else
                {
                  v74 = 0;
                  [_DASConditionScore scoreForActivity:v19 withState:self->_context response:&v74];
                  if (v21 != 0.0)
                  {
                    goto LABEL_23;
                  }

                  v20 = [_DASDaemonLogger logForCategory:@"lifecycle"];
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v90 = v19;
                    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Skipping activity %@ because it was scored too low", buf, 0xCu);
                  }
                }
              }

              else
              {
                v20 = [_DASDaemonLogger logForCategory:@"lifecycle"];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v90 = v19;
                  _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Skipping activity %@ because it's not timewise eligible", buf, 0xCu);
                }
              }

LABEL_41:
            }

            v16 = [v15 countByEnumeratingWithState:&v75 objects:v93 count:16];
          }

          while (v16);
        }

        if ([v52 count])
        {
          [v43 minusSet:v52];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_1000D2FC4;
          v72[3] = &unk_1001B56B8;
          v72[4] = self;
          v72[5] = v48;
          v22 = v52;
          v73 = v22;
          v23 = objc_retainBlock(v72);
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = sub_1000D32B0;
          v67[3] = &unk_1001B5E90;
          v24 = v42;
          v68 = v24;
          v69 = self;
          v70 = v48;
          v25 = v22;
          v71 = v25;
          v26 = objc_retainBlock(v67);
          v62[0] = _NSConcreteStackBlock;
          v62[1] = 3221225472;
          v62[2] = sub_1000D35E8;
          v62[3] = &unk_1001B5E90;
          v63 = v24;
          v27 = v25;
          v64 = v27;
          v65 = self;
          v66 = v48;
          v28 = objc_retainBlock(v62);
          [(_DASDaemon *)self runLaunchTasks:v27 forApplication:v48 forApplicationURL:0 onLaunch:v23 onCompletion:v26 onFailure:v28];
          v29 = self->_recentlyLaunchedApps;
          objc_sync_enter(v29);
          [(NSMutableDictionary *)self->_recentlyLaunchedApps setObject:v6 forKeyedSubscript:v48];
          [(NSCountedSet *)self->_launchesPerApp addObject:v48];
          objc_sync_exit(v29);

          [(_DASDaemon *)self clearRecentlyLaunchedApps];
        }
      }

      v45 = [v41 countByEnumeratingWithState:&v79 objects:v94 count:16];
    }

    while (v45);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v50 = v43;
  v30 = [v50 countByEnumeratingWithState:&v58 objects:v88 count:16];
  if (v30)
  {
    v53 = *v59;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v59 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v32 = *(*(&v58 + 1) + 8 * m);
        if (_os_feature_enabled_impl())
        {
          v33 = [v32 internalGroupNames];
          v34 = [v33 count] == 0;

          if (!v34)
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v35 = [v32 internalGroupNames];
            v36 = [v35 countByEnumeratingWithState:&v54 objects:v87 count:16];
            if (v36)
            {
              v37 = *v55;
              do
              {
                for (n = 0; n != v36; n = n + 1)
                {
                  if (*v55 != v37)
                  {
                    objc_enumerationMutation(v35);
                  }

                  [(_DASDaemon *)self addPendingActivity:v32 toGroup:*(*(&v54 + 1) + 8 * n) withReason:@"[Not in application -> activity mapping]"];
                  [(_DASDaemon *)self moveToPending:v32];
                }

                v36 = [v35 countByEnumeratingWithState:&v54 objects:v87 count:16];
              }

              while (v36);
            }
          }
        }

        else
        {
          v39 = [v32 groupName];

          if (v39)
          {
            v40 = [v32 groupName];
            [(_DASDaemon *)self addPendingActivity:v32 toGroup:v40 withReason:@"[Not in application -> activity mapping]"];

            [(_DASDaemon *)self moveToPending:v32];
          }
        }
      }

      v30 = [v50 countByEnumeratingWithState:&v58 objects:v88 count:16];
    }

    while (v30);
  }

  [(_DASDaemon *)self cancelActivities:v51];
}

- (void)suspendPlugin:(id)a3
{
  v4 = a3;
  v5 = [v4 extensionIdentifier];
  v6 = [_DASPlugin existingPluginForIdentifier:v5 ofType:@"com.apple.ml-extension"];

  v7 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A680(v6);
    }

    [v6 suspend];
    v9 = dispatch_time(0, 10000000000);
    evaluationQueue = self->_evaluationQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D3AB4;
    v11[3] = &unk_1001B56E0;
    v12 = v4;
    v13 = v6;
    dispatch_after(v9, evaluationQueue, v11);

    v8 = v12;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not suspending activity %{public}@ - extension already gone", buf, 0xCu);
  }
}

- (void)warnBGTaskClientsForActivitiesAboutToExpire:(id)a3
{
  v4 = a3;
  v5 = [(_DASDaemon *)self connectedBGTaskClients];
  objc_sync_enter(v5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(_DASDaemon *)self connectedBGTaskClients];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10) willExpireBGTaskActivities:v4];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v5);
}

- (void)deferActivities:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v19 = a4;
  v7 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [v6 count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deferring %lu activities", buf, 0xCu);
  }

  v8 = +[NSMutableSet set];
  v9 = +[NSDate now];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [(_DASDaemon *)self getActivityRunningWithName:v15];
        if (v16)
        {
          [v8 addObject:v16];
          [(_DASDaemon *)self updateSuspendRequestDate:v9 forActivity:v16 withReason:0];
        }

        else
        {
          v17 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v15;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Unable to find activity %@ to defer", buf, 0xCu);
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  v18 = [v8 count] != 0;
  [(_DASDaemon *)self suspendActivities:v8];
  v19[2](v19, v18);
}

- (void)suspendActivity:(id)a3
{
  v4 = a3;
  [(_DASDaemon *)self recordToTaskRegistry:v4 lifeCycleStateName:@"suspended"];
  v5 = [NSSet setWithObject:v4];

  [(_DASDaemon *)self suspendActivities:v5];
}

- (void)suspendAndCancelActivitiesWithIdentifiers:(id)a3 denialReason:(unint64_t)a4
{
  v5 = a3;
  v6 = +[NSMutableSet set];
  v7 = [NSMutableSet setWithArray:v5];
  os_unfair_recursive_lock_lock_with_options();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = self;
  v8 = self->_runningTasks;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v5 containsObject:v14];

        if (v15)
        {
          [v13 setLastDenialValue:a4];
          [v6 addObject:v13];
          v16 = [v13 uuid];
          [v7 removeObject:v16];
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)v17 suspendActivities:v6];
  [(_DASDaemon *)v17 cancelActivitiesWithIdentifiers:v7];
}

- (void)informObserversOfActivitiesSubmitted:(id)a3
{
  v4 = a3;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4220;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(activityLifecycleObservingRegistryQueue, v7);
}

- (void)informObserversOfActivitiesNowRunning:(id)a3
{
  v4 = a3;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D43B0;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(activityLifecycleObservingRegistryQueue, v7);
}

- (void)informObserversOfActivitiesSuspended:(id)a3
{
  v4 = a3;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4540;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(activityLifecycleObservingRegistryQueue, v7);
}

- (void)informObserversOfActivitiesCompleted:(id)a3 withSuccess:(BOOL)a4
{
  v6 = a3;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D46E0;
  block[3] = &unk_1001B6A30;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(activityLifecycleObservingRegistryQueue, block);
}

- (void)suspendActivities:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Suspending: %{public}@", buf, 0xCu);
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000D4C10;
    v43[3] = &unk_1001B84C0;
    v6 = v4;
    v44 = v6;
    [(_DASDaemon *)self allClientsDo:v43];
    [(_DASDaemon *)self informObserversOfActivitiesSuspended:v6];
    v7 = [(_DASDaemon *)self connectedBGTaskClients];
    v8 = [v7 count];

    if (v8)
    {
      [(_DASDaemon *)self warnBGTaskClientsForActivitiesAboutToExpire:v6];
      v9 = [v6 copy];
      v10 = dispatch_time(0, 5000000000);
      evaluationQueue = self->_evaluationQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D4C1C;
      block[3] = &unk_1001B56E0;
      block[4] = self;
      v42 = v9;
      v12 = v9;
      dispatch_after(v10, evaluationQueue, block);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          if ([v18 requestsExtensionLaunch])
          {
            [(_DASDaemon *)self suspendPlugin:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v15);
    }

    v19 = [v13 copy];
    v20 = +[NSDate date];
    v21 = +[_DASBootTimePolicy getDeviceBootTime];
    [v20 timeIntervalSinceDate:v21];
    v23 = v22;

    if (+[_DASConfig isInternalBuild]&& v23 >= 300.0)
    {
      v24 = +[_DASPlistParser sharedInstance];
      v25 = [v24 suspensionThreshold];
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = 61;
      }

      v27 = dispatch_time(0, 1000000000 * v26);
      v28 = self->_evaluationQueue;
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1000D4E78;
      v35[3] = &unk_1001B5DC0;
      v29 = v36;
      v35[4] = self;
      v36[0] = v19;
      v36[1] = v26;
      v30 = v19;
      v31 = v35;
    }

    else
    {
      v27 = dispatch_time(0, 10000000000);
      v28 = self->_evaluationQueue;
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000D534C;
      v33[3] = &unk_1001B56E0;
      v29 = &v34;
      v33[4] = self;
      v34 = v19;
      v32 = v19;
      v31 = v33;
    }

    dispatch_after(v27, v28, v31);
  }
}

- (void)cancelActivities:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Daemon Canceling Activities: %{public}@", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(_DASDaemon *)self activityCanceled:*(*(&v13 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D5524;
    v11[3] = &unk_1001B84C0;
    v12 = v6;
    [(_DASDaemon *)self allClientsDo:v11];
  }
}

- (void)cancelActivitiesWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = self->_runningTasks;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [v11 uuid];
        v13 = [v4 containsObject:v12];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v8);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = self->_prerunningTasks;
  v15 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * j);
        v20 = [v19 uuid];
        v21 = [v4 containsObject:v20];

        if (v21)
        {
          [v5 addObject:v19];
        }
      }

      v16 = [(NSMutableSet *)v14 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v16);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = self->_pendingTasks;
  v23 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v31;
    do
    {
      for (k = 0; k != v24; k = k + 1)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v30 + 1) + 8 * k);
        v28 = [v27 uuid];
        v29 = [v4 containsObject:v28];

        if (v29)
        {
          [v5 addObject:v27];
        }
      }

      v24 = [(NSMutableSet *)v22 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v24);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)self cancelActivities:v5];
}

- (void)cancelActivitiesWithReason:(id)a3 cancellationReason:(int64_t)a4
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Daemon Canceling Activities: %{public}@", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [(_DASDaemon *)self activityCanceledWithReason:*(*(&v15 + 1) + 8 * v12) expirationReason:a4];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000D59F0;
    v13[3] = &unk_1001B84C0;
    v14 = v8;
    [(_DASDaemon *)self allClientsDo:v13];
  }
}

- (void)activity:(id)a3 blockedOnPolicies:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D5AB8;
  v8[3] = &unk_1001B8678;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(_DASDaemon *)self allClientsDo:v8];
}

- (void)activity:(id)a3 runWithoutHonoringPolicies:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D5B80;
  v8[3] = &unk_1001B8678;
  v9 = a3;
  v10 = a4;
  v6 = v10;
  v7 = v9;
  [(_DASDaemon *)self allClientsDo:v8];
}

- (id)activityMatchingPredicate:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_pendingTasks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v4 evaluateWithObject:{v9, v11}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (id)getActivityWithUUID:(id)a3
{
  v4 = [NSPredicate predicateWithFormat:@"self.uuid = %@", a3];
  v5 = [(_DASDaemon *)self activityMatchingPredicate:v4];

  return v5;
}

- (id)getActivityWithName:(id)a3
{
  v4 = [NSPredicate predicateWithFormat:@"self.name = %@", a3];
  v5 = [(_DASDaemon *)self activityMatchingPredicate:v4];

  return v5;
}

- (id)getActivityRunningWithName:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_runningTasks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v4];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v8;
}

- (id)getActivityRunningWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_runningTasks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 uuid];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_recursive_lock_unlock();

  return v8;
}

- (void)addConstraint:(unint64_t)a3 forSchedulingPriority:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_constraintsLock);
  if (_DASSchedulingPriorityBackground >= a4)
  {
    maintenanceConstraints = self->_maintenanceConstraints;
    if ((maintenanceConstraints & a3) != 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_maintenanceConstraints;
    v9 = 600;
  }

  else
  {
    maintenanceConstraints = self->_utilityConstraints;
    if ((maintenanceConstraints & a3) != 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_utilityConstraints;
    v9 = 592;
  }

  *p_maintenanceConstraints = maintenanceConstraints | a3;
  v10 = [NSNumber numberWithUnsignedInteger:?];
  [(_CDLocalContext *)self->_context setObject:v10 forKeyedSubscript:*(&self->super.isa + v9)];

LABEL_7:

  os_unfair_lock_unlock(&self->_constraintsLock);
}

- (void)removeConstraint:(unint64_t)a3 forSchedulingPriority:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_constraintsLock);
  if (_DASSchedulingPriorityBackground >= a4)
  {
    maintenanceConstraints = self->_maintenanceConstraints;
    if ((maintenanceConstraints & a3) == 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_maintenanceConstraints;
    v9 = 600;
  }

  else
  {
    maintenanceConstraints = self->_utilityConstraints;
    if ((maintenanceConstraints & a3) == 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_utilityConstraints;
    v9 = 592;
  }

  *p_maintenanceConstraints = maintenanceConstraints & ~a3;
  v10 = [NSNumber numberWithUnsignedInteger:?];
  [(_CDLocalContext *)self->_context setObject:v10 forKeyedSubscript:*(&self->super.isa + v9)];

LABEL_7:

  os_unfair_lock_unlock(&self->_constraintsLock);
}

- (void)updateiCPLTasksBlocked:(unint64_t)a3
{
  v5 = +[_DASPhotosPolicy keyPathForPhotosIsBlocked];
  v6 = +[_DASPhotosPolicy keyPathForBlockedStartDate];
  v7 = +[_DASPhotosPolicy keyPathForPhotosIsUnBlocked];
  v8 = v5;
  objc_sync_enter(v8);
  photosIsBlocked = self->_photosIsBlocked;
  if (a3)
  {
    if (!photosIsBlocked)
    {
      v10 = +[NSDate date];
      [(_CDLocalContext *)self->_context setObject:v10 forKeyedSubscript:v6];
    }
  }

  else if (photosIsBlocked)
  {
    v11 = [(_CDLocalContext *)self->_context objectForKeyedSubscript:v6];
    v12 = +[NSDate date];
    [v12 timeIntervalSinceDate:v11];
    v14 = v13;

    v15 = fmax(v14, 0.0);
    [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.dasd.icpl-blocked" byCount:llround(v15)];
    v16 = [_DASDaemonLogger logForCategory:@"stats"];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134217984;
      v29 = v15 / 60.0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "iCPL gated for %5.2f mins", &v28, 0xCu);
    }

    v17 = +[NSDate distantFuture];
    [(_CDLocalContext *)self->_context setObject:v17 forKeyedSubscript:v6];
  }

  v18 = [NSNumber numberWithUnsignedInteger:a3];
  [(_CDLocalContext *)self->_context setObject:v18 forKeyedSubscript:v8];
  v19 = a3 == 0;

  self->_photosIsBlocked = a3;
  objc_sync_exit(v8);

  v20 = v7;
  objc_sync_enter(v20);
  if (v19)
  {
    if ([_DASPhotosPolicy isPhotosSyncOverriddenWithContext:self->_context])
    {
      [(_CDLocalContext *)self->_context setObject:&off_1001CA480 forKeyedSubscript:v20];
      *&v21 = COERCE_DOUBLE(@"Sync Now Override");
    }

    else
    {
      v22 = +[_DASPhotosPolicy policyInstance];
      v23 = [v22 intentSyncIsEngaged];

      context = self->_context;
      if (v23)
      {
        [(_CDLocalContext *)context setObject:&off_1001CA498 forKeyedSubscript:v20];
        *&v21 = COERCE_DOUBLE(@"Remote Device Intent");
      }

      else
      {
        [(_CDLocalContext *)context setObject:&off_1001CA4B0 forKeyedSubscript:v20];
        *&v21 = COERCE_DOUBLE(@"DAS");
      }
    }

    v25 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 138412290;
      v29 = *&v21;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Reporting photos activity no longer blocked due to: %@", &v28, 0xCu);
    }
  }

  else
  {
    [(_CDLocalContext *)self->_context setObject:&off_1001CA4C8 forKeyedSubscript:v20];
  }

  v26 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    [(_CDLocalContext *)self->_context objectForKeyedSubscript:v20];
    v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v28 = 138412290;
    v29 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Reporting photos activity unBlockedOptions: %@", &v28, 0xCu);
  }

  objc_sync_exit(v20);
}

- (void)reportActivity:(id)a3 wasEvaluatedWithDecision:(int64_t)a4
{
  v6 = a3;
  if (![_DASPolicyResponse isPolicyDecisionProceedable:a4]&& [_DASPhotosPolicy isPhotosSyncActivity:v6])
  {
    v54 = self;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    obj = v6;
    objc_sync_enter(obj);
    v7 = [NSDictionary alloc];
    v8 = [obj policyResponseMetadata];
    v9 = [v7 initWithDictionary:v8 copyItems:1];

    objc_sync_exit(obj);
    v10 = +[_DASLowPowerModePolicy policyInstance];
    v11 = [v10 policyName];
    v12 = [v9 objectForKeyedSubscript:v11];
    v53 = [v12 reason];

    v13 = +[_DASLowPowerModePolicy policyInstance];
    v14 = [v13 policyName];
    v15 = [v9 objectForKeyedSubscript:v14];
    v52 = [v15 reason];

    v16 = +[_DASPhotosPolicy policyInstance];
    v17 = [v16 policyName];
    v18 = [v9 objectForKeyedSubscript:v17];
    v51 = [v18 reason];

    v19 = +[_DASPhotosPolicy policyInstance];
    v20 = [v19 policyName];
    v21 = [v9 objectForKeyedSubscript:v20];
    v50 = [v21 reason];

    v22 = +[_DASNetworkQualityPolicy policyInstance];
    v23 = [v22 policyName];
    v24 = [v9 objectForKeyedSubscript:v23];
    v49 = [v24 reason];

    v25 = +[_DASNetworkQualityPolicy policyInstance];
    v26 = [v25 policyName];
    v27 = [v9 objectForKeyedSubscript:v26];
    v28 = [v27 reason];

    v29 = +[_DASThermalPolicy policyInstance];
    v30 = [v29 policyName];
    v31 = [v9 objectForKeyedSubscript:v30];
    v32 = ([v31 reason] & 0x18) != 0;

    v33 = +[_DASRequiresPluggedInPolicy policyInstance];
    v34 = [v33 policyName];
    v35 = [v9 objectForKeyedSubscript:v34];
    LOBYTE(v29) = [v35 reason];

    v36 = +[_DASDeviceActivityPolicy policyInstance];
    v37 = [v36 policyName];
    v38 = [v9 objectForKeyedSubscript:v37];
    LOBYTE(v33) = [v38 reason];

    v39 = +[_DASDeviceActivityPolicy policyInstance];
    v40 = [v39 policyName];
    v41 = [v9 objectForKeyedSubscript:v40];
    LOBYTE(v36) = [v41 reason];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000D6D9C;
    v58[3] = &unk_1001B86A0;
    v61 = v53 & 1;
    v60 = &v71;
    v62 = v51 & 1;
    v63 = (v52 & 2) != 0;
    v64 = (v50 & 2) != 0;
    v65 = (v49 & 2) != 0;
    v66 = (v28 & 4) != 0;
    v42 = v9;
    v59 = v42;
    v67 = v32;
    v68 = v29 & 1;
    v69 = v33 & 1;
    v70 = (v36 & 2) != 0;
    [v42 enumerateKeysAndObjectsUsingBlock:v58];
    v43 = v72[3];
    if (v43 != v54->_photosIsBlocked)
    {
      if (v43)
      {
        v44 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [NSNumber numberWithUnsignedInteger:v72[3]];
          *buf = 138412802;
          v76 = v45;
          v77 = 2114;
          v78 = obj;
          v79 = 2112;
          v80 = v42;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Reporting photos activity blocked: %@ %{public}@ %@", buf, 0x20u);
        }

        [(_DASDaemon *)v54 updateiCPLTasksBlocked:v72[3]];
        if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:obj]&& [_DASPhotosPolicy shouldOverrideForIntentSync:v72[3] activity:obj]&& ![(_DASRemoteDeviceActivityMonitor *)v54->_remoteDeviceActivityMonitor isRegistered])
        {
          remoteDeviceActivityMonitor = v54->_remoteDeviceActivityMonitor;
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_1000D777C;
          v56[3] = &unk_1001B56E0;
          v56[4] = v54;
          v57 = obj;
          [(_DASRemoteDeviceActivityMonitor *)remoteDeviceActivityMonitor registerForRemoteDeviceActiveNotificationsWithChange:v56];
        }
      }

      else
      {
        v47 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [NSNumber numberWithUnsignedInteger:v54->_photosIsBlocked];
          *buf = 138543874;
          v76 = obj;
          v77 = 2112;
          v78 = v42;
          v79 = 2112;
          v80 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Reporting photos activity no longer blocked: %{public}@ %@ (was %@)", buf, 0x20u);
        }

        [(_DASDaemon *)v54 updateiCPLTasksBlocked:v72[3]];
        if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:obj]&& [(_DASRemoteDeviceActivityMonitor *)v54->_remoteDeviceActivityMonitor isRegistered])
        {
          [(_DASRemoteDeviceActivityMonitor *)v54->_remoteDeviceActivityMonitor unregisterForRemoteDeviceActiveNotifications];
        }
      }
    }

    _Block_object_dispose(&v71, 8);
  }
}

- (BOOL)pausedParametersApplyToActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASDaemon *)self pausedParameters];

  if (!v5)
  {
    v11 = 0;
    goto LABEL_82;
  }

  v6 = [(_DASDaemon *)self pausedParameters];
  v7 = [v6 objectForKeyedSubscript:@"validUntil"];
  [v7 doubleValue];
  v8 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  [v8 timeIntervalSinceNow];
  if (v9 < 0.0)
  {
    v10 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No longer pausing activities!", buf, 2u);
    }

    [(NSUserDefaults *)self->_testingDefaults removeObjectForKey:@"pausedParameters"];
    [(_DASDaemon *)self setPausedParameters:0];
    v11 = 0;
    goto LABEL_81;
  }

  v12 = [(_DASDaemon *)self pausedParameters];
  v13 = [v12 objectForKeyedSubscript:@"activities"];

  v14 = [v4 name];
  v15 = [v13 containsObject:v14];

  if (v15)
  {
    v16 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v4;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scheduling paused for activity: %@", buf, 0xCu);
    }

    v11 = 1;
    goto LABEL_80;
  }

  v56 = v13;
  v17 = [(_DASDaemon *)self pausedParameters];
  v18 = [v17 objectForKeyedSubscript:@"anyTypes"];

  v19 = [(_DASDaemon *)self pausedParameters];
  v20 = [v19 objectForKeyedSubscript:@"allTypes"];

  v21 = [(_DASDaemon *)self pausedParameters];
  v57 = [v21 objectForKeyedSubscript:@"exceptTypes"];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = v18;
  v22 = [v16 countByEnumeratingWithState:&v67 objects:v73 count:16];
  v58 = v20;
  if (v22)
  {
    v23 = v22;
    v24 = *v68;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v68 != v24)
        {
          objc_enumerationMutation(v16);
        }

        v26 = *(*(&v67 + 1) + 8 * i);
        if (![v26 isEqualToString:@"network"] || (objc_msgSend(v4, "requiresNetwork") & 1) == 0)
        {
          if (![v26 isEqualToString:@"userinitiated"] || (v27 = objc_msgSend(v4, "schedulingPriority"), v27 > _DASSchedulingPriorityUserInitiatedOvercommit))
          {
            if (![v26 isEqualToString:@"utility"] || (v28 = objc_msgSend(v4, "schedulingPriority"), v28 > _DASSchedulingPriorityDefault))
            {
              if (![v26 isEqualToString:@"maintenance"] || (v29 = objc_msgSend(v4, "schedulingPriority"), v29 > _DASSchedulingPriorityMaintenance))
              {
                if (![v26 isEqualToString:@"background"] || (v30 = objc_msgSend(v4, "schedulingPriority"), v30 > _DASSchedulingPriorityBackground))
                {
                  if ((![v26 isEqualToString:@"intensive"] || (objc_msgSend(v4, "isIntensive") & 1) == 0) && (!objc_msgSend(v26, "isEqualToString:", @"icpl") || !+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", v4)) && (!objc_msgSend(v26, "isEqualToString:", @"plugin") || (objc_msgSend(v4, "requiresPlugin") & 1) == 0) && (!objc_msgSend(v26, "isEqualToString:", @"inactivity") || (objc_msgSend(v4, "requiresDeviceInactivity") & 1) == 0))
                  {
                    if (![v26 isEqualToString:@"fastpass"])
                    {
                      continue;
                    }

                    v31 = [v4 fastPass];

                    if (!v31)
                    {
                      continue;
                    }
                  }
                }
              }
            }
          }
        }

        v11 = 1;
LABEL_78:
        v43 = v57;
        v20 = v58;
        goto LABEL_79;
      }

      v23 = [v16 countByEnumeratingWithState:&v67 objects:v73 count:16];
      v20 = v58;
    }

    while (v23);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v32 = v20;
  v33 = [v32 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (!v33)
  {
    goto LABEL_65;
  }

  v34 = v33;
  v35 = *v64;
  do
  {
    for (j = 0; j != v34; j = j + 1)
    {
      if (*v64 != v35)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v63 + 1) + 8 * j);
      if (![v37 isEqualToString:@"network"] || objc_msgSend(v4, "requiresNetwork"))
      {
        if (![v37 isEqualToString:@"userinitiated"] || (v38 = objc_msgSend(v4, "schedulingPriority"), v38 <= _DASSchedulingPriorityUserInitiatedOvercommit))
        {
          if (![v37 isEqualToString:@"utility"] || (v39 = objc_msgSend(v4, "schedulingPriority"), v39 <= _DASSchedulingPriorityDefault))
          {
            if (![v37 isEqualToString:@"maintenance"] || (v40 = objc_msgSend(v4, "schedulingPriority"), v40 <= _DASSchedulingPriorityMaintenance))
            {
              if (![v37 isEqualToString:@"background"] || (v41 = objc_msgSend(v4, "schedulingPriority"), v41 <= _DASSchedulingPriorityBackground))
              {
                if ((![v37 isEqualToString:@"intensive"] || objc_msgSend(v4, "isIntensive")) && (!objc_msgSend(v37, "isEqualToString:", @"icpl") || !+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", v4)) && (!objc_msgSend(v37, "isEqualToString:", @"plugin") || objc_msgSend(v4, "requiresPlugin")) && (!objc_msgSend(v37, "isEqualToString:", @"inactivity") || objc_msgSend(v4, "requiresDeviceInactivity")))
                {
                  if (![v37 isEqualToString:@"fastpass"])
                  {
                    continue;
                  }

                  v42 = [v4 fastPass];

                  if (v42)
                  {
                    continue;
                  }
                }
              }
            }
          }
        }
      }

      v11 = 0;
      goto LABEL_78;
    }

    v34 = [v32 countByEnumeratingWithState:&v63 objects:v72 count:16];
    v20 = v58;
  }

  while (v34);
LABEL_65:

  v43 = v57;
  if (![v57 count])
  {
    v11 = [v32 count] != 0;
    goto LABEL_79;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v44 = v57;
  v45 = [v44 countByEnumeratingWithState:&v59 objects:v71 count:16];
  if (!v45)
  {
    v11 = 1;
    goto LABEL_91;
  }

  v46 = v45;
  v47 = *v60;
  while (2)
  {
    v48 = 0;
    while (2)
    {
      if (*v60 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v59 + 1) + 8 * v48);
      v50 = [v4 activityType];
      v51 = [v50 isEqualToString:v49];

      if (v51)
      {
        v55 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = v4;
LABEL_89:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Not pausing for: %@", buf, 0xCu);
        }

LABEL_90:
        v43 = v57;

        v11 = 0;
        goto LABEL_91;
      }

      v52 = [v4 name];
      v53 = [v52 containsString:v49];

      if (v53)
      {
        v55 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = v4;
          goto LABEL_89;
        }

        goto LABEL_90;
      }

      if (v46 != ++v48)
      {
        continue;
      }

      break;
    }

    v46 = [v44 countByEnumeratingWithState:&v59 objects:v71 count:16];
    v11 = 1;
    v43 = v57;
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_91:

  v20 = v58;
LABEL_79:

  v13 = v56;
LABEL_80:

LABEL_81:
LABEL_82:

  return v11;
}

- (BOOL)testModeConstraintsApplyToActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASDaemon *)self testModeParameters];
  v6 = [v5 objectForKeyedSubscript:@"activities"];

  v7 = [v4 name];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Test Mode Applies To Activity: %@", buf, 0xCu);
    }

    v10 = 1;
    goto LABEL_27;
  }

  v11 = [(_DASDaemon *)self testModeParameters];
  v12 = [v11 objectForKeyedSubscript:@"activityClasses"];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = v12;
  v13 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v13)
  {
    v10 = 0;
    goto LABEL_26;
  }

  v14 = v13;
  v31 = v6;
  v32 = v4;
  v15 = *v34;
  v16 = _DASDiskSpacePolicy;
  v17 = @"photos";
LABEL_7:
  v18 = 0;
  while (1)
  {
    if (*v34 != v15)
    {
      objc_enumerationMutation(v9);
    }

    v19 = *(*(&v33 + 1) + 8 * v18);
    if (([v19 isEqualToString:{@"icpl", v31}] & 1) != 0 || objc_msgSend(v19, "isEqualToString:", v17))
    {
      if ([&v16[64] isiCPLActivity:v4])
      {
        v29 = +[_DASDaemonLogger defaultCategory];
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      goto LABEL_13;
    }

    if ([v19 isEqualToString:@"network"])
    {
      break;
    }

    [v4 name];
    v20 = v16;
    v22 = v21 = v9;
    [v22 lowercaseString];
    v24 = v23 = v17;
    v25 = [v24 containsString:v19];

    v17 = v23;
    v9 = v21;
    v16 = v20;
    v4 = v32;
    if (v25)
    {
      v29 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_13:
    if (v14 == ++v18)
    {
      v26 = [v9 countByEnumeratingWithState:&v33 objects:v41 count:16];
      v14 = v26;
      if (!v26)
      {
        v10 = 0;
        v6 = v31;
        goto LABEL_26;
      }

      goto LABEL_7;
    }
  }

  if (![v4 requiresNetwork])
  {
    goto LABEL_13;
  }

  v29 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
LABEL_23:
    *buf = 138412546;
    v38 = v19;
    v39 = 2112;
    v40 = v4;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Test Mode (%@) Applies To Activity: %@", buf, 0x16u);
  }

LABEL_24:
  v6 = v31;

  v10 = 1;
LABEL_26:

LABEL_27:
  return v10;
}

- (BOOL)testModeConstraintsRequireOverridingDecisionWithScores:(id)a3 ignoredPolicies:(id)a4 honoredPolicies:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [(_DASDaemon *)self testModeParameters];
  v12 = [v11 objectForKeyedSubscript:@"overrides"];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000D8840;
  v20[3] = &unk_1001B86C8;
  v13 = v12;
  v21 = v13;
  v14 = v8;
  v22 = v14;
  v15 = v9;
  v23 = v15;
  [v10 enumerateKeysAndObjectsUsingBlock:v20];

  v16 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignored policies: %@", buf, 0xCu);
  }

  v17 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Honored policies: %@", buf, 0xCu);
  }

  v18 = [v15 count] == 0;
  return v18;
}

- (void)preemptCandidateActivities:(id)a3 forFastPass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 fastPass];

  if (v8)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = v6;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      p_info = &OBJC_METACLASS____DASDaemonLogger.info;
      v29 = v7;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          if ([(_DASDaemon *)self shouldPreemptActivity:v15 forFastPassActivity:v7])
          {
            [v7 lastComputedScore];
            if (v16 > 0.0)
            {
              goto LABEL_10;
            }

            v17 = [v15 groupName];
            [v7 groupName];
            v18 = self;
            v19 = v11;
            v20 = v12;
            v21 = v9;
            v23 = v22 = p_info;
            v24 = [v17 isEqualToString:v23];

            p_info = v22;
            v9 = v21;
            v12 = v20;
            v11 = v19;
            self = v18;
            v7 = v29;

            if (v24)
            {
LABEL_10:
              v25 = [p_info + 1 defaultCategory];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v35 = v15;
                v36 = 2114;
                v37 = v7;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Preempting %{public}@ to unblock the associated fast pass %{public}@", buf, 0x16u);
              }

              v26 = +[NSDate now];
              [(_DASDaemon *)self updateSuspendRequestDate:v26 forActivity:v15 withReason:@"Preemption"];

              [(_DASDaemon *)self suspendActivity:v15];
            }

            else
            {
              v27 = [p_info + 1 defaultCategory];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v35 = v15;
                v36 = 2114;
                v37 = v29;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Not preempting %{public}@ since Fast Pass %{public}@ is in a different group", buf, 0x16u);
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v11);
    }

    v6 = v28;
  }
}

- (BOOL)shouldRunActivityNow:(id)a3 withOtherActivities:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate now];
  v9 = [(_DASDaemon *)self shouldActivity:v6 runWithActivities:v7 atDate:v8];

  v10 = [v6 fastPass];

  if (v10 && !v9)
  {
    v11 = [_DASConditionScore lastDenialResponses:v6];
    if (![v11 count])
    {
      goto LABEL_6;
    }

    if ([v11 count] == 1)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = +[_DASGroupSchedulingPolicy policyInstance];
      v14 = [v13 policyName];

      if (v12 == v14)
      {
LABEL_6:
        [(_DASDaemon *)self preemptCandidateActivities:v7 forFastPass:v6];
      }
    }
  }

  return v9;
}

- (BOOL)shouldActivity:(id)a3 runWithActivities:(id)a4 atDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_evaluationQueue);
  os_unfair_recursive_lock_lock_with_options();
  if (([(NSMutableSet *)self->_prerunningTasks containsObject:v8]& 1) != 0 || [(NSMutableSet *)self->_runningTasks containsObject:v8])
  {
    os_unfair_recursive_lock_unlock();
    v11 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v87 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ is already running. Should not be run again.", buf, 0xCu);
    }

    goto LABEL_6;
  }

  os_unfair_recursive_lock_unlock();
  if (![(_DASDaemon *)self isActivity:v8 timewiseEligibleAt:v10])
  {
    goto LABEL_6;
  }

  v14 = [v8 lastScored];

  if (!v14)
  {
    telemetryQueue = self->_telemetryQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D9884;
    block[3] = &unk_1001B5668;
    v85 = v8;
    dispatch_async(telemetryQueue, block);
  }

  v16 = [(_DASDaemon *)self pausedParameters];

  if (v16 && [(_DASDaemon *)self pausedParametersApplyToActivity:v8])
  {
    v17 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v87 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Scheduling Paused: Skipping activity: %{public}@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v83 = 0;
  [_DASConditionScore scoreForActivity:v8 withState:self->_context response:&v83];
  v19 = v18;
  if (v18 <= 0.0)
  {
    v20 = +[_DASPolicyDataCollection sharedInstance];
    v21 = [v20 shouldReportBlockingReasonsForActivity:v8];

    if (v21)
    {
      v22 = +[_DASPolicyDataCollection sharedInstance];
      [v22 reportBlockingReason:objc_msgSend(v8 forActivity:{"lastDenialValue"), v8}];
    }
  }

  v23 = [(_DASDaemon *)self testModeParameters];

  if (v23 && (v83 == 100 || v83 == 33) && [(_DASDaemon *)self testModeConstraintsApplyToActivity:v8])
  {
    v24 = +[NSMutableArray array];
    v25 = +[NSMutableArray array];
    v26 = [v8 policyScores];
    v27 = [(_DASDaemon *)self testModeConstraintsRequireOverridingDecisionWithScores:v26 ignoredPolicies:v24 honoredPolicies:v25];

    if (v24)
    {
      [(_DASDaemon *)self activity:v8 runWithoutHonoringPolicies:v24];
    }

    if (v25)
    {
      [(_DASDaemon *)self activity:v8 blockedOnPolicies:v25];
    }

    if (v27)
    {
      v28 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = v8;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Test Mode: Proceeding with activity: %@", buf, 0xCu);
      }

LABEL_72:
      v12 = 1;
      goto LABEL_7;
    }
  }

  [(_DASDaemon *)self reportActivity:v8 wasEvaluatedWithDecision:v83];
  if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:v8]&& ![_DASPhotosPolicy shouldOverrideForIntentSync:self->_photosIsBlocked activity:v8]&& [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor isRegistered]&& [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor pendingUnregistration])
  {
    [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor unregisterForRemoteDeviceActiveNotifications];
  }

  v12 = 0;
  if (v83 > 99)
  {
    if (v83 == 100)
    {
      goto LABEL_7;
    }

    if (v83 == 200)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (v83 == 33)
    {
      goto LABEL_7;
    }

    if (v83 == 67)
    {
      goto LABEL_72;
    }
  }

  v29 = [v8 schedulingPriority];
  if (v29 >= _DASSchedulingPriorityUserInitiated)
  {
    [_DASConditionScore thresholdScoreForActivity:v8];
    v43 = v42;
    goto LABEL_64;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v9;
  v30 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
  if (!v30)
  {
    v41 = 1;
    goto LABEL_74;
  }

  v32 = 0;
  v77 = *v80;
  *&v31 = 138543874;
  v75 = v31;
  while (2)
  {
    for (i = 0; i != v30; i = i + 1)
    {
      if (*v80 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v79 + 1) + 8 * i);
      v35 = objc_autoreleasePoolPush();
      [v8 compatibilityWith:v34];
      v37 = v36;
      if ([_DASPhotosPolicy isiCPLActivity:v8])
      {
        if ([_DASPhotosPolicy isiCPLActivity:v34])
        {
          v38 = [v8 transferSizeType];
          v39 = [v34 transferSizeType];
          if (v38 >= 0xB && v39 > 0xA)
          {
            v37 = -1.0;
LABEL_77:
            v54 = [_DASDaemonLogger logForCategory:@"scoring", v75];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = [v34 startDate];
              v56 = v55;
              v57 = @"<Not yet started>";
              *buf = 138544130;
              if (v55)
              {
                v57 = v55;
              }

              v87 = v8;
              v88 = 2048;
              v89 = v37;
              v90 = 2114;
              v91 = *&v34;
              v92 = 2112;
              v93 = v57;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "'%{public}@' has compatibility score of %lf with %{public}@ (Started at %@). Bailing out.", buf, 0x2Au);
            }

            v58 = +[_DASPolicyDataCollection sharedInstance];
            v59 = [v58 shouldReportBlockingReasonsForActivity:v8];

            if (v59)
            {
              v60 = +[_DASPolicyDataCollection sharedInstance];
              [v60 reportBlockingReason:+[_DASPolicyManager bitmaskForPolicy:](_DASPolicyManager forActivity:{"bitmaskForPolicy:", @"Incompatibility", v8}];
            }

            v61 = self->_activityToIncompatibleActivitiesMap;
            objc_sync_enter(v61);
            activityToIncompatibleActivitiesMap = self->_activityToIncompatibleActivitiesMap;
            v63 = [v34 name];
            v64 = [(NSMutableDictionary *)activityToIncompatibleActivitiesMap objectForKeyedSubscript:v63];

            if (v64)
            {
              [v64 _DAS_addOrReplaceObject:v8];
            }

            else
            {
              v65 = [NSMutableSet setWithObject:v8];
              v78 = self->_activityToIncompatibleActivitiesMap;
              v66 = [v34 name];
              [(NSMutableDictionary *)v78 setObject:v65 forKeyedSubscript:v66];
            }

            objc_sync_exit(v61);
            if ([(_DASFairScheduleManager *)self->_fairScheduleManager compareActivity:v8 withActivity:v34]== -1)
            {
              if (![(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator shouldDelaySuspendingRunningActivity:v34 forPendingTask:v8])
              {
                v70 = 1;
                goto LABEL_92;
              }

              v67 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = [v34 name];
                v69 = [v8 name];
                *buf = 138412546;
                v87 = v68;
                v88 = 2112;
                v89 = *&v69;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Overrode decision to suspend %@ for %@", buf, 0x16u);
              }
            }

            v70 = 0;
LABEL_92:
            v71 = [v34 startDate];
            v72 = [(_DASDaemon *)self shouldSuspendLongRunningActivity:v34 withStartDate:v71 whileBlockingOtherTasks:v70 atDate:v10];

            if (v72)
            {
              v73 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                v74 = [v8 name];
                *buf = 138412546;
                v87 = v74;
                v88 = 2114;
                v89 = *&v34;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Another intensive activity %@! Found long running activity %{public}@ to suspend", buf, 0x16u);
              }

              [(_DASDaemon *)self updateSuspendRequestDate:v10 forActivity:v34 withReason:@"Limitations"];
              [(_DASDaemon *)self suspendActivity:v34];
            }

            objc_autoreleasePoolPop(v35);

            goto LABEL_6;
          }
        }
      }

      if (v37 < 0.0)
      {
        goto LABEL_77;
      }

      if (!v32 && v37 > 0.0)
      {
        v40 = [_DASDaemonLogger logForCategory:@"scoring"];
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v75;
          v87 = v8;
          v88 = 2048;
          v89 = v37;
          v90 = 2114;
          v91 = *&v34;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "'%{public}@' has compatibility score of %lf with '%{public}@'. Relaxing scores.", buf, 0x20u);
        }

        v32 = 1;
      }

      objc_autoreleasePoolPop(v35);
    }

    v30 = [obj countByEnumeratingWithState:&v79 objects:v94 count:16];
    if (v30)
    {
      continue;
    }

    break;
  }

  v41 = v32 == 0;
LABEL_74:

  [_DASConditionScore thresholdScoreForActivity:v8];
  v43 = v53;
  if (!v41)
  {
    v43 = v53 * 0.9;
  }

LABEL_64:
  v44 = [v8 bypassesPredictions];
  v45 = [_DASDaemonLogger logForCategory:@"scoring"];
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
  if (v44)
  {
    if (v46)
    {
      *buf = 138543618;
      v87 = v8;
      v88 = 1024;
      LODWORD(v89) = v19 > v43;
      v47 = "'%{public}@' DecisionToRun: %d (Bypasses Predictions)";
      v48 = v45;
      v49 = 18;
      goto LABEL_69;
    }
  }

  else if (v46)
  {
    *buf = 138544130;
    v87 = v8;
    v88 = 2048;
    v89 = v19;
    v90 = 2048;
    v91 = v43;
    v92 = 1024;
    LODWORD(v93) = v19 > v43;
    v47 = "'%{public}@' CurrentScore: %lf, ThresholdScore: %lf DecisionToRun:%d";
    v48 = v45;
    v49 = 38;
LABEL_69:
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
  }

  if (v19 > v43)
  {
    v50 = v8;
    objc_sync_enter(v50);
    v51 = [_DASInternalPolicyEvaluationMetadata metadataWithScore:v19];
    v52 = [v50 policyResponseMetadata];
    [v52 setObject:v51 forKeyedSubscript:@"scoreWhenRun"];

    objc_sync_exit(v50);
    goto LABEL_72;
  }

LABEL_6:
  v12 = 0;
LABEL_7:

  return v12;
}

- (BOOL)shouldRunActivityNow:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [NSArray arrayWithObjectsFrom:self->_prerunningTasks, self->_runningTasks, 0];
  os_unfair_recursive_lock_unlock();
  LOBYTE(self) = [(_DASDaemon *)self shouldRunActivityNow:v4 withOtherActivities:v5];

  return self;
}

- (void)moveActivityToPrerunning:(id)a3
{
  v4 = a3;
  [(_DASDaemon *)self removeActivityFromTriggerMap:v4];
  if ([(_DASNetworkEvaluationMonitor *)self->_networkEvaluationMonitor requiresNetworkPathMonitoring:v4])
  {
    [(_DASNetworkEvaluationMonitor *)self->_networkEvaluationMonitor stopMonitoringActivity:v4];
  }

  os_unfair_recursive_lock_lock_with_options();
  [(NSMutableSet *)self->_submittedTasks removeObject:v4];
  [(NSMutableSet *)self->_pendingTasks removeObject:v4];
  [(NSMutableSet *)self->_prerunningTasks addObject:v4];
  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)self recordToTaskRegistry:v4 lifeCycleStateName:@"prerunning"];
  telemetryQueue = self->_telemetryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9C8C;
  block[3] = &unk_1001B5668;
  v6 = v4;
  v26 = v6;
  dispatch_async(telemetryQueue, block);
  if (_os_feature_enabled_impl())
  {
    v7 = [v6 internalGroupNames];
    v8 = [v7 count];

    if (v8)
    {
      v9 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_10012A81C(v6);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [v6 internalGroupNames];
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            if (*(*(&v21 + 1) + 8 * i))
            {
              [(_DASDaemon *)self addPrerunningActivity:v6 toGroupWithName:?];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v12);
      }

      goto LABEL_19;
    }
  }

  else
  {
    v15 = [v6 groupName];

    if (v15)
    {
      v10 = [v6 groupName];
      [(_DASDaemon *)self addPrerunningActivity:v6 toGroupWithName:v10];
LABEL_19:
    }
  }

  v16 = dispatch_time(0, 61000000000);
  evaluationQueue = self->_evaluationQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D9CEC;
  v19[3] = &unk_1001B56E0;
  v19[4] = self;
  v20 = v6;
  v18 = v6;
  dispatch_after(v16, evaluationQueue, v19);
}

- (void)clearActivityFromPrerunning:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000DA0B8;
  v29 = sub_1000DA0C8;
  v30 = 0;
  prerunningTasks = self->_prerunningTasks;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000DA0D0;
  v22[3] = &unk_1001B86F0;
  v6 = v4;
  v23 = v6;
  v24 = &v25;
  [(NSMutableSet *)prerunningTasks enumerateObjectsUsingBlock:v22];
  if (v26[5])
  {
    [(NSMutableSet *)self->_prerunningTasks removeObject:?];
  }

  os_unfair_recursive_lock_unlock();
  os_unfair_lock_lock(&self->_groupLock);
  if (!_os_feature_enabled_impl())
  {
    groupToPrerunningTasks = self->_groupToPrerunningTasks;
    v11 = [v26[5] groupName];
    v17 = [(NSMutableDictionary *)groupToPrerunningTasks objectForKeyedSubscript:v11];
    [v17 removeObject:v26[5]];

LABEL_16:
    goto LABEL_17;
  }

  v7 = [v6 internalGroupNames];
  v8 = [v7 count] == 0;

  if (!v8)
  {
    v9 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v6 name];
      sub_10012A918(v10, v32);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v26[5] internalGroupNames];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v31 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
          [v15 removeObject:v26[5]];
        }

        v12 = [v11 countByEnumeratingWithState:&v18 objects:v31 count:16];
      }

      while (v12);
    }

    goto LABEL_16;
  }

LABEL_17:
  os_unfair_lock_unlock(&self->_groupLock);

  _Block_object_dispose(&v25, 8);
}

- (void)moveActivityToRunning:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if ([(NSMutableSet *)self->_runningTasks containsObject:v4])
  {
    os_unfair_recursive_lock_unlock();
    goto LABEL_35;
  }

  [(NSMutableSet *)self->_prerunningTasks removeObject:v4];
  [(NSMutableSet *)self->_submittedTasks removeObject:v4];
  [(NSMutableSet *)self->_pendingTasks removeObject:v4];
  [(NSMutableSet *)self->_runningTasks count];
  [(NSMutableSet *)self->_runningTasks addObject:v4];
  v5 = [_DASDaemonLogger logForCategory:@"runningTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A598(&self->_runningTasks);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASRuntimeLimiter *)self->_runtimeLimiter maximumRuntimeForActivity:v4];
  [v4 setMaximumRuntime:v6];
  v7 = +[NSDate date];
  [v4 setStartDate:v7];

  if (-[_DASDynamicRuntimeAllocator isEnabled](self->_runtimeAllocator, "isEnabled") && [v4 uninterruptibleDuration])
  {
    v8 = [_DASDaemonLogger logForCategory:@"runningTasks"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 uninterruptibleDuration]);
      v10 = [v4 name];
      *buf = 138412546;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Started running uninterruptible %@ sec task %{public}@", buf, 0x16u);
    }
  }

  telemetryQueue = self->_telemetryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA630;
  block[3] = &unk_1001B5668;
  v12 = v4;
  v26 = v12;
  dispatch_async(telemetryQueue, block);
  if ([(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager isTrackingActivity:v12])
  {
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager activityStarted:v12];
  }

  if (!_os_feature_enabled_impl())
  {
    v16 = [v12 groupName];
    [(_DASDaemon *)self addRunningActivity:v12 toGroupWithName:v16];
LABEL_25:

    goto LABEL_26;
  }

  v13 = [v12 internalGroupNames];
  v14 = [v13 count];

  if (v14)
  {
    v15 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_10012A96C(v12);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = [v12 internalGroupNames];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [(_DASDaemon *)self addRunningActivity:v12 toGroupWithName:*(*(&v21 + 1) + 8 * i)];
        }

        v18 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v18);
    }

    goto LABEL_25;
  }

LABEL_26:
  if (([v12 requestsApplicationLaunch] & 1) == 0)
  {
    [(_DASBudgetManager *)self->_budgetManager reportActivityRunning:v12];
  }

  if ([v12 isIntensive])
  {
    [(_DASFairScheduleManager *)self->_fairScheduleManager activityStarted:v12];
  }

  if ([v12 userRequestedBackupTask])
  {
    [(_DASUserRequestedBackupTaskManager *)self->_backupTaskManager reportActivityRunning:v12];
  }

  if ([v12 isContinuedProcessingTask])
  {
    [(_DASProgressReportingMonitor *)self->_progressMonitor beginTrackingActivity:v12];
  }

LABEL_35:
}

- (void)beginWorkForActivity:(id)a3
{
  v6 = a3;
  if ([v6 requestsApplicationLaunch])
  {
    v4 = [NSMutableSet setWithObject:v6];
    [(_DASDaemon *)self runApplicationLaunchActivities:v4];
  }

  else
  {
    v5 = [v6 requestsExtensionLaunch];
    v4 = [NSMutableSet setWithObject:v6];
    if (v5)
    {
      [(_DASDaemon *)self runExtensionLaunchActivities:v4];
    }

    else
    {
      [(_DASDaemon *)self runActivitiesAndRemoveUnknown:v4];
    }
  }
}

- (void)immediatelyBeginWorkForActivity:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  if (([(NSMutableSet *)self->_prerunningTasks containsObject:v4]& 1) != 0 || [(NSMutableSet *)self->_runningTasks containsObject:v4])
  {
    os_unfair_recursive_lock_unlock();
    v5 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is already running, cannot begin work for it.", &v6, 0xCu);
    }
  }

  else
  {
    os_unfair_recursive_lock_unlock();
    [(_DASDaemon *)self moveActivityToPrerunning:v4];
    [(_DASDaemon *)self beginWorkForActivity:v4];
  }
}

- (BOOL)shouldEvaluateTask:(id)a3 atDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_activityToIncompatibleActivitiesMap;
  objc_sync_enter(v8);
  activityToIncompatibleActivitiesMap = self->_activityToIncompatibleActivitiesMap;
  v10 = [v6 name];
  v11 = [(NSMutableDictionary *)activityToIncompatibleActivitiesMap objectForKeyedSubscript:v10];

  v12 = [v11 count];
  objc_sync_exit(v8);

  if (v12)
  {
    v13 = 0;
  }

  else if ([v6 hasManyConstraints] & 1) != 0 || (objc_msgSend(v6, "bypassesPredictions"))
  {
    v13 = 1;
  }

  else
  {
    v14 = [v6 startBefore];
    [v14 timeIntervalSinceDate:v7];
    v13 = v15 < 1800.0;
  }

  return v13;
}

- (void)advanceAppLaunchDateIfNecessaryForActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:_DASNonRateLimitedLaunchKey];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 relatedApplications];
    if (![v8 count] || (v9 = objc_msgSend(v4, "schedulingPriority"), v9 > _DASSchedulingPriorityUtility))
    {

      goto LABEL_30;
    }

    v10 = [v4 widgetID];

    if (v10)
    {
      goto LABEL_30;
    }

    v11 = [_DASApplicationPolicy focalApplicationsWithContext:self->_context];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v12 = [v4 relatedApplications];
    v13 = [v12 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v13)
    {
      v14 = *v40;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(v12);
          }

          if ([v11 containsObject:*(*(&v39 + 1) + 8 * i)])
          {
            v26 = [_DASDaemonLogger logForCategory:@"bar"];
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              sub_10012A9F8();
            }

            goto LABEL_30;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v16 = self->_recentlyLaunchedApps;
    objc_sync_enter(v16);
    v17 = [v4 relatedApplications];
    [v17 firstObject];
    v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v19 = [(NSMutableDictionary *)self->_recentlyLaunchedApps objectForKeyedSubscript:*&v18];
    v20 = [v4 startAfter];
    v21 = [(NSCountedSet *)self->_launchesPerApp countForObject:*&v18];
    if (v21 > 9 || ([v4 launchReason], v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == _DASLaunchReasonBackgroundProcessing, v22, v23))
    {
      v27 = [v4 launchReason];
      v28 = v27 == _DASLaunchReasonBackgroundProcessing;

      if (v28)
      {
        v29 = *&qword_10020A510;
      }

      else
      {
        v29 = 450.0;
      }

      if (!v19)
      {
        goto LABEL_29;
      }

      v30 = [v4 startAfter];
      [v30 timeIntervalSinceDate:v19];
      v32 = v31 < v29;

      if (!v32)
      {
        goto LABEL_29;
      }

      v33 = [v19 dateByAddingTimeInterval:v29];
      [v4 setStartAfter:v33];

      v34 = [v4 startAfter];
      [v4 setStartBefore:v34];

      v24 = [_DASDaemonLogger logForCategory:@"bar"];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v4 startAfter];
        [v35 timeIntervalSinceDate:v20];
        v37 = v36;
        v38 = [v4 startAfter];
        *buf = 138412802;
        v44 = v4;
        v45 = 2048;
        v46 = v37 / 60.0;
        v47 = 2112;
        v48 = v38;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Advancing start date for %@ by %3.1lf minutes to %@", buf, 0x20u);
      }
    }

    else
    {
      v24 = [_DASDaemonLogger logForCategory:@"bar"];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v4 launchReason];
        *buf = 138413058;
        v44 = v4;
        v45 = 2112;
        v46 = v18;
        v47 = 2048;
        v48 = v21;
        v49 = 2112;
        v50 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Skip time advancement for %@ because application %@ launch count %lu and reason %@", buf, 0x2Au);
      }
    }

LABEL_29:
    objc_sync_exit(v16);
  }

LABEL_30:
}

- (void)computeStaticPriorityForActivity:(id)a3
{
  v3 = 999999999;
  v4 = a3;
  v5 = [v4 featureCodes];

  if (v5)
  {
    v6 = +[_DASPlistParser sharedInstance];
    v7 = [v6 dictionaryForPlist:2];

    if ([v7 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = [v4 featureCodes];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        v3 = 999999999;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v18 + 1) + 8 * i) stringValue];
            v14 = [v7 objectForKeyedSubscript:v13];

            v15 = [v14 objectForKey:@"priority"];
            v16 = v15;
            v17 = 999999999;
            if (v15)
            {
              v17 = [v15 intValue];
            }

            if (v3 >= v17)
            {
              v3 = v17;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      else
      {
        v3 = 999999999;
      }
    }
  }

  [v4 setStaticPriority:v3];
}

- (BOOL)validateConfigurationForActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASConfigurationLimiter *)self->_configurationLimiter shouldLimitActivityAtSubmission:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    [(_DASConfigurationLimiter *)self->_configurationLimiter limitedActivity:v4 withLimitsResponses:v6];
    v7 = [v4 limitationResponse];
    v8 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:v7];

    if (v8)
    {
      v9 = [(_DASDaemon *)self testModeParameters];
      if (!v9 || (v10 = v9, v11 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:v4], v10, (v11 & 1) == 0))
      {
        v16 = [_DASDaemonLogger logForCategory:@"ConfigurationLimiter"];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10012AB54();
        }

        v14 = 0;
        goto LABEL_17;
      }

      v12 = [_DASDaemonLogger logForCategory:@"ConfigurationLimiter"];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_10012AA60();
      }
    }

    v13 = [v4 limitationResponse];
    v14 = 1;
    v15 = [_DASLimiterResponse queryActivityDecision:1 fromResponses:v13];

    if (v15)
    {
      v16 = [_DASDaemonLogger logForCategory:@"ConfigurationLimiter"];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10012AAC8(v4);
      }

      v14 = 1;
LABEL_17:
    }
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (void)startedActivities:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(_DASDaemon *)v6 moveActivityToRunning:*(*(&v15 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v7);
  objc_sync_exit(v6);

  evaluationQueue = v6->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB438;
  block[3] = &unk_1001B5668;
  block[4] = v6;
  dispatch_sync(evaluationQueue, block);
  v13 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Started activities: %{public}@", buf, 0xCu);
  }
}

- (void)submitActivities:(id)a3
{
  v4 = a3;
  v66 = os_transaction_create();
  v82 = self;
  objc_sync_enter(v82);
  v68 = objc_autoreleasePoolPush();
  v5 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v102 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Submitted activities: %{public}@", buf, 0xCu);
  }

  v6 = [v4 count];
  v7 = [NSMutableDictionary dictionaryWithCapacity:v6];
  v69 = [NSMutableSet setWithCapacity:v6];
  v73 = [NSMutableSet setWithCapacity:v6];
  v72 = [NSMutableSet setWithCapacity:v6];
  v70 = [NSMutableSet setWithCapacity:v6];
  v78 = +[NSDate date];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = v4;
  v8 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
  if (v8)
  {
    v76 = *v93;
    v74 = _DASLaunchReasonBackgroundRemoteNotification;
    v71 = kNWEndpointKey;
    do
    {
      v81 = 0;
      v77 = v8;
      do
      {
        if (*v93 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v92 + 1) + 8 * v81);
        v10 = [v9 diskVolume];

        if (v10)
        {
          [(_DASDiskSpaceMonitor *)v82->_diskSpaceMonitor registerForPurgeableSpaceWithActivity:v9];
        }

        context = objc_autoreleasePoolPush();
        [(_DASDaemon *)v82 clearActivityFromPrerunning:v9];
        v11 = [v9 submitDate];
        v12 = v11 == 0;

        if (v12)
        {
          [v9 setSubmitDate:v78];
        }

        if ([(_DASDynamicRuntimeAllocator *)v82->_runtimeAllocator isEnabled])
        {
          if (![v9 uninterruptibleDuration])
          {
            [(_DASRuntimeLimiter *)v82->_runtimeLimiter uninterruptibleDurationForActivity:v9];
            if (v13 != 0.0)
            {
              [v9 setUninterruptibleDuration:v13];
            }
          }
        }

        telemetryQueue = v82->_telemetryQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000DC028;
        block[3] = &unk_1001B5668;
        block[4] = v9;
        dispatch_async(telemetryQueue, block);
        v15 = [v9 featureCodes];
        if (v15)
        {
        }

        else
        {
          v16 = [v9 fastPass];
          v17 = v16 == 0;

          if (v17)
          {
            goto LABEL_20;
          }
        }

        v18 = +[_DASClientMetricsRecorder sharedInstance];
        v19 = [v9 name];
        v20 = [v9 featureCodes];
        v21 = [v9 fastPass];
        [v18 addFeatureCodesForTask:v19 featureCodes:v20 semanticVersion:{objc_msgSend(v21, "semanticVersion")}];

LABEL_20:
        v22 = [v9 producedResultIdentifiers];
        if (v22)
        {
        }

        else
        {
          v23 = [v9 dependencies];
          v24 = v23 == 0;

          if (v24)
          {
            goto LABEL_31;
          }
        }

        v25 = +[NSMutableSet set];
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v26 = [v9 dependencies];
        v27 = [v26 countByEnumeratingWithState:&v87 objects:v99 count:16];
        if (v27)
        {
          v28 = *v88;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v88 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = [*(*(&v87 + 1) + 8 * i) identifier];
              [v25 addObject:v30];
            }

            v27 = [v26 countByEnumeratingWithState:&v87 objects:v99 count:16];
          }

          while (v27);
        }

        v31 = +[_DASClientMetricsRecorder sharedInstance];
        v32 = [v9 name];
        v33 = [v9 producedResultIdentifiers];
        [v31 addDependencyInfoForTask:v32 producedResultIdentifiers:v33 dependencyIdentifiers:v25];

LABEL_31:
        [(_DASDaemon *)v82 computeStaticPriorityForActivity:v9];
        [_DASConditionScore setActivityShouldBypassPredictions:v9];
        [(_DASDaemon *)v82 addTriggersToActivity:v9];
        if ([v9 requestsApplicationLaunch])
        {
          v34 = [v9 launchReason];
          v35 = [v34 isEqualToString:v74];

          if (v35)
          {
            v36 = [v9 isSilentPush];
            v37 = [v9 schedulingPriority];
            if (((v37 >= _DASSchedulingPriorityBackground) & v36) == 1)
            {
              v38 = [_DASDaemonLogger logForCategory:@"bar"];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v63 = [v9 relatedApplications];
                v64 = [v63 firstObject];
                *buf = 138412290;
                v102 = v64;
                _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "High-priority silent push for %@", buf, 0xCu);
              }

              [v70 addObject:v9];
              goto LABEL_77;
            }

            buf[0] = 0;
            barScheduler = v82->_barScheduler;
            v40 = [v9 relatedApplications];
            v41 = [v40 firstObject];
            LODWORD(barScheduler) = [(_DASBARScheduler *)barScheduler pushLaunchAllowedForApp:v41 immediately:buf];

            if (barScheduler && buf[0] == 1)
            {
              [(_DASDaemon *)v82 addLaunchRequest:v9];
              [(_DASDaemon *)v82 immediatelyBeginWorkForActivity:v9];
              goto LABEL_77;
            }

            v42 = v82->_barScheduler;
            v43 = [v9 relatedApplications];
            v44 = [v43 firstObject];
            LODWORD(v42) = [(_DASBARScheduler *)v42 isNewsstandApp:v44];

            if (v42)
            {
              [v9 setRequestsNewsstandLaunch:1];
            }
          }

          if (![(_DASDaemon *)v82 addLaunchRequest:v9])
          {
            [v70 addObject:v9];
            goto LABEL_77;
          }
        }

        if ((([v9 requestsApplicationLaunch] & 1) != 0 || objc_msgSend(v9, "requestsExtensionLaunch")) && objc_msgSend(v9, "shouldBePersisted"))
        {
          [v69 addObject:v9];
        }

        if ([v9 userRequestedBackupTask])
        {
          [(_DASUserRequestedBackupTaskManager *)v82->_backupTaskManager activitySubmitted:v9];
        }

        v79 = [v9 groupName];
        if (_os_feature_enabled_impl())
        {
          v45 = [v9 internalGroupNames];
          v46 = [v45 count] == 0;

          if (v46)
          {
            v47 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              v56 = [v9 name];
              sub_10012AC08(v56, v96, &v97, v47);
            }
          }

          else
          {
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v47 = [v9 internalGroupNames];
            v48 = [v47 countByEnumeratingWithState:&v83 objects:v98 count:16];
            if (v48)
            {
              v49 = *v84;
              do
              {
                for (j = 0; j != v48; j = j + 1)
                {
                  if (*v84 != v49)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v51 = *(*(&v83 + 1) + 8 * j);
                  v52 = [v7 objectForKeyedSubscript:v51];
                  v53 = v52;
                  if (v52)
                  {
                    [v52 addObject:v9];
                  }

                  else
                  {
                    v54 = [NSMutableSet setWithObject:v9];
                    [v7 setObject:v54 forKeyedSubscript:v51];
                  }
                }

                v48 = [v47 countByEnumeratingWithState:&v83 objects:v98 count:16];
              }

              while (v48);
            }
          }

          goto LABEL_69;
        }

        if (v79)
        {
          v55 = [v7 objectForKeyedSubscript:v79];
          v47 = v55;
          if (v55)
          {
            [v55 addObject:v9];
          }

          else
          {
            v57 = [NSMutableSet setWithObject:v9];
            [v7 setObject:v57 forKeyedSubscript:v79];
          }

LABEL_69:
        }

        [_DASConditionScore computeOptimalScoreAndDateForActivity:v9];
        os_unfair_recursive_lock_lock_with_options();
        [(NSMutableSet *)v82->_pendingTasks addObject:v9];
        os_unfair_recursive_lock_unlock();
        if ([(_DASDaemon *)v82 shouldEvaluateTask:v9 atDate:v78])
        {
          [v73 addObject:v9];
        }

        if ([(_DASNetworkEvaluationMonitor *)v82->_networkEvaluationMonitor requiresNetworkPathMonitoring:v9])
        {
          v58 = objc_autoreleasePoolPush();
          networkEvaluationMonitor = v82->_networkEvaluationMonitor;
          v60 = [_DASNetworkEvaluationMonitor nwParametersForActivity:v9];
          v61 = [v9 userInfo];
          v62 = [v61 objectForKeyedSubscript:v71];
          [(_DASNetworkEvaluationMonitor *)networkEvaluationMonitor startMonitoringActivity:v9 withNetworkParameters:v60 withEndpoint:v62];

          objc_autoreleasePoolPop(v58);
        }

        if ([v9 triggersRestart])
        {
          [v72 addObject:v9];
        }

LABEL_77:
        objc_autoreleasePoolPop(context);
        v81 = v81 + 1;
      }

      while (v81 != v77);
      v8 = [obj countByEnumeratingWithState:&v92 objects:v100 count:16];
    }

    while (v8);
  }

  [(_DASDaemon *)v82 addPendingActivitiesToGroups:v7];
  if ([v69 count])
  {
    v65 = objc_autoreleasePoolPush();
    [(_DASDataStore *)v82->_store saveActivities:v69];
    objc_autoreleasePoolPop(v65);
  }

  [(_DASDaemon *)v82 cancelActivities:v70, v66];
  [(_DASDaemon *)v82 evaluateScoreAndRunActivities:v73];
  [(_DASDaemon *)v82 determineNextTimerFireDateAndSchedule];

  objc_autoreleasePoolPop(v68);
  objc_sync_exit(v82);
}

- (void)handleRunningActivities:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(_DASDaemon *)self prepareActivityForStart:*(*(&v11 + 1) + 8 * v10) atTime:v5, v11];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)removeGroupTrackingFor:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_groupLock);
  v8 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:v7];
  [v8 removeObject:v6];

  v9 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v7];
  [v9 removeObject:v6];

  v10 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v7];
  [v10 removeObject:v6];

  v11 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v7];
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = [v12 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NO LONGER RUNNING %{public}@ ...Tasks running in group [%@] are %ld!", &v13, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)cleanupForActivity:(id)a3 wasCompleted:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_78;
  }

  p_info = &OBJC_METACLASS____DASDaemonLogger.info;
  if ([v6 requestsApplicationLaunch])
  {
    v9 = [_DASDaemonLogger logForCategory:@"assertions"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10012AC5C();
    }

    v10 = [v7 assertion];
    v74 = 0;
    v11 = [v10 invalidateWithError:&v74];
    v12 = v74;

    if ((v11 & 1) == 0 && v12)
    {
      v13 = [_DASDaemonLogger logForCategory:@"bar"];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_10012ACC4();
      }
    }
  }

  os_unfair_recursive_lock_lock_with_options();
  [(NSMutableSet *)self->_runningTasks removeObject:v7];
  [(NSMutableSet *)self->_submittedTasks removeObject:v7];
  [(NSMutableSet *)self->_pendingTasks removeObject:v7];
  [(NSMutableSet *)self->_prerunningTasks removeObject:v7];
  [(_DASDaemon *)self removeActivityFromNestedMaps:v7];
  v14 = [_DASDaemonLogger logForCategory:@"runningTasks"];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A598(&self->_runningTasks);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)self releasePowerAssertion:v7];
  v15 = +[_DASPLLogger sharedInstance];
  [v15 recordActivity:v7];

  [(_DASDaemon *)self reportOversizeLoadSymptomForActivity:v7 atStart:0];
  if (([v7 requestsApplicationLaunch] & 1) == 0)
  {
    [(_DASBudgetManager *)self->_budgetManager reportActivityNoLongerRunning:v7];
  }

  [(_DASActivityDependencyManager *)self->_dependencyManager endDependencyMonitoringForActivity:v7];
  [(_DASAssertionArbiter *)self->_assertionArbiter cleanupForActivity:v7];
  [(_DASProgressReportingMonitor *)self->_progressMonitor endTrackingActivity:v7];
  if ([(_DASNetworkEvaluationMonitor *)self->_networkEvaluationMonitor requiresNetworkPathMonitoring:v7])
  {
    [(_DASNetworkEvaluationMonitor *)self->_networkEvaluationMonitor stopMonitoringActivity:v7];
  }

  v16 = [v7 remoteDevice];
  if (v16)
  {
    v17 = v16;
    v18 = [v7 targetDevice];

    if (v18 == 3)
    {
      [(_DASRemoteDeviceNearbyMonitor *)self->_remoteDeviceNearbyMonitor unregisterForRemoteDeviceWithActivity:v7];
    }
  }

  v19 = [v7 remoteDevice];
  if (v19)
  {
    v20 = v19;
    v21 = [v7 requiresRemoteDeviceWake];

    if (v21)
    {
      [(_DASRemoteDeviceWakeMonitor *)self->_remoteDeviceWakeMonitor unregisterRemoteDeviceWakeStateWithActivity:v7];
    }
  }

  v22 = [v7 diskVolume];

  if (v22)
  {
    [(_DASDiskSpaceMonitor *)self->_diskSpaceMonitor unregisterForPurgeableSpaceWithActivity:v7];
  }

  [(_DASActivityRateLimitManager *)self->_rateLimiter completeActivity:v7];
  if (_os_feature_enabled_impl())
  {
    v23 = [v7 internalGroupNames];
    v24 = [v23 count];

    if (!v24)
    {
      LOBYTE(groupToRunningTasks) = 0;
      goto LABEL_40;
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v25 = [v7 internalGroupNames];
    v26 = [v25 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v26)
    {
      v27 = v26;
      v67 = v4;
      LOBYTE(groupToRunningTasks) = 0;
      v29 = *v71;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v71 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v70 + 1) + 8 * i);
          os_unfair_lock_lock(&self->_groupLock);
          v32 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v31];
          v33 = [v32 containsObject:v7];

          LOBYTE(groupToRunningTasks) = v33 | groupToRunningTasks;
          os_unfair_lock_unlock(&self->_groupLock);
          [(_DASDaemon *)self removeGroupTrackingFor:v7 from:v31];
        }

        v27 = [v25 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v27);
      p_info = (&OBJC_METACLASS____DASDaemonLogger + 32);
      v4 = v67;
    }

    else
    {
      LOBYTE(groupToRunningTasks) = 0;
    }
  }

  else
  {
    groupToRunningTasks = [v7 groupName];

    if (!groupToRunningTasks)
    {
      goto LABEL_40;
    }

    os_unfair_lock_lock(&self->_groupLock);
    groupToRunningTasks = self->_groupToRunningTasks;
    v34 = [v7 groupName];
    v35 = [groupToRunningTasks objectForKeyedSubscript:v34];
    LOBYTE(groupToRunningTasks) = [v35 containsObject:v7];

    os_unfair_lock_unlock(&self->_groupLock);
    v25 = [v7 groupName];
    [(_DASDaemon *)self removeGroupTrackingFor:v7 from:v25];
  }

LABEL_40:
  if (([v7 requestsApplicationLaunch] & 1) != 0 || objc_msgSend(v7, "requestsExtensionLaunch"))
  {
    [(_DASDaemon *)self removeLaunchRequest:v7];
    if ([v7 shouldBePersisted])
    {
      [(_DASDataStore *)self->_store deleteActivity:v7];
    }
  }

  v36 = +[NSDate date];
  if ([v7 isIntensive])
  {
    v37 = [v7 startDate];

    if (v37)
    {
      v38 = [v7 startDate];
      [v36 timeIntervalSinceDate:v38];
      v40 = llround(v39 / 60.0);

      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.runtimemins.intensive" byCount:v40];
      v41 = [v7 name];
      v42 = [v41 isEqualToString:@"com.apple.photoanalysisd.backgroundanalysis"];

      if (v42)
      {
        v43 = &off_1001B7938;
      }

      else
      {
        v44 = [v7 name];
        v45 = [v44 isEqualToString:@"com.apple.mediaanalysisd.fullanalysis"];

        if (!v45)
        {
          goto LABEL_51;
        }

        v43 = &off_1001B7940;
      }

      [_DASMetricRecorder incrementOccurrencesForKey:*v43 byCount:v40];
LABEL_51:
      v46 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.duetactivityscheduler"];
      v47 = [v46 BOOLForKey:@"postIntensiveActivityNotifications"];

      if (v47)
      {
        v48 = [v7 suspendRequestDate];

        if (v48)
        {
          v49 = @"Intensive Activity Suspended";
        }

        else
        {
          v49 = @"Intensive Activity Completed";
        }

        if (v4)
        {
          v50 = @"%@ completed after running for %.0f minutes";
        }

        else
        {
          v50 = @"%@ deferred after running for %.0f minutes";
        }

        v51 = [v7 name];
        v52 = [v7 startDate];
        [v36 timeIntervalSinceDate:v52];
        v54 = [NSString stringWithFormat:v50, v51, v53 / 60.0];

        [(_DASNotificationManager *)self->_notificationManager postNotificationAtDate:0 withTitle:v49 withTextContent:v54 icon:0 url:0 expirationDate:0];
      }
    }
  }

  v55 = [v7 startDate];

  if (v55)
  {
    v56 = [v7 startDate];
    [v36 timeIntervalSinceDate:v56];
    v58 = v57 / 60.0;

    if (v58 > 60.0)
    {
      v59 = [p_info + 1 logForCategory:@"lifecycle"];
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v76 = v7;
        v77 = 2048;
        v78 = v58;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ ran for %lf minutes", buf, 0x16u);
      }
    }
  }

  v60 = [v7 startDate];
  if (v60)
  {
    v61 = [v7 suspendRequestDate];
    if (v61)
    {

LABEL_72:
      goto LABEL_73;
    }
  }

  v62 = +[_DASUrgencyOverridePolicy policyInstance];
  v63 = [v62 appliesToActivity:v7];

  if (v60)
  {

    if ((v63 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  if (v63)
  {
LABEL_71:
    v64 = +[_DASUrgencyOverridePolicy policyInstance];
    v65 = [v7 name];
    [v64 removeActivity:v65];

    v60 = +[_DASPhotosPolicy policyInstance];
    [v60 setIntentSyncIsEngaged:0];
    goto LABEL_72;
  }

LABEL_73:
  [(_DASDaemon *)self logLimitations:v7];
  if (groupToRunningTasks)
  {
    if ([v7 isContinuedProcessingTask])
    {
      evaluationQueue = self->_evaluationQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000DCCBC;
      block[3] = &unk_1001B56E0;
      block[4] = self;
      v69 = v7;
      dispatch_async(evaluationQueue, block);
    }

    else
    {
      [(_DASBatchingQueue *)self->_activityCompletedBatchingQueue addWorkItem:v7];
    }
  }

LABEL_78:
}

- (void)removeActivityFromNestedMaps:(id)a3
{
  v4 = a3;
  [(_DASDaemon *)self removeActivityFromTriggerMap:v4];
  [(_DASDaemon *)self removeActivityFromGroupToPendingTasks:v4];
  [(_DASDaemon *)self removeActivityFromIncompatibleActivitiesMap:v4];
}

- (void)removeActivityFromTriggerMap:(id)a3
{
  v4 = a3;
  v5 = self->_triggerToActivitiesMap;
  objc_sync_enter(v5);
  triggerToActivitiesMap = self->_triggerToActivitiesMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DCE58;
  v8[3] = &unk_1001B8498;
  v7 = v4;
  v9 = v7;
  [(NSMutableDictionary *)triggerToActivitiesMap enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

- (void)removeActivityFromGroupToPendingTasks:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_groupLock);
  groupToPendingTasks = self->_groupToPendingTasks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DCF1C;
  v7[3] = &unk_1001B8498;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)groupToPendingTasks enumerateKeysAndObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)removeActivityFromIncompatibleActivitiesMap:(id)a3
{
  v4 = a3;
  v5 = self->_activityToIncompatibleActivitiesMap;
  objc_sync_enter(v5);
  activityToIncompatibleActivitiesMap = self->_activityToIncompatibleActivitiesMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DD000;
  v8[3] = &unk_1001B8498;
  v7 = v4;
  v9 = v7;
  [(NSMutableDictionary *)activityToIncompatibleActivitiesMap enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

- (void)activityStarted:(id)a3
{
  v4 = a3;
  if ([v4 delayedStart])
  {
    v5 = os_transaction_create();
    v6 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 shortDescription];
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "STARTING %{public}@", buf, 0xCu);
    }

    os_unfair_recursive_lock_lock_with_options();
    prerunningTasks = self->_prerunningTasks;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000DD2FC;
    v18[3] = &unk_1001B8758;
    v9 = v4;
    v19 = v9;
    v10 = [(NSMutableSet *)prerunningTasks objectsPassingTest:v18];
    if ([v10 count])
    {
      v11 = [v10 anyObject];
      [v9 reconcileWithActivity:v11];
    }

    v12 = [(_DASDaemon *)self currentReportingConditions];
    [v9 setStartConditions:v12];

    os_unfair_recursive_lock_unlock();
    [(_DASDaemon *)self createPowerAssertion:v9];
    if ([_DASIntensityValidator shouldValidateActivity:v9])
    {
      [(_DASActivityProfiler *)self->_profiler startProfilingForActivity:v9 withState:self->_context];
    }

    v13 = +[_DASPLLogger sharedInstance];
    [v13 recordActivityLifeCycleStart:v9];

    v14 = [NSSet setWithObject:v9];
    [(_DASDaemon *)self handleRunningActivities:v14];

    [(_DASDaemon *)self recordToTaskRegistry:v9 lifeCycleStateName:@"started"];
    if ([(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager isTrackingActivity:v9])
    {
      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager activityStarted:v9];
    }

    if (([v9 wasForceRun] & 1) == 0)
    {
      evaluationQueue = self->_evaluationQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000DD370;
      block[3] = &unk_1001B56E0;
      block[4] = self;
      v17 = v9;
      dispatch_sync(evaluationQueue, block);
    }
  }
}

- (void)logLimitations:(id)a3
{
  v4 = a3;
  if (([v4 requestsApplicationLaunch] & 1) == 0)
  {
    v5 = [v4 startDate];
    if (v5)
    {
    }

    else
    {
      v10 = [v4 limitationResponse];
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = v10;
      v12 = [v4 limitationResponse];
      v13 = [v12 count];

      if (!v13)
      {
        goto LABEL_8;
      }
    }

    v6 = v4;
    AnalyticsSendEventLazy();
    v7 = [v6 startDate];
    if (v7)
    {
      v8 = v7;
      v9 = [(_DASRuntimeLimiter *)self->_runtimeLimiter limitsApplyToActivity:v6];

      if (v9)
      {
        v14 = v6;
        AnalyticsSendEventLazy();
      }
    }
  }

LABEL_8:
}

- (void)activityCompleted:(id)a3 withSuccess:(BOOL)a4
{
  v31 = a4;
  v5 = a3;
  v32 = os_transaction_create();
  os_unfair_recursive_lock_lock_with_options();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = self->_runningTasks;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [v11 uuid];
        v13 = [v5 uuid];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          [v5 reconcileWithActivity:v11];
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_recursive_lock_unlock();
  v15 = +[NSDate date];
  [v5 setEndTime:v15];

  v16 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v5 shortDescription];
    v18 = [v5 maximumRuntime];
    *buf = 138543618;
    v43 = v17;
    v44 = 2048;
    v45 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "COMPLETED %{public}@ with runtime limit %ld", buf, 0x16u);
  }

  if ([_DASIntensityValidator shouldValidateActivity:v5])
  {
    [(_DASActivityProfiler *)self->_profiler endProfilingForActivity:v5 completed:1 withState:self->_context];
    intensityValidatorQueue = self->_intensityValidatorQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DED20;
    block[3] = &unk_1001B56E0;
    block[4] = self;
    v37 = v5;
    dispatch_async(intensityValidatorQueue, block);
  }

  v20 = +[_DASPLLogger sharedInstance];
  [v20 recordActivityLifeCycleEnd:v5];

  [(_DASDaemon *)self recordToTaskRegistry:v5 lifeCycleStateName:@"completed"];
  [(_DASDaemon *)self cleanupForActivity:v5 wasCompleted:1];
  if ([v5 isContinuedProcessingTask])
  {
    v21 = [NSSet setWithObject:v5];
    [(_DASDaemon *)self informObserversOfActivitiesCompleted:v21 withSuccess:v31];
  }

  if ([v5 isIntensive])
  {
    [(_DASFairScheduleManager *)self->_fairScheduleManager activityCompleted:v5];
  }

  v22 = +[_DASActivityDurationTracker sharedInstance];
  [v22 activityCompleted:v5];

  [(_DASActivityDependencyManager *)self->_dependencyManager reportActivityDidFinishRunning:v5];
  if ([(_DASSleepWakeMonitor *)self->_sleepWakeMonitor inADarkWake])
  {
    [(_DASSleepWakeMonitor *)self->_sleepWakeMonitor recordNoLongerRunningActivity:v5];
  }

  if ([v5 userRequestedBackupTask])
  {
    [(_DASUserRequestedBackupTaskManager *)self->_backupTaskManager reportActivityNoLongerRunning:v5];
  }

  telemetryQueue = self->_telemetryQueue;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000DED8C;
  v34[3] = &unk_1001B5668;
  v24 = v5;
  v35 = v24;
  dispatch_async(telemetryQueue, v34);
  if ([(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager isTrackingActivity:v24])
  {
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager activityEnded:v24];
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntimeRemainingForActivity:v24];
    v26 = v25;
    runtimeTrackerManager = self->_runtimeTrackerManager;
    v28 = [v24 name];
    LODWORD(runtimeTrackerManager) = [(_DASRuntimeTrackerManager *)runtimeTrackerManager isTrackingDynamicRuntimeActivity:v28];

    if (runtimeTrackerManager && v26 <= 0.0)
    {
      v29 = [(_DASDaemon *)self allPendingTasks];
      v30 = [(_DASDaemon *)self sortCandidateActivities:v29];

      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager logOrderingWithActivities:v30];
    }

    else if (v26 > 0.0)
    {
      [(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator reallocateRuntimeFromActivity:v24 asCompletion:1];
    }
  }

  [(_DASFeatureDurationTracker *)self->_featureDurationTracker updateFeatureDurationActivityCompleted:v24];
  if (arc4random_uniform(0x64u) == 1)
  {
    v33 = v24;
    AnalyticsSendEventLazy();
  }
}

- (void)recordToTaskRegistry:(id)a3 lifeCycleStateName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  v9 = [v6 serviceName];
  if (!self->_taskRegistryMode || ![(NSSet *)self->_taskRegistryProcesses containsObject:v9])
  {
    goto LABEL_28;
  }

  v10 = [_DASDaemonLogger logForCategory:@"taskregistry"];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10012AFC8();
  }

  v11 = [(NSUserDefaults *)self->_testingDefaults objectForKey:@"taskRegistry"];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_opt_new();
  }

  v13 = objc_opt_new();
  if ([v7 isEqualToString:@"submitted"])
  {
    v14 = [v6 submitDate];
LABEL_9:
    v15 = v14;
    v16 = 0;
    v33 = 0;
    v34 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  if ([v7 isEqualToString:@"started"])
  {
    v31 = [v6 startDate];
    v28 = [v6 startConditions];
    v18 = [v6 policyResponseMetadata];
    v19 = [v18 objectForKeyedSubscript:@"scoreWhenRun"];
    [v19 score];
    v20 = [NSNumber numberWithDouble:?];

    v16 = v20;
    [_DASConditionScore thresholdScoreForActivity:v6];
    v15 = v31;
    v34 = [NSNumber numberWithDouble:?];
    [v34 doubleValue];
    v17 = v28;
    v33 = [NSNumber numberWithDouble:v21 * 0.9];
  }

  else
  {
    if (![v7 isEqualToString:@"suspended"])
    {
      v14 = +[NSDate now];
      goto LABEL_9;
    }

    v15 = [v6 suspendRequestDate];
    v17 = [(_DASDaemon *)self currentReportingConditions];
    v16 = 0;
    v33 = 0;
    v34 = 0;
  }

LABEL_14:
  v32 = v16;
  if (([v7 isEqualToString:@"started"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"suspended"))
  {
    if ([v6 wasForceRun])
    {
      v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 wasForceRun]);
      [v13 setValue:v22 forKey:@"wasForceRun"];
    }

    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 lastDenialValue]);
    [v13 setValue:v23 forKey:@"lastDenialValue"];

    v24 = [v6 lastScored];
    [v13 setValue:v24 forKey:@"lastScored"];

    [v13 setValue:v17 forKey:@"conditions"];
    v16 = v32;
  }

  if (v16)
  {
    [v13 setValue:v16 forKey:@"scoreWhenRun"];
  }

  if (v34)
  {
    [v13 setValue:v34 forKey:@"thresholdScore"];
  }

  v29 = v17;
  if (v33)
  {
    [v13 setValue:v33 forKey:{@"relaxedThresholdScore", v17}];
  }

  [v13 setValue:v15 forKey:{@"timestamp", v29}];
  [v13 setValue:v7 forKey:@"state"];
  [v12 objectForKey:v8];
  v26 = v25 = v15;
  v27 = [v26 mutableCopy];

  if (!v27)
  {
    v27 = objc_opt_new();
  }

  [v27 addObject:v13];
  [v12 setObject:v27 forKey:v8];
  [(NSUserDefaults *)self->_testingDefaults setObject:v12 forKey:@"taskRegistry"];

LABEL_28:
}

- (void)activityCanceledWithReason:(id)a3 expirationReason:(int64_t)a4
{
  v53 = a4;
  v5 = a3;
  v55 = os_transaction_create();
  os_unfair_recursive_lock_lock_with_options();
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v6 = self->_runningTasks;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v66;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v66 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v65 + 1) + 8 * i);
        v12 = [v11 uuid];
        v13 = [v5 uuid];
        v14 = [v12 isEqual:v13];

        if (v14)
        {
          [v5 reconcileWithActivity:v11];
          goto LABEL_11;
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v65 objects:v73 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (!+[_DASConfig isInternalBuild])
  {
    v16 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 schedulingPriority]);
    *buf = 138543618;
    v70 = v5;
    v71 = 2114;
    v72 = v18;
    v20 = "CANCELED: %{public}@ at priority %{public}@";
    goto LABEL_17;
  }

  v15 = [v5 startDate];

  v16 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    v18 = [v5 shortDescription];
    v19 = [v5 maximumRuntime];
    *buf = 138412546;
    v70 = v18;
    v71 = 2048;
    v72 = v19;
    v20 = "CANCELED: %@ with runtime limit %ld";
LABEL_17:
    v21 = v16;
    v22 = 22;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);

    goto LABEL_19;
  }

  if (v17)
  {
    v18 = [v5 shortDescription];
    *buf = 138412290;
    v70 = v18;
    v20 = "CANCELED: %@";
    v21 = v16;
    v22 = 12;
    goto LABEL_18;
  }

LABEL_19:

  if (![(NSMutableSet *)self->_runningTasks containsObject:v5])
  {
    goto LABEL_22;
  }

  v23 = [v5 suspendRequestDate];
  if (v23)
  {
    goto LABEL_21;
  }

  v23 = [v5 startDate];
  if (!v23 || ([v5 requestsApplicationLaunch] & 1) != 0)
  {
    goto LABEL_21;
  }

  v50 = [v5 clientName];
  v51 = [v50 isEqualToString:_DASClientNameBGST];

  if ((v51 & 1) == 0)
  {
    v23 = [_DASDaemonLogger logForCategory:@"misuse"];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v5 name];
      *buf = 138412290;
      v70 = v52;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Please file a bug for %@ – the activity deferred without being asked to defer", buf, 0xCu);
    }

LABEL_21:
  }

LABEL_22:
  if ([(NSMutableSet *)self->_runningTasks containsObject:v5, v53])
  {
    v24 = [v5 suspendRequestDate];
    if (v24)
    {
      v25 = 1;
    }

    else
    {
      v25 = 6;
    }
  }

  else
  {
    v25 = 6;
  }

  if (v54)
  {
    v26 = v54;
  }

  else
  {
    v26 = v25;
  }

  telemetryQueue = self->_telemetryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFBD0;
  block[3] = &unk_1001B6250;
  v64 = v26;
  v28 = v5;
  v63 = v28;
  dispatch_async(telemetryQueue, block);
  v29 = +[NSDate date];
  [v28 setEndTime:v29];

  v30 = [v28 fastPass];
  if (v30)
  {
    v31 = v30;
    v32 = [(_DASRuntimeLimiter *)self->_runtimeLimiter featureHasNoRemainingRuntimeForActivity:v28];

    if (v32)
    {
      v33 = +[_DASPostRestoreBUILogger sharedInstance];
      [v33 reportState:30 forActivity:v28];
    }
  }

  os_unfair_recursive_lock_unlock();
  if (v26 == 4 || v26 == 1)
  {
    [(_DASDaemon *)self recordToTaskRegistry:v28 lifeCycleStateName:@"suspended"];
  }

  if ([_DASIntensityValidator shouldValidateActivity:v28])
  {
    v34 = [v28 startDate];

    if (v34)
    {
      [(_DASActivityProfiler *)self->_profiler endProfilingForActivity:v28 completed:0 withState:self->_context];
      intensityValidatorQueue = self->_intensityValidatorQueue;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_1000DFD90;
      v60[3] = &unk_1001B56E0;
      v60[4] = self;
      v61 = v28;
      dispatch_async(intensityValidatorQueue, v60);
    }
  }

  v36 = +[_DASPLLogger sharedInstance];
  [v36 recordActivityLifeCycleEnd:v28];

  [(_DASDaemon *)self recordToTaskRegistry:v28 lifeCycleStateName:@"canceled"];
  [(_DASDaemon *)self cleanupForActivity:v28 wasCompleted:0];
  if ([v28 isContinuedProcessingTask])
  {
    v37 = [NSSet setWithObject:v28];
    [(_DASDaemon *)self informObserversOfActivitiesSuspended:v37];
  }

  if ([v28 isIntensive])
  {
    [(_DASFairScheduleManager *)self->_fairScheduleManager activityCanceled:v28];
  }

  v38 = +[_DASActivityDurationTracker sharedInstance];
  [v38 activityCanceled:v28];

  if ([v28 userRequestedBackupTask])
  {
    [v28 setCompletionStatus:3];
    [(_DASUserRequestedBackupTaskManager *)self->_backupTaskManager reportActivityNoLongerRunning:v28];
  }

  [(_DASFeatureDurationTracker *)self->_featureDurationTracker updateFeatureDurationActivityCompleted:v28];
  v39 = self->_telemetryQueue;
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000DFDFC;
  v57[3] = &unk_1001B6250;
  v59 = v26;
  v40 = v28;
  v58 = v40;
  dispatch_async(v39, v57);
  if ([(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager isTrackingActivity:v40])
  {
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager activityEnded:v40];
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntimeRemainingForActivity:v40];
    v42 = v41;
    runtimeTrackerManager = self->_runtimeTrackerManager;
    v44 = [v40 name];
    LODWORD(runtimeTrackerManager) = [(_DASRuntimeTrackerManager *)runtimeTrackerManager isTrackingDynamicRuntimeActivity:v44];

    if (runtimeTrackerManager && v42 <= 0.0)
    {
      v45 = [(_DASDaemon *)self allPendingTasks];
      v46 = [(_DASDaemon *)self sortCandidateActivities:v45];

      [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager logOrderingWithActivities:v46];
    }

    else if (v42 > 0.0)
    {
      [(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator reallocateRuntimeFromActivity:v40 asCompletion:0];
    }
  }

  if (arc4random_uniform(0xFA0u) == 1)
  {
    v56 = v40;
    AnalyticsSendEventLazy();
  }

  if ([_DASPhotosPolicy isiCPLActivity:v40])
  {
    v47 = [v40 suspendRequestDate];

    if (!v47)
    {
      v48 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v49 = [NSNumber numberWithUnsignedInteger:self->_photosIsBlocked];
        *buf = 138543618;
        v70 = v40;
        v71 = 2112;
        v72 = v49;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Reporting photos activity no longer blocked: %{public}@ (was %@)", buf, 0x16u);
      }

      [(_DASDaemon *)self updateiCPLTasksBlocked:0];
      if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:v40]&& [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor isRegistered])
      {
        [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor unregisterForRemoteDeviceActiveNotifications];
      }
    }
  }
}

- (void)clientFailedtoExpireTaskWithIdentifier:(id)a3
{
  v4 = a3;
  telemetryQueue = self->_telemetryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFF3C;
  block[3] = &unk_1001B5668;
  v8 = v4;
  v6 = v4;
  dispatch_async(telemetryQueue, block);
}

- (void)updateActivity:(id)a3 withParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_DASBudgetManager *)self->_budgetManager reportUpdateForActivity:v6 withDataConsumed:v7];
  v8 = _DASUpdateActivityPercentCompletedKey;
  v21 = v7;
  v9 = [v7 objectForKeyedSubscript:_DASUpdateActivityPercentCompletedKey];

  if (v9)
  {
    os_unfair_recursive_lock_lock_with_options();
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = self;
    v10 = self->_runningTasks;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [v15 uuid];
          v17 = [v6 uuid];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            v19 = [v21 objectForKeyedSubscript:v8];
            [v19 doubleValue];
            [v15 setPercentCompleted:?];
          }
        }

        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    os_unfair_recursive_lock_unlock();
  }
}

- (void)_resetWidgetBudgets
{
  v2 = +[_DASWidgetRefreshBudgetManager sharedInstance];
  [v2 resetBudgets];
}

- (void)updateSystemConstraintsWithParameters:(id)a3
{
  v4 = kDASSystemContextKeyHeavyDiskUsage;
  v5 = a3;
  v12 = [v5 objectForKeyedSubscript:v4];
  v6 = [v5 objectForKeyedSubscript:kDASSystemContextNonDASCriticalWorkloadRunning];
  v7 = [v5 objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
  v8 = [v5 objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

  if (v12)
  {
    v9 = +[_DASCustomSystemConstraintsPolicy policyInstance];
    [v9 updateSystemConstraint:kDASSystemContextKeyHeavyDiskUsage withState:objc_msgSend(v12 withDaemon:{"BOOLValue"), 0}];
LABEL_5:

    v10 = [(_DASDaemon *)self tasksNoLongerEligible];
    [(_DASDaemon *)self suspendActivities:v10];
LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    v9 = +[_DASFastPassPolicy policyInstance];
    [v9 updateFastPassShallYield:{objc_msgSend(v6, "BOOLValue")}];
    goto LABEL_5;
  }

  if (v7)
  {
    v11 = +[_DASCustomSystemConstraintsPolicy policyInstance];
    [v11 updateSystemConstraint:kDASSystemContextGPWorkloadRunningState withState:objc_msgSend(v7 withDaemon:{"BOOLValue"), self}];
  }

  if (v8)
  {
    v10 = +[_DASCustomSystemConstraintsPolicy policyInstance];
    [v10 updateSystemConstraint:kDASSystemContextMCWorkloadRunningState withState:objc_msgSend(v8 withDaemon:{"BOOLValue"), self}];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)addPrerunningActivity:(id)a3 toGroupWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_groupLock);
  v8 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v7];
  [v8 removeObject:v6];

  v9 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:v7];
  if (!v9)
  {
    v9 = +[NSMutableSet set];
    groupToPrerunningTasks = self->_groupToPrerunningTasks;
    v11 = [v6 groupName];
    [(NSMutableDictionary *)groupToPrerunningTasks setObject:v9 forKeyedSubscript:v11];
  }

  [v9 _DAS_addOrReplaceObject:v6];
  v12 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2048;
    v18 = [v9 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "With %@ ...Tasks pre-running in group [%@] are %ld!", &v13, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)addRunningActivity:(id)a3 toGroupWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_groupLock);
  v8 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:v7];
  [v8 removeObject:v6];

  v9 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v7];
  [v9 removeObject:v6];

  v10 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v7];
  if (!v10)
  {
    v10 = +[NSMutableSet set];
    groupToRunningTasks = self->_groupToRunningTasks;
    v12 = [v6 groupName];
    [(NSMutableDictionary *)groupToRunningTasks setObject:v10 forKeyedSubscript:v12];
  }

  [v10 _DAS_addOrReplaceObject:v6];
  v13 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    v18 = 2048;
    v19 = [v10 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "With %@ ...Tasks running in group [%@] are %ld!", &v14, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)addPendingActivity:(id)a3 toGroupWithName:(id)a4
{
  v8 = a3;
  v6 = a4;
  os_unfair_lock_lock(&self->_groupLock);
  v7 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v6];
  if (!v7)
  {
    v7 = +[NSMutableSet set];
    [(NSMutableDictionary *)self->_groupToPendingTasks setObject:v7 forKeyedSubscript:v6];
  }

  [v7 _DAS_addOrReplaceObject:v8];
  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)addPendingActivitiesToGroups:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_groupLock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E0834;
  v5[3] = &unk_1001B8498;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)createActivityGroup:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock(&self->_groupLock);
  groups = self->_groups;
  v5 = [v10 name];
  v6 = [(NSMutableDictionary *)groups objectForKeyedSubscript:v5];

  if (!v6 || (v7 = [v6 maxConcurrent], v7 != objc_msgSend(v10, "maxConcurrent")))
  {
    v8 = self->_groups;
    v9 = [v10 name];
    [(NSMutableDictionary *)v8 setObject:v10 forKeyedSubscript:v9];

    [(_DASDataStore *)self->_store saveGroup:v10];
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)submitActivity:(id)a3 inGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 name];
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v9;
    v14 = 2048;
    v15 = [v7 maxConcurrent];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Submit activity: %@ in group: %@ with capacity: %ld", &v10, 0x20u);
  }

  [(_DASDaemon *)self submitActivity:v6 inGroup:v7 withHandler:&stru_1001B87A0];
}

- (void)submitActivity:(id)a3 inGroup:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v121 = os_transaction_create();
  v120 = v9;
  if (![(_DASDaemon *)self validateConfigurationForActivity:v8])
  {
    v17 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:&off_1001CAF40];
    v10[2](v10, 0, v17);

    goto LABEL_120;
  }

  if (v9)
  {
    [(_DASDaemon *)self createActivityGroup:v9];
    v11 = [v9 name];
    [v8 setGroupName:v11];
  }

  if (![(_DASRuntimeLimiter *)self->_runtimeLimiter featureHasNoRemainingRuntimeForActivity:v8])
  {
    v18 = self;
    objc_sync_enter(v18);
    context = objc_autoreleasePoolPush();
    if (![v8 requestsImmediateRuntime])
    {
      goto LABEL_26;
    }

    if (v18->_dasImmediateRuntimeDisabled)
    {
      v19 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v8 name];
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Do It Now activity %@ is not granted for immediateRuntime due to dasImmediateRuntimeDisabled.", buf, 0xCu);
      }
    }

    else
    {
      [(_DASRuntimeLimiter *)self->_runtimeLimiter immediateDurationForActivity:v8];
      v22 = v21;
      runtimeTrackerManager = v18->_runtimeTrackerManager;
      v24 = [v8 name];
      LOBYTE(runtimeTrackerManager) = [(_DASRuntimeTrackerManager *)runtimeTrackerManager doesImmediateRuntimeTrackerExist:v24];

      if ((runtimeTrackerManager & 1) == 0)
      {
        v25 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v8 name];
          *buf = 138412290;
          *&buf[4] = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Do It Now activity %@ is tracked by ImmediateRuntimeTracker.", buf, 0xCu);
        }

        v27 = v18->_runtimeTrackerManager;
        v28 = [v8 name];
        [(_DASRuntimeTrackerManager *)v27 submitRuntimeActivityTracker:v28 inGroup:off_10020A090[0] withMaximumRuntime:v22];
      }

      if ([(_DASRuntimeTrackerManager *)v18->_runtimeTrackerManager immediateRuntimeTrackerHasRemainingRuntime:v8])
      {
LABEL_26:
        [(_DASActivityRateLimitManager *)v18->_rateLimiter submitActivity:v8];
        [v8 interval];
        if (v30 <= 0.0)
        {
          if (+[_DASConfig isInternalBuild])
          {
            v31 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
LABEL_29:
              v32 = [v8 debugDescription];
              *buf = 138412290;
              *&buf[4] = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Submitted: %@", buf, 0xCu);
            }
          }

          else
          {
            v31 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 schedulingPriority]);
              v39 = [v8 startAfter];
              v40 = [v8 startBefore];
              *buf = 138544130;
              *&buf[4] = v8;
              *&buf[12] = 2114;
              *&buf[14] = v38;
              *&buf[22] = 2114;
              v144 = v39;
              *v145 = 2114;
              *&v145[2] = v40;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Submitted: %{public}@ at priority %{public}@ (%{public}@ - %{public}@)", buf, 0x2Au);
            }
          }
        }

        else
        {
          if (+[_DASConfig isInternalBuild])
          {
            v31 = +[_DASDaemonLogger defaultCategory];
            if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_37;
            }

            goto LABEL_29;
          }

          v31 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 schedulingPriority]);
            [v8 interval];
            v35 = v34;
            v36 = [v8 startAfter];
            v37 = [v8 startBefore];
            *buf = 138544386;
            *&buf[4] = v8;
            *&buf[12] = 2114;
            *&buf[14] = v33;
            *&buf[22] = 2048;
            v144 = v35;
            *v145 = 2114;
            *&v145[2] = v36;
            *&v145[10] = 2114;
            *&v145[12] = v37;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Submitted: %{public}@ at priority %{public}@ with interval %.0f (%{public}@ - %{public}@)", buf, 0x34u);
          }
        }

LABEL_37:

        [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.submitcount.all" byCount:1];
        v119 = +[NSDate date];
        v41 = [v8 submitDate];
        v42 = v41 == 0;

        if (v42)
        {
          [v8 setSubmitDate:v119];
        }

        if ([(_DASDynamicRuntimeAllocator *)v18->_runtimeAllocator isEnabled])
        {
          if (![v8 uninterruptibleDuration])
          {
            [(_DASRuntimeLimiter *)self->_runtimeLimiter uninterruptibleDurationForActivity:v8];
            if (v43 != 0.0)
            {
              [v8 setUninterruptibleDuration:v43];
            }
          }
        }

        telemetryQueue = v18->_telemetryQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000E1FB8;
        block[3] = &unk_1001B5668;
        v45 = v8;
        v139 = v45;
        dispatch_async(telemetryQueue, block);
        v46 = [v45 featureCodes];
        if (v46)
        {
        }

        else
        {
          v47 = [v45 fastPass];
          v48 = v47 == 0;

          if (v48)
          {
            goto LABEL_47;
          }
        }

        v49 = +[_DASClientMetricsRecorder sharedInstance];
        v50 = [v45 name];
        v51 = [v45 featureCodes];
        v52 = [v45 fastPass];
        [v49 addFeatureCodesForTask:v50 featureCodes:v51 semanticVersion:{objc_msgSend(v52, "semanticVersion")}];

LABEL_47:
        v53 = [v45 producedResultIdentifiers];
        if (v53)
        {
        }

        else
        {
          v54 = [v45 dependencies];
          v55 = v54 == 0;

          if (v55)
          {
            goto LABEL_58;
          }
        }

        v56 = +[NSMutableSet set];
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v57 = [v45 dependencies];
        v58 = [v57 countByEnumeratingWithState:&v134 objects:v142 count:16];
        if (v58)
        {
          v59 = *v135;
          do
          {
            for (i = 0; i != v58; i = i + 1)
            {
              if (*v135 != v59)
              {
                objc_enumerationMutation(v57);
              }

              v61 = [*(*(&v134 + 1) + 8 * i) identifier];
              [v56 addObject:v61];
            }

            v58 = [v57 countByEnumeratingWithState:&v134 objects:v142 count:16];
          }

          while (v58);
        }

        v62 = +[_DASClientMetricsRecorder sharedInstance];
        v63 = [v45 name];
        v64 = [v45 producedResultIdentifiers];
        [v62 addDependencyInfoForTask:v63 producedResultIdentifiers:v64 dependencyIdentifiers:v56];

LABEL_58:
        [(_DASDaemon *)v18 computeStaticPriorityForActivity:v45];
        [(_DASDaemon *)v18 clearActivityFromPrerunning:v45];
        [_DASConditionScore setActivityShouldBypassPredictions:v45];
        if ([v45 requestsApplicationLaunch])
        {
          v65 = [v45 launchReason];
          v66 = [v65 isEqualToString:_DASLaunchReasonBackgroundRemoteNotification];

          if (v66)
          {
            v67 = [v45 isSilentPush];
            [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.push.count" byCount:1];
            v68 = [v45 schedulingPriority];
            if (v68 >= _DASSchedulingPriorityBackground)
            {
              [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.highprioritypush" byCount:1];
              if (v67)
              {
                [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.silentpush.highprioritycount" byCount:1];
                [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.silentpush.count" byCount:1];
                v69 = [_DASDaemonLogger logForCategory:@"bar"];
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  v70 = [v45 relatedApplications];
                  v71 = [v70 firstObject];
                  sub_10012B0D8(v71, buf, v69, v70);
                }

                v72 = [NSSet setWithObject:v45];
                [(_DASDaemon *)v18 cancelActivities:v72];

                v73 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:&off_1001CAF68];
                v10[2](v10, 0, v73);

                goto LABEL_119;
              }
            }

            else
            {
              [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.lowprioritypush" byCount:1];
              if (v67)
              {
                [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.silentpush.count" byCount:1];
              }
            }

            buf[0] = 0;
            barScheduler = v18->_barScheduler;
            v75 = [v45 relatedApplications];
            v76 = [v75 firstObject];
            v77 = [(_DASBARScheduler *)barScheduler pushLaunchAllowedForApp:v76 immediately:buf];

            if (v77 && buf[0] == 1)
            {
              v10[2](v10, 1, 0);
              [(_DASDaemon *)v18 addLaunchRequest:v45];
              [(_DASDaemon *)v18 immediatelyBeginWorkForActivity:v45];
              goto LABEL_119;
            }

            v78 = [v45 schedulingPriority];
            if (v78 == _DASSchedulingPriorityMaintenance)
            {
              [(_DASBlueListManager *)v18->_blueListManager decrementPushBudgetRemaining];
            }

            if (!(v77 & 1 | ((v67 & 1) == 0)))
            {
              [_DASMetricRecorder recordOccurrenceForKey:@"com.apple.das.silentpush.pushnotallowedcount"];
            }

            v79 = v18->_barScheduler;
            v80 = [v45 relatedApplications];
            v81 = [v80 firstObject];
            LODWORD(v79) = [(_DASBARScheduler *)v79 isNewsstandApp:v81];

            if (v79)
            {
              [v45 setRequestsNewsstandLaunch:1];
            }
          }
        }

        if (([v45 requestsApplicationLaunch] & 1) != 0 || objc_msgSend(v45, "requestsExtensionLaunch"))
        {
          if (![(_DASDaemon *)v18 addLaunchRequest:v45])
          {
            v96 = [_DASDaemonLogger logForCategory:@"bar"];
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              v97 = [v45 relatedApplications];
              v98 = [v97 firstObject];
              sub_10012B12C(v98, buf, v96, v97);
            }

            v99 = [NSSet setWithObject:v45];
            [(_DASDaemon *)v18 cancelActivities:v99];

            v100 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:5 userInfo:&off_1001CAF90];
            v10[2](v10, 0, v100);

            goto LABEL_119;
          }

          if ([v45 requestsApplicationLaunch])
          {
            [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.submitcount.launch" byCount:1];
            v82 = [v45 relatedApplications];
            v83 = [v82 count];

            if (v83)
            {
              [(_DASDaemon *)v18 advanceAppLaunchDateIfNecessaryForActivity:v45];
            }
          }

          if ([v45 shouldBePersisted])
          {
            [(_DASDataStore *)v18->_store saveActivity:v45];
          }
        }

        if ([v45 userRequestedBackupTask])
        {
          [(_DASUserRequestedBackupTaskManager *)v18->_backupTaskManager activitySubmitted:v45];
        }

        [(_DASActivityDependencyManager *)v18->_dependencyManager beginDependencyMonitoringForActivity:v45];
        v84 = [v45 diskVolume];

        if (v84)
        {
          [(_DASDiskSpaceMonitor *)v18->_diskSpaceMonitor registerForPurgeableSpaceWithActivity:v45];
        }

        if ([(_DASNetworkEvaluationMonitor *)v18->_networkEvaluationMonitor requiresNetworkPathMonitoring:v45])
        {
          [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.submitcount.network" byCount:1];
          networkEvaluationMonitor = v18->_networkEvaluationMonitor;
          v86 = [_DASNetworkEvaluationMonitor nwParametersForActivity:v45];
          v87 = [v45 userInfo];
          v88 = [v87 objectForKeyedSubscript:kNWEndpointKey];
          [(_DASNetworkEvaluationMonitor *)networkEvaluationMonitor startMonitoringActivity:v45 withNetworkParameters:v86 withEndpoint:v88];
        }

        [(_DASDaemon *)v18 recordToTaskRegistry:v45 lifeCycleStateName:@"submitted"];
        os_unfair_recursive_lock_lock_with_options();
        [(NSMutableSet *)v18->_submittedTasks addObject:v45];
        os_unfair_recursive_lock_unlock();
        v10[2](v10, 1, 0);
        os_unfair_recursive_lock_lock_with_options();
        if ([(NSMutableSet *)v18->_submittedTasks containsObject:v45])
        {
          [(_DASDaemon *)v18 addTriggersToActivity:v45];
          v89 = [v45 groupName];
          if (_os_feature_enabled_impl())
          {
            v90 = [v45 internalGroupNames];
            v91 = [v90 count] == 0;

            if (v91)
            {
              v92 = +[_DASDaemonLogger defaultCategory];
              if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
              {
                v103 = [v45 name];
                sub_10012B180(v103, v140);
              }
            }

            else
            {
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v130 = 0u;
              v92 = [v45 internalGroupNames];
              v93 = [v92 countByEnumeratingWithState:&v130 objects:v141 count:16];
              if (v93)
              {
                v94 = *v131;
                do
                {
                  for (j = 0; j != v93; j = j + 1)
                  {
                    if (*v131 != v94)
                    {
                      objc_enumerationMutation(v92);
                    }

                    if (*(*(&v130 + 1) + 8 * j))
                    {
                      [(_DASDaemon *)v18 addPendingActivity:v45 toGroupWithName:?];
                    }
                  }

                  v93 = [v92 countByEnumeratingWithState:&v130 objects:v141 count:16];
                }

                while (v93);
              }
            }
          }

          else if (v89)
          {
            [(_DASDaemon *)v18 addPendingActivity:v45 toGroupWithName:v89];
          }

          [(NSMutableSet *)v18->_submittedTasks removeObject:v45];
          [(NSMutableSet *)v18->_pendingTasks addObject:v45];

          os_unfair_recursive_lock_unlock();
          evaluationQueue = v18->_evaluationQueue;
          v127[0] = _NSConcreteStackBlock;
          v127[1] = 3221225472;
          v127[2] = sub_1000E20AC;
          v127[3] = &unk_1001B56B8;
          v127[4] = v18;
          v105 = v45;
          v128 = v105;
          v106 = v119;
          v129 = v106;
          dispatch_async(evaluationQueue, v127);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v144 = sub_1000DA0B8;
          *v145 = sub_1000DA0C8;
          *&v145[8] = 0;
          timerSchedulingQueue = v18->_timerSchedulingQueue;
          v122[0] = _NSConcreteStackBlock;
          v122[1] = 3221225472;
          v122[2] = sub_1000E2340;
          v122[3] = &unk_1001B6A08;
          v108 = v106;
          v123 = v108;
          v109 = v105;
          v124 = v109;
          v125 = v18;
          v126 = buf;
          dispatch_sync(timerSchedulingQueue, v122);
          if (*(*&buf[8] + 40))
          {
            v110 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
            {
              sub_10012B1CC();
            }

            v111 = [v109 name];
            [*(*&buf[8] + 40) timeIntervalSinceDate:v108];
            v113 = v112;
            v114 = [v109 startBefore];
            [v114 timeIntervalSinceDate:v108];
            v116 = v115;
            v117 = [v109 schedulingPriority];
            [(_DASDaemon *)v18 scheduleTimerOnBehalfOf:v111 between:v117 > _DASSchedulingPriorityUtility and:v113 waking:v116];
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          v101 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            v102 = [v45 debugDescription];
            *buf = 138543362;
            *&buf[4] = v102;
            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ was canceled too soon after submission", buf, 0xCu);
          }

          os_unfair_recursive_lock_unlock();
        }

LABEL_119:

        objc_autoreleasePoolPop(context);
        objc_sync_exit(v18);

        goto LABEL_120;
      }

      v19 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v8 name];
        *buf = 138412290;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Do It Now activity %@ had exhausted periodic runtime limit. Adjusting submission to drop immediate runtime request.", buf, 0xCu);
      }
    }

    [v8 setRequestsImmediateRuntime:0];
    goto LABEL_26;
  }

  v146 = @"exhaustedRuntimeFeatureCodes";
  v12 = [(_DASRuntimeLimiter *)self->_runtimeLimiter exhaustedRuntimeFeatureCodesAssociatedWithActivity:v8];
  v13 = v12;
  if (!v12)
  {
    v13 = +[NSNull null];
  }

  v147 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v147 forKeys:&v146 count:1];
  v15 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:7 userInfo:v14];

  if (!v12)
  {
  }

  v16 = [_DASDaemonLogger logForCategory:@"featureDurationTracker"];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rejecting submission of %@ with error: %@!", buf, 0x16u);
  }

  v10[2](v10, 0, v15);
LABEL_120:
}

- (void)endLaunchWithReason:(id)a3 forApp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    evaluationQueue = self->_evaluationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E27B0;
    block[3] = &unk_1001B56B8;
    v12 = v7;
    v13 = v6;
    v14 = self;
    dispatch_async(evaluationQueue, block);

    v10 = v12;
  }

  else
  {
    v10 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "endLaunchWithReason: launchReason or appName is null", buf, 2u);
    }
  }
}

- (void)backgroundAppRefreshEnabledForApp:(id)a3 withHandler:(id)a4
{
  barScheduler = self->_barScheduler;
  v10 = a4;
  v7 = a3;
  v8 = [(_DASBARScheduler *)barScheduler backgroundAppRefreshEnabled];
  v9 = [(_DASBARScheduler *)self->_barScheduler backgroundAppRefreshEnabledForApp:v7];

  v10[2](v10, v8, v9);
}

- (void)disableAppRefreshForApps:(id)a3
{
  barScheduler = self->_barScheduler;
  v4 = [NSSet setWithArray:a3];
  [(_DASBARScheduler *)barScheduler disableAppRefreshForApps:v4];
}

- (BOOL)canSubmitValidatedTaskRequest:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (![v6 isContinuedProcessingTask])
  {
    v22 = [v6 relatedApplications];
    v10 = [v22 firstObject];

    if ([v6 isContactTracingBackgroundActivity] & 1) != 0 || -[_DASBARScheduler backgroundLaunchAllowedForApp:](self->_barScheduler, "backgroundLaunchAllowedForApp:", v10) || (objc_msgSend(v6, "launchReason"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", _DASLaunchReasonHealthResearch), v23, (v24))
    {
      if ([(_DASBARScheduler *)self->_barScheduler backgroundLaunchAllowedForBGTaskActivity:v6])
      {
        v102 = a4;
        os_unfair_recursive_lock_lock_with_options();
        v98 = v10;
        v25 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v10];
        v26 = [v25 mutableCopy];
        v27 = v26;
        v106 = v6;
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = +[NSMutableSet set];
        }

        v52 = v28;

        v100 = self;
        os_unfair_recursive_lock_unlock();
        v104 = +[NSMutableSet set];
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v53 = v52;
        v54 = [v53 countByEnumeratingWithState:&v112 objects:v125 count:16];
        if (v54)
        {
          v55 = v54;
          v56 = *v113;
          do
          {
            v57 = 0;
            do
            {
              if (*v113 != v56)
              {
                objc_enumerationMutation(v53);
              }

              v58 = *(*(&v112 + 1) + 8 * v57);
              if ([v58 isBackgroundTaskActivity])
              {
                v59 = [v58 clientProvidedIdentifier];
                v60 = [v106 clientProvidedIdentifier];
                v61 = [v59 isEqualToString:v60];

                v62 = [v106 isContactTracingBackgroundActivity];
                if (v61)
                {
                  if (v62 && [v58 isContactTracingBackgroundActivity])
                  {
                    v63 = [v58 clientProvidedStartDate];
                    if (v63)
                    {
                      goto LABEL_57;
                    }

                    v63 = [v106 clientProvidedStartDate];
                    if (v63)
                    {
                      goto LABEL_57;
                    }

                    v64 = [v58 requiresPlugin];
                    if (v64 != [v106 requiresPlugin])
                    {
                      goto LABEL_57;
                    }

                    v66 = [v58 requiresNetwork];
                    if (v66 == [v106 requiresNetwork])
                    {
                      v67 = [v58 startAfter];
                      [v106 setStartAfter:v67];

                      v68 = [v58 startBefore];
                      [v106 setStartBefore:v68];

                      v63 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
                      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Pending identical task", buf, 2u);
                      }

LABEL_57:
                    }
                  }

                  [v104 addObject:v58];
                  goto LABEL_64;
                }

                if (v62 && [v58 isContactTracingBackgroundActivity])
                {
                  [v104 addObject:v58];
                  v65 = [_DASDaemonLogger logForCategory:@"exposure-notification"];
                  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Replacing similar task", buf, 2u);
                  }
                }
              }

LABEL_64:
              v57 = v57 + 1;
            }

            while (v55 != v57);
            v69 = [v53 countByEnumeratingWithState:&v112 objects:v125 count:16];
            v55 = v69;
          }

          while (v69);
        }

        [v53 minusSet:v104];
        v6 = v106;
        [v53 addObject:v106];
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        obj = v53;
        v70 = [obj countByEnumeratingWithState:&v108 objects:v124 count:16];
        v71 = &_DASLaunchReasonBackgroundProcessing;
        if (v70)
        {
          v72 = v70;
          v73 = 0;
          v105 = 0;
          v74 = *v109;
          v75 = _DASLaunchReasonBackgroundProcessing;
          v76 = _DASLaunchReasonHealthResearch;
          v103 = _DASLaunchReasonBackgroundRefresh;
          while (1)
          {
            for (i = 0; i != v72; i = i + 1)
            {
              if (*v109 != v74)
              {
                objc_enumerationMutation(obj);
              }

              v78 = *(*(&v108 + 1) + 8 * i);
              v79 = [v78 launchReason];
              if ([v79 isEqualToString:v75])
              {

LABEL_78:
                ++v73;
                continue;
              }

              v80 = [v78 launchReason];
              v81 = [v80 isEqualToString:v76];

              if (v81)
              {
                goto LABEL_78;
              }

              v82 = [v78 launchReason];
              v83 = [v82 isEqualToString:v103];

              v105 += v83;
            }

            v72 = [obj countByEnumeratingWithState:&v108 objects:v124 count:16];
            if (!v72)
            {
              v84 = v73 > 0xA;
              v6 = v106;
              v85 = v105 > 1;
              v71 = &_DASLaunchReasonBackgroundProcessing;
              goto LABEL_84;
            }
          }
        }

        v84 = 0;
        v85 = 0;
LABEL_84:

        if ([v104 count])
        {
          v86 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v132 = v104;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Removing pending tasks: %@", buf, 0xCu);
          }

          v87 = [v104 copy];
          [(_DASDaemon *)v100 cancelActivities:v87];
        }

        v88 = [v6 launchReason];
        v89 = [v88 isEqualToString:_DASLaunchReasonBackgroundProcessing];
        if (v89)
        {
          if (v84)
          {
            v90 = 1;
            goto LABEL_95;
          }
        }

        else
        {
          v71 = [v6 launchReason];
          if ([v71 isEqualToString:_DASLaunchReasonHealthResearch] & v84)
          {
            v90 = 1;
LABEL_94:

LABEL_95:
            v44 = v90 ^ 1;
            if (v102 && v90)
            {
              *v102 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:4 userInfo:0];
            }

            v10 = v98;
            goto LABEL_103;
          }
        }

        v91 = [v6 launchReason];
        v90 = [v91 isEqualToString:_DASLaunchReasonBackgroundRefresh] & v85;

        if (v89)
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      if (a4)
      {
        v29 = _DASActivitySchedulerErrorDomain;
        v30 = 2;
LABEL_101:
        [NSError errorWithDomain:v29 code:v30 userInfo:0];
        *a4 = v44 = 0;
        goto LABEL_103;
      }
    }

    else if (a4)
    {
      v29 = _DASActivitySchedulerErrorDomain;
      v30 = 0;
      goto LABEL_101;
    }

    v44 = 0;
    goto LABEL_103;
  }

  v101 = a4;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSMutableSet *)self->_pendingTasks copy];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v120 objects:v133 count:16];
  v10 = v8;
  v99 = self;
  if (v9)
  {
    v11 = v9;
    v12 = 0;
    v13 = *v121;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v121 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v120 + 1) + 8 * j);
        v16 = [v15 identifier];
        v17 = [v6 identifier];
        v18 = [v16 isEqualToString:v17];

        if (v18)
        {
          v19 = v15;

          v12 = v19;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v120 objects:v133 count:16];
    }

    while (v11);

    if (!v12)
    {
      self = v99;
      goto LABEL_26;
    }

    v20 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    self = v99;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v6 identifier];
      *buf = 138543362;
      v132 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Replacing pending task with new submission: %{public}@", buf, 0xCu);
    }

    v8 = [NSSet setWithObject:v12];
    [(_DASDaemon *)v99 cancelActivities:v8];
  }

  else
  {
    v12 = 0;
  }

LABEL_26:
  os_unfair_recursive_lock_unlock();
  v31 = [(_DASDaemon *)self allPrerunningTasks];
  v32 = [v31 mutableCopy];

  v33 = [(_DASDaemon *)self startedTasks];
  [v32 unionSet:v33];

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v34 = v32;
  v35 = [v34 countByEnumeratingWithState:&v116 objects:v130 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v117;
    while (2)
    {
      for (k = 0; k != v36; k = k + 1)
      {
        if (*v117 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v116 + 1) + 8 * k) identifier];
        v40 = [v6 identifier];
        v41 = [v39 isEqualToString:v40];

        if (v41)
        {
          v45 = _DASActivitySchedulerErrorDomain;
          v128 = @"taskIdentifier";
          v46 = [v6 identifier];
          v129 = v46;
          v47 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          v48 = [NSError errorWithDomain:v45 code:5 userInfo:v47];

          v49 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_10012B234(v6);
          }

          if (v101)
          {
            v50 = v48;
            *v101 = v48;
          }

          v51 = v34;
          goto LABEL_42;
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v116 objects:v130 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v42 = [v6 continuedProcessingWrapper];
  v43 = [v42 submissionStrategy];

  if (v43 || [(_DASDaemon *)v99 additionalCapacityForActivity:v6 inGroupWithName:_DASDefaultContinuedProcessingGroupName shouldTryToSuspend:0]> 0)
  {
    v44 = 1;
  }

  else
  {
    v93 = _DASActivitySchedulerErrorDomain;
    v126 = @"taskIdentifier";
    v94 = [v6 identifier];
    v127 = v94;
    v95 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v51 = [NSError errorWithDomain:v93 code:9 userInfo:v95];

    v96 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      sub_10012B2D8(v6);
    }

    if (v101)
    {
      v97 = v51;
      *v101 = v51;
    }

LABEL_42:

    v44 = 0;
  }

LABEL_103:
  return v44;
}

- (void)cancelAllTaskRequestsForApplication:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v4];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 isBackgroundTaskActivity])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)self cancelActivities:v5];
}

- (void)cancelTaskRequestWithIdentifier:(id)a3 forApplication:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v18 = v7;
  v9 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v14 isBackgroundTaskActivity])
        {
          v15 = [v14 clientProvidedIdentifier];
          v16 = [v15 isEqualToString:v6];

          if (v16)
          {
            [v8 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  os_unfair_recursive_lock_unlock();
  v17 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v6;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Canceling task request %{public}@ for %@", buf, 0x16u);
  }

  [(_DASDaemon *)self cancelActivities:v8];
}

- (void)getPendingTaskRequestsForApplication:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableArray array];
  os_unfair_recursive_lock_lock_with_options();
  os_unfair_recursive_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v6];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if ([v14 isBackgroundTaskActivity] && (-[NSMutableSet containsObject:](self->_runningTasks, "containsObject:", v14) & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_unlock();
  v15 = [v8 copy];
  v7[2](v7, v15);
}

- (void)scheduleConnectionTimeoutForPid:(int)a3
{
  v5 = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10012B378(a3, v5);
  }

  v6 = dispatch_time(0, 10000000000);
  activityLaunchQueue = self->_activityLaunchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E3D50;
  v8[3] = &unk_1001B87C8;
  v9 = a3;
  v8[4] = self;
  dispatch_after(v6, activityLaunchQueue, v8);
}

- (void)establishConnectionFromClient:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v29 = a4;
  v7 = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 connection];
    *buf = 138412546;
    v36 = v6;
    v37 = 1024;
    LODWORD(v38) = [v8 processIdentifier];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Establishing connection from client %@ with pid %d", buf, 0x12u);
  }

  v9 = self->_connectedBGTaskClients;
  objc_sync_enter(v9);
  v10 = [v6 connection];
  v11 = [v10 processIdentifier];

  v12 = [(_DASDaemon *)self connectedBGTaskClients];
  v13 = [NSNumber numberWithInt:v11];
  [v12 setObject:v6 forKeyedSubscript:v13];

  v14 = [(_DASDaemon *)self activitiesWaitingForBGTaskClients];
  v15 = [NSNumber numberWithInt:v11];
  v16 = [v14 objectForKeyedSubscript:v15];

  v17 = [(_DASDaemon *)self activitiesWaitingForBGTaskClients];
  v18 = [NSNumber numberWithInt:v11];
  [v17 removeObjectForKey:v18];

  objc_sync_exit(v9);
  if ([v16 count])
  {
    v19 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v16;
      v37 = 2112;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delivering pending activities %@ to client %@", buf, 0x16u);
    }

    [v6 handleLaunchFromDaemonForActivities:v16];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = v16;
    v21 = 0;
    v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v22)
    {
      v23 = *v31;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v30 + 1) + 8 * i);
          v26 = [v25 suspendRequestDate];
          v27 = v26 == 0;

          if (!v27)
          {
            if (!v21)
            {
              v21 = +[NSMutableSet set];
            }

            [v21 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v22);
    }

    if ([v21 count])
    {
      v28 = [v21 copy];
      [v6 willExpireBGTaskActivities:v28];
    }
  }

  v29[2]();
}

- (void)updateOngoingTask:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 isContinuedProcessingTask])
  {
    [(_DASContinuedProcessingTaskUIClient *)self->_continuedProcessingTaskClient updateMetadataForActivity:v7];
    v6[2](v6);
  }
}

- (void)updateProgressForOngoingTask:(id)a3 completionHandler:(id)a4
{
  progressMonitor = self->_progressMonitor;
  v9 = a4;
  v7 = a3;
  v8 = [v7 progress];
  [(_DASProgressReportingMonitor *)progressMonitor submitProgressUpdate:v8 forActivity:v7];

  [(_DASContinuedProcessingTaskUIClient *)self->_continuedProcessingTaskClient updateProgressForActivity:v7];
  v9[2]();
}

- (void)continuedProcessingDeviceCapabilities:(id)a3
{
  v3 = a3;
  v3[2](v3, +[_DASDeviceQuery supportsBackgroundGPU]);
}

- (void)submittedActivitiesWithHandler:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableSet *)self->_pendingTasks allObjects];
  v9 = [v5 mutableCopy];

  v6 = [(NSMutableSet *)self->_submittedTasks allObjects];
  v7 = [v6 mutableCopy];
  [v9 addObjectsFromArray:v7];

  os_unfair_recursive_lock_unlock();
  [v9 sortUsingComparator:&stru_1001B8808];
  v8 = [NSArray arrayWithArray:v9];
  v4[2](v4, v8);
}

- (void)delayedRunningActivitiesWithHandler:(id)a3
{
  v4 = a3;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableSet *)self->_prerunningTasks allObjects];
  v7 = [v5 mutableCopy];

  os_unfair_recursive_lock_unlock();
  [v7 sortUsingComparator:&stru_1001B8828];
  v6 = [v7 copy];
  v4[2](v4, v6);
}

- (void)runningActivitiesWithHandler:(id)a3
{
  v4 = a3;
  +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E499C;
  v8 = v7[3] = &unk_1001B84C0;
  v5 = v8;
  [(_DASDaemon *)self allClientsDo:v7];
  [v5 sortUsingComparator:&stru_1001B8848];
  v6 = [NSArray arrayWithArray:v5];
  v4[2](v4, v6);
}

- (void)runningGroupActivitiesWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_groupLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMutableDictionary *)self->_groupToRunningTasks allValues];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) allObjects];
        [v5 addObjectsFromArray:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_groupLock);
  v12 = [NSArray arrayWithArray:v5];
  v4[2](v4, v12);
}

- (void)forceRunActivities:(id)a3
{
  v4 = a3;
  v5 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Force Running %lu activities", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(_DASDaemon *)self getActivityWithName:v11, v15];
        if (!v12)
        {
          v14 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Force run activities unable to find activity %@", buf, 0xCu);
          }

          goto LABEL_15;
        }

        v13 = v12;
        [v12 setWasForceRun:1];
        [(_DASDaemon *)self immediatelyBeginWorkForActivity:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)runActivitiesWithUrgency:(int64_t)a3 activities:(id)a4
{
  v6 = a4;
  v7 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v31 = a3;
    *&v31[4] = 2112;
    *&v31[6] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "With %i urgency level, Running %@ activities", buf, 0x12u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 138412290;
    v20 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [(_DASDaemon *)self getActivityWithName:v14, v20];
        if (v15)
        {
          v16 = +[_DASUrgencyOverridePolicy policyInstance];
          [v16 addActivity:v14 urgencyLevel:a3];

          evaluationQueue = self->_evaluationQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000E50BC;
          block[3] = &unk_1001B7100;
          block[4] = self;
          v18 = v15;
          v23 = v14;
          v24 = a3;
          v22 = v18;
          dispatch_async(evaluationQueue, block);
        }

        else
        {
          v19 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v20;
            *v31 = v14;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "With urgency level, run activities unable to find activity %@", buf, 0xCu);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }
}

- (void)currentPredictionsWithHandler:(id)a3
{
  v4 = a3;
  v6 = +[_DASPredictionManager sharedManager];
  v5 = [v6 currentPredictions];
  (*(a3 + 2))(v4, v5);
}

- (void)currentAllocations:(unint64_t)a3 timeFilter:(id)a4 bgsqlData:(id)a5 withHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v14 = [(_DASDaemon *)self createTempBGSQLFile:a5];
  v12 = [(_DASDaemon *)self getActivityAllocationStats:a3 timeFilter:v11 filepath:v14];

  v13 = [v12 copy];
  v10[2](v10, v13);
}

- (id)getActivityAllocationStats:(unint64_t)a3 timeFilter:(id)a4 filepath:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = +[_DASPPSDataManager sharedInstance];
  v11 = [v10 loadPluginPrediction:0 timeFilter:v6 filepath:v7];

  if (v11)
  {
    v108 = v9;
    v101 = v7;
    v102 = v6;
    v103 = v8;
    v120 = 0u;
    v121 = 0u;
    v118 = 0u;
    v119 = 0u;
    v100 = v11;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v118 objects:v124 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v119;
      v17 = 0.0;
      obj = v12;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v119 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v118 + 1) + 8 * i);
          v20 = [v19 metricKeysAndValues];
          v21 = objc_alloc_init(NSMutableDictionary);
          v22 = [v20 objectForKeyedSubscript:@"PredictionWindowID"];
          [v21 setObject:v22 forKeyedSubscript:@"predictionID"];

          v23 = [v20 objectForKeyedSubscript:@"PredictionDate"];
          [v21 setObject:v23 forKeyedSubscript:@"predictionDate"];

          [v108 addObject:v21];
          v24 = [v20 objectForKeyedSubscript:@"PredictionWindowID"];
          v25 = [v24 unsignedIntegerValue];

          if (v25 == a3)
          {
            v26 = v20;

            [v19 epochTimestamp];
            v17 = v27;
            v15 = v26;
          }
        }

        v12 = obj;
        v14 = [obj countByEnumeratingWithState:&v118 objects:v124 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v17 = 0.0;
    }

    v8 = v103;
    if (!a3)
    {
      v28 = [v12 lastObject];
      v29 = [v28 metricKeysAndValues];

      v30 = [v29 objectForKeyedSubscript:@"PredictionWindowID"];
      a3 = [v30 unsignedIntegerValue];

      v31 = [v12 lastObject];
      [v31 epochTimestamp];
      v17 = v32;

      v15 = v29;
    }

    v7 = v101;
    v9 = v108;
    v11 = v100;
    [v103 setObject:v108 forKeyedSubscript:@"allPredictions"];
    if (v15)
    {
      v33 = [NSNumber numberWithUnsignedInteger:a3];
      [v103 setObject:v33 forKeyedSubscript:@"predictionID"];

      v34 = [v15 objectForKeyedSubscript:@"PredictionDuration"];
      [v103 setObject:v34 forKeyedSubscript:@"predictionDuration"];

      v35 = [v15 objectForKeyedSubscript:@"PredictionDate"];
      [v103 setObject:v35 forKeyedSubscript:@"predictionDate"];

      v36 = [v15 objectForKeyedSubscript:@"PredictionDate"];
      [v36 doubleValue];
      v38 = [NSNumber numberWithDouble:v17 - v37];
      [v103 setObject:v38 forKeyedSubscript:@"actualPluginDuration"];

      v39 = +[_DASPPSDataManager sharedInstance];
      v40 = [v39 loadTaskRuntimeAllocation:0 timeFilter:v6 filepath:v101];

      if (v40)
      {
        v99 = v15;
        v104 = objc_alloc_init(NSMutableArray);
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v98 = v40;
        obja = v40;
        v41 = [obja countByEnumeratingWithState:&v114 objects:v123 count:16];
        v42 = &NSLocalizedDescriptionKey_ptr;
        if (v41)
        {
          v43 = v41;
          v44 = *v115;
          v45 = 0.0;
          v46 = 0.0;
          v47 = 0.0;
          do
          {
            for (j = 0; j != v43; j = j + 1)
            {
              if (*v115 != v44)
              {
                objc_enumerationMutation(obja);
              }

              v49 = [*(*(&v114 + 1) + 8 * j) metricKeysAndValues];
              v50 = [v49 objectForKey:@"PredictionWindowID"];
              if (v50)
              {
                v51 = [(NSErrorUserInfoKey *)v42[124] null];

                if (v50 != v51)
                {
                  v52 = [v49 objectForKeyedSubscript:@"PredictionWindowID"];
                  v53 = [v52 unsignedIntegerValue];

                  if (v53 == a3)
                  {
                    v54 = [v49 objectForKeyedSubscript:@"AllocatedRuntime"];
                    [v54 doubleValue];
                    v47 = v47 + v55;

                    v56 = [v49 objectForKeyedSubscript:@"UtilizedRuntime"];
                    [v56 doubleValue];
                    v46 = v46 + v57;

                    v58 = [v49 objectForKeyedSubscript:@"ReallocatedDuration"];
                    v59 = [(NSErrorUserInfoKey *)v42[124] null];
                    v60 = [v58 isEqual:v59];

                    if ((v60 & 1) == 0)
                    {
                      v61 = [v49 objectForKeyedSubscript:@"ReallocatedDuration"];
                      [v61 doubleValue];
                      v45 = v45 + v62;
                    }

                    v42 = &NSLocalizedDescriptionKey_ptr;
                  }
                }
              }
            }

            v43 = [obja countByEnumeratingWithState:&v114 objects:v123 count:16];
          }

          while (v43);
        }

        else
        {
          v45 = 0.0;
          v46 = 0.0;
          v47 = 0.0;
        }

        v63 = [NSNumber numberWithDouble:v47];
        [v103 setObject:v63 forKeyedSubscript:@"totalAllocatedRuntime"];

        v64 = [NSNumber numberWithDouble:v46];
        [v103 setObject:v64 forKeyedSubscript:@"totalUtilizedRuntime"];

        v65 = [NSNumber numberWithDouble:v45];
        [v103 setObject:v65 forKeyedSubscript:@"totalReallocatedDuration"];

        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        objb = obja;
        v66 = [objb countByEnumeratingWithState:&v110 objects:v122 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v111;
          do
          {
            for (k = 0; k != v67; k = k + 1)
            {
              if (*v111 != v68)
              {
                objc_enumerationMutation(objb);
              }

              v70 = *(*(&v110 + 1) + 8 * k);
              v71 = objc_alloc_init(NSMutableDictionary);
              v72 = [v70 metricKeysAndValues];
              v73 = [v72 objectForKey:@"PredictionWindowID"];
              if (v73)
              {
                v74 = [(NSErrorUserInfoKey *)v42[124] null];

                if (v73 != v74)
                {
                  v75 = [v72 objectForKeyedSubscript:@"PredictionWindowID"];
                  v76 = [v75 unsignedIntegerValue];

                  if (v76 == a3)
                  {
                    v77 = [v72 objectForKeyedSubscript:@"TaskName"];
                    [v71 setObject:v77 forKeyedSubscript:@"taskName"];

                    v78 = [v72 objectForKeyedSubscript:@"PredictionWindowID"];
                    [v71 setObject:v78 forKeyedSubscript:@"sessionPredictionID"];

                    v79 = [v72 objectForKeyedSubscript:@"AllocatedRuntime"];
                    [v79 doubleValue];
                    v81 = v80;

                    v82 = [v72 objectForKeyedSubscript:@"UtilizedRuntime"];
                    [v82 doubleValue];
                    v84 = v83;

                    v85 = [v72 objectForKeyedSubscript:@"ReallocatedDuration"];
                    v86 = [(NSErrorUserInfoKey *)v42[124] null];
                    v87 = [v85 isEqual:v86];

                    v88 = 0.0;
                    if ((v87 & 1) == 0)
                    {
                      v89 = [v72 objectForKeyedSubscript:@"ReallocatedDuration"];
                      [v89 doubleValue];
                      v88 = v90;
                    }

                    v91 = [NSNumber numberWithDouble:v81, v98];
                    [v71 setObject:v91 forKeyedSubscript:@"allocatedRuntime"];

                    v92 = [NSNumber numberWithDouble:v84];
                    [v71 setObject:v92 forKeyedSubscript:@"utilizedRuntime"];

                    v93 = [NSNumber numberWithDouble:v88];
                    [v71 setObject:v93 forKeyedSubscript:@"reallocatedRuntime"];

                    v94 = [NSNumber numberWithDouble:v81 / v47 * 100.0];
                    [v71 setObject:v94 forKeyedSubscript:@"percentageAllocation"];

                    v95 = [NSNumber numberWithDouble:v84 / v81 * 100.0];
                    [v71 setObject:v95 forKeyedSubscript:@"percentageUtilization"];

                    [v104 addObject:v71];
                    v42 = &NSLocalizedDescriptionKey_ptr;
                  }
                }
              }
            }

            v67 = [objb countByEnumeratingWithState:&v110 objects:v122 count:16];
          }

          while (v67);
        }

        v8 = v103;
        [v103 setObject:v104 forKeyedSubscript:@"allAllocations"];

        v7 = v101;
        v6 = v102;
        v9 = v108;
        v15 = v99;
        v11 = v100;
        v40 = v98;
      }

      v96 = v8;
    }
  }

  else
  {
    [v8 setObject:v9 forKeyedSubscript:@"allPredictions"];
  }

  return v8;
}

- (id)earlyToday
{
  v2 = +[NSCalendar currentCalendar];
  v3 = +[NSDate now];
  v4 = [v2 components:28 fromDate:v3];

  [v4 setHour:3];
  v5 = [v2 dateFromComponents:v4];

  return v5;
}

- (id)widgetViewsStatistics
{
  v3 = +[NSCountedSet set];
  v4 = [(_DASDaemon *)self earlyToday];
  v5 = +[NSDate now];
  v6 = +[NSMutableDictionary dictionary];
  v7 = BiomeLibrary();
  v8 = [v7 Widgets];
  v9 = [v8 Viewed];

  v36 = v5;
  v37 = v4;
  v10 = [[BMPublisherOptions alloc] initWithStartDate:v5 endDate:v4 maxEvents:0 lastN:0 reversed:1];
  v11 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v12 = [v11 getConsoleUserUid];

  v34 = v10;
  v35 = v9;
  v13 = [v9 publisherWithUser:v12 useCase:@"DuetActivitySchedulerWidgetRefresh" options:v10];
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000E6298;
  v48[3] = &unk_1001B5AE0;
  v14 = v3;
  v49 = v14;
  v32 = v6;
  v33 = v13;
  v50 = v32;
  v15 = [v13 sinkWithCompletion:&stru_1001B8868 receiveInput:v48];
  +[NSMutableDictionary dictionary];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000E632C;
  v16 = v45[3] = &unk_1001B5F30;
  v46 = v16;
  v17 = v14;
  v47 = v17;
  [v17 enumerateObjectsUsingBlock:v45];
  v31 = v17;
  v18 = [v17 allObjects];
  v19 = [v18 mutableCopy];

  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000E63B8;
  v43[3] = &unk_1001B7A90;
  v20 = v16;
  v44 = v20;
  [v19 sortUsingComparator:v43];
  v21 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v19;
  v22 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v40;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v40 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v52[0] = *(*(&v39 + 1) + 8 * i);
        v51[0] = @"name";
        v51[1] = @"count";
        v26 = [v20 objectForKeyedSubscript:?];
        [v26 doubleValue];
        v28 = [NSNumber numberWithDouble:round(v27)];
        v52[1] = v28;
        v29 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
        [v21 addObject:v29];
      }

      v23 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    }

    while (v23);
  }

  return v21;
}

- (id)widgetRefreshStatistics
{
  v3 = +[NSCountedSet set];
  v4 = +[NSCountedSet set];
  v5 = [(_DASDaemon *)self earlyToday];
  v6 = +[NSDate now];
  v7 = BiomeLibrary();
  v8 = [v7 Widgets];
  v9 = [v8 Refresh];

  v42 = v6;
  v43 = v5;
  v10 = [[BMPublisherOptions alloc] initWithStartDate:v6 endDate:v5 maxEvents:0 lastN:0 reversed:1];
  v11 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v12 = [v11 getConsoleUserUid];

  v40 = v10;
  v41 = v9;
  v13 = [v9 publisherWithUser:v12 useCase:@"DuetActivitySchedulerWidgetRefresh" options:v10];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_1000E6998;
  v58[3] = &unk_1001B5AE0;
  v14 = v3;
  v59 = v14;
  v15 = v4;
  v60 = v15;
  v39 = v13;
  v16 = [v13 sinkWithCompletion:&stru_1001B8888 receiveInput:v58];
  v17 = +[NSMutableDictionary dictionary];
  v18 = +[NSMutableDictionary dictionary];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_1000E6A18;
  v53[3] = &unk_1001B88B0;
  v19 = v17;
  v54 = v19;
  v20 = v14;
  v55 = v20;
  v46 = v18;
  v56 = v46;
  v37 = v15;
  v57 = v37;
  [v20 enumerateObjectsUsingBlock:v53];
  v38 = v20;
  v21 = [v20 allObjects];
  v22 = [v21 mutableCopy];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000E6AE4;
  v51[3] = &unk_1001B7A90;
  v23 = v19;
  v52 = v23;
  [v22 sortUsingComparator:v51];
  v45 = +[NSMutableArray array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v22;
  v24 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v48;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v48 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v47 + 1) + 8 * i);
        v62[0] = v28;
        v61[0] = @"name";
        v61[1] = @"count";
        v29 = [v23 objectForKeyedSubscript:v28];
        [v29 doubleValue];
        v31 = [NSNumber numberWithDouble:round(v30)];
        v62[1] = v31;
        v61[2] = @"dasRefreshes";
        v32 = [v46 objectForKeyedSubscript:v28];
        [v32 doubleValue];
        v34 = [NSNumber numberWithDouble:round(v33)];
        v62[2] = v34;
        v35 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:3];
        [v45 addObject:v35];
      }

      v25 = [obj countByEnumeratingWithState:&v47 objects:v63 count:16];
    }

    while (v25);
  }

  return v45;
}

- (void)statisticsWithHandler:(id)a3
{
  v14[0] = @"widgetViews";
  v12[0] = @"name";
  v12[1] = @"data";
  v13[0] = @"Widget Views";
  v4 = a3;
  v5 = [(_DASDaemon *)self widgetViewsStatistics];
  v13[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[1] = @"widgetRefreshes";
  v15[0] = v6;
  v10[1] = @"data";
  v11[0] = @"Widget Refreshes";
  v10[0] = @"name";
  v7 = [(_DASDaemon *)self widgetRefreshStatistics];
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  v4[2](v4, v9);
}

- (void)allBudgetsWithHandler:(id)a3
{
  budgetManager = self->_budgetManager;
  v5 = a3;
  v6 = [(_DASBudgetManager *)budgetManager allBudgets];
  (*(a3 + 2))(v5, v6);
}

- (void)balanceForBudgetWithName:(id)a3 withHandler:(id)a4
{
  budgetManager = self->_budgetManager;
  v7 = a4;
  [(_DASBudgetManager *)budgetManager balanceForBudgetWithName:a3];
  (*(a4 + 2))(v7);
}

- (void)policiesWithHandler:(id)a3
{
  v18 = a3;
  v3 = +[NSMutableDictionary dictionary];
  +[_DASPolicyManager allPoliciesForPlatform];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 policyName];
        v10 = [_DASPolicyManager bitmaskForPolicy:v9];

        v11 = +[NSMutableDictionary dictionary];
        v12 = [v8 policyName];
        [v11 setValue:v12 forKey:@"policyName"];

        v13 = [v8 policyDescription];
        if (v13)
        {
          v14 = [v8 policyDescription];
          [v11 setValue:v14 forKey:@"policyDescription"];
        }

        else
        {
          [v11 setValue:&stru_1001BA3C0 forKey:@"policyDescription"];
        }

        v15 = [NSNumber numberWithUnsignedLong:v10];
        v16 = [v15 stringValue];
        [v3 setValue:v11 forKey:v16];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = [v3 copy];
  v18[2](v18, v17);
}

- (id)evaluatePolicies:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  os_unfair_recursive_lock_lock_with_options();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v68 = self;
  v6 = [(_DASDaemon *)self pendingTasks];
  v7 = [v6 countByEnumeratingWithState:&v82 objects:v91 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v83;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v83 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v82 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v4 isEqualToString:v12];

        if (v13)
        {
          v14 = v11;
          v65 = 1;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v82 objects:v91 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v65 = 0;
  v14 = 0;
LABEL_11:

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v15 = [(_DASDaemon *)v68 prerunningTasks];
  v16 = [v15 countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v79;
    while (2)
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v79 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v78 + 1) + 8 * j);
        v21 = [v20 name];
        v22 = [v4 isEqualToString:v21];

        if (v22)
        {
          v23 = v20;

          v64 = 1;
          v14 = v23;
          goto LABEL_21;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v78 objects:v90 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v64 = 0;
LABEL_21:

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v24 = [(_DASDaemon *)v68 runningTasks];
  v25 = [v24 countByEnumeratingWithState:&v74 objects:v89 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v75;
    while (2)
    {
      for (k = 0; k != v26; k = k + 1)
      {
        if (*v75 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v74 + 1) + 8 * k);
        v30 = [v29 name];
        v31 = [v4 isEqualToString:v30];

        if (v31)
        {
          v33 = v29;

          v32 = 1;
          goto LABEL_31;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v74 objects:v89 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0;
  v33 = v14;
LABEL_31:

  os_unfair_recursive_lock_unlock();
  if (v33)
  {
    v63 = v5;
    v34 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v88 = v4;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Evaluating policies for %@", buf, 0xCu);
    }

    v62 = v32;

    v66 = +[NSMutableDictionary dictionary];
    +[_DASPolicyManager allPoliciesForPlatform];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v73 = 0u;
    v35 = [obj countByEnumeratingWithState:&v70 objects:v86 count:16];
    v67 = v33;
    if (v35)
    {
      v36 = v35;
      v37 = *v71;
      do
      {
        for (m = 0; m != v36; m = m + 1)
        {
          if (*v71 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v70 + 1) + 8 * m);
          v40 = objc_autoreleasePoolPush();
          v41 = +[NSMutableDictionary dictionary];
          if ([v39 appliesToActivity:v33])
          {
            [v39 weightForActivity:v33];
            v43 = v42;
            v44 = [(_DASDaemon *)v68 context];
            v45 = [v39 responseForActivity:v33 withState:v44];

            v46 = [v45 rationale];
            v47 = [NSNumber numberWithDouble:v43];
            [v41 setValue:v47 forKey:@"weightForActivity"];

            [v45 score];
            v48 = [NSNumber numberWithDouble:?];
            [v41 setValue:v48 forKey:@"score"];

            v49 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v45 policyDecision]);
            [v41 setValue:v49 forKey:@"policyDecision"];

            [v45 validityDuration];
            v50 = [NSNumber numberWithDouble:?];
            [v41 setValue:v50 forKey:@"validityDuration"];

            v51 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v46 responseOptions]);
            [v41 setValue:v51 forKey:@"rationaleResponseOptions"];

            if (objc_opt_respondsToSelector())
            {
              v52 = [v39 blockReasons:v45];
              [v41 setValue:v52 forKey:@"blockReasons"];
            }

            v53 = [v46 description];
            [v41 setValue:v53 forKey:@"rationaleDescription"];

            v54 = [v39 policyName];
            [v66 setValue:v41 forKey:v54];

            v33 = v67;
          }

          objc_autoreleasePoolPop(v40);
        }

        v36 = [obj countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v36);
    }

    v55 = [NSNumber numberWithBool:v65];
    v56 = [v55 unsignedIntValue];
    v57 = [NSNumber numberWithBool:v64];
    v58 = v56 | (2 * [v57 unsignedIntValue]);
    v59 = [NSNumber numberWithBool:v62];
    v60 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v58 | (4 * [v59 unsignedIntValue]));

    v33 = v67;
    v5 = v63;
    [v63 setValue:v60 forKey:@"taskStatus"];
    [v63 setValue:v66 forKey:@"policyEvaluations"];
  }

  return v5;
}

- (void)evaluatePolicies:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000DA0B8;
  v18 = sub_1000DA0C8;
  v19 = 0;
  evaluationQueue = self->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E78C0;
  block[3] = &unk_1001B5D98;
  v13 = &v14;
  block[4] = self;
  v9 = v6;
  v12 = v9;
  dispatch_sync(evaluationQueue, block);
  v10 = [v15[5] copy];
  v7[2](v7, v10);

  _Block_object_dispose(&v14, 8);
}

- (void)evaluateAllActivities:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  evaluationQueue = self->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E7A24;
  block[3] = &unk_1001B69E0;
  block[4] = self;
  v12 = &v13;
  v9 = v6;
  v11 = v9;
  dispatch_sync(evaluationQueue, block);
  v7[2](v7, *(v14 + 24));

  _Block_object_dispose(&v13, 8);
}

- (BOOL)evaluateAllActivitiesFor:(id)a3 writingToFile:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E7BD8;
  v7[3] = &unk_1001B88D8;
  v7[4] = self;
  v8 = a4;
  v5 = v8;
  LOBYTE(a3) = [a3 enumerateObjectsInChunksOfSize:5 block:v7];

  return a3;
}

- (BOOL)evaluatePoliciesForActivitiesChunk:(id)a3 writingToFile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = [v14 name];
        v16 = [(_DASDaemon *)self evaluatePolicies:v15];
        v17 = [v14 name];
        [v8 setValue:v16 forKey:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

  v27 = 0;
  v18 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:&v27];
  v19 = v27;
  if (v19)
  {
    v20 = v19;
    v21 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10012B6AC();
    }

LABEL_16:

    v24 = 0;
    goto LABEL_17;
  }

  v26 = 0;
  v22 = [v7 writeData:v18 error:&v26];
  v23 = v26;
  v20 = v23;
  if (!v22 || v23)
  {
    v21 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10012B71C();
    }

    goto LABEL_16;
  }

  v24 = 1;
LABEL_17:

  return v24;
}

- (void)runProceedableActivities:(id)a3 handler:(id)a4
{
  v5 = a3;
  v26 = a4;
  v30 = +[NSMutableDictionary dictionary];
  v27 = objc_opt_new();
  v6 = [(_DASDaemon *)self testModeParameters];
  v38 = [v6 objectForKeyedSubscript:@"activities"];

  v7 = [(_DASDaemon *)self testModeParameters];
  v36 = [v7 objectForKeyedSubscript:@"overrides"];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v5;
  v32 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
  if (v32)
  {
    v29 = *v51;
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v29)
        {
          v9 = v8;
          objc_enumerationMutation(obj);
          v8 = v9;
        }

        v33 = v8;
        v10 = *(*(&v50 + 1) + 8 * v8);
        v37 = objc_opt_new();
        v44 = 0;
        v45 = &v44;
        v46 = 0x3032000000;
        v47 = sub_1000DA0B8;
        v48 = sub_1000DA0C8;
        v49 = 0;
        evaluationQueue = self->_evaluationQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000E84B4;
        block[3] = &unk_1001B5D98;
        block[5] = v10;
        block[6] = &v44;
        block[4] = self;
        dispatch_sync(evaluationQueue, block);
        v34 = [v45[5] objectForKey:@"taskStatus"];
        v12 = [v34 unsignedIntegerValue];
        v13 = +[NSMutableDictionary dictionary];
        [v13 setObject:v37 forKeyedSubscript:@"blockingPolicies"];
        [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:@"foundActivity"];
        v35 = v13;
        if ([v45[5] count] && (v12 & 1) != 0)
        {
          [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:@"foundActivity"];
          v14 = [v45[5] objectForKeyedSubscript:@"policyEvaluations"];
          v15 = [v14 allKeys];
          v16 = [v15 sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v17 = v16;
          v18 = [v17 countByEnumeratingWithState:&v39 objects:v56 count:16];
          if (v18)
          {
            v19 = *v40;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v40 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = *(*(&v39 + 1) + 8 * i);
                v22 = [v14 objectForKeyedSubscript:v21];
                v23 = [v22 objectForKeyedSubscript:@"policyDecision"];
                v24 = [v23 longValue];

                if ((![v38 containsObject:v10] || (objc_msgSend(v36, "containsObject:", v21) & 1) == 0) && (v24 == 100 || v24 == 33))
                {
                  [v37 addObject:v21];
                }
              }

              v18 = [v17 countByEnumeratingWithState:&v39 objects:v56 count:16];
            }

            while (v18);
          }

          if (![v37 count])
          {
            v25 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = v10;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%@ is a proceedable activity!", buf, 0xCu);
            }

            [v27 addObject:v10];
          }
        }

        [v30 setObject:v35 forKeyedSubscript:v10];

        _Block_object_dispose(&v44, 8);
        v8 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    }

    while (v32);
  }

  [(_DASDaemon *)self forceRunActivities:v27];
  v26[2](v26, v30);
}

- (void)activityContainsOverrides:(id)a3 handler:(id)a4
{
  v8 = a4;
  v4 = +[_DASPlistParser sharedInstance];
  v5 = [v4 loadOverrides];

  if (v5)
  {
    v6 = +[_DASPlistParser sharedInstance];
    v7 = [v6 loadOverrides];
    v8[2](v8, v7);
  }
}

- (void)blockingPoliciesWithParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v33 = a4;
  v34 = v6;
  v35 = [v6 objectForKeyedSubscript:@"activity"];
  os_unfair_recursive_lock_lock_with_options();
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v37 = self;
  v7 = [(NSMutableSet *)self->_pendingTasks allObjects];
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v8)
  {
    v9 = *v50;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v12 isEqualToString:v35];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v34 objectForKeyedSubscript:@"activityClasses"];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v48 = 0u;
  v14 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    v36 = *v46;
    do
    {
      v17 = 0;
      v38 = v15;
      do
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(obj);
        }

        if ([*(*(&v45 + 1) + 8 * v17) isEqualToString:@"icpl"])
        {
          v40 = v17;
          v18 = +[NSDate distantPast];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v19 = [(NSMutableSet *)v37->_pendingTasks allObjects];
          v20 = [v19 countByEnumeratingWithState:&v41 objects:v55 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v42;
            do
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v42 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v41 + 1) + 8 * j);
                if ([_DASPhotosPolicy isiCPLActivity:v24])
                {
                  v25 = [v24 lastScored];
                  if (v25)
                  {
                    [v18 timeIntervalSinceDate:v25];
                    if (v26 < 0.0)
                    {
                      v27 = v25;

                      v28 = v24;
                      v18 = v27;
                      v8 = v28;
                    }
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v41 objects:v55 count:16];
            }

            while (v21);
          }

          v16 = v36;
          v15 = v38;
          v17 = v40;
        }

        v17 = v17 + 1;
      }

      while (v17 != v15);
      v15 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v15);
  }

  os_unfair_recursive_lock_unlock();
  if (v8)
  {
    v29 = [_DASConditionScore lastDenialResponses:v8];
    v30 = v33;
    (*(v33 + 2))(v33, v29);
  }

  else
  {
    v31 = +[_DASDaemonLogger defaultCategory];
    v30 = v33;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v34 description];
      *buf = 138412290;
      v54 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No blocked activity was found for %@", buf, 0xCu);
    }

    (*(v33 + 2))(v33, &__NSArray0__struct);
  }
}

- (void)enterTestModeWithParameters:(id)a3 reset:(BOOL)a4 handler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[_DASDaemonLogger defaultCategory];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v11)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resetting test mode parameters", &v13, 2u);
    }

    [(NSUserDefaults *)self->_testingDefaults setObject:0 forKey:@"testModeParameters"];
    [(_DASDaemon *)self setTestModeParameters:0];
  }

  else
  {
    if (v11)
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Entering test mode with parameters: %@", &v13, 0xCu);
    }

    [(NSUserDefaults *)self->_testingDefaults setObject:v8 forKey:@"testModeParameters"];
    [(_DASDaemon *)self setTestModeParameters:v8];
    v12 = +[NSDate date];
    [(NSUserDefaults *)self->_testingDefaults setObject:v12 forKey:@"testModeLastUpdated"];
  }

  v9[2](v9, 1);
}

- (void)submitRateLimitConfiguration:(id)a3 handler:(id)a4
{
  v7 = a4;
  v5 = a3;
  v6 = +[_DASActivityRateLimitManager sharedLimiter];
  [v6 submitRateLimitConfiguration:v5];

  v7[2](v7, 1);
}

- (void)pauseWithParameters:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pausing scheduling with parameters: %@", &v13, 0xCu);
  }

  if ([v6 count])
  {
    v9 = [v6 mutableCopy];
    v10 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [v9 setObject:v11 forKeyedSubscript:@"validUntil"];

    [(NSUserDefaults *)self->_testingDefaults setObject:v9 forKey:@"pausedParameters"];
    [(_DASDaemon *)self setPausedParameters:v9];
    v12 = [(_DASDaemon *)self tasksNoLongerEligible];
    [(_DASDaemon *)self suspendActivities:v12];
  }

  else
  {
    [(NSUserDefaults *)self->_testingDefaults removeObjectForKey:@"pausedParameters"];
    [(_DASDaemon *)self setPausedParameters:0];
  }

  v7[2](v7, 1);
}

- (void)addPauseExceptParameter:(id)a3 handler:(id)a4
{
  v6 = a4;
  if (a3)
  {
    testingDefaults = self->_testingDefaults;
    v8 = a3;
    v9 = [(NSUserDefaults *)testingDefaults objectForKey:@"pausedParameters"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 mutableCopy];
    }

    else
    {
      v11 = +[NSMutableDictionary dictionary];
    }

    v12 = v11;
    v13 = [v11 objectForKeyedSubscript:@"exceptTypes"];
    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:@"exceptTypes"];
      v15 = [v14 mutableCopy];
    }

    else
    {
      v15 = +[NSMutableArray array];
    }

    [v15 addObject:v8];
    v16 = [NSArray arrayWithArray:v15];
    [v12 setObject:v16 forKeyedSubscript:@"exceptTypes"];

    v17 = [NSDictionary dictionaryWithDictionary:v12];
    [(_DASDaemon *)self setPausedParameters:v17];

    v18 = self->_testingDefaults;
    v19 = [(_DASDaemon *)self pausedParameters];
    [(NSUserDefaults *)v18 setObject:v19 forKey:@"pausedParameters"];

    v20 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(_DASDaemon *)self pausedParameters];
      v22 = 138412290;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding pause parameter: %@", &v22, 0xCu);
    }
  }

  v6[2](v6, 1);
}

- (void)deleteLimitForActivity:(id)a3 forLimiterWithName:(id)a4 handler:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(_DASRuntimeLimiter *)self->_runtimeLimiter limitationName];
  v11 = [v10 lowercaseString];
  v12 = [v11 isEqualToString:v8];

  if (v12)
  {
    p_runtimeLimiter = &self->_runtimeLimiter;
  }

  else
  {
    v14 = [(_DASConfigurationLimiter *)self->_configurationLimiter limitationName];
    v15 = [v14 lowercaseString];
    v16 = [v15 isEqualToString:v8];

    if (!v16)
    {
      goto LABEL_6;
    }

    p_runtimeLimiter = &self->_configurationLimiter;
  }

  v9[2](v9, [*p_runtimeLimiter deleteLimitForActivity:v17]);
LABEL_6:
  v9[2](v9, 0);
}

- (void)updateLimit:(double)a3 forActivity:(id)a4 forLimiterWithName:(id)a5 handler:(id)a6
{
  v21 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(_DASRuntimeLimiter *)self->_runtimeLimiter limitationName];
  v13 = [v12 lowercaseString];
  v14 = [v10 lowercaseString];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    v16 = [(_DASRuntimeLimiter *)self->_runtimeLimiter setLimit:v21 forActivity:a3];
  }

  else
  {
    v17 = [(_DASConfigurationLimiter *)self->_configurationLimiter limitationName];
    v18 = [v17 lowercaseString];
    v19 = [v10 lowercaseString];
    v20 = [v18 isEqualToString:v19];

    if (!v20)
    {
      goto LABEL_6;
    }

    v16 = [(_DASConfigurationLimiter *)self->_configurationLimiter setLimitForActivity:v21];
  }

  v11[2](v11, v16);
LABEL_6:
  v11[2](v11, 0);
}

- (void)getLimiterResponseForActivity:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_DASDaemon *)self allTasks];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v43 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v40 + 1) + 8 * v12);
      v14 = [v13 name];
      v15 = [v6 isEqualToString:v14];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v40 objects:v47 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = [v13 limitationResponse];

    v17 = +[NSMutableArray array];
    if (!v19)
    {
      v16 = 0;
      goto LABEL_22;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = v19;
    v20 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v34 = v6;
      obj = v18;
      v32 = v8;
      v33 = v7;
      v22 = *v37;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          v25 = [NSMutableDictionary dictionary:v32];
          v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 decision]);
          [v24 validityDuration];
          v27 = [NSNumber numberWithDouble:?];
          [v25 setObject:v26 forKey:@"decision"];
          v28 = [v24 rationale];
          [v25 setObject:v28 forKey:@"rationale"];

          v29 = [v24 limiterName];
          [v25 setObject:v29 forKey:@"limiterName"];

          [v25 setObject:v27 forKey:@"validityDuration"];
          [v17 addObject:v25];
        }

        v21 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v21);
      v6 = v34;
      v18 = obj;
      v16 = obj;
      v8 = v32;
      v7 = v33;
    }

    else
    {
      v16 = v18;
    }
  }

  else
  {
LABEL_9:
    v16 = 0;
    v17 = 0;
    v18 = v8;
  }

LABEL_22:
  v30 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v17;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Limiter Response: %@", buf, 0xCu);
  }

  v31 = [v17 copy];
  v7[2](v7, v31);
}

- (void)getRuntimeLimit:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(_DASDaemon *)self allTasks];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
  v10 = -1.0;
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 name];
        v16 = [v6 isEqualToString:v15];

        if (v16)
        {
          [(_DASRuntimeLimiter *)self->_runtimeLimiter maximumRuntimeForActivity:v14];
          v10 = v17;
          goto LABEL_11;
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2048;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Maximum Allowable Runtime: %lf", buf, 0x16u);
  }

  v7[2](v7, v10);
}

- (id)createTempBGSQLFile:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = NSTemporaryDirectory();
    v5 = +[NSUUID UUID];
    v6 = [NSString stringWithFormat:@"%@tempSQL_%@.BGSQL", v4, v5];
    v7 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "File Path: %s", buf, 0xCu);
    }

    v8 = +[NSFileManager defaultManager];
    [v8 createFileAtPath:v6 contents:v3 attributes:0];

    v9 = [NSURL fileURLWithPath:v6 isDirectory:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeTempBGSQLFile:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 path];
      *buf = 136315138;
      v14 = [v5 UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing temporary BGSQL file at %s", buf, 0xCu);
    }

    v6 = +[NSFileManager defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtURL:v3 error:&v12];
    v8 = v12;

    if ((v7 & 1) == 0)
    {
      v9 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10012B78C(v8);
      }
    }

    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getElapsedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:v11];

  v15 = [v17 computeElapsedRunTimes:v13 timeFilter:v12 filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  v10[2](v10, v16);
}

- (void)getEstimatedRuntimes:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:v11];

  v15 = [v17 computeEstimatedRunTimes:v13 timeFilter:v12 filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  v10[2](v10, v16);
}

- (void)getConditionsPenalties:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = +[_DASLatencyProjector sharedInstance];
  v7 = [v9 computeConditionsPenalties:v6];

  v8 = [v7 copy];
  v5[2](v5, v8);
}

- (void)getSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:v9];

  v12 = [v14 getSchedulerEfficiencyMetrics:v10 filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  v8[2](v8, v13);
}

- (void)getContentionPenalties:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = +[_DASLatencyProjector sharedInstance];
  v7 = [v9 computeContentionPenalties:v6];

  v8 = [v7 copy];
  v5[2](v5, v8);
}

- (void)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:v9];

  v12 = [v14 getOvernightIntensiveSchedulerEfficiencyMetrics:v10 filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  v8[2](v8, v13);
}

- (void)getFeatureTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:v11];

  v15 = [v17 getFeatureTimelines:v13 timeFilter:v12 filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  v10[2](v10, v16);
}

- (void)getActivityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:v11];

  v15 = [v17 getActivityTimelines:v13 timeFilter:v12 filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  v10[2](v10, v16);
}

- (void)getEligibilityTimelines:(id)a3 timeFilter:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:v11];

  v15 = [v17 getEligibilityTimelinesForTasks:v13 timeFilter:v12 filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  v10[2](v10, v16);
}

- (void)getDeviceConditionTimelines:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:v9];

  v12 = [v14 getDeviceConditionTimelines:v10 filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  v8[2](v8, v13);
}

- (void)getInstallTimeline:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:v9];

  v12 = [v14 getInstallTimeline:v10 filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  v8[2](v8, v13);
}

- (void)getBuddyEvents:(id)a3 bgsqlData:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:v9];

  v12 = [v14 getBuddyData:v10 filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  v8[2](v8, v13);
}

- (void)getEstimatedMADCompletionTimes:(id)a3 endDate:(id)a4 bgsqlData:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:v11];

  v15 = [v17 computeEstimatedMADCompletionTimes:v13 endDate:v12 filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  v10[2](v10, v16);
}

- (void)getSortedCandidateActivities:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = [NSPredicate predicateWithFormat:@"SELF.name IN %@", a3];
  v7 = +[_DASDaemon sharedInstance];
  v8 = [v7 allTasks];
  v9 = [v8 filteredSetUsingPredicate:v6];

  v10 = +[_DASDaemon sharedInstance];
  v11 = [v10 sortCandidateActivities:v9];

  v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v20 + 1) + 8 * v17) name];
        [v12 addObject:v18];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];
  v5[2](v5, v19);
}

- (void)triggerScoreEvaluationAndRunActivities:(id)a3 handler:(id)a4
{
  v12 = a4;
  v5 = [NSPredicate predicateWithFormat:@"SELF.name IN %@", a3];
  v6 = +[_DASDaemon sharedInstance];
  v7 = [v6 allTasks];
  v8 = [v7 filteredSetUsingPredicate:v5];
  v9 = [v8 allObjects];

  if (v9)
  {
    v10 = +[_DASDaemon sharedInstance];
    v11 = [v9 mutableCopy];
    [v10 evaluateScoreAndRunActivities:v11];
  }

  v12[2](v12, v9 != 0);
}

- (void)registerForNetworkPathEvaluation
{
  networkEvaluationMonitor = self->_networkEvaluationMonitor;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000EAC50;
  v3[3] = &unk_1001B8900;
  v3[4] = self;
  [(_DASNetworkEvaluationMonitor *)networkEvaluationMonitor registerForNetworkEvaluationWithCallback:v3];
}

- (void)handleTriggers:(id)a3
{
  v3 = a3;
  v61 = os_transaction_create();
  v4 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 description];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    *buf = 138543362;
    v105 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to suspend based on triggers: %{public}@", buf, 0xCu);
  }

  v7 = [(_DASDaemon *)self tasksNoLongerEligible];
  [(_DASDaemon *)self suspendActivities:v7];

  v66 = +[NSMutableSet set];
  v75 = +[NSMutableSet set];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v3;
  v64 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
  if (v64)
  {
    v63 = *v97;
    v8 = _DASLaunchReasonNSURLSessionComplete;
    v79 = _DASLaunchReasonWatchConnectivityPendingData;
    v78 = _DASLaunchReasonBackgroundRemoteNotification;
    do
    {
      for (i = 0; i != v64; i = i + 1)
      {
        if (*v97 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v68 = *(*(&v96 + 1) + 8 * i);
        if (([v66 containsObject:?] & 1) == 0)
        {
          [v66 addObject:v68];
          v65 = [(NSDictionary *)self->_triggerToPolicyMap objectForKeyedSubscript:v68];
          if ([v65 shouldIgnoreTrigger:v68 withState:self->_context])
          {
            p_super = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
            {
              v10 = [v65 policyName];
              *buf = 138543618;
              v105 = v68;
              v106 = 2112;
              v107 = v10;
              _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "Ignoring trigger %{public}@, conditions are worse (policy: %@)", buf, 0x16u);
            }

            goto LABEL_65;
          }

          if (![v68 isEqualToString:@"com.apple.das.apppolicy.appchanged"])
          {
            goto LABEL_37;
          }

          v69 = [_DASApplicationPolicy focalApplicationsWithContext:self->_context];
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v71 = [v69 countByEnumeratingWithState:&v92 objects:v103 count:16];
          if (!v71)
          {
            goto LABEL_36;
          }

          v70 = *v93;
          while (2)
          {
            v11 = 0;
            while (2)
            {
              if (*v93 != v70)
              {
                v12 = v11;
                objc_enumerationMutation(v69);
                v11 = v12;
              }

              v72 = v11;
              v76 = *(*(&v92 + 1) + 8 * v11);
              v13 = +[NSMutableSet set];
              os_unfair_recursive_lock_lock_with_options();
              v14 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:v76];
              v90 = 0u;
              v91 = 0u;
              v88 = 0u;
              v89 = 0u;
              v15 = [v14 countByEnumeratingWithState:&v88 objects:v102 count:16];
              if (v15)
              {
                v16 = *v89;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v89 != v16)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v18 = *(*(&v88 + 1) + 8 * v17);
                    v19 = [v18 launchReason];
                    if ([v19 isEqualToString:v8])
                    {

LABEL_26:
                      [v13 addObject:v18];
                      goto LABEL_27;
                    }

                    v20 = [v18 launchReason];
                    v21 = [v20 isEqualToString:v79];

                    if (v21)
                    {
                      goto LABEL_26;
                    }

                    v22 = [v18 launchReason];
                    v23 = [v22 isEqualToString:v78];

                    if (v23)
                    {
                      v24 = +[NSDate date];
                      v25 = [v18 startAfter];
                      [v25 timeIntervalSinceDate:v24];
                      v27 = v26 > 0.0;

                      if (v27)
                      {
                        [v18 setStartAfter:v24];
                      }
                    }

LABEL_27:
                    v17 = v17 + 1;
                  }

                  while (v15 != v17);
                  v28 = [v14 countByEnumeratingWithState:&v88 objects:v102 count:16];
                  v15 = v28;
                }

                while (v28);
              }

              os_unfair_recursive_lock_unlock();
              [(_DASDaemon *)self cancelActivities:v13];
              v29 = +[_DASApplicationPolicy policyInstance];
              [v29 updateAppLaunchedRecently:v76];

              v11 = v72 + 1;
              if (v72 + 1 != v71)
              {
                continue;
              }

              break;
            }

            v71 = [v69 countByEnumeratingWithState:&v92 objects:v103 count:16];
            if (v71)
            {
              continue;
            }

            break;
          }

LABEL_36:

LABEL_37:
          v73 = self->_triggerToActivitiesMap;
          objc_sync_enter(v73);
          v30 = [(NSMutableDictionary *)self->_triggerToActivitiesMap objectForKeyedSubscript:v68];

          if (v30)
          {
            if ([v68 isEqualToString:@"com.apple.das.fileprotectionpolicy.statuschanged"])
            {
              v31 = [(NSMutableDictionary *)self->_triggerToActivitiesMap objectForKeyedSubscript:v68];
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v77 = v31;
              v32 = [v77 countByEnumeratingWithState:&v84 objects:v101 count:16];
              if (!v32)
              {
                goto LABEL_61;
              }

              v33 = *v85;
              while (1)
              {
                for (j = 0; j != v32; j = j + 1)
                {
                  if (*v85 != v33)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v35 = *(*(&v84 + 1) + 8 * j);
                  v36 = [v35 fileProtection];
                  v37 = +[_DASFileProtection complete];
                  if ([v36 isEqual:v37])
                  {
                  }

                  else
                  {
                    v38 = [v35 fileProtection];
                    v39 = +[_DASFileProtection completeUnlessOpen];
                    v40 = [v38 isEqual:v39];

                    if (!v40)
                    {
                      continue;
                    }
                  }

                  [v75 addObject:v35];
                }

                v32 = [v77 countByEnumeratingWithState:&v84 objects:v101 count:16];
                if (!v32)
                {
                  goto LABEL_61;
                }
              }
            }

            v41 = [v68 isEqualToString:@"com.apple.duetactivityscheduler.deviceactivitypolicy.inusestatus"];
            triggerToActivitiesMap = self->_triggerToActivitiesMap;
            if (v41)
            {
              v43 = [(NSMutableDictionary *)triggerToActivitiesMap objectForKeyedSubscript:v68];
              v82 = 0u;
              v83 = 0u;
              v80 = 0u;
              v81 = 0u;
              v77 = v43;
              v44 = [v77 countByEnumeratingWithState:&v80 objects:v100 count:16];
              if (v44)
              {
                v45 = *v81;
                do
                {
                  for (k = 0; k != v44; k = k + 1)
                  {
                    if (*v81 != v45)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v47 = *(*(&v80 + 1) + 8 * k);
                    v48 = +[_DASDeviceActivityPolicy policyInstance];
                    v49 = [v48 requiresDeviceInactivityForActivity:v47];

                    if (v49)
                    {
                      [v75 addObject:v47];
                    }
                  }

                  v44 = [v77 countByEnumeratingWithState:&v80 objects:v100 count:16];
                }

                while (v44);
              }

LABEL_61:

              v50 = v77;
            }

            else
            {
              v51 = [(NSMutableDictionary *)triggerToActivitiesMap objectForKeyedSubscript:v68];
              [v75 unionSet:?];
              v50 = v51;
            }
          }

          p_super = &v73->super.super;
          objc_sync_exit(v73);
LABEL_65:

          continue;
        }
      }

      v64 = [obj countByEnumeratingWithState:&v96 objects:v108 count:16];
    }

    while (v64);
  }

  v52 = [_DASDaemonLogger logForCategory:@"evaluation"];
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    v53 = [v75 count];
    *buf = 134217984;
    v105 = v53;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Evaluating %llu activities based on triggers", buf, 0xCu);
  }

  context = self->_context;
  v55 = +[_CDContextQueries keyPathForCallInProgressStatus];
  v56 = [(_CDLocalContext *)context objectForKeyedSubscript:v55];
  LOBYTE(context) = [v56 BOOLValue];

  if ((context & 1) == 0)
  {
    [(_DASDaemon *)self unprotectedEvaluateScoreAndRunActivities:v75];
  }

  if ([v66 containsObject:@"com.apple.duetactivityscheduler.pluggedinpolicy.ispluggedin"])
  {
    [(_DASDaemon *)self determineNextTimerFireDateAndSchedule];
    [(_DASDaemon *)self evaluateAssertions];
  }

  if (([v66 containsObject:@"com.apple.duetactivityscheduler.databudgetpolicy.status"] & 1) != 0 || (objc_msgSend(v66, "containsObject:", @"com.apple.duetactivityscheduler.energybudgetpolicy.status") & 1) != 0 || objc_msgSend(v66, "containsObject:", @"com.apple.dueatctivityscheduler.photospolicy.photoswork"))
  {
    if (self->_photosIsBlocked)
    {
      if ([_DASDataBudgetPolicy budgetIsPositive:self->_context])
      {
        if ([_DASEnergyBudgetPolicy budgetIsPositive:self->_context])
        {
          v57 = +[_DASPhotosPolicy policyInstance];
          v58 = [v57 haveSignificantWorkRemaining:self->_context];

          if ((v58 & 1) == 0)
          {
            v59 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = [NSNumber numberWithUnsignedInteger:self->_photosIsBlocked];
              *buf = 138543618;
              v105 = obj;
              v106 = 2112;
              v107 = v60;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Reporting photos activity no longer blocked: %{public}@ (was %@)", buf, 0x16u);
            }

            [(_DASDaemon *)self updateiCPLTasksBlocked:0];
          }
        }
      }
    }
  }

  [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.triggercount" byCount:1];
}

- (BOOL)doesInternalGroupsContainGroupName:(id)a3 groupName:(id)a4
{
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [a3 internalGroupNames];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:v5])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)handleCompletedActivities:(id)a3
{
  v4 = a3;
  v45 = os_transaction_create();
  v5 = +[NSMutableSet set];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v4;
  v48 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v48)
  {
    v49 = 0;
    v47 = *v64;
    do
    {
      for (i = 0; i != v48; i = i + 1)
      {
        if (*v64 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v63 + 1) + 8 * i);
        v7 = self->_activityToIncompatibleActivitiesMap;
        objc_sync_enter(v7);
        activityToIncompatibleActivitiesMap = self->_activityToIncompatibleActivitiesMap;
        v9 = [v6 name];
        v10 = [(NSMutableDictionary *)activityToIncompatibleActivitiesMap objectForKeyedSubscript:v9];

        if (v10)
        {
          v11 = self->_activityToIncompatibleActivitiesMap;
          v12 = [v6 name];
          v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];
          [v5 unionSet:v13];

          v14 = self->_activityToIncompatibleActivitiesMap;
          v15 = [v6 name];
          [(NSMutableDictionary *)v14 removeObjectForKey:v15];
        }

        objc_sync_exit(v7);

        if (_os_feature_enabled_impl())
        {
          v16 = [v6 internalGroupNames];
          v17 = [v16 count] == 0;

          if (v17)
          {
            goto LABEL_25;
          }

          os_unfair_lock_lock(&self->_groupLock);
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v18 = [v6 internalGroupNames];
          v19 = [v18 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v19)
          {
            v20 = *v60;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v60 != v20)
                {
                  objc_enumerationMutation(v18);
                }

                v22 = *(*(&v59 + 1) + 8 * j);
                groupToPendingTasks = self->_groupToPendingTasks;
                v24 = [v6 groupName];
                v25 = [(NSMutableDictionary *)groupToPendingTasks objectForKeyedSubscript:v24];

                if (v25)
                {
                  v26 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v22];
                  v27 = [v26 copy];
                  [v5 unionSet:v27];
                }
              }

              v19 = [v18 countByEnumeratingWithState:&v59 objects:v69 count:16];
            }

            while (v19);
          }

          goto LABEL_23;
        }

        v28 = [v6 groupName];

        if (!v28)
        {
          goto LABEL_25;
        }

        os_unfair_lock_lock(&self->_groupLock);
        v29 = self->_groupToPendingTasks;
        v30 = [v6 groupName];
        v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:v30];

        if (v31)
        {
          v32 = self->_groupToPendingTasks;
          v18 = [v6 groupName];
          v33 = [(NSMutableDictionary *)v32 objectForKeyedSubscript:v18];
          v34 = [v33 copy];
          [v5 unionSet:v34];

LABEL_23:
        }

        os_unfair_lock_unlock(&self->_groupLock);
LABEL_25:
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v35 = v5;
        v36 = [v35 countByEnumeratingWithState:&v55 objects:v68 count:16];
        if (v36)
        {
          v37 = *v56;
          while (2)
          {
            for (k = 0; k != v36; k = k + 1)
            {
              if (*v56 != v37)
              {
                objc_enumerationMutation(v35);
              }

              if ([*(*(&v55 + 1) + 8 * k) isIntensive])
              {

                goto LABEL_36;
              }
            }

            v36 = [v35 countByEnumeratingWithState:&v55 objects:v68 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        if (v49)
        {
LABEL_36:
          if (_os_feature_enabled_impl())
          {
            os_unfair_lock_lock(&self->_groupLock);
            v39 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:_DASDefaultIntensiveGroupName];
            [v35 unionSet:v39];

            os_unfair_lock_unlock(&self->_groupLock);
          }

          else
          {
            os_unfair_recursive_lock_lock_with_options();
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            v40 = self->_pendingTasks;
            v41 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v51 objects:v67 count:16];
            if (v41)
            {
              v42 = *v52;
              do
              {
                for (m = 0; m != v41; m = m + 1)
                {
                  if (*v52 != v42)
                  {
                    objc_enumerationMutation(v40);
                  }

                  v44 = *(*(&v51 + 1) + 8 * m);
                  if ([v44 isIntensive])
                  {
                    [v35 addObject:v44];
                  }
                }

                v41 = [(NSMutableSet *)v40 countByEnumeratingWithState:&v51 objects:v67 count:16];
              }

              while (v41);
            }

            os_unfair_recursive_lock_unlock();
          }

          v49 = 1;
        }

        else
        {
          v49 = 0;
        }
      }

      v48 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v48);
  }

  [(_DASDaemon *)self unprotectedEvaluateScoreAndRunActivities:v5];
}

- (void)registerTriggersWithContextStoreForPolicies:(id)a3
{
  v3 = a3;
  v30 = [&__NSDictionary0__struct mutableCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v3;
  v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v24)
  {
    v23 = *v38;
    do
    {
      v4 = 0;
      do
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v4;
        v31 = *(*(&v37 + 1) + 8 * v4);
        v29 = [v31 triggers];
        if (v29)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v5 = [v29 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v5)
          {
            v6 = v5;
            v7 = *v34;
            v27 = *v34;
            do
            {
              v8 = 0;
              v28 = v6;
              do
              {
                if (*v34 != v7)
                {
                  objc_enumerationMutation(v29);
                }

                v9 = *(*(&v33 + 1) + 8 * v8);
                v10 = [v9 objectForKeyedSubscript:@"identifier"];
                if (v10)
                {
                  v11 = [v9 objectForKeyedSubscript:@"predicate"];

                  if (v11)
                  {
                    v32 = [v9 objectForKeyedSubscript:@"predicate"];
                    v12 = [v9 objectForKeyedSubscript:@"dismissalCondition"];
                    v13 = [v9 objectForKeyedSubscript:@"deviceSet"];
                    v14 = [v13 unsignedIntegerValue];
                    v15 = [v9 objectForKeyedSubscript:@"mustWake"];
                    v16 = [v15 BOOLValue];
                    v17 = [v9 objectForKeyedSubscript:@"qualityOfService"];
                    if (v17)
                    {
                      v18 = [v9 objectForKeyedSubscript:@"qualityOfService"];
                      v19 = v32;
                      -[_DASDaemon registerWithContextStoreForId:contextualPredicate:dismissalCondition:deviceSet:mustWake:qualityOfService:](self, "registerWithContextStoreForId:contextualPredicate:dismissalCondition:deviceSet:mustWake:qualityOfService:", v10, v32, v12, v14, v16, [v18 unsignedIntegerValue]);
                    }

                    else
                    {
                      v19 = v32;
                      [(_DASDaemon *)self registerWithContextStoreForId:v10 contextualPredicate:v32 dismissalCondition:v12 deviceSet:v14 mustWake:v16 qualityOfService:17];
                    }

                    v7 = v27;
                    v6 = v28;
                  }

                  [v30 setObject:v31 forKeyedSubscript:v10];
                }

                v8 = v8 + 1;
              }

              while (v6 != v8);
              v6 = [v29 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v6);
          }
        }

        v4 = v25 + 1;
      }

      while ((v25 + 1) != v24);
      v24 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v24);
  }

  v20 = [NSDictionary dictionaryWithDictionary:v30];
  triggerToPolicyMap = self->_triggerToPolicyMap;
  self->_triggerToPolicyMap = v20;
}

- (void)addTriggersToActivity:(id)a3
{
  v27 = self;
  v3 = a3;
  v4 = +[NSMutableSet set];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = +[_DASPolicyManager allPoliciesForPlatform];
  v5 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v40;
    v8 = @"com.apple.das.fileprotectionpolicy.statuschanged";
    v28 = *v40;
    do
    {
      v9 = 0;
      v29 = v6;
      do
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        if ([v10 appliesToActivity:{v3, v27}])
        {
          v31 = v9;
          [v10 triggers];
          v34 = v11 = &pc_session_begin_ptr;
          if (v34)
          {
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v12 = [v34 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v36;
              v32 = *v36;
              do
              {
                v15 = 0;
                v33 = v13;
                do
                {
                  if (*v36 != v14)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v16 = [*(*(&v35 + 1) + 8 * v15) objectForKeyedSubscript:@"identifier"];
                  v17 = v16;
                  if (v16)
                  {
                    if (![v16 isEqualToString:v8])
                    {
                      goto LABEL_35;
                    }

                    v18 = [v3 fileProtection];
                    v19 = [v11[404] none];
                    if ([v18 isEqual:v19])
                    {

                      v14 = v32;
                      v13 = v33;
                      goto LABEL_25;
                    }

                    v20 = [v3 fileProtection];
                    [v11[404] completeUntilFirstUserAuthentication];
                    v21 = v8;
                    v22 = v3;
                    v24 = v23 = v4;
                    v25 = [v20 isEqual:v24];

                    v4 = v23;
                    v3 = v22;
                    v8 = v21;
                    v11 = &pc_session_begin_ptr;

                    v14 = v32;
                    v13 = v33;
                    if ((v25 & 1) == 0)
                    {
LABEL_35:
                      if (([v17 isEqualToString:@"com.apple.duetactivityscheduler.cpuusagepolicy.cpuusagelevelchange"] & 1) == 0 && !objc_msgSend(v17, "isEqualToString:", @"com.apple.duetactivityscheduler.thermalpolicypolicy.thermalpressurechange") || (objc_msgSend(v3, "bypassesPredictions") & 1) != 0 || (v26 = objc_msgSend(v3, "schedulingPriority"), v26 >= _DASSchedulingPriorityUtility) || (objc_msgSend(v3, "isIntensive") & 1) != 0 || objc_msgSend(v3, "triggersRestart"))
                      {
                        [v4 addObject:v17];
                      }
                    }
                  }

LABEL_25:

                  v15 = v15 + 1;
                }

                while (v13 != v15);
                v13 = [v34 countByEnumeratingWithState:&v35 objects:v43 count:16];
              }

              while (v13);
            }
          }

          v7 = v28;
          v6 = v29;
          v9 = v31;
        }

        v9 = v9 + 1;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    [(_DASDaemon *)v27 associateActivity:v3 withTriggerKeys:v4];
  }
}

- (void)associateActivity:(id)a3 withTriggerKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_triggerToActivitiesMap;
  objc_sync_enter(v8);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_triggerToActivitiesMap objectForKeyedSubscript:v13, v18];
        v15 = v14 == 0;

        if (v15)
        {
          v16 = +[NSMutableSet set];
          [(NSMutableDictionary *)self->_triggerToActivitiesMap setObject:v16 forKeyedSubscript:v13];
        }

        v17 = [(NSMutableDictionary *)self->_triggerToActivitiesMap objectForKeyedSubscript:v13];
        [v17 _DAS_addOrReplaceObject:v6];
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
}

- (void)periodicCalculationForOptimal
{
  v3 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Periodic scoring of activities for optimal date", buf, 2u);
  }

  os_unfair_recursive_lock_lock_with_options();
  v4 = +[NSDate date];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_pendingTasks;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
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
        v11 = [v10 startBefore];
        [v11 timeIntervalSinceDate:v4];
        v13 = v12;

        if (v13 > 0.0)
        {
          [_DASConditionScore computeOptimalScoreAndDateForActivity:v10];
        }
      }

      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  os_unfair_recursive_lock_unlock();
}

- (id)getActivitiesToSkipFromCandidateActivities:(id)a3
{
  v4 = a3;
  v25 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        if (+[_DASPhotosPolicy isActivity:consideredNonDiscretionary:](_DASPhotosPolicy, "isActivity:consideredNonDiscretionary:", v10, self->_context, v25) || ([v10 isIntensive] & 1) != 0)
        {
          goto LABEL_11;
        }

        v11 = [v10 fastPass];
        if (v11 || ([v10 triggersRestart] & 1) != 0)
        {
LABEL_10:

          goto LABEL_11;
        }

        v11 = [v10 internalGroupNames];
        if ([v11 count])
        {
          v12 = [v10 schedulingPriority];
          v13 = _DASSchedulingPriorityDefault;

          if (v12 > v13)
          {
            goto LABEL_11;
          }

LABEL_18:
          if (_os_feature_enabled_impl())
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            obj = [v10 internalGroupNames];
            v17 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v29;
              while (2)
              {
                for (i = 0; i != v18; i = i + 1)
                {
                  if (*v29 != v19)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (![(_DASDaemon *)self additionalCapacityForActivity:v10 inGroupWithName:*(*(&v28 + 1) + 8 * i) shouldTryToSuspend:0])
                  {
                    [v25 addObject:v10];
                    goto LABEL_32;
                  }
                }

                v18 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

LABEL_32:
          }

          else
          {
            v21 = [v10 groupName];
            v22 = [(_DASDaemon *)self additionalCapacityForActivity:v10 inGroupWithName:v21 shouldTryToSuspend:0];

            if (!v22 && [v10 isPartOfCustomGroup])
            {
              [v25 addObject:v10];
            }
          }

          goto LABEL_11;
        }

        v14 = [v10 groupName];
        if (!v14)
        {
          goto LABEL_10;
        }

        v15 = v14;
        obja = [v10 schedulingPriority];
        v16 = _DASSchedulingPriorityDefault;

        if (obja <= v16)
        {
          goto LABEL_18;
        }

LABEL_11:
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v23 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      v7 = v23;
    }

    while (v23);
  }

  return v25;
}

- (void)chooseActivitiesToRunFromCandidateActivities:(id)a3 toBeRunActivities:(id)a4 toLaunchApplications:(id)a5 toLaunchExtension:(id)a6
{
  v10 = a3;
  v29 = a4;
  v32 = a5;
  v30 = a6;
  v28 = v10;
  v11 = [(_DASDaemon *)self sortCandidateActivities:v10];
  os_unfair_recursive_lock_lock_with_options();
  v12 = [NSMutableArray arrayWithObjectsFrom:self->_prerunningTasks, self->_runningTasks, 0];
  os_unfair_recursive_lock_unlock();
  v33 = +[NSMutableSet set];
  v13 = [(_DASDaemon *)self getActivitiesToSkipFromCandidateActivities:v11];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v15)
  {
    v31 = 0;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        if (([v13 containsObject:v18] & 1) == 0)
        {
          os_unfair_recursive_lock_lock_with_options();
          if (([(NSMutableSet *)self->_pendingTasks containsObject:v18]& 1) != 0)
          {
            os_unfair_recursive_lock_unlock();
            if ([(_DASDaemon *)self shouldRunActivityNow:v18 withOtherActivities:v12])
            {
              if ([(_DASActivityRateLimitManager *)self->_rateLimiter executeActivity:v18])
              {
                [v12 addObject:v18];
                if ([v18 requestsApplicationLaunch])
                {
                  [v32 addObject:v18];
                }

                else if ([v18 requestsExtensionLaunch])
                {
                  [v30 addObject:v18];
                }

                else
                {
                  [v29 addObject:v18];
                  v31 |= [v18 triggersRestart];
                }

                [(_DASDaemon *)self moveActivityToPrerunning:v18];
              }

              else
              {
                [v33 addObject:v18];
              }
            }
          }

          else
          {
            v19 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%@ previously run or canceled", &buf, 0xCu);
            }

            os_unfair_recursive_lock_unlock();
          }
        }

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v20 = [v14 countByEnumeratingWithState:&v35 objects:v46 count:16];
      v15 = v20;
    }

    while (v20);
  }

  else
  {
    LOBYTE(v31) = 0;
  }

  if ([v13 count])
  {
    v21 = [_DASDaemonLogger logForCategory:@"scoring"];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Skipping processing for %@ since their group is full", &buf, 0xCu);
    }
  }

  if ([v33 count])
  {
    v22 = [_DASDaemonLogger logForCategory:@"scoring"];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v33;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Skipping processing for %@ due to rate limiting", &buf, 0xCu);
    }
  }

  if (v31)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x2020000000;
    v45 = 0;
    v23 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Taking an assertion", v39, 2u);
    }

    v41[0] = @"AssertType";
    v41[1] = @"AssertName";
    v42[0] = @"PreventUserIdleSystemSleep";
    v42[1] = @"com.apple.duetactivityscheduler.triggersRestart";
    v41[2] = @"AllowsDeviceRestart";
    v42[2] = kCFBooleanTrue;
    v24 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:3];
    v25 = IOPMAssertionCreateWithProperties(v24, (*(&buf + 1) + 24));
    if (v25)
    {
      v26 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 67109120;
        v40 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to create SystemActive assertion. ret:0x%x", v39, 8u);
      }
    }

    else
    {
      v27 = dispatch_time(0, 30000000000);
      v26 = dispatch_queue_create("com.apple.duetactivityscheduler.assertion", 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000ED72C;
      block[3] = &unk_1001B5798;
      block[4] = &buf;
      dispatch_after(v27, v26, block);
    }

    _Block_object_dispose(&buf, 8);
  }
}

- (id)sortCandidateActivities:(id)a3
{
  context = self->_context;
  v5 = a3;
  v6 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
  v7 = [(_CDLocalContext *)context objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  v9 = [_DASPhotosPolicy isPhotosForegroundWithContext:self->_context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ED898;
  v14[3] = &unk_1001B8950;
  v15 = v8;
  v16 = v9;
  v14[4] = self;
  v10 = objc_retainBlock(v14);
  v11 = [v5 allObjects];

  v12 = [v11 sortedArrayUsingComparator:v10];

  return v12;
}

- (void)evaluateScoreAndRunActivities:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  evaluationQueue = self->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE060;
  block[3] = &unk_1001B56B8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(evaluationQueue, block);
}

- (void)filterAndAddActivity:(id)a3 toCandidateActivities:(id)a4 orCancelActivities:(id)a5 groupNames:(id)a6 allowsBackgroundTasks:(BOOL)a7 backupRequested:(BOOL)a8 inADarkWake:(BOOL)a9 isLPMEnforced:(BOOL)a10 now:(id)a11 externallyPowered:(BOOL)a12
{
  v54 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a11;
  if (a9)
  {
    if (([v54 darkWakeEligible] & 1) == 0 && (objc_msgSend(v54, "triggersRestart") & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v54 userRequestedBackupTask])
  {
    if (!a8)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([v54 skipEvaluationIfUnplugged] && !a12)
  {
    goto LABEL_9;
  }

  v23 = [v54 fileProtection];

  if (v23)
  {
    v24 = +[_DASFileProtectionPolicy policyInstance];
    v25 = [v24 responseForActivity:v54 withState:self->_context];

    v26 = [v25 policyDecision];
    if (v26 == 33)
    {
      goto LABEL_9;
    }
  }

  if ([v54 requiresNetwork])
  {
    if (![v54 targetDevice])
    {
      v27 = +[_DASNetworkEvaluationMonitor sharedInstance];
      v28 = [v27 isNetworkPathAvailableForActivity:v54];

      if (!v28)
      {
        goto LABEL_9;
      }
    }
  }

  if (![(_DASDaemon *)self isActivity:v54 timewiseEligibleAt:v20])
  {
    goto LABEL_9;
  }

  if ([v54 cancelAfterDeadline])
  {
    v29 = [v54 startBefore];
    [v20 timeIntervalSinceDate:v29];
    v31 = v30;

    v22 = v18;
    if (v31 > 0.0)
    {
      goto LABEL_8;
    }
  }

  if ([v54 bypassesPredictions])
  {
LABEL_7:
    v21 = [v54 internalGroupNames];
    [v19 unionSet:v21];

    v22 = v17;
LABEL_8:
    [v22 addObject:v54];
    goto LABEL_9;
  }

  if (!a10)
  {
    goto LABEL_41;
  }

  if ([_DASPhotosPolicy isiCPLActivity:v54])
  {
    goto LABEL_41;
  }

  v32 = [v54 schedulingPriority];
  if (v32 >= _DASSchedulingPriorityUserInitiated)
  {
    goto LABEL_41;
  }

  v33 = [v54 startBefore];
  v34 = [v54 startAfter];
  [v33 timeIntervalSinceDate:v34];
  v36 = v35;

  v37 = [v54 startAfter];
  [v37 timeIntervalSinceNow];
  v39 = v38;

  v40 = [v54 schedulingPriority];
  if (v40 >= _DASSchedulingPriorityUtility)
  {
    v41 = 1.0;
    if (v36 >= 1.0)
    {
      v41 = v36;
    }

    if (-v39 / v41 >= 0.9)
    {
LABEL_41:
      v42 = [v54 remoteDevice];
      if (!v42 || (v43 = v42, v44 = [v54 targetDevice], v43, v44 != 3) || (objc_msgSend(v54, "remoteDevice"), v45 = objc_claimAutoreleasedReturnValue(), v46 = -[_DASRemoteDeviceNearbyMonitor isRemoteDeviceNearby:](self->_remoteDeviceNearbyMonitor, "isRemoteDeviceNearby:", v45), v45, v46))
      {
        if (([v54 hasManyConstraints] & 1) == 0)
        {
          v47 = [v54 startBefore];
          [v47 timeIntervalSinceDate:v20];
          if (v48 > 1800.0 && ([v54 lastScored], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v50 = v49;
            v51 = [v54 lastScored];
            [v20 timeIntervalSinceDate:v51];
            v53 = v52;

            if (v53 < 300.0)
            {
              goto LABEL_9;
            }
          }

          else
          {
          }
        }

        goto LABEL_7;
      }
    }
  }

LABEL_9:
}

- (void)unprotectedEvaluateScoreAndRunActivities:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if ([v4 count])
  {
    v47 = v5;
    v55 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
    v46 = +[NSMutableSet set];
    v45 = +[NSMutableSet set];
    v44 = +[NSMutableSet set];
    v52 = +[NSMutableSet set];
    v54 = +[NSDate date];
    v6 = +[_DASRequiresPluggedInPolicy policyInstance];
    v7 = [v6 isExternallyPowered];

    context = self->_context;
    v9 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
    v10 = [(_CDLocalContext *)context objectForKeyedSubscript:v9];
    v11 = [v10 BOOLValue];

    v12 = [(_DASSleepWakeMonitor *)self->_sleepWakeMonitor inADarkWake];
    [(_DASSleepWakeMonitor *)self->_sleepWakeMonitor wakeState];
    v13 = IOPMAllowsBackgroundTask();
    v14 = +[_DASLowPowerModePolicy policyInstance];
    v15 = [v14 isLowPowerModePolicyEnforced:self->_context];

    v16 = +[NSMutableSet set];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v48 = v4;
    obj = v4;
    v17 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v69;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v69 != v19)
          {
            objc_enumerationMutation(obj);
          }

          LOBYTE(v43) = v7;
          BYTE1(v42) = v15;
          LOBYTE(v42) = v12;
          [(_DASDaemon *)self filterAndAddActivity:*(*(&v68 + 1) + 8 * i) toCandidateActivities:v55 orCancelActivities:v52 groupNames:v16 allowsBackgroundTasks:v13 backupRequested:v11 inADarkWake:v42 isLPMEnforced:v54 now:v43 externallyPowered:?];
        }

        v18 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v18);
    }

    v50 = +[NSMutableSet set];
    os_unfair_lock_lock(&self->_groupLock);
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v53 = v16;
    v21 = [v53 countByEnumeratingWithState:&v64 objects:v80 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v65;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v65 != v23)
          {
            objc_enumerationMutation(v53);
          }

          v25 = *(*(&v64 + 1) + 8 * j);
          if (([v25 isEqualToString:_DASDefaultGroupName] & 1) == 0)
          {
            v26 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v25];
            if (v26)
            {
              [v50 unionSet:v26];
            }
          }
        }

        v22 = [v53 countByEnumeratingWithState:&v64 objects:v80 count:16];
      }

      while (v22);
    }

    os_unfair_lock_unlock(&self->_groupLock);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = v50;
    v27 = [v51 countByEnumeratingWithState:&v60 objects:v79 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v61;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v61 != v29)
          {
            objc_enumerationMutation(v51);
          }

          LOBYTE(v43) = v7;
          BYTE1(v42) = v15;
          LOBYTE(v42) = v12;
          [(_DASDaemon *)self filterAndAddActivity:*(*(&v60 + 1) + 8 * k) toCandidateActivities:v55 orCancelActivities:v52 groupNames:v53 allowsBackgroundTasks:v13 backupRequested:v11 inADarkWake:v42 isLPMEnforced:v54 now:v43 externallyPowered:?];
        }

        v28 = [v51 countByEnumeratingWithState:&v60 objects:v79 count:16];
      }

      while (v28);
    }

    v31 = [_DASDaemonLogger logForCategory:@"evaluation"];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v55 count]);
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obj count]);
      v34 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v51 count]);
      *buf = 138412802;
      v74 = v32;
      v75 = 2112;
      v76 = v33;
      v77 = 2112;
      v78 = v34;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Evaluating %@ activities (initial candidates: %@, passenger candidates: %@)", buf, 0x20u);
    }

    +[_DASMetricRecorder incrementOccurrencesForKey:byCount:](_DASMetricRecorder, "incrementOccurrencesForKey:byCount:", @"com.apple.das.evaluationCount", [v55 count]);
    v35 = +[NSMutableSet set];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = v55;
    v37 = [v36 countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v57;
      do
      {
        for (m = 0; m != v38; m = m + 1)
        {
          if (*v57 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v56 + 1) + 8 * m);
          if ([v41 isIntensive] && -[_DASDynamicRuntimeAllocator allocationEligibleForActivity:](self->_runtimeAllocator, "allocationEligibleForActivity:", v41))
          {
            [v35 addObject:v41];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v56 objects:v72 count:16];
      }

      while (v38);
    }

    if ([v35 count])
    {
      [(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator reallocateRuntimeWithActivities:v35];
    }

    [(_DASDaemon *)self chooseActivitiesToRunFromCandidateActivities:v36 toBeRunActivities:v44 toLaunchApplications:v46 toLaunchExtension:v45];
    v4 = v48;
    if ([v44 count])
    {
      [(_DASDaemon *)self runActivitiesAndRemoveUnknown:v44];
    }

    if ([v46 count])
    {
      [(_DASDaemon *)self runApplicationLaunchActivities:v46];
    }

    if ([v45 count])
    {
      [(_DASDaemon *)self runExtensionLaunchActivities:v45];
    }

    if ([v52 count])
    {
      [(_DASDaemon *)self cancelActivities:v52];
    }

    v5 = v47;
  }

  objc_autoreleasePoolPop(v5);
}

- (void)evaluateScoreAndRunAllActivitiesForReason:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  evaluationQueue = self->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EEBDC;
  block[3] = &unk_1001B56B8;
  v10 = v5;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(evaluationQueue, block);
}

- (BOOL)shouldPreemptActivity:(id)a3 forFastPassActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 fastPass];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v6 fastPass];

  if (v10)
  {
    goto LABEL_6;
  }

  v11 = [v6 startDate];
  v12 = [(_DASDaemon *)self isActivitySuspendable:v6 withStartDate:v11];

  if (v12)
  {
    v13 = [v7 fastPass];
    v14 = [v13 processingTaskIdentifiers];
    if (v14)
    {
      v15 = [v7 fastPass];
      v16 = [v15 processingTaskIdentifiers];
      v17 = [v6 name];
      v18 = [v16 containsObject:v17];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  return v18;
}

- (BOOL)isActivitySuspendable:(id)a3 withStartDate:(id)a4
{
  v6 = a3;
  v7 = [v6 suspendRequestDate];
  if (v7 || (v10 = [v6 schedulingPriority], !a4) || v10 > _DASSchedulingPriorityDefault)
  {
  }

  else
  {
    v11 = [v6 name];

    if (v11 && (![_DASPhotosPolicy isiCPLActivity:v6]|| ![_DASPhotosPolicy isPhotosSyncOverriddenWithContext:self->_context]))
    {
      v12 = [(_DASDaemon *)self testModeParameters];
      if (!v12 || (v13 = v12, v14 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:v6], v13, (v14 & 1) == 0))
      {
        v8 = 1;
        goto LABEL_4;
      }
    }
  }

  v8 = 0;
LABEL_4:

  return v8;
}

- (id)candidateGroupActivityForPreemption:(id)a3
{
  v3 = a3;
  v4 = +[NSDate distantPast];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (!v6)
  {
    v8 = 0;
    v21 = v5;
LABEL_18:

    goto LABEL_19;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v24;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v23 + 1) + 8 * i);
      v12 = [v11 schedulingPriority];
      if (v12 <= _DASSchedulingPriorityDefault)
      {
        if ([v11 suspendable])
        {
          v13 = [v11 startDate];
          if (v13)
          {
            v14 = v13;
            v15 = [v11 suspendRequestDate];

            if (!v15)
            {
              v16 = [v11 startDate];
              [v16 timeIntervalSinceDate:v4];
              v18 = v17;

              if (v18 > 0.0)
              {
                v19 = [v11 startDate];

                v20 = v11;
                v8 = v20;
                v4 = v19;
              }
            }
          }
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  }

  while (v7);

  if (v8)
  {
    v21 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v8;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Suspending %{public}@ as it may block other high priority activities.", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:

  return v8;
}

- (id)tasksNoLongerEligibleFromTasks:(id)a3
{
  v4 = a3;
  v5 = +[NSDate date];
  v54 = +[NSMutableSet set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v57 objects:v70 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v58;
    v52 = @"Limitations";
    v55 = v6;
    v53 = v5;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v58 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v57 + 1) + 8 * i);
        if (([v11 suspendable] & 1) == 0)
        {
          v30 = [_DASDaemonLogger logForCategory:@"lifecycle"];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v63 = v11;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Skipping %@ suspension because it cannot be suspended", buf, 0xCu);
          }

          goto LABEL_58;
        }

        if ([(_DASDaemon *)self pausedParametersApplyToActivity:v11])
        {
          v12 = +[_DASDaemonLogger defaultCategory];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v63 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scheduling Paused: Suspending activity: %{public}@", buf, 0xCu);
          }
        }

        v13 = [v11 startDate];

        if (v13)
        {
          v14 = [v11 startDate];
          [v5 timeIntervalSinceDate:v14];
          v16 = v15 / 60.0;

          if (v16 > 60.0 && v16 < 70.0)
          {
            v17 = [v11 maximumRuntime];
            v18 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = v17;
              v20 = [v11 suspendRequestDate];
              v21 = [NSNumber numberWithDouble:v19 / 60.0];
              *buf = 138544130;
              v63 = v11;
              v64 = 2048;
              v65 = v16;
              v66 = 1024;
              v67 = v20 != 0;
              v6 = v55;
              v68 = 2112;
              v69 = v21;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ running for %lf mins (suspendRequested=%u), Max runtime: %@ mins", buf, 0x26u);
            }
          }

          if (v16 > 90.0 && v16 < 100.0)
          {
            v23 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v11 suspendRequestDate];
              *buf = 138543874;
              v63 = v11;
              v64 = 2048;
              v65 = v16;
              v66 = 1024;
              v67 = v24 != 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ running for %lf mins (suspendRequested=%u)", buf, 0x1Cu);
            }
          }

          if (v16 > 120.0 && v16 < 130.0)
          {
            v25 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = [v11 suspendRequestDate];
              *buf = 138543874;
              v63 = v11;
              v64 = 2048;
              v65 = v16;
              v66 = 1024;
              v67 = v26 != 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ running for %lf mins (suspendRequested=%u)", buf, 0x1Cu);
            }
          }
        }

        [(_DASShadowPolicyEvaluator *)self->_shadowPolicyEvaluator reportShadowEvaluationForPolicy:1 forActivity:v11 atDate:v5];
        v27 = [v11 suspendRequestDate];

        if (!v27)
        {
          runtimeLimiter = self->_runtimeLimiter;
          v29 = [v11 startDate];
          v30 = [(_DASRuntimeLimiter *)runtimeLimiter shouldLimitActivityAtRuntime:v11 whileBlockingOtherTasks:0 withStartDate:v29 atDate:v5 withContext:self->_context];

          if (v30 && [v30 decision]== 3)
          {
            v31 = self->_runtimeLimiter;
            v61 = v30;
            v32 = [NSArray arrayWithObjects:&v61 count:1];
            LODWORD(v31) = [(_DASRuntimeLimiter *)v31 limitedActivity:v11 withLimitsResponses:v32];

            if (v31)
            {
              v33 = [(_DASDaemon *)self testModeParameters];
              if (v33 && (v34 = v33, v35 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:v11], v34, (v35 & 1) != 0))
              {
                v36 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v63 = v11;
                  _os_log_debug_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "WARNING: Test mode is on so activity %{public}@ is not being suspended for running too long", buf, 0xCu);
                }
              }

              else
              {
                v45 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v63 = v11;
                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Suspending %{public}@ - running for too long", buf, 0xCu);
                }

                [(_DASDaemon *)self updateSuspendRequestDate:v5 forActivity:v11 withReason:v52];
                [v54 addObject:v11];
              }
            }
          }

          else
          {
            v56 = 0;
            [_DASConditionScore scoreForActivity:v11 withState:self->_context response:&v56];
            if (v56 == 100 || v56 == 33)
            {
              v37 = [(_DASDaemon *)self testModeParameters];
              if (v37)
              {
                v38 = v37;
                v39 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:v11];

                if (v39)
                {
                  v40 = +[NSMutableArray array];
                  v41 = +[NSMutableArray array];
                  v42 = [v11 policyScores];
                  v43 = [(_DASDaemon *)self testModeConstraintsRequireOverridingDecisionWithScores:v42 ignoredPolicies:v40 honoredPolicies:v41];

                  if (v43)
                  {
                    v44 = +[_DASDaemonLogger defaultCategory];
                    v6 = v55;
                    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v63 = v11;
                      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Test Mode: Not suspending: %@", buf, 0xCu);
                    }

                    v5 = v53;
                    goto LABEL_58;
                  }

                  v5 = v53;
                }
              }

              v46 = [_DASDaemonLogger logForCategory:@"lifecycle"];
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v63 = v11;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Suspending %{public}@ - required criterion is not satisfied.", buf, 0xCu);
              }

              v47 = +[_DASPolicyDataCollection sharedInstance];
              v48 = [v47 shouldReportBlockingReasonsForActivity:v11];

              if (v48)
              {
                v49 = +[_DASPolicyDataCollection sharedInstance];
                [v49 reportBlockingReason:objc_msgSend(v11 forActivity:{"lastDenialValue"), v11}];
              }

              v50 = +[NSDate now];
              [(_DASDaemon *)self updateSuspendRequestDate:v50 forActivity:v11 withReason:0];

              [v54 addObject:v11];
              v6 = v55;
            }
          }

LABEL_58:

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v57 objects:v70 count:16];
    }

    while (v8);
  }

  +[_DASMetricRecorder incrementOccurrencesForKey:byCount:](_DASMetricRecorder, "incrementOccurrencesForKey:byCount:", @"com.apple.das.suspensioncount", [v54 count]);

  return v54;
}

- (void)updateSuspendRequestDate:(id)a3 forActivity:(id)a4 withReason:(id)a5
{
  v8 = a4;
  v9 = a5;
  [v8 setSuspendRequestDate:a3];
  v10 = +[_DASPLLogger sharedInstance];
  [v10 recordActivityLifeCycleSuspend:v8];

  [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.suspensioncount" byCount:1];
  if ([v9 isEqualToString:@"Limitations"])
  {
    [v8 setLastDenialValue:{objc_msgSend(v8, "lastDenialValue") | +[_DASPolicyManager bitmaskForPolicy:](_DASPolicyManager, "bitmaskForPolicy:", @"Limitations"}];
    telemetryQueue = self->_telemetryQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EFD10;
    block[3] = &unk_1001B5668;
    v14 = v8;
    dispatch_async(telemetryQueue, block);
  }

  else
  {
    v12 = @"Sysdiagnose";
    if ([v9 isEqualToString:@"Sysdiagnose"] || (v12 = @"Preemption", objc_msgSend(v9, "isEqualToString:", @"Preemption")) || (v12 = @"Incompatibility", objc_msgSend(v9, "isEqualToString:", @"Incompatibility")))
    {
      [v8 setLastDenialValue:{objc_msgSend(v8, "lastDenialValue") | +[_DASPolicyManager bitmaskForPolicy:](_DASPolicyManager, "bitmaskForPolicy:", v12)}];
    }
  }
}

- (void)reportPostRestoreCheckpoint:(unint64_t)a3 withParameters:(id)a4
{
  v5 = a4;
  v6 = kBGSTKeyTaskName;
  v7 = [v5 objectForKeyedSubscript:kBGSTKeyTaskName];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [v5 objectForKeyedSubscript:v6];
  v10 = v9;
  if (isKindOfClass)
  {
    v11 = [v9 firstObject];
  }

  else
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v11 = [v5 objectForKeyedSubscript:v6];
    }

    else
    {
      v11 = 0;
    }
  }

  v13 = kBGSTKeyFeatureCode;
  v14 = [v5 objectForKeyedSubscript:kBGSTKeyFeatureCode];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  v16 = [v5 objectForKeyedSubscript:v13];
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    v29 = v16;
    v18 = [NSArray arrayWithObjects:&v29 count:1];

    v17 = v18;
  }

  v19 = kBGSTKeyInvolvedProcesses;
  v20 = [v5 objectForKeyedSubscript:kBGSTKeyInvolvedProcesses];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  v22 = [v5 objectForKeyedSubscript:v19];
  v23 = v22;
  if ((v21 & 1) == 0)
  {
    v28 = v22;
    v24 = [NSArray arrayWithObjects:&v28 count:1];

    v23 = v24;
  }

  if (a3 == 30)
  {
    v25 = [v5 objectForKeyedSubscript:kBGSTKeyPaused];
    v26 = [v25 BOOLValue];

    if (v26)
    {
      a3 = 50;
    }

    else
    {
      a3 = 30;
    }
  }

  v27 = +[_DASPostRestoreBUILogger sharedInstance];
  [v27 reportState:a3 forTaskName:v11 featureCode:v17 involvedProcesses:v23];
}

- (void)activityStartedWithParameters:(id)a3
{
  v5 = a3;
  v4 = [v5 objectForKeyedSubscript:kBGSTKeyFeatureCode];

  if (v4)
  {
    [(_DASDaemon *)self reportPostRestoreCheckpoint:20 withParameters:v5];
  }

  [(_DASBudgetManager *)self->_budgetManager reportActivityRunningWithParameters:v5];
}

- (void)activityStoppedWithParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:kBGSTKeyFeatureCode];

  if (v5)
  {
    [(_DASDaemon *)self reportPostRestoreCheckpoint:30 withParameters:v4];
  }

  [(_DASBudgetManager *)self->_budgetManager reportActivityNoLongerRunningWithParameters:v4];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1000DA0B8;
  v11[4] = sub_1000DA0C8;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_1000DA0B8;
  v9[4] = sub_1000DA0C8;
  v10 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = sub_1000DA0B8;
  v7[4] = sub_1000DA0C8;
  v8 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000F025C;
  v6[3] = &unk_1001B8978;
  v6[4] = v11;
  v6[5] = v7;
  v6[6] = v9;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
}

- (void)reportOversizeLoadSymptomForActivity:(id)a3 atStart:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 uploadSize];
  v8 = [v6 downloadSize];
  if ([v6 noTransferSizeSpecified])
  {
    v8 = _DASActivityTransferSizeSmall;
  }

  if ([_DASNetworkQualityPolicy shouldReportOversizeLoadForTransferSize:&v7[v8] withContext:self->_context])
  {
    v9 = [v6 name];
    v10 = [v9 UTF8String];
    symptom_create();
    symptom_set_qualifier();
    symptom_set_qualifier();
    symptom_set_qualifier();
    strlen(v10);
    symptom_set_additional_qualifier();
    v11 = symptom_send();
    v12 = [_DASDaemonLogger logForCategory:@"networkbudgeting"];
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10012B820(v6);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 name];
      v15 = [NSNumber numberWithUnsignedInteger:v7];
      v16 = [NSNumber numberWithUnsignedInteger:v8];
      v17 = v16;
      v18 = @"end";
      v19 = 138413058;
      v20 = v14;
      v21 = 2112;
      if (v4)
      {
        v18 = @"start";
      }

      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reported to symptoms %@ with upload %@ and download %@ at %@", &v19, 0x2Au);
    }
  }
}

- (void)reportActivityTiming:(id)a3
{
  v3 = a3;
  v6 = +[NSDate date];
  v7 = v3;
  v4 = v3;
  v5 = v6;
  AnalyticsSendEventLazy();
}

- (void)reportSystemWorkload:(unint64_t)a3 ofCategory:(unint64_t)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = +[_DASSystemWorkloadRecorder sharedInstance];
  v11 = 0;
  v9 = [v8 recordWorkload:a3 ofCategory:a4 error:&v11];
  v10 = v11;

  v7[2](v7, v9, v10);
}

- (void)reportFeatureCheckpoint:(unint64_t)a3 forFeature:(unint64_t)a4 atDate:(id)a5 withHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = +[_DASClientMetricsRecorder sharedInstance];
  v14 = 0;
  v12 = [v11 reportFeatureCheckpoint:a3 forFeature:a4 atDate:v10 error:&v14];

  v13 = v14;
  v9[2](v9, v12, v13);
}

- (void)reportCustomCheckpoint:(unint64_t)a3 forTask:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = +[_DASClientMetricsRecorder sharedInstance];
  v12 = 0;
  v10 = [v9 reportCustomCheckpoint:a3 forTask:v8 error:&v12];

  v11 = v12;
  v7[2](v7, v10, v11);
}

- (void)reportThroughputMetricsForIdentifier:(id)a3 taskName:(id)a4 itemCount:(unint64_t)a5 totalDuration:(double)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10
{
  v17 = a10;
  v18 = a9;
  v19 = a7;
  v20 = a4;
  v21 = a3;
  v22 = +[_DASClientMetricsRecorder sharedInstance];
  v25 = 0;
  v23 = [v22 reportThroughputMetricsForIdentifier:v21 taskName:v20 itemCount:a5 totalDuration:v19 qos:a8 workloadCategory:v18 expectedValue:a6 error:&v25];

  v24 = v25;
  v17[2](v17, v23, v24);
}

- (void)reportProgressMetricsForIdentifier:(id)a3 taskName:(id)a4 itemsCompleted:(id)a5 totalItemCount:(id)a6 qos:(id)a7 workloadCategory:(unint64_t)a8 expectedValue:(id)a9 withHandler:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = +[_DASClientMetricsRecorder sharedInstance];
  v26 = 0;
  v24 = [v23 reportProgressMetricsForIdentifier:v22 taskName:v21 itemsCompleted:v20 totalItemCount:v19 qos:v18 workloadCategory:a8 expectedValue:v17 error:&v26];

  v25 = v26;
  v16[2](v16, v24, v25);
}

- (void)extensionActivity:(id)a3 finishedWithStatus:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v6;
    v12 = 1024;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with status %hhu", &v10, 0x12u);
  }

  v8 = [v6 extensionIdentifier];
  v9 = [_DASPlugin existingPluginForIdentifier:v8 ofType:@"com.apple.ml-extension"];

  [v9 unload];
  if (v4 == 2)
  {
    [(_DASDaemon *)self activityCanceled:v6];
    [(_DASDaemon *)self submitActivity:v6];
  }

  else
  {
    [(_DASDaemon *)self activityCompleted:v6];
  }
}

- (void)prewarmApplication:(id)a3
{
  v5 = a3;
  v3 = +[_APRSPrewarmInterface sharedInstance];
  v4 = [v3 prewarmLaunchAppFromBundleID:v5];
}

- (void)prewarmSuspendApplication:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[_APRSPrewarmInterface sharedInstance];
  [v7 invalidatePrewarmAssertionForApplication:v6 onInvalidation:v5];
}

- (void)_unexpectedXPCObject:(id)a3 WithLog:(id)a4
{
  v4 = a4;
  v5 = xpc_dictionary_copy_basic_description();
  v6 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10012B8AC();
  }

  free(v5);
}

- (void)_prewarmSuspendForMessage:(id)a3
{
  v4 = a3;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v16 = v5;
  v17 = v5;
  xpc_dictionary_get_audit_token();
  if (DWORD1(v17) == -1)
  {
    [(_DASDaemon *)self _unexpectedXPCObject:v4 WithLog:@"Prewarm suspend failed to fetch audit token"];
  }

  else
  {
    v6 = [NSNumber numberWithInt:?];
    v15 = 0;
    v7 = [RBSProcessHandle handleForIdentifier:v6 error:&v15];
    v8 = v15;

    v9 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v11 = [v7 bundle];
        v12 = [v11 identifier];
        *buf = 138412290;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Suspending prewarm for %@", buf, 0xCu);
      }

      v9 = +[_APRSPrewarmInterface sharedInstance];
      v13 = [v7 bundle];
      v14 = [v13 identifier];
      [v9 invalidatePrewarmAssertionForApplication:v14];
    }

    else if (v10)
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Prewarm suspend failed to fetch handle with error %@", buf, 0xCu);
    }
  }
}

- (void)_prewarmSuspendHandleIncoming:(id)a3 onConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_prewarmInvalidationLock);
  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    [(_DASDaemon *)self _prewarmSuspendForMessage:v6];
    reply = xpc_dictionary_create_reply(v6);
    v9 = reply;
    if (v7 && reply)
    {
      xpc_connection_send_message(v7, reply);
    }

    else
    {
      v11 = [_DASDaemonLogger logForCategory:@"lifecycle"];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10012B920();
      }
    }

    goto LABEL_12;
  }

  if (v6 == &_xpc_error_connection_invalid)
  {
    [(NSMutableSet *)self->_prewarmInvalidationConnections removeObject:v7];
    v9 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(NSMutableSet *)self->_prewarmInvalidationConnections count];
      v12[0] = 67109120;
      v12[1] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "setupPrewarmSuspendListener connection invalidated (outstanding connections: %d)", v12, 8u);
    }

LABEL_12:

    goto LABEL_13;
  }

  [(_DASDaemon *)self _unexpectedXPCObject:v6 WithLog:@"Prewarm suspend connection received unexpected message"];
LABEL_13:
  os_unfair_lock_unlock(&self->_prewarmInvalidationLock);
}

- (void)setupPrewarmSuspendListener
{
  self->_prewarmInvalidationLock._os_unfair_lock_opaque = 0;
  p_prewarmInvalidationLock = &self->_prewarmInvalidationLock;
  os_unfair_lock_lock(&self->_prewarmInvalidationLock);
  v4 = +[NSMutableSet set];
  prewarmInvalidationConnections = self->_prewarmInvalidationConnections;
  self->_prewarmInvalidationConnections = v4;

  v6 = dispatch_get_global_queue(25, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.dasd.end-prewarm", v6, 1uLL);
  prewarmInvalidationListener = self->_prewarmInvalidationListener;
  self->_prewarmInvalidationListener = mach_service;

  v9 = self->_prewarmInvalidationListener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000F1990;
  handler[3] = &unk_1001B89C8;
  handler[4] = self;
  xpc_connection_set_event_handler(v9, handler);
  xpc_connection_activate(self->_prewarmInvalidationListener);
  os_unfair_lock_unlock(p_prewarmInvalidationLock);
  v10 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setupPrewarmSuspendListener complete", v11, 2u);
  }
}

@end