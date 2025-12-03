@interface _DASDaemon
+ (_DASDaemon)sharedInstance;
- (BOOL)addLaunchRequest:(id)request;
- (BOOL)canSubmitValidatedTaskRequest:(id)request withError:(id *)error;
- (BOOL)doesInternalGroupsContainGroupName:(id)name groupName:(id)groupName;
- (BOOL)evaluateAllActivitiesFor:(id)for writingToFile:(id)file;
- (BOOL)evaluatePoliciesForActivitiesChunk:(id)chunk writingToFile:(id)file;
- (BOOL)isActivitySuspendable:(id)suspendable withStartDate:(id)date;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)pausedParametersApplyToActivity:(id)activity;
- (BOOL)removeTempBGSQLFile:(id)file;
- (BOOL)shouldActivity:(id)activity runWithActivities:(id)activities atDate:(id)date;
- (BOOL)shouldEvaluateTask:(id)task atDate:(id)date;
- (BOOL)shouldPreemptActivity:(id)activity forFastPassActivity:(id)passActivity;
- (BOOL)shouldRunActivityNow:(id)now;
- (BOOL)shouldRunActivityNow:(id)now withOtherActivities:(id)activities;
- (BOOL)testModeConstraintsApplyToActivity:(id)activity;
- (BOOL)testModeConstraintsRequireOverridingDecisionWithScores:(id)scores ignoredPolicies:(id)policies honoredPolicies:(id)honoredPolicies;
- (BOOL)validateConfigurationForActivity:(id)activity;
- (NSString)description;
- (id)activityMatchingPredicate:(id)predicate;
- (id)allActivityGroups;
- (id)allPendingBackgroundTasks;
- (id)allPendingPushLaunchTasks;
- (id)allPendingRestartTasks;
- (id)allPendingSyncOnBackupTasks;
- (id)allPendingTasks;
- (id)allPrerunningTasks;
- (id)allTasks;
- (id)allTimewiseEligibleNetworkTasksAllowingCell:(BOOL)cell;
- (id)candidateGroupActivityForPreemption:(id)preemption;
- (id)clientForActivity:(id)activity;
- (id)createTempBGSQLFile:(id)file;
- (id)currentReportingConditions;
- (id)earlyToday;
- (id)evaluatePolicies:(id)policies;
- (id)getActivitiesToSkipFromCandidateActivities:(id)activities;
- (id)getActivityAllocationStats:(unint64_t)stats timeFilter:(id)filter filepath:(id)filepath;
- (id)getActivityRunningWithName:(id)name;
- (id)getActivityRunningWithUUID:(id)d;
- (id)getActivityWithName:(id)name;
- (id)getActivityWithUUID:(id)d;
- (id)initAsAnonymous:(BOOL)anonymous withContext:(id)context;
- (id)sortCandidateActivities:(id)activities;
- (id)startedTasks;
- (id)tasksNoLongerEligible;
- (id)tasksNoLongerEligibleFromTasks:(id)tasks;
- (id)widgetRefreshStatistics;
- (id)widgetViewsStatistics;
- (int64_t)additionalCapacityForActivity:(id)activity inGroupWithName:(id)name shouldTryToSuspend:(BOOL)suspend;
- (int64_t)capacityFromGroupMax:(int64_t)max forPriority:(unint64_t)priority;
- (int64_t)currentLoadFromActivities:(id)activities inGroupWithName:(id)name;
- (unint64_t)requestCountForApplication:(id)application;
- (unint64_t)submittedTaskCount;
- (void)_prewarmSuspendForMessage:(id)message;
- (void)_prewarmSuspendHandleIncoming:(id)incoming onConnection:(id)connection;
- (void)_resetWidgetBudgets;
- (void)_unexpectedXPCObject:(id)object WithLog:(id)log;
- (void)activity:(id)activity blockedOnPolicies:(id)policies;
- (void)activity:(id)activity runWithoutHonoringPolicies:(id)policies;
- (void)activityCanceledWithReason:(id)reason expirationReason:(int64_t)expirationReason;
- (void)activityCompleted:(id)completed withSuccess:(BOOL)success;
- (void)activityContainsOverrides:(id)overrides handler:(id)handler;
- (void)activityStarted:(id)started;
- (void)activityStartedWithParameters:(id)parameters;
- (void)activityStoppedWithParameters:(id)parameters;
- (void)addConstraint:(unint64_t)constraint forSchedulingPriority:(unint64_t)priority;
- (void)addPauseExceptParameter:(id)parameter handler:(id)handler;
- (void)addPendingActivitiesToGroups:(id)groups;
- (void)addPendingActivity:(id)activity toGroup:(id)group withReason:(id)reason;
- (void)addPendingActivity:(id)activity toGroupWithName:(id)name;
- (void)addPrerunningActivity:(id)activity toGroupWithName:(id)name;
- (void)addRunningActivity:(id)activity toGroupWithName:(id)name;
- (void)addTriggersToActivity:(id)activity;
- (void)advanceAppLaunchDateIfNecessaryForActivity:(id)activity;
- (void)allBudgetsWithHandler:(id)handler;
- (void)allClientsDo:(id)do;
- (void)associateActivity:(id)activity withTriggerKeys:(id)keys;
- (void)backgroundAppRefreshEnabledForApp:(id)app withHandler:(id)handler;
- (void)balanceForBudgetWithName:(id)name withHandler:(id)handler;
- (void)beginWorkForActivity:(id)activity;
- (void)blockingPoliciesWithParameters:(id)parameters handler:(id)handler;
- (void)cancelActivities:(id)activities;
- (void)cancelActivitiesWithIdentifiers:(id)identifiers;
- (void)cancelActivitiesWithReason:(id)reason cancellationReason:(int64_t)cancellationReason;
- (void)cancelAllBackgroundTasks;
- (void)cancelAllTaskRequestsForApplication:(id)application;
- (void)cancelAppRefreshTasksForApps:(id)apps;
- (void)cancelBackgroundTasksForApps:(id)apps;
- (void)cancelContactTracingTasksForApps:(id)apps;
- (void)cancelLaunchesOfTypes:(id)types forApps:(id)apps;
- (void)cancelPushLaunchTasksForApps:(id)apps;
- (void)cancelTaskRequestWithIdentifier:(id)identifier forApplication:(id)application;
- (void)chooseActivitiesToRunFromCandidateActivities:(id)activities toBeRunActivities:(id)runActivities toLaunchApplications:(id)applications toLaunchExtension:(id)extension;
- (void)cleanupForActivity:(id)activity wasCompleted:(BOOL)completed;
- (void)clearActivityFromPrerunning:(id)prerunning;
- (void)clearRecentlyLaunchedApps;
- (void)clientFailedtoExpireTaskWithIdentifier:(id)identifier;
- (void)computeStaticPriorityForActivity:(id)activity;
- (void)continuedProcessingDeviceCapabilities:(id)capabilities;
- (void)createActivityGroup:(id)group;
- (void)createDefaultActivityGroups;
- (void)createPowerAssertion:(id)assertion;
- (void)currentAllocations:(unint64_t)allocations timeFilter:(id)filter bgsqlData:(id)data withHandler:(id)handler;
- (void)currentPredictionsWithHandler:(id)handler;
- (void)deferActivities:(id)activities withHandler:(id)handler;
- (void)delayLaunchesOfType:(id)type forApps:(id)apps;
- (void)delayedRunningActivitiesWithHandler:(id)handler;
- (void)deleteLimitForActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler;
- (void)determineNextTimerFireDateAndSchedule;
- (void)disableAppRefreshForApps:(id)apps;
- (void)endLaunchWithReason:(id)reason forApp:(id)app;
- (void)enterTestModeWithParameters:(id)parameters reset:(BOOL)reset handler:(id)handler;
- (void)establishConnectionFromClient:(id)client withCompletionHandler:(id)handler;
- (void)evaluateAllActivities:(id)activities handler:(id)handler;
- (void)evaluateAssertions;
- (void)evaluatePolicies:(id)policies handler:(id)handler;
- (void)evaluateScoreAndRunActivities:(id)activities;
- (void)evaluateScoreAndRunAllActivitiesForReason:(id)reason;
- (void)extensionActivity:(id)activity finishedWithStatus:(unsigned __int8)status;
- (void)filterAndAddActivity:(id)activity toCandidateActivities:(id)activities orCancelActivities:(id)cancelActivities groupNames:(id)names allowsBackgroundTasks:(BOOL)tasks backupRequested:(BOOL)requested inADarkWake:(BOOL)wake isLPMEnforced:(BOOL)self0 now:(id)self1 externallyPowered:(BOOL)self2;
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
- (void)getPendingTaskRequestsForApplication:(id)application withCompletionHandler:(id)handler;
- (void)getRuntimeLimit:(id)limit handler:(id)handler;
- (void)getSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data handler:(id)handler;
- (void)getSortedCandidateActivities:(id)activities handler:(id)handler;
- (void)handleCompletedActivities:(id)activities;
- (void)handleRunningActivities:(id)activities;
- (void)handleSysdiagnoseStartEvent;
- (void)handleTriggers:(id)triggers;
- (void)immediatelyBeginWorkForActivity:(id)activity;
- (void)informObserversOfActivitiesCompleted:(id)completed withSuccess:(BOOL)success;
- (void)informObserversOfActivitiesNowRunning:(id)running;
- (void)informObserversOfActivitiesSubmitted:(id)submitted;
- (void)informObserversOfActivitiesSuspended:(id)suspended;
- (void)launchApplication:(id)application applicationURL:(id)l additionalOptions:(id)options completion:(id)completion;
- (void)loadState;
- (void)loadStateWhenAvailable;
- (void)loadTestingDefaults;
- (void)logLimitations:(id)limitations;
- (void)moveActivityToPrerunning:(id)prerunning;
- (void)moveActivityToRunning:(id)running;
- (void)moveToPending:(id)pending;
- (void)pauseWithParameters:(id)parameters handler:(id)handler;
- (void)periodicCalculationForOptimal;
- (void)policiesWithHandler:(id)handler;
- (void)preemptCandidateActivities:(id)activities forFastPass:(id)pass;
- (void)prewarmApplication:(id)application;
- (void)prewarmSuspendApplication:(id)application withHandler:(id)handler;
- (void)recordToTaskRegistry:(id)registry lifeCycleStateName:(id)name;
- (void)registerForActivityLifecycleObservation:(id)observation;
- (void)registerForNetworkPathEvaluation;
- (void)registerForTrial;
- (void)registerTriggersWithContextStoreForPolicies:(id)policies;
- (void)releaseAssertions:(id)assertions;
- (void)releasePowerAssertion:(id)assertion;
- (void)removeActivityFromGroupToPendingTasks:(id)tasks;
- (void)removeActivityFromIncompatibleActivitiesMap:(id)map;
- (void)removeActivityFromNestedMaps:(id)maps;
- (void)removeActivityFromTriggerMap:(id)map;
- (void)removeClient:(id)client;
- (void)removeConstraint:(unint64_t)constraint forSchedulingPriority:(unint64_t)priority;
- (void)removeDuplicateLaunchTasks:(id)tasks;
- (void)removeGroupTrackingFor:(id)for from:(id)from;
- (void)removeLaunchRequest:(id)request;
- (void)reportActivity:(id)activity wasEvaluatedWithDecision:(int64_t)decision;
- (void)reportActivityTiming:(id)timing;
- (void)reportCustomCheckpoint:(unint64_t)checkpoint forTask:(id)task withHandler:(id)handler;
- (void)reportFeatureCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature atDate:(id)date withHandler:(id)handler;
- (void)reportOversizeLoadSymptomForActivity:(id)activity atStart:(BOOL)start;
- (void)reportPostRestoreCheckpoint:(unint64_t)checkpoint withParameters:(id)parameters;
- (void)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0;
- (void)reportSystemWorkload:(unint64_t)workload ofCategory:(unint64_t)category withHandler:(id)handler;
- (void)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0;
- (void)runActivities:(id)activities;
- (void)runActivitiesAndRemoveUnknown:(id)unknown;
- (void)runActivitiesWithUrgency:(int64_t)urgency activities:(id)activities;
- (void)runApplicationLaunchActivities:(id)activities;
- (void)runExtensionLaunchActivities:(id)activities;
- (void)runLaunchTasks:(id)tasks forApplication:(id)application forApplicationURL:(id)l onLaunch:(id)launch onCompletion:(id)completion onFailure:(id)failure;
- (void)runLocalActivity:(id)activity;
- (void)runProceedableActivities:(id)activities handler:(id)handler;
- (void)runningActivitiesWithHandler:(id)handler;
- (void)runningGroupActivitiesWithHandler:(id)handler;
- (void)scheduleConnectionTimeoutForPid:(int)pid;
- (void)scheduleTimerForActivity:(id)activity;
- (void)scheduleTimerOnBehalfOf:(id)of between:(double)between and:(double)and waking:(BOOL)waking;
- (void)schedulingTimerFired;
- (void)setupDatabaseMaintenance;
- (void)setupPrewarmSuspendListener;
- (void)setupTimers;
- (void)solicitActivityResubmission;
- (void)start;
- (void)startedActivities:(id)activities;
- (void)statisticsWithHandler:(id)handler;
- (void)submitActivities:(id)activities;
- (void)submitActivity:(id)activity inGroup:(id)group;
- (void)submitActivity:(id)activity inGroup:(id)group withHandler:(id)handler;
- (void)submitRateLimitConfiguration:(id)configuration handler:(id)handler;
- (void)submittedActivitiesWithHandler:(id)handler;
- (void)suspendActivities:(id)activities;
- (void)suspendActivity:(id)activity;
- (void)suspendAndCancelActivitiesWithIdentifiers:(id)identifiers denialReason:(unint64_t)reason;
- (void)suspendPlugin:(id)plugin;
- (void)triggerScoreEvaluationAndRunActivities:(id)activities handler:(id)handler;
- (void)unprotectedEvaluateScoreAndRunActivities:(id)activities;
- (void)updateActivity:(id)activity withParameters:(id)parameters;
- (void)updateLimit:(double)limit forActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler;
- (void)updateOngoingTask:(id)task completionHandler:(id)handler;
- (void)updateProgressForOngoingTask:(id)task completionHandler:(id)handler;
- (void)updateSuspendRequestDate:(id)date forActivity:(id)activity withReason:(id)reason;
- (void)updateSystemConstraintsWithParameters:(id)parameters;
- (void)updateTrialParameters;
- (void)updateiCPLTasksBlocked:(unint64_t)blocked;
- (void)warnBGTaskClientsForActivitiesAboutToExpire:(id)expire;
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
  block[4] = self;
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
              startBefore = [v69 startBefore];
              startBefore2 = [v9 startBefore];
              [startBefore timeIntervalSinceDate:startBefore2];
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
    schedulingPriority = [v69 schedulingPriority];
    v29 = _DASSchedulingPriorityUtility;
    startBefore3 = [v69 startBefore];
    [startBefore3 timeIntervalSinceDate:v3];
    v32 = v31;

    if (v32 <= 0.0)
    {
      name = [v69 name];
      [(_DASDaemon *)self scheduleTimerOnBehalfOf:name between:schedulingPriority > v29 and:600.0 waking:900.0];
    }

    else
    {
      startBefore4 = [v69 startBefore];
      predictedOptimalStartDate = [v69 predictedOptimalStartDate];
      [startBefore4 timeIntervalSinceDate:predictedOptimalStartDate];
      if (v35 >= 90.0)
      {
      }

      else
      {
        predictedOptimalStartDate2 = [v69 predictedOptimalStartDate];
        [predictedOptimalStartDate2 timeIntervalSinceDate:v3];
        v38 = v37;

        if (v38 > 0.0)
        {
          [(_DASDaemon *)self scheduleTimerForActivity:v69];
          goto LABEL_56;
        }
      }

      v67 = schedulingPriority;
      name = [v69 predictedOptimalStartDate];
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
            predictedOptimalStartDate3 = [v45 predictedOptimalStartDate];
            v47 = predictedOptimalStartDate3;
            if (predictedOptimalStartDate3)
            {
              [predictedOptimalStartDate3 timeIntervalSinceDate:v3];
              if (v48 >= 0.0)
              {
                startBefore5 = [v69 startBefore];
                [v47 timeIntervalSinceDate:startBefore5];
                v51 = v50;

                if (v51 <= 0.0)
                {
                  [v47 timeIntervalSinceDate:name];
                  if (v52 > 0.0)
                  {
                    predictedOptimalStartDate4 = [v45 predictedOptimalStartDate];

                    name = predictedOptimalStartDate4;
                  }
                }
              }
            }
          }

          v42 = [v40 countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v42);
      }

      [name timeIntervalSinceDate:v3];
      v55 = v54;
      startBefore6 = [v69 startBefore];
      [startBefore6 timeIntervalSinceDate:v3];
      v58 = v57;

      [name timeIntervalSinceDate:v3];
      v60 = v59;
      name2 = [v69 name];
      if (v60 >= 0.0)
      {
        selfCopy2 = self;
        v64 = name2;
        v65 = v55;
        v62 = v58;
      }

      else
      {
        v62 = v58 + 90.0;
        selfCopy2 = self;
        v64 = name2;
        v65 = v58;
      }

      [(_DASDaemon *)selfCopy2 scheduleTimerOnBehalfOf:v64 between:v67 > v66 and:v65 waking:v62, v66];
    }
  }

LABEL_56:
}

- (id)tasksNoLongerEligible
{
  os_unfair_recursive_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_runningTasks allObjects];
  os_unfair_recursive_lock_unlock();
  v4 = [(_DASDaemon *)self tasksNoLongerEligibleFromTasks:allObjects];

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

- (id)initAsAnonymous:(BOOL)anonymous withContext:(id)context
{
  anonymousCopy = anonymous;
  contextCopy = context;
  v176.receiver = self;
  v176.super_class = _DASDaemon;
  v7 = [(_DASDaemon *)&v176 init];
  v8 = v7;
  if (v7)
  {
    v163 = anonymousCopy;
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

    if (contextCopy)
    {
      v77 = contextCopy;
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
      bOOLeanValue = [v3 BOOLeanValue];
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
    bOOLeanValue = dasImmediateRuntimeDisabled;
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

    longValue = [v19 longValue];
    v17 = v19;
  }

  else
  {
    longValue = 1;
  }

  qword_10020A528 = longValue;

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
    longValue2 = [v23 longValue];
    qword_10020A530 = longValue2;
  }

  else
  {
    longValue2 = qword_10020A530;
  }

  if (qword_10020A518 != v14 || qword_10020A520 != v16 || qword_10020A528 != v18 || longValue2 != v22)
  {
    [(_DASDaemon *)self createDefaultActivityGroups];
  }

  os_unfair_lock_lock(&self->_groupLock);
  v26 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultIntensiveGroupName];
  maxConcurrent = [v26 maxConcurrent];
  if (maxConcurrent == qword_10020A528)
  {
    v28 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultNetworkGroupName];
    maxConcurrent2 = [v28 maxConcurrent];
    if (maxConcurrent2 == qword_10020A520)
    {
      v30 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultGroupName];
      maxConcurrent3 = [v30 maxConcurrent];
      if (maxConcurrent3 == qword_10020A518)
      {
        v32 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:_DASDefaultContinuedProcessingGroupName];
        maxConcurrent4 = [v32 maxConcurrent];
        v34 = qword_10020A530;

        os_unfair_lock_unlock(&self->_groupLock);
        if (maxConcurrent4 == v34)
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

- (void)registerForActivityLifecycleObservation:(id)observation
{
  observationCopy = observation;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C910C;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = observationCopy;
  v6 = observationCopy;
  dispatch_sync(activityLifecycleObservingRegistryQueue, v7);
}

- (void)createPowerAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (_os_feature_enabled_impl())
  {
    if (([assertionCopy requestsApplicationLaunch] & 1) == 0)
    {
      v5 = +[_DASRequiresPluggedInPolicy policyInstance];
      isExternallyPowered = [v5 isExternallyPowered];

      if ((isExternallyPowered & 1) != 0 || [assertionCopy preventDeviceSleep])
      {
        v7 = [_DASDaemonLogger logForCategory:@"lifecycle"];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          name = [assertionCopy name];
          *buf = 138412802;
          v35 = name;
          v36 = 1024;
          *v37 = [assertionCopy preventDeviceSleep];
          *&v37[4] = 1024;
          *&v37[6] = isExternallyPowered;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Activity %@ has preventDeviceSleep %d. Externally Powered: %d", buf, 0x18u);
        }

        if ([assertionCopy preventDeviceSleep])
        {
          v9 = @"-ClientRequested";
        }

        else
        {
          v9 = &stru_1001BA3C0;
        }

        name2 = [assertionCopy name];
        v11 = [NSString stringWithFormat:@"DASActivity%@:%@", v9, name2];

        v12 = [NSMutableDictionary alloc];
        v32[0] = @"AssertType";
        v32[1] = @"AssertName";
        v33[0] = @"PreventUserIdleSystemSleep";
        v33[1] = v11;
        v13 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];
        v14 = [v12 initWithDictionary:v13];

        if ([assertionCopy pid])
        {
          v15 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [assertionCopy pid]);
          [v14 setObject:v15 forKeyedSubscript:@"AssertionOnBehalfOfPID"];
        }

        [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:@"AllowsDeviceRestart"];
        powerAssertions = [(_DASDaemon *)self powerAssertions];
        objc_sync_enter(powerAssertions);
        powerAssertions2 = [(_DASDaemon *)self powerAssertions];
        uuid = [assertionCopy uuid];
        v19 = [powerAssertions2 objectForKeyedSubscript:uuid];

        if (v19)
        {
          v20 = [_DASDaemonLogger logForCategory:@"lifecycle"];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            uuid2 = [assertionCopy uuid];
            powerAssertions3 = [(_DASDaemon *)self powerAssertions];
            uuid3 = [assertionCopy uuid];
            v24 = [powerAssertions3 objectForKeyedSubscript:uuid3];
            *buf = 138412546;
            v35 = uuid2;
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
          powerAssertions4 = [(_DASDaemon *)self powerAssertions];
          uuid4 = [assertionCopy uuid];
          [powerAssertions4 setObject:v27 forKeyedSubscript:uuid4];

          if (![assertionCopy preventDeviceSleep])
          {
LABEL_23:
            objc_sync_exit(powerAssertions);

            goto LABEL_24;
          }

          v26 = [_DASDaemonLogger logForCategory:@"lifecycle"];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [assertionCopy name];
            *buf = 138412546;
            v35 = name3;
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

- (void)releasePowerAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (_os_feature_enabled_impl())
  {
    powerAssertions = [(_DASDaemon *)self powerAssertions];
    objc_sync_enter(powerAssertions);
    powerAssertions2 = [(_DASDaemon *)self powerAssertions];
    uuid = [assertionCopy uuid];
    v8 = [powerAssertions2 objectForKeyedSubscript:uuid];

    if (v8)
    {
      unsignedIntValue = [v8 unsignedIntValue];
      if ([assertionCopy preventDeviceSleep])
      {
        v10 = [_DASDaemonLogger logForCategory:@"lifecycle"];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          name = [assertionCopy name];
          v14 = 138412546;
          v15 = name;
          v16 = 1024;
          v17 = unsignedIntValue;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Releasing assertion for %@ %u", &v14, 0x12u);
        }
      }

      IOPMAssertionRelease(unsignedIntValue);
      powerAssertions3 = [(_DASDaemon *)self powerAssertions];
      uuid2 = [assertionCopy uuid];
      [powerAssertions3 removeObjectForKey:uuid2];
    }

    objc_sync_exit(powerAssertions);
  }
}

- (void)releaseAssertions:(id)assertions
{
  assertionsCopy = assertions;
  if (_os_feature_enabled_impl())
  {
    v18 = assertionsCopy;
    obj = [(_DASDaemon *)self powerAssertions];
    objc_sync_enter(obj);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = assertionsCopy;
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
          powerAssertions = [(_DASDaemon *)self powerAssertions];
          uuid = [v9 uuid];
          v12 = [powerAssertions objectForKeyedSubscript:uuid];

          if (v12)
          {
            unsignedIntValue = [v12 unsignedIntValue];
            v14 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              name = [v9 name];
              *buf = 138412546;
              v25 = name;
              v26 = 1024;
              v27 = unsignedIntValue;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Releasing assertion for %@ %u", buf, 0x12u);
            }

            IOPMAssertionRelease(unsignedIntValue);
            powerAssertions2 = [(_DASDaemon *)self powerAssertions];
            uuid2 = [v9 uuid];
            [powerAssertions2 removeObjectForKey:uuid2];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v6);
    }

    objc_sync_exit(obj);
    assertionsCopy = v18;
  }
}

- (void)evaluateAssertions
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[_DASRequiresPluggedInPolicy policyInstance];
    isExternallyPowered = [v3 isExternallyPowered];

    if ((isExternallyPowered & 1) == 0)
    {
      v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Evaluating assertions on external power state change", buf, 2u);
      }

      v6 = +[NSMutableSet set];
      powerAssertions = [(_DASDaemon *)self powerAssertions];
      objc_sync_enter(powerAssertions);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      powerAssertions2 = [(_DASDaemon *)self powerAssertions];
      v9 = [powerAssertions2 countByEnumeratingWithState:&v22 objects:v28 count:16];
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
              objc_enumerationMutation(powerAssertions2);
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
          v9 = [powerAssertions2 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v9);
      }

      objc_sync_exit(powerAssertions);
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

- (void)scheduleTimerForActivity:(id)activity
{
  activityCopy = activity;
  v13 = +[NSDate date];
  name = [activityCopy name];
  predictedOptimalStartDate = [activityCopy predictedOptimalStartDate];
  [predictedOptimalStartDate timeIntervalSinceDate:v13];
  v8 = v7;
  startBefore = [activityCopy startBefore];
  [startBefore timeIntervalSinceDate:v13];
  v11 = v10;
  schedulingPriority = [activityCopy schedulingPriority];

  [(_DASDaemon *)self scheduleTimerOnBehalfOf:name between:schedulingPriority > _DASSchedulingPriorityUtility and:v8 waking:v11];
}

- (void)scheduleTimerOnBehalfOf:(id)of between:(double)between and:(double)and waking:(BOOL)waking
{
  ofCopy = of;
  timerSchedulingQueue = self->_timerSchedulingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CA11C;
  block[3] = &unk_1001B8448;
  betweenCopy = between;
  andCopy = and;
  wakingCopy = waking;
  block[4] = self;
  v14 = ofCopy;
  v12 = ofCopy;
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

- (void)removeDuplicateLaunchTasks:(id)tasks
{
  tasksCopy = tasks;
  v4 = +[NSMutableSet set];
  v29 = +[NSMutableDictionary dictionary];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = tasksCopy;
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
                    submitDate = [v6 submitDate];
                    submitDate2 = [v13 submitDate];
                    [submitDate timeIntervalSinceDate:submitDate2];
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
        name = [v14 name];
        maxConcurrent = [v14 maxConcurrent];
        *buf = 138412546;
        v41 = name;
        v42 = 2048;
        v43 = maxConcurrent;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Loading group %@ (capacity=%lld).", buf, 0x16u);
      }

      os_unfair_lock_lock(&self->_groupLock);
      groups = self->_groups;
      name2 = [v14 name];
      [(NSMutableDictionary *)groups setObject:v14 forKeyedSubscript:name2];

      os_unfair_lock_unlock(&self->_groupLock);
      name3 = [v14 name];
      LOBYTE(name2) = [name3 isEqualToString:_DASDefaultIntensiveGroupName];

      if (name2)
      {
        v11 = 1;
      }

      else
      {
        name4 = [v14 name];
        v22 = [name4 isEqualToString:_DASDefaultNetworkGroupName];

        if (v22)
        {
          BYTE4(v35) = 1;
        }

        else
        {
          name5 = [v14 name];
          v24 = [name5 isEqualToString:_DASDefaultGroupName];

          if (v24)
          {
            BYTE4(v34) = 1;
          }

          else
          {
            name6 = [v14 name];
            v26 = [name6 isEqualToString:_DASDefaultRemoteGroupName];

            if (v26)
            {
              LOBYTE(v34) = 1;
            }

            else
            {
              name7 = [v14 name];
              v28 = [name7 isEqualToString:_DASDefaultContinuedProcessingGroupName];

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
  allObjects = [v5 allObjects];
  [(_DASDaemon *)self submitActivities:allObjects];

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

- (int64_t)capacityFromGroupMax:(int64_t)max forPriority:(unint64_t)priority
{
  if (_DASSchedulingPriorityUserInitiatedOvercommit <= priority)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return max << (_DASSchedulingPriorityUserInitiated <= priority);
  }
}

- (int64_t)currentLoadFromActivities:(id)activities inGroupWithName:(id)name
{
  activitiesCopy = activities;
  if ([name hasPrefix:@"com.apple.dasd"])
  {
    v6 = +[NSDate date];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = activitiesCopy;
    v7 = activitiesCopy;
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
          startDate = [v13 startDate];
          [startDate timeIntervalSinceDate:v6];
          v16 = v15;

          if (v16 > 0.0)
          {
            v17 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              startDate2 = [v13 startDate];
              *buf = 138412546;
              v34 = v13;
              v35 = 2112;
              v36 = startDate2;
              _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Adjusting start date for %@ to %@", buf, 0x16u);
            }

            v18 = [v6 dateByAddingTimeInterval:-300.0];
            [v13 setStartDate:v18];
          }

          startDate3 = [v13 startDate];
          if (startDate3)
          {
            startDate4 = [v13 startDate];
            [v6 timeIntervalSinceDate:startDate4];
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

    activitiesCopy = v28;
  }

  else
  {
    v24 = [activitiesCopy count];
  }

  return v24;
}

- (int64_t)additionalCapacityForActivity:(id)activity inGroupWithName:(id)name shouldTryToSuspend:(BOOL)suspend
{
  suspendCopy = suspend;
  activityCopy = activity;
  nameCopy = name;
  if (nameCopy)
  {
    v66 = activityCopy;
    os_unfair_lock_lock(&self->_groupLock);
    v10 = [(NSMutableDictionary *)self->_groups objectForKeyedSubscript:nameCopy];
    v11 = v10;
    if (v10)
    {
      maxConcurrent = [v10 maxConcurrent];
    }

    else
    {
      maxConcurrent = 0x7FFFFFFFFFFFFFFFLL;
    }

    os_unfair_lock_unlock(&self->_groupLock);
    os_unfair_lock_lock(&self->_groupLock);
    v14 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:nameCopy];
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

    v19 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:nameCopy];
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
    v26 = [(_DASDaemon *)self currentLoadFromActivities:v24 inGroupWithName:nameCopy];
    v27 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v73 = nameCopy;
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
      activityCopy = v66;
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
      maxConcurrent <<= v33;
    }

    v63 = v18;
    if ([v66 requiresNetwork] && (+[_CDNetworkContext wifiQuality:](_CDNetworkContext, "wifiQuality:", self->_context) > 50 || +[_CDNetworkContext cellQuality:](_CDNetworkContext, "cellQuality:", self->_context) > 50 || +[_CDNetworkContext wiredQuality:](_CDNetworkContext, "wiredQuality:", self->_context) >= 51))
    {
      maxConcurrent = -[_DASDaemon capacityFromGroupMax:forPriority:](self, "capacityFromGroupMax:forPriority:", maxConcurrent, [v66 schedulingPriority]);
    }

    v13 = maxConcurrent - v26;
    v34 = +[NSDate now];
    activityCopy = v66;
    if (!suspendCopy || v13 > 0)
    {
LABEL_65:

      v18 = v63;
      goto LABEL_66;
    }

    v60 = v13;
    v61 = v11;
    v62 = nameCopy;
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
      suspendRequestDate = [v40 suspendRequestDate];

      if (suspendRequestDate)
      {
        goto LABEL_46;
      }

      if ([(_DASFairScheduleManager *)self->_fairScheduleManager compareActivity:activityCopy withActivity:v40]!= -1)
      {
        goto LABEL_41;
      }

      fileProtection = [activityCopy fileProtection];

      if (fileProtection)
      {
        v48 = +[_DASFileProtectionPolicy policyInstance];
        v49 = [v48 responseForActivity:activityCopy withState:self->_context];

        policyDecision = [v49 policyDecision];
        if (policyDecision == 33)
        {
          goto LABEL_41;
        }
      }

      if ([(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator shouldDelaySuspendingRunningActivity:v40 forPendingTask:activityCopy])
      {
        break;
      }

      v42 = 1;
LABEL_42:
      startDate = [v40 startDate];
      v44 = [(_DASDaemon *)self shouldSuspendLongRunningActivity:v40 withStartDate:startDate whileBlockingOtherTasks:v42 atDate:v34];

      activityCopy = v66;
      if (v44)
      {
        v45 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          name = [v66 name];
          *buf = 138543618;
          v73 = v40;
          v74 = 2112;
          v75 = name;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Group full! Found long running activity %{public}@ to suspend, making room for %@", buf, 0x16u);

          activityCopy = v66;
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

          schedulingPriority = [activityCopy schedulingPriority];
          if (schedulingPriority <= _DASSchedulingPriorityDefault)
          {
            v56 = 0;
            v11 = v61;
            nameCopy = v62;
            v23 = v64;
            v13 = v60;
          }

          else
          {
            v56 = [(_DASDaemon *)self candidateGroupActivityForPreemption:v35];
            v11 = v61;
            nameCopy = v62;
            v23 = v64;
            v13 = v60;
            if (v56)
            {
              suspendRequestDate2 = [activityCopy suspendRequestDate];

              if (!suspendRequestDate2)
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

              activityCopy = v66;
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
      name2 = [v40 name];
      name3 = [activityCopy name];
      *buf = 138412546;
      v73 = name2;
      v74 = 2112;
      v75 = name3;
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

- (void)cancelLaunchesOfTypes:(id)types forApps:(id)apps
{
  typesCopy = types;
  appsCopy = apps;
  v8 = +[NSMutableSet set];
  selfCopy = self;
  os_unfair_recursive_lock_lock_with_options();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = appsCopy;
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
        v11 = [(NSMutableDictionary *)selfCopy->_applicationLaunchRequests objectForKeyedSubscript:v10];
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
                launchReason = [v16 launchReason];
                v18 = [typesCopy containsObject:launchReason];

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
  [(_DASDaemon *)selfCopy cancelActivities:v8];
}

- (void)cancelPushLaunchTasksForApps:(id)apps
{
  v4 = _DASLaunchReasonBackgroundRemoteNotification;
  appsCopy = apps;
  v6 = [NSSet setWithObject:v4];
  [(_DASDaemon *)self cancelLaunchesOfTypes:v6 forApps:appsCopy];
}

- (void)cancelAppRefreshTasksForApps:(id)apps
{
  v4 = _DASLaunchReasonBackgroundRefresh;
  appsCopy = apps;
  v6 = [NSSet setWithObject:v4];
  [(_DASDaemon *)self cancelLaunchesOfTypes:v6 forApps:appsCopy];
}

- (void)cancelBackgroundTasksForApps:(id)apps
{
  v4 = _DASLaunchReasonBackgroundRefresh;
  v5 = _DASLaunchReasonBackgroundProcessing;
  v6 = _DASLaunchReasonHealthResearch;
  appsCopy = apps;
  v8 = [NSSet setWithObjects:v4, v5, v6, 0];
  [(_DASDaemon *)self cancelLaunchesOfTypes:v8 forApps:appsCopy];
}

- (void)cancelContactTracingTasksForApps:(id)apps
{
  appsCopy = apps;
  v5 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = appsCopy;
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

- (void)delayLaunchesOfType:(id)type forApps:(id)apps
{
  typeCopy = type;
  appsCopy = apps;
  v35 = +[NSDate date];
  selfCopy = self;
  os_unfair_recursive_lock_lock_with_options();
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = appsCopy;
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
        v11 = [(NSMutableDictionary *)selfCopy->_applicationLaunchRequests objectForKeyedSubscript:v10];
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
              launchReason = [v16 launchReason];
              v18 = [launchReason isEqualToString:typeCopy];

              if (v18)
              {
                startAfter = [v16 startAfter];
                v20 = [v8 objectForKeyedSubscript:v10];
                [v20 doubleValue];
                v21 = [v35 dateByAddingTimeInterval:?];

                [v21 timeIntervalSinceDate:startAfter];
                if (v22 > 0.0)
                {
                  v23 = v22;
                  [v16 setStartAfter:v21];
                  startBefore = [v16 startBefore];
                  [startBefore dateByAddingTimeInterval:v23];
                  v25 = v11;
                  v26 = typeCopy;
                  v27 = v10;
                  v29 = v28 = v8;
                  [v16 setStartBefore:v29];

                  v8 = v28;
                  v10 = v27;
                  typeCopy = v26;
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

- (BOOL)addLaunchRequest:(id)request
{
  requestCopy = request;
  relatedApplications = [requestCopy relatedApplications];
  v6 = [relatedApplications count];

  if (v6)
  {
    relatedApplications2 = [requestCopy relatedApplications];
    firstObject = [relatedApplications2 firstObject];

    os_unfair_recursive_lock_lock_with_options();
    requestsExtensionLaunch = [requestCopy requestsExtensionLaunch];
    v10 = 144;
    if (requestsExtensionLaunch)
    {
      v10 = 160;
    }

    v11 = *(&self->super.isa + v10);
    v12 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      launchReason = [requestCopy launchReason];
      *buf = 138412802;
      v45 = launchReason;
      v46 = 2112;
      v47 = firstObject;
      v48 = 2112;
      v49 = requestCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Adding a launch request (%@) for application %@ by activity %@", buf, 0x20u);
    }

    v14 = [v11 objectForKeyedSubscript:firstObject];
    v15 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v45 = firstObject;
      v46 = 2112;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Pre-existing launch requests for %@: %@", buf, 0x16u);
    }

    if (!v14)
    {
      v14 = +[NSMutableSet set];
      [v11 setObject:v14 forKeyedSubscript:firstObject];
    }

    buf[0] = 1;
    if ([requestCopy isBackgroundTaskActivity])
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
            v22 = [requestCopy shouldReplaceActivity:v21 andKeepsSubmitted:buf];
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
          if ([v28 isIdenticalLaunchTo:{requestCopy, v34}])
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

        if ([requestCopy overwritesPrevious])
        {
          v31 = v28;
          startAfter = [v31 startAfter];
          [requestCopy setStartAfter:startAfter];

          startBefore = [v31 startBefore];
          [requestCopy setStartBefore:startBefore];

          goto LABEL_38;
        }

        os_unfair_recursive_lock_unlock();

        v31 = 0;
        v24 = 0;
        goto LABEL_44;
      }

LABEL_38:
    }

    [v14 _DAS_addOrReplaceObject:{requestCopy, v34}];
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

- (void)removeLaunchRequest:(id)request
{
  requestCopy = request;
  relatedApplications = [requestCopy relatedApplications];
  v6 = [relatedApplications count];

  if (v6)
  {
    relatedApplications2 = [requestCopy relatedApplications];
    firstObject = [relatedApplications2 firstObject];

    os_unfair_recursive_lock_lock_with_options();
    requestsExtensionLaunch = [requestCopy requestsExtensionLaunch];
    v10 = 144;
    if (requestsExtensionLaunch)
    {
      v10 = 160;
    }

    v11 = *(&self->super.isa + v10);
    v12 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = firstObject;
      v18 = 2112;
      v19 = requestCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Removing a launch request for application %@ by activity %@", &v16, 0x16u);
    }

    v13 = [v11 objectForKeyedSubscript:firstObject];
    [v13 removeObject:requestCopy];

    v14 = [v11 objectForKeyedSubscript:firstObject];
    v15 = [v14 count];

    if (!v15)
    {
      [v11 removeObjectForKey:firstObject];
    }

    os_unfair_recursive_lock_unlock();
  }
}

- (unint64_t)requestCountForApplication:(id)application
{
  applicationCopy = application;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:applicationCopy];

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
        suspendRequestDate = [v10 suspendRequestDate];
        if (suspendRequestDate)
        {
        }

        else
        {
          schedulingPriority = [v10 schedulingPriority];
          if (schedulingPriority < _DASSchedulingPriorityUserInitiated || [v10 isIntensive])
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

- (id)allTimewiseEligibleNetworkTasksAllowingCell:(BOOL)cell
{
  cellCopy = cell;
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
          if (([v14 timewiseEligibleAtDate:{v6, v16}] & cellCopy) == 1 && (objc_msgSend(v14, "requiresInexpensiveNetworking") & 1) == 0)
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([listenerCopy isEqual:selfCopy->_listener])
  {
    v9 = [connectionCopy valueForEntitlement:@"com.apple.duet.activityscheduler.allow"];
    v10 = [connectionCopy valueForEntitlement:@"application-identifier"];
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
        v17 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Creating restricted client for connection %@", &v16, 0xCu);
      }

      v11 = 1;
    }
  }

  else
  {
    if (![listenerCopy isEqual:selfCopy->_bgstListener])
    {
      v11 = 0;
      goto LABEL_17;
    }

    v9 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Creating unrestricted client connection for BGSTHelper %@", &v16, 0xCu);
    }

    v11 = 0;
  }

LABEL_17:
  v13 = [_DASDaemonClient clientForDaemon:selfCopy withConnection:connectionCopy isRestricted:v11];
  v14 = selfCopy->_clients;
  objc_sync_enter(v14);
  [(NSMutableArray *)selfCopy->_clients addObject:v13];
  objc_sync_exit(v14);

  objc_sync_exit(selfCopy);
  return 1;
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  v4 = self->_clients;
  objc_sync_enter(v4);
  [(NSMutableArray *)self->_clients removeObject:clientCopy];
  objc_sync_exit(v4);

  v5 = self->_connectedBGTaskClients;
  objc_sync_enter(v5);
  connection = [clientCopy connection];
  processIdentifier = [connection processIdentifier];

  connectedBGTaskClients = self->_connectedBGTaskClients;
  v9 = [NSNumber numberWithInt:processIdentifier];
  [(NSMutableDictionary *)connectedBGTaskClients removeObjectForKey:v9];

  activitiesWaitingForBGTaskClients = self->_activitiesWaitingForBGTaskClients;
  v11 = [NSNumber numberWithInt:processIdentifier];
  [(NSMutableDictionary *)activitiesWaitingForBGTaskClients removeObjectForKey:v11];

  objc_sync_exit(v5);
}

- (void)allClientsDo:(id)do
{
  doCopy = do;
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

        doCopy[2](doCopy, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  objc_sync_exit(v5);
}

- (id)clientForActivity:(id)activity
{
  activityCopy = activity;
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
        startedTasks = [v10 startedTasks];
        objc_sync_enter(startedTasks);
        startedTasks2 = [v10 startedTasks];
        v13 = [startedTasks2 containsObject:activityCopy];

        if (v13)
        {
          v7 = v10;
          objc_sync_exit(startedTasks);

          goto LABEL_11;
        }

        objc_sync_exit(startedTasks);
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

- (void)runLocalActivity:(id)activity
{
  activityCopy = activity;
  v5 = [NSSet setWithObject:activityCopy];
  [(_DASDaemon *)self handleRunningActivities:v5];

  handlerQueue = [activityCopy handlerQueue];
  launchQueue = handlerQueue;
  if (!handlerQueue)
  {
    launchQueue = self->_launchQueue;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE970;
  block[3] = &unk_1001B5668;
  v10 = activityCopy;
  v8 = activityCopy;
  dispatch_async(launchQueue, block);
}

- (void)runActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = activitiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Running activities : %@", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v37 = +[NSMutableSet set];
  v40 = +[NSMutableSet set];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = activitiesCopy;
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
        delayedStart = [v9 delayedStart];
        v11 = v40;
        if (delayedStart)
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
        startHandler = [v27 startHandler];

        if (startHandler)
        {
          [(_DASDaemon *)self runLocalActivity:v27];
        }

        else if (([v27 requestsApplicationLaunch] & 1) == 0)
        {
          widgetID = [v27 widgetID];
          if (widgetID)
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

- (void)runActivitiesAndRemoveUnknown:(id)unknown
{
  unknownCopy = unknown;
  context = objc_autoreleasePoolPush();
  [(_DASDaemon *)self runActivities:unknownCopy];
  v5 = +[NSMutableSet set];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v6 = unknownCopy;
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
    allKeys = [(NSMutableDictionary *)self->_recentlyLaunchedApps allKeys];
    v5 = +[NSDate date];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = allKeys;
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
      allKeys2 = [(NSMutableDictionary *)self->_recentlyLaunchedApps allKeys];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v6 = allKeys2;
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
        allKeys3 = [(NSMutableDictionary *)self->_recentlyLaunchedApps allKeys];

        v23 = [allKeys3 objectAtIndex:{arc4random_uniform(objc_msgSend(allKeys3, "count"))}];
        [(NSMutableDictionary *)self->_recentlyLaunchedApps removeObjectForKey:v23];
        [(NSCountedSet *)self->_launchesPerApp removeObject:v23];

        v6 = allKeys3;
      }
    }
  }

  objc_sync_exit(v3);

  objc_autoreleasePoolPop(context);
}

- (void)runLaunchTasks:(id)tasks forApplication:(id)application forApplicationURL:(id)l onLaunch:(id)launch onCompletion:(id)completion onFailure:(id)failure
{
  tasksCopy = tasks;
  applicationCopy = application;
  lCopy = l;
  launchCopy = launch;
  completionCopy = completion;
  failureCopy = failure;
  v19 = os_transaction_create();
  oslog = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v122 = tasksCopy;
    v123 = 2112;
    v124 = applicationCopy;
    _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_INFO, "Running launch tasks: %@ for application: %@", buf, 0x16u);
  }

  v88 = dispatch_group_create();
  v20 = +[NSMutableDictionary dictionary];
  v87 = +[NSMutableSet set];
  if (byte_10020B7D0)
  {
    v67 = v20;
    v68 = v19;
    v72 = failureCopy;
    v69 = completionCopy;
    v70 = lCopy;
    v91 = +[NSMutableDictionary dictionary];
    v80 = +[NSMutableDictionary dictionary];
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v71 = tasksCopy;
    obj = tasksCopy;
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
        v107 = applicationCopy;
        v108 = v26;
        v109 = v88;
        selfCopy = self;
        v28 = objc_retainBlock(v105);
        launchReason = [v26 launchReason];
        v30 = [launchReason isEqualToString:v24];

        if (v30)
        {
          userInfo3 = [[UISFetchContentInBackgroundAction alloc] initWithHandler:v28];
          uuid = [v26 uuid];
          v33 = v91;
          v34 = userInfo3;
          v35 = uuid;
          goto LABEL_11;
        }

        launchReason2 = [v26 launchReason];
        v37 = [launchReason2 isEqualToString:v84];

        if (v37)
        {
          userInfo = [v26 userInfo];
          uuid = [userInfo objectForKeyedSubscript:v82];

          userInfo3 = [[UISHandleRemoteNotificationAction alloc] initWithRemoteNotificationPayload:uuid withHandler:v28];
          uuid2 = [v26 uuid];
          [v91 setObject:userInfo3 forKeyedSubscript:uuid2];

          goto LABEL_14;
        }

        launchReason3 = [v26 launchReason];
        v42 = [launchReason3 isEqualToString:v83];

        if (v42)
        {
          userInfo2 = [v26 userInfo];
          v44 = [userInfo2 objectForKeyedSubscript:v81];

          if (v44)
          {
            userInfo3 = [v26 userInfo];
            uuid = [userInfo3 objectForKeyedSubscript:v81];
            v33 = v80;
            v34 = uuid;
            v35 = v81;
LABEL_11:
            [v33 setObject:v34 forKeyedSubscript:v35];
LABEL_14:
          }

LABEL_15:
          launchReason4 = [v26 launchReason];
          [v87 addObject:launchReason4];
          goto LABEL_16;
        }

        launchReason5 = [v26 launchReason];
        v46 = [launchReason5 isEqualToString:v79];

        if (v46)
        {
          userInfo3 = [v26 userInfo];
          uuid = [userInfo3 objectForKeyedSubscript:v77];
          [v80 addEntriesFromDictionary:uuid];
          goto LABEL_14;
        }

        launchReason6 = [v26 launchReason];
        v48 = [launchReason6 isEqualToString:v78];

        if (v48)
        {
          goto LABEL_15;
        }

        launchReason7 = [v26 launchReason];
        v50 = [launchReason7 isEqualToString:v76];

        if (v50)
        {
          goto LABEL_15;
        }

        launchReason8 = [v26 launchReason];
        v52 = [launchReason8 isEqualToString:v75];

        if (v52)
        {
          goto LABEL_15;
        }

        launchReason9 = [v26 launchReason];
        v54 = [launchReason9 isEqualToString:v74];

        if (v54)
        {
          goto LABEL_15;
        }

        launchReason4 = v27;
        if (os_log_type_enabled(launchReason4, OS_LOG_TYPE_INFO))
        {
          launchReason10 = [v26 launchReason];
          *buf = v66;
          v122 = launchReason10;
          v123 = 2112;
          v124 = applicationCopy;
          _os_log_impl(&_mh_execute_header, launchReason4, OS_LOG_TYPE_INFO, "Encountered unexpected launch reason %@ for %@", buf, 0x16u);
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

        allValues = [v91 allValues];
        v20 = v67;
        [v67 setObject:allValues forKeyedSubscript:FBSOpenApplicationOptionKeyActions];

        if (![(_DASBARScheduler *)self->_barScheduler applicationStateRequiresImmediateDelivery:applicationCopy])
        {
          [v67 setObject:&off_1001CA468 forKeyedSubscript:FBSOpenApplicationOptionKeyLaunchIntent];
        }

        [v67 setObject:v80 forKeyedSubscript:FBSOpenApplicationOptionKeyPayloadOptions];
        lCopy = v70;
        v19 = v68;
        completionCopy = v69;
        failureCopy = v72;
        if ([v87 count])
        {
          activityLaunchQueue = self->_activityLaunchQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000D0B6C;
          block[3] = &unk_1001B8600;
          v93 = v68;
          v94 = v88;
          selfCopy2 = self;
          v96 = applicationCopy;
          v97 = v70;
          v98 = v67;
          v99 = oslog;
          v102 = v72;
          v103 = launchCopy;
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

        tasksCopy = v71;

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
  v91 = tasksCopy;
  v59 = [v91 countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (v59)
  {
    v60 = v59;
    v73 = failureCopy;
    v61 = launchCopy;
    v62 = lCopy;
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
    lCopy = v62;
    launchCopy = v61;
    failureCopy = v73;
  }

LABEL_48:
}

- (void)launchApplication:(id)application applicationURL:(id)l additionalOptions:(id)options completion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  optionsCopy = options;
  v11 = [_DASDaemonLogger logForCategory:@"bar"];
  v12 = [NSMutableDictionary dictionaryWithDictionary:optionsCopy];

  v25 = FBSOpenApplicationOptionKeyActivateSuspended;
  v26 = &__kCFBooleanTrue;
  v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [v12 addEntriesFromDictionary:v13];

  v14 = [FBSOpenApplicationOptions optionsWithDictionary:v12];
  v15 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = applicationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Launching with FBSOpenApplicationService for application %@", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D1CE8;
  v19[3] = &unk_1001B8628;
  v20 = v11;
  v21 = applicationCopy;
  v22 = completionCopy;
  v16 = completionCopy;
  v17 = applicationCopy;
  v18 = v11;
  [v15 openApplication:v17 withOptions:v14 completion:v19];
}

- (void)runExtensionLaunchActivities:(id)activities
{
  activitiesCopy = activities;
  v23 = os_transaction_create();
  v5 = +[NSDate date];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = activitiesCopy;
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
        launchReason = [v12 launchReason];
        v14 = [launchReason isEqualToString:v10];

        if (v14)
        {
          extensionIdentifier = [v12 extensionIdentifier];
          v16 = [_DASPlugin pluginForIdentifier:extensionIdentifier ofType:@"com.apple.ml-extension"];

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

- (void)addPendingActivity:(id)activity toGroup:(id)group withReason:(id)reason
{
  activityCopy = activity;
  groupCopy = group;
  reasonCopy = reason;
  os_unfair_lock_lock(&self->_groupLock);
  v11 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:groupCopy];
  [v11 removeObject:activityCopy];

  v12 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:groupCopy];
  [v12 removeObject:activityCopy];

  v13 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:groupCopy];
    v17 = 138413058;
    v18 = reasonCopy;
    v19 = 2114;
    v20 = activityCopy;
    v21 = 2112;
    v22 = groupCopy;
    v23 = 2048;
    v24 = [v14 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "NO LONGER RUNNING %@ %{public}@ ...Tasks running in group [%@] are %ld!", &v17, 0x2Au);
  }

  v15 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:groupCopy];
  if (v15)
  {
    v16 = v15;
    [v15 addObject:activityCopy];
  }

  else
  {
    v16 = [NSMutableSet setWithObject:activityCopy];
    [(NSMutableDictionary *)self->_groupToPendingTasks setObject:v16 forKeyedSubscript:groupCopy];
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)moveToPending:(id)pending
{
  pendingCopy = pending;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [(NSMutableSet *)self->_runningTasks count];
  [(NSMutableSet *)self->_prerunningTasks removeObject:pendingCopy];
  [(NSMutableSet *)self->_runningTasks removeObject:pendingCopy];
  [(NSMutableSet *)self->_submittedTasks removeObject:pendingCopy];
  [(NSMutableSet *)self->_pendingTasks addObject:pendingCopy];

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

- (void)runApplicationLaunchActivities:(id)activities
{
  activitiesCopy = activities;
  v42 = os_transaction_create();
  v5 = +[NSMutableSet set];
  v6 = +[NSDate date];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = activitiesCopy;
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
          relatedApplications = [v10 relatedApplications];
          firstObject = [relatedApplications firstObject];

          if (firstObject)
          {
            [v5 addObject:firstObject];
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
          selfCopy = self;
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
          selfCopy2 = self;
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
          internalGroupNames = [v32 internalGroupNames];
          v34 = [internalGroupNames count] == 0;

          if (!v34)
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            internalGroupNames2 = [v32 internalGroupNames];
            v36 = [internalGroupNames2 countByEnumeratingWithState:&v54 objects:v87 count:16];
            if (v36)
            {
              v37 = *v55;
              do
              {
                for (n = 0; n != v36; n = n + 1)
                {
                  if (*v55 != v37)
                  {
                    objc_enumerationMutation(internalGroupNames2);
                  }

                  [(_DASDaemon *)self addPendingActivity:v32 toGroup:*(*(&v54 + 1) + 8 * n) withReason:@"[Not in application -> activity mapping]"];
                  [(_DASDaemon *)self moveToPending:v32];
                }

                v36 = [internalGroupNames2 countByEnumeratingWithState:&v54 objects:v87 count:16];
              }

              while (v36);
            }
          }
        }

        else
        {
          groupName = [v32 groupName];

          if (groupName)
          {
            groupName2 = [v32 groupName];
            [(_DASDaemon *)self addPendingActivity:v32 toGroup:groupName2 withReason:@"[Not in application -> activity mapping]"];

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

- (void)suspendPlugin:(id)plugin
{
  pluginCopy = plugin;
  extensionIdentifier = [pluginCopy extensionIdentifier];
  v6 = [_DASPlugin existingPluginForIdentifier:extensionIdentifier ofType:@"com.apple.ml-extension"];

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
    v12 = pluginCopy;
    v13 = v6;
    dispatch_after(v9, evaluationQueue, v11);

    v8 = v12;
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = pluginCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not suspending activity %{public}@ - extension already gone", buf, 0xCu);
  }
}

- (void)warnBGTaskClientsForActivitiesAboutToExpire:(id)expire
{
  expireCopy = expire;
  connectedBGTaskClients = [(_DASDaemon *)self connectedBGTaskClients];
  objc_sync_enter(connectedBGTaskClients);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedBGTaskClients2 = [(_DASDaemon *)self connectedBGTaskClients];
  allValues = [connectedBGTaskClients2 allValues];

  v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10) willExpireBGTaskActivities:expireCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  objc_sync_exit(connectedBGTaskClients);
}

- (void)deferActivities:(id)activities withHandler:(id)handler
{
  activitiesCopy = activities;
  handlerCopy = handler;
  v7 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [activitiesCopy count];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deferring %lu activities", buf, 0xCu);
  }

  v8 = +[NSMutableSet set];
  v9 = +[NSDate now];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = activitiesCopy;
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
  handlerCopy[2](handlerCopy, v18);
}

- (void)suspendActivity:(id)activity
{
  activityCopy = activity;
  [(_DASDaemon *)self recordToTaskRegistry:activityCopy lifeCycleStateName:@"suspended"];
  v5 = [NSSet setWithObject:activityCopy];

  [(_DASDaemon *)self suspendActivities:v5];
}

- (void)suspendAndCancelActivitiesWithIdentifiers:(id)identifiers denialReason:(unint64_t)reason
{
  identifiersCopy = identifiers;
  v6 = +[NSMutableSet set];
  v7 = [NSMutableSet setWithArray:identifiersCopy];
  os_unfair_recursive_lock_lock_with_options();
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
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
        uuid = [v13 uuid];
        v15 = [identifiersCopy containsObject:uuid];

        if (v15)
        {
          [v13 setLastDenialValue:reason];
          [v6 addObject:v13];
          uuid2 = [v13 uuid];
          [v7 removeObject:uuid2];
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)selfCopy suspendActivities:v6];
  [(_DASDaemon *)selfCopy cancelActivitiesWithIdentifiers:v7];
}

- (void)informObserversOfActivitiesSubmitted:(id)submitted
{
  submittedCopy = submitted;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4220;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = submittedCopy;
  v6 = submittedCopy;
  dispatch_async(activityLifecycleObservingRegistryQueue, v7);
}

- (void)informObserversOfActivitiesNowRunning:(id)running
{
  runningCopy = running;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D43B0;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = runningCopy;
  v6 = runningCopy;
  dispatch_async(activityLifecycleObservingRegistryQueue, v7);
}

- (void)informObserversOfActivitiesSuspended:(id)suspended
{
  suspendedCopy = suspended;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4540;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = suspendedCopy;
  v6 = suspendedCopy;
  dispatch_async(activityLifecycleObservingRegistryQueue, v7);
}

- (void)informObserversOfActivitiesCompleted:(id)completed withSuccess:(BOOL)success
{
  completedCopy = completed;
  activityLifecycleObservingRegistryQueue = self->_activityLifecycleObservingRegistryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D46E0;
  block[3] = &unk_1001B6A30;
  block[4] = self;
  v10 = completedCopy;
  successCopy = success;
  v8 = completedCopy;
  dispatch_async(activityLifecycleObservingRegistryQueue, block);
}

- (void)suspendActivities:(id)activities
{
  activitiesCopy = activities;
  if ([activitiesCopy count])
  {
    v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = activitiesCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Suspending: %{public}@", buf, 0xCu);
    }

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000D4C10;
    v43[3] = &unk_1001B84C0;
    v6 = activitiesCopy;
    v44 = v6;
    [(_DASDaemon *)self allClientsDo:v43];
    [(_DASDaemon *)self informObserversOfActivitiesSuspended:v6];
    connectedBGTaskClients = [(_DASDaemon *)self connectedBGTaskClients];
    v8 = [connectedBGTaskClients count];

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
      suspensionThreshold = [v24 suspensionThreshold];
      if (suspensionThreshold)
      {
        v26 = suspensionThreshold;
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

- (void)cancelActivities:(id)activities
{
  activitiesCopy = activities;
  if ([activitiesCopy count])
  {
    v5 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = activitiesCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Daemon Canceling Activities: %{public}@", buf, 0xCu);
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = activitiesCopy;
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

- (void)cancelActivitiesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
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
        uuid = [v11 uuid];
        v13 = [identifiersCopy containsObject:uuid];

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
        uuid2 = [v19 uuid];
        v21 = [identifiersCopy containsObject:uuid2];

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
        uuid3 = [v27 uuid];
        v29 = [identifiersCopy containsObject:uuid3];

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

- (void)cancelActivitiesWithReason:(id)reason cancellationReason:(int64_t)cancellationReason
{
  reasonCopy = reason;
  if ([reasonCopy count])
  {
    v7 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Daemon Canceling Activities: %{public}@", buf, 0xCu);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = reasonCopy;
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

          [(_DASDaemon *)self activityCanceledWithReason:*(*(&v15 + 1) + 8 * v12) expirationReason:cancellationReason];
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

- (void)activity:(id)activity blockedOnPolicies:(id)policies
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D5AB8;
  v8[3] = &unk_1001B8678;
  activityCopy = activity;
  policiesCopy = policies;
  v6 = policiesCopy;
  v7 = activityCopy;
  [(_DASDaemon *)self allClientsDo:v8];
}

- (void)activity:(id)activity runWithoutHonoringPolicies:(id)policies
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D5B80;
  v8[3] = &unk_1001B8678;
  activityCopy = activity;
  policiesCopy = policies;
  v6 = policiesCopy;
  v7 = activityCopy;
  [(_DASDaemon *)self allClientsDo:v8];
}

- (id)activityMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
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
        if ([predicateCopy evaluateWithObject:{v9, v11}])
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

- (id)getActivityWithUUID:(id)d
{
  v4 = [NSPredicate predicateWithFormat:@"self.uuid = %@", d];
  v5 = [(_DASDaemon *)self activityMatchingPredicate:v4];

  return v5;
}

- (id)getActivityWithName:(id)name
{
  name = [NSPredicate predicateWithFormat:@"self.name = %@", name];
  v5 = [(_DASDaemon *)self activityMatchingPredicate:name];

  return v5;
}

- (id)getActivityRunningWithName:(id)name
{
  nameCopy = name;
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
        name = [v11 name];
        v13 = [name isEqualToString:nameCopy];

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

- (id)getActivityRunningWithUUID:(id)d
{
  dCopy = d;
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
        uuid = [v11 uuid];
        v13 = [uuid isEqual:dCopy];

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

- (void)addConstraint:(unint64_t)constraint forSchedulingPriority:(unint64_t)priority
{
  os_unfair_lock_lock(&self->_constraintsLock);
  if (_DASSchedulingPriorityBackground >= priority)
  {
    maintenanceConstraints = self->_maintenanceConstraints;
    if ((maintenanceConstraints & constraint) != 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_maintenanceConstraints;
    v9 = 600;
  }

  else
  {
    maintenanceConstraints = self->_utilityConstraints;
    if ((maintenanceConstraints & constraint) != 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_utilityConstraints;
    v9 = 592;
  }

  *p_maintenanceConstraints = maintenanceConstraints | constraint;
  v10 = [NSNumber numberWithUnsignedInteger:?];
  [(_CDLocalContext *)self->_context setObject:v10 forKeyedSubscript:*(&self->super.isa + v9)];

LABEL_7:

  os_unfair_lock_unlock(&self->_constraintsLock);
}

- (void)removeConstraint:(unint64_t)constraint forSchedulingPriority:(unint64_t)priority
{
  os_unfair_lock_lock(&self->_constraintsLock);
  if (_DASSchedulingPriorityBackground >= priority)
  {
    maintenanceConstraints = self->_maintenanceConstraints;
    if ((maintenanceConstraints & constraint) == 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_maintenanceConstraints;
    v9 = 600;
  }

  else
  {
    maintenanceConstraints = self->_utilityConstraints;
    if ((maintenanceConstraints & constraint) == 0)
    {
      goto LABEL_7;
    }

    p_maintenanceConstraints = &self->_utilityConstraints;
    v9 = 592;
  }

  *p_maintenanceConstraints = maintenanceConstraints & ~constraint;
  v10 = [NSNumber numberWithUnsignedInteger:?];
  [(_CDLocalContext *)self->_context setObject:v10 forKeyedSubscript:*(&self->super.isa + v9)];

LABEL_7:

  os_unfair_lock_unlock(&self->_constraintsLock);
}

- (void)updateiCPLTasksBlocked:(unint64_t)blocked
{
  v5 = +[_DASPhotosPolicy keyPathForPhotosIsBlocked];
  v6 = +[_DASPhotosPolicy keyPathForBlockedStartDate];
  v7 = +[_DASPhotosPolicy keyPathForPhotosIsUnBlocked];
  v8 = v5;
  objc_sync_enter(v8);
  photosIsBlocked = self->_photosIsBlocked;
  if (blocked)
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

  v18 = [NSNumber numberWithUnsignedInteger:blocked];
  [(_CDLocalContext *)self->_context setObject:v18 forKeyedSubscript:v8];
  v19 = blocked == 0;

  self->_photosIsBlocked = blocked;
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
      intentSyncIsEngaged = [v22 intentSyncIsEngaged];

      context = self->_context;
      if (intentSyncIsEngaged)
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

- (void)reportActivity:(id)activity wasEvaluatedWithDecision:(int64_t)decision
{
  activityCopy = activity;
  if (![_DASPolicyResponse isPolicyDecisionProceedable:decision]&& [_DASPhotosPolicy isPhotosSyncActivity:activityCopy])
  {
    selfCopy = self;
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    obj = activityCopy;
    objc_sync_enter(obj);
    v7 = [NSDictionary alloc];
    policyResponseMetadata = [obj policyResponseMetadata];
    v9 = [v7 initWithDictionary:policyResponseMetadata copyItems:1];

    objc_sync_exit(obj);
    v10 = +[_DASLowPowerModePolicy policyInstance];
    policyName = [v10 policyName];
    v12 = [v9 objectForKeyedSubscript:policyName];
    reason = [v12 reason];

    v13 = +[_DASLowPowerModePolicy policyInstance];
    policyName2 = [v13 policyName];
    v15 = [v9 objectForKeyedSubscript:policyName2];
    reason2 = [v15 reason];

    v16 = +[_DASPhotosPolicy policyInstance];
    policyName3 = [v16 policyName];
    v18 = [v9 objectForKeyedSubscript:policyName3];
    reason3 = [v18 reason];

    v19 = +[_DASPhotosPolicy policyInstance];
    policyName4 = [v19 policyName];
    v21 = [v9 objectForKeyedSubscript:policyName4];
    reason4 = [v21 reason];

    v22 = +[_DASNetworkQualityPolicy policyInstance];
    policyName5 = [v22 policyName];
    v24 = [v9 objectForKeyedSubscript:policyName5];
    reason5 = [v24 reason];

    v25 = +[_DASNetworkQualityPolicy policyInstance];
    policyName6 = [v25 policyName];
    v27 = [v9 objectForKeyedSubscript:policyName6];
    reason6 = [v27 reason];

    v29 = +[_DASThermalPolicy policyInstance];
    policyName7 = [v29 policyName];
    v31 = [v9 objectForKeyedSubscript:policyName7];
    v32 = ([v31 reason] & 0x18) != 0;

    v33 = +[_DASRequiresPluggedInPolicy policyInstance];
    policyName8 = [v33 policyName];
    v35 = [v9 objectForKeyedSubscript:policyName8];
    LOBYTE(v29) = [v35 reason];

    v36 = +[_DASDeviceActivityPolicy policyInstance];
    policyName9 = [v36 policyName];
    v38 = [v9 objectForKeyedSubscript:policyName9];
    LOBYTE(v33) = [v38 reason];

    v39 = +[_DASDeviceActivityPolicy policyInstance];
    policyName10 = [v39 policyName];
    v41 = [v9 objectForKeyedSubscript:policyName10];
    LOBYTE(v36) = [v41 reason];

    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = sub_1000D6D9C;
    v58[3] = &unk_1001B86A0;
    v61 = reason & 1;
    v60 = &v71;
    v62 = reason3 & 1;
    v63 = (reason2 & 2) != 0;
    v64 = (reason4 & 2) != 0;
    v65 = (reason5 & 2) != 0;
    v66 = (reason6 & 4) != 0;
    v42 = v9;
    v59 = v42;
    v67 = v32;
    v68 = v29 & 1;
    v69 = v33 & 1;
    v70 = (v36 & 2) != 0;
    [v42 enumerateKeysAndObjectsUsingBlock:v58];
    v43 = v72[3];
    if (v43 != selfCopy->_photosIsBlocked)
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

        [(_DASDaemon *)selfCopy updateiCPLTasksBlocked:v72[3]];
        if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:obj]&& [_DASPhotosPolicy shouldOverrideForIntentSync:v72[3] activity:obj]&& ![(_DASRemoteDeviceActivityMonitor *)selfCopy->_remoteDeviceActivityMonitor isRegistered])
        {
          remoteDeviceActivityMonitor = selfCopy->_remoteDeviceActivityMonitor;
          v56[0] = _NSConcreteStackBlock;
          v56[1] = 3221225472;
          v56[2] = sub_1000D777C;
          v56[3] = &unk_1001B56E0;
          v56[4] = selfCopy;
          v57 = obj;
          [(_DASRemoteDeviceActivityMonitor *)remoteDeviceActivityMonitor registerForRemoteDeviceActiveNotificationsWithChange:v56];
        }
      }

      else
      {
        v47 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = [NSNumber numberWithUnsignedInteger:selfCopy->_photosIsBlocked];
          *buf = 138543874;
          v76 = obj;
          v77 = 2112;
          v78 = v42;
          v79 = 2112;
          v80 = v48;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Reporting photos activity no longer blocked: %{public}@ %@ (was %@)", buf, 0x20u);
        }

        [(_DASDaemon *)selfCopy updateiCPLTasksBlocked:v72[3]];
        if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:obj]&& [(_DASRemoteDeviceActivityMonitor *)selfCopy->_remoteDeviceActivityMonitor isRegistered])
        {
          [(_DASRemoteDeviceActivityMonitor *)selfCopy->_remoteDeviceActivityMonitor unregisterForRemoteDeviceActiveNotifications];
        }
      }
    }

    _Block_object_dispose(&v71, 8);
  }
}

- (BOOL)pausedParametersApplyToActivity:(id)activity
{
  activityCopy = activity;
  pausedParameters = [(_DASDaemon *)self pausedParameters];

  if (!pausedParameters)
  {
    v11 = 0;
    goto LABEL_82;
  }

  pausedParameters2 = [(_DASDaemon *)self pausedParameters];
  v7 = [pausedParameters2 objectForKeyedSubscript:@"validUntil"];
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

  pausedParameters3 = [(_DASDaemon *)self pausedParameters];
  v13 = [pausedParameters3 objectForKeyedSubscript:@"activities"];

  name = [activityCopy name];
  v15 = [v13 containsObject:name];

  if (v15)
  {
    v16 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = activityCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Scheduling paused for activity: %@", buf, 0xCu);
    }

    v11 = 1;
    goto LABEL_80;
  }

  v56 = v13;
  pausedParameters4 = [(_DASDaemon *)self pausedParameters];
  v18 = [pausedParameters4 objectForKeyedSubscript:@"anyTypes"];

  pausedParameters5 = [(_DASDaemon *)self pausedParameters];
  v20 = [pausedParameters5 objectForKeyedSubscript:@"allTypes"];

  pausedParameters6 = [(_DASDaemon *)self pausedParameters];
  v57 = [pausedParameters6 objectForKeyedSubscript:@"exceptTypes"];

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
        if (![v26 isEqualToString:@"network"] || (objc_msgSend(activityCopy, "requiresNetwork") & 1) == 0)
        {
          if (![v26 isEqualToString:@"userinitiated"] || (v27 = objc_msgSend(activityCopy, "schedulingPriority"), v27 > _DASSchedulingPriorityUserInitiatedOvercommit))
          {
            if (![v26 isEqualToString:@"utility"] || (v28 = objc_msgSend(activityCopy, "schedulingPriority"), v28 > _DASSchedulingPriorityDefault))
            {
              if (![v26 isEqualToString:@"maintenance"] || (v29 = objc_msgSend(activityCopy, "schedulingPriority"), v29 > _DASSchedulingPriorityMaintenance))
              {
                if (![v26 isEqualToString:@"background"] || (v30 = objc_msgSend(activityCopy, "schedulingPriority"), v30 > _DASSchedulingPriorityBackground))
                {
                  if ((![v26 isEqualToString:@"intensive"] || (objc_msgSend(activityCopy, "isIntensive") & 1) == 0) && (!objc_msgSend(v26, "isEqualToString:", @"icpl") || !+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", activityCopy)) && (!objc_msgSend(v26, "isEqualToString:", @"plugin") || (objc_msgSend(activityCopy, "requiresPlugin") & 1) == 0) && (!objc_msgSend(v26, "isEqualToString:", @"inactivity") || (objc_msgSend(activityCopy, "requiresDeviceInactivity") & 1) == 0))
                  {
                    if (![v26 isEqualToString:@"fastpass"])
                    {
                      continue;
                    }

                    fastPass = [activityCopy fastPass];

                    if (!fastPass)
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
      if (![v37 isEqualToString:@"network"] || objc_msgSend(activityCopy, "requiresNetwork"))
      {
        if (![v37 isEqualToString:@"userinitiated"] || (v38 = objc_msgSend(activityCopy, "schedulingPriority"), v38 <= _DASSchedulingPriorityUserInitiatedOvercommit))
        {
          if (![v37 isEqualToString:@"utility"] || (v39 = objc_msgSend(activityCopy, "schedulingPriority"), v39 <= _DASSchedulingPriorityDefault))
          {
            if (![v37 isEqualToString:@"maintenance"] || (v40 = objc_msgSend(activityCopy, "schedulingPriority"), v40 <= _DASSchedulingPriorityMaintenance))
            {
              if (![v37 isEqualToString:@"background"] || (v41 = objc_msgSend(activityCopy, "schedulingPriority"), v41 <= _DASSchedulingPriorityBackground))
              {
                if ((![v37 isEqualToString:@"intensive"] || objc_msgSend(activityCopy, "isIntensive")) && (!objc_msgSend(v37, "isEqualToString:", @"icpl") || !+[_DASPhotosPolicy isiCPLActivity:](_DASPhotosPolicy, "isiCPLActivity:", activityCopy)) && (!objc_msgSend(v37, "isEqualToString:", @"plugin") || objc_msgSend(activityCopy, "requiresPlugin")) && (!objc_msgSend(v37, "isEqualToString:", @"inactivity") || objc_msgSend(activityCopy, "requiresDeviceInactivity")))
                {
                  if (![v37 isEqualToString:@"fastpass"])
                  {
                    continue;
                  }

                  fastPass2 = [activityCopy fastPass];

                  if (fastPass2)
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
      activityType = [activityCopy activityType];
      v51 = [activityType isEqualToString:v49];

      if (v51)
      {
        v55 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = activityCopy;
LABEL_89:
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Not pausing for: %@", buf, 0xCu);
        }

LABEL_90:
        v43 = v57;

        v11 = 0;
        goto LABEL_91;
      }

      name2 = [activityCopy name];
      v53 = [name2 containsString:v49];

      if (v53)
      {
        v55 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v75 = activityCopy;
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

- (BOOL)testModeConstraintsApplyToActivity:(id)activity
{
  activityCopy = activity;
  testModeParameters = [(_DASDaemon *)self testModeParameters];
  v6 = [testModeParameters objectForKeyedSubscript:@"activities"];

  name = [activityCopy name];
  v8 = [v6 containsObject:name];

  if (v8)
  {
    v9 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = activityCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Test Mode Applies To Activity: %@", buf, 0xCu);
    }

    v10 = 1;
    goto LABEL_27;
  }

  testModeParameters2 = [(_DASDaemon *)self testModeParameters];
  v12 = [testModeParameters2 objectForKeyedSubscript:@"activityClasses"];

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
  v32 = activityCopy;
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
      if ([&v16[64] isiCPLActivity:activityCopy])
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

    [activityCopy name];
    v20 = v16;
    v22 = v21 = v9;
    [v22 lowercaseString];
    v24 = v23 = v17;
    v25 = [v24 containsString:v19];

    v17 = v23;
    v9 = v21;
    v16 = v20;
    activityCopy = v32;
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

  if (![activityCopy requiresNetwork])
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
    v40 = activityCopy;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Test Mode (%@) Applies To Activity: %@", buf, 0x16u);
  }

LABEL_24:
  v6 = v31;

  v10 = 1;
LABEL_26:

LABEL_27:
  return v10;
}

- (BOOL)testModeConstraintsRequireOverridingDecisionWithScores:(id)scores ignoredPolicies:(id)policies honoredPolicies:(id)honoredPolicies
{
  policiesCopy = policies;
  honoredPoliciesCopy = honoredPolicies;
  scoresCopy = scores;
  testModeParameters = [(_DASDaemon *)self testModeParameters];
  v12 = [testModeParameters objectForKeyedSubscript:@"overrides"];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000D8840;
  v20[3] = &unk_1001B86C8;
  v13 = v12;
  v21 = v13;
  v14 = policiesCopy;
  v22 = v14;
  v15 = honoredPoliciesCopy;
  v23 = v15;
  [scoresCopy enumerateKeysAndObjectsUsingBlock:v20];

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

- (void)preemptCandidateActivities:(id)activities forFastPass:(id)pass
{
  activitiesCopy = activities;
  passCopy = pass;
  fastPass = [passCopy fastPass];

  if (fastPass)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = activitiesCopy;
    v9 = activitiesCopy;
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      p_info = &OBJC_METACLASS____DASDaemonLogger.info;
      v29 = passCopy;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          if ([(_DASDaemon *)self shouldPreemptActivity:v15 forFastPassActivity:passCopy])
          {
            [passCopy lastComputedScore];
            if (v16 > 0.0)
            {
              goto LABEL_10;
            }

            groupName = [v15 groupName];
            [passCopy groupName];
            selfCopy = self;
            v19 = v11;
            v20 = v12;
            v21 = v9;
            v23 = v22 = p_info;
            v24 = [groupName isEqualToString:v23];

            p_info = v22;
            v9 = v21;
            v12 = v20;
            v11 = v19;
            self = selfCopy;
            passCopy = v29;

            if (v24)
            {
LABEL_10:
              defaultCategory = [p_info + 1 defaultCategory];
              if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v35 = v15;
                v36 = 2114;
                v37 = passCopy;
                _os_log_impl(&_mh_execute_header, defaultCategory, OS_LOG_TYPE_DEFAULT, "Preempting %{public}@ to unblock the associated fast pass %{public}@", buf, 0x16u);
              }

              v26 = +[NSDate now];
              [(_DASDaemon *)self updateSuspendRequestDate:v26 forActivity:v15 withReason:@"Preemption"];

              [(_DASDaemon *)self suspendActivity:v15];
            }

            else
            {
              defaultCategory2 = [p_info + 1 defaultCategory];
              if (os_log_type_enabled(defaultCategory2, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v35 = v15;
                v36 = 2114;
                v37 = v29;
                _os_log_impl(&_mh_execute_header, defaultCategory2, OS_LOG_TYPE_DEFAULT, "Not preempting %{public}@ since Fast Pass %{public}@ is in a different group", buf, 0x16u);
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v11);
    }

    activitiesCopy = v28;
  }
}

- (BOOL)shouldRunActivityNow:(id)now withOtherActivities:(id)activities
{
  nowCopy = now;
  activitiesCopy = activities;
  v8 = +[NSDate now];
  v9 = [(_DASDaemon *)self shouldActivity:nowCopy runWithActivities:activitiesCopy atDate:v8];

  fastPass = [nowCopy fastPass];

  if (fastPass && !v9)
  {
    v11 = [_DASConditionScore lastDenialResponses:nowCopy];
    if (![v11 count])
    {
      goto LABEL_6;
    }

    if ([v11 count] == 1)
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = +[_DASGroupSchedulingPolicy policyInstance];
      policyName = [v13 policyName];

      if (v12 == policyName)
      {
LABEL_6:
        [(_DASDaemon *)self preemptCandidateActivities:activitiesCopy forFastPass:nowCopy];
      }
    }
  }

  return v9;
}

- (BOOL)shouldActivity:(id)activity runWithActivities:(id)activities atDate:(id)date
{
  activityCopy = activity;
  activitiesCopy = activities;
  dateCopy = date;
  dispatch_assert_queue_V2(self->_evaluationQueue);
  os_unfair_recursive_lock_lock_with_options();
  if (([(NSMutableSet *)self->_prerunningTasks containsObject:activityCopy]& 1) != 0 || [(NSMutableSet *)self->_runningTasks containsObject:activityCopy])
  {
    os_unfair_recursive_lock_unlock();
    v11 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v87 = activityCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ is already running. Should not be run again.", buf, 0xCu);
    }

    goto LABEL_6;
  }

  os_unfair_recursive_lock_unlock();
  if (![(_DASDaemon *)self isActivity:activityCopy timewiseEligibleAt:dateCopy])
  {
    goto LABEL_6;
  }

  lastScored = [activityCopy lastScored];

  if (!lastScored)
  {
    telemetryQueue = self->_telemetryQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D9884;
    block[3] = &unk_1001B5668;
    v85 = activityCopy;
    dispatch_async(telemetryQueue, block);
  }

  pausedParameters = [(_DASDaemon *)self pausedParameters];

  if (pausedParameters && [(_DASDaemon *)self pausedParametersApplyToActivity:activityCopy])
  {
    v17 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v87 = activityCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Scheduling Paused: Skipping activity: %{public}@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v83 = 0;
  [_DASConditionScore scoreForActivity:activityCopy withState:self->_context response:&v83];
  v19 = v18;
  if (v18 <= 0.0)
  {
    v20 = +[_DASPolicyDataCollection sharedInstance];
    v21 = [v20 shouldReportBlockingReasonsForActivity:activityCopy];

    if (v21)
    {
      v22 = +[_DASPolicyDataCollection sharedInstance];
      [v22 reportBlockingReason:objc_msgSend(activityCopy forActivity:{"lastDenialValue"), activityCopy}];
    }
  }

  testModeParameters = [(_DASDaemon *)self testModeParameters];

  if (testModeParameters && (v83 == 100 || v83 == 33) && [(_DASDaemon *)self testModeConstraintsApplyToActivity:activityCopy])
  {
    v24 = +[NSMutableArray array];
    v25 = +[NSMutableArray array];
    policyScores = [activityCopy policyScores];
    v27 = [(_DASDaemon *)self testModeConstraintsRequireOverridingDecisionWithScores:policyScores ignoredPolicies:v24 honoredPolicies:v25];

    if (v24)
    {
      [(_DASDaemon *)self activity:activityCopy runWithoutHonoringPolicies:v24];
    }

    if (v25)
    {
      [(_DASDaemon *)self activity:activityCopy blockedOnPolicies:v25];
    }

    if (v27)
    {
      v28 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v87 = activityCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Test Mode: Proceeding with activity: %@", buf, 0xCu);
      }

LABEL_72:
      v12 = 1;
      goto LABEL_7;
    }
  }

  [(_DASDaemon *)self reportActivity:activityCopy wasEvaluatedWithDecision:v83];
  if (_os_feature_enabled_impl() && [_DASPhotosPolicy isPhotosSyncActivity:activityCopy]&& ![_DASPhotosPolicy shouldOverrideForIntentSync:self->_photosIsBlocked activity:activityCopy]&& [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor isRegistered]&& [(_DASRemoteDeviceActivityMonitor *)self->_remoteDeviceActivityMonitor pendingUnregistration])
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

  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority >= _DASSchedulingPriorityUserInitiated)
  {
    [_DASConditionScore thresholdScoreForActivity:activityCopy];
    v43 = v42;
    goto LABEL_64;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = activitiesCopy;
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
      [activityCopy compatibilityWith:v34];
      v37 = v36;
      if ([_DASPhotosPolicy isiCPLActivity:activityCopy])
      {
        if ([_DASPhotosPolicy isiCPLActivity:v34])
        {
          transferSizeType = [activityCopy transferSizeType];
          transferSizeType2 = [v34 transferSizeType];
          if (transferSizeType >= 0xB && transferSizeType2 > 0xA)
          {
            v37 = -1.0;
LABEL_77:
            v54 = [_DASDaemonLogger logForCategory:@"scoring", v75];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              startDate = [v34 startDate];
              v56 = startDate;
              v57 = @"<Not yet started>";
              *buf = 138544130;
              if (startDate)
              {
                v57 = startDate;
              }

              v87 = activityCopy;
              v88 = 2048;
              v89 = v37;
              v90 = 2114;
              v91 = *&v34;
              v92 = 2112;
              v93 = v57;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "'%{public}@' has compatibility score of %lf with %{public}@ (Started at %@). Bailing out.", buf, 0x2Au);
            }

            v58 = +[_DASPolicyDataCollection sharedInstance];
            v59 = [v58 shouldReportBlockingReasonsForActivity:activityCopy];

            if (v59)
            {
              v60 = +[_DASPolicyDataCollection sharedInstance];
              [v60 reportBlockingReason:+[_DASPolicyManager bitmaskForPolicy:](_DASPolicyManager forActivity:{"bitmaskForPolicy:", @"Incompatibility", activityCopy}];
            }

            v61 = self->_activityToIncompatibleActivitiesMap;
            objc_sync_enter(v61);
            activityToIncompatibleActivitiesMap = self->_activityToIncompatibleActivitiesMap;
            name = [v34 name];
            v64 = [(NSMutableDictionary *)activityToIncompatibleActivitiesMap objectForKeyedSubscript:name];

            if (v64)
            {
              [v64 _DAS_addOrReplaceObject:activityCopy];
            }

            else
            {
              v65 = [NSMutableSet setWithObject:activityCopy];
              v78 = self->_activityToIncompatibleActivitiesMap;
              name2 = [v34 name];
              [(NSMutableDictionary *)v78 setObject:v65 forKeyedSubscript:name2];
            }

            objc_sync_exit(v61);
            if ([(_DASFairScheduleManager *)self->_fairScheduleManager compareActivity:activityCopy withActivity:v34]== -1)
            {
              if (![(_DASDynamicRuntimeAllocator *)self->_runtimeAllocator shouldDelaySuspendingRunningActivity:v34 forPendingTask:activityCopy])
              {
                v70 = 1;
                goto LABEL_92;
              }

              v67 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                name3 = [v34 name];
                name4 = [activityCopy name];
                *buf = 138412546;
                v87 = name3;
                v88 = 2112;
                v89 = *&name4;
                _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Overrode decision to suspend %@ for %@", buf, 0x16u);
              }
            }

            v70 = 0;
LABEL_92:
            startDate2 = [v34 startDate];
            v72 = [(_DASDaemon *)self shouldSuspendLongRunningActivity:v34 withStartDate:startDate2 whileBlockingOtherTasks:v70 atDate:dateCopy];

            if (v72)
            {
              v73 = [_DASDaemonLogger logForCategory:@"runtimeLimiter"];
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
              {
                name5 = [activityCopy name];
                *buf = 138412546;
                v87 = name5;
                v88 = 2114;
                v89 = *&v34;
                _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "Another intensive activity %@! Found long running activity %{public}@ to suspend", buf, 0x16u);
              }

              [(_DASDaemon *)self updateSuspendRequestDate:dateCopy forActivity:v34 withReason:@"Limitations"];
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
          v87 = activityCopy;
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

  [_DASConditionScore thresholdScoreForActivity:activityCopy];
  v43 = v53;
  if (!v41)
  {
    v43 = v53 * 0.9;
  }

LABEL_64:
  bypassesPredictions = [activityCopy bypassesPredictions];
  v45 = [_DASDaemonLogger logForCategory:@"scoring"];
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
  if (bypassesPredictions)
  {
    if (v46)
    {
      *buf = 138543618;
      v87 = activityCopy;
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
    v87 = activityCopy;
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
    v50 = activityCopy;
    objc_sync_enter(v50);
    v51 = [_DASInternalPolicyEvaluationMetadata metadataWithScore:v19];
    policyResponseMetadata = [v50 policyResponseMetadata];
    [policyResponseMetadata setObject:v51 forKeyedSubscript:@"scoreWhenRun"];

    objc_sync_exit(v50);
    goto LABEL_72;
  }

LABEL_6:
  v12 = 0;
LABEL_7:

  return v12;
}

- (BOOL)shouldRunActivityNow:(id)now
{
  nowCopy = now;
  os_unfair_recursive_lock_lock_with_options();
  v5 = [NSArray arrayWithObjectsFrom:self->_prerunningTasks, self->_runningTasks, 0];
  os_unfair_recursive_lock_unlock();
  LOBYTE(self) = [(_DASDaemon *)self shouldRunActivityNow:nowCopy withOtherActivities:v5];

  return self;
}

- (void)moveActivityToPrerunning:(id)prerunning
{
  prerunningCopy = prerunning;
  [(_DASDaemon *)self removeActivityFromTriggerMap:prerunningCopy];
  if ([(_DASNetworkEvaluationMonitor *)self->_networkEvaluationMonitor requiresNetworkPathMonitoring:prerunningCopy])
  {
    [(_DASNetworkEvaluationMonitor *)self->_networkEvaluationMonitor stopMonitoringActivity:prerunningCopy];
  }

  os_unfair_recursive_lock_lock_with_options();
  [(NSMutableSet *)self->_submittedTasks removeObject:prerunningCopy];
  [(NSMutableSet *)self->_pendingTasks removeObject:prerunningCopy];
  [(NSMutableSet *)self->_prerunningTasks addObject:prerunningCopy];
  os_unfair_recursive_lock_unlock();
  [(_DASDaemon *)self recordToTaskRegistry:prerunningCopy lifeCycleStateName:@"prerunning"];
  telemetryQueue = self->_telemetryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D9C8C;
  block[3] = &unk_1001B5668;
  v6 = prerunningCopy;
  v26 = v6;
  dispatch_async(telemetryQueue, block);
  if (_os_feature_enabled_impl())
  {
    internalGroupNames = [v6 internalGroupNames];
    v8 = [internalGroupNames count];

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
      internalGroupNames2 = [v6 internalGroupNames];
      v11 = [internalGroupNames2 countByEnumeratingWithState:&v21 objects:v27 count:16];
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
              objc_enumerationMutation(internalGroupNames2);
            }

            if (*(*(&v21 + 1) + 8 * i))
            {
              [(_DASDaemon *)self addPrerunningActivity:v6 toGroupWithName:?];
            }
          }

          v12 = [internalGroupNames2 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v12);
      }

      goto LABEL_19;
    }
  }

  else
  {
    groupName = [v6 groupName];

    if (groupName)
    {
      internalGroupNames2 = [v6 groupName];
      [(_DASDaemon *)self addPrerunningActivity:v6 toGroupWithName:internalGroupNames2];
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

- (void)clearActivityFromPrerunning:(id)prerunning
{
  prerunningCopy = prerunning;
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
  v6 = prerunningCopy;
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
    groupName = [v26[5] groupName];
    v17 = [(NSMutableDictionary *)groupToPrerunningTasks objectForKeyedSubscript:groupName];
    [v17 removeObject:v26[5]];

LABEL_16:
    goto LABEL_17;
  }

  internalGroupNames = [v6 internalGroupNames];
  v8 = [internalGroupNames count] == 0;

  if (!v8)
  {
    v9 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      name = [v6 name];
      sub_10012A918(name, v32);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    groupName = [v26[5] internalGroupNames];
    v12 = [groupName countByEnumeratingWithState:&v18 objects:v31 count:16];
    if (v12)
    {
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(groupName);
          }

          v15 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:*(*(&v18 + 1) + 8 * i)];
          [v15 removeObject:v26[5]];
        }

        v12 = [groupName countByEnumeratingWithState:&v18 objects:v31 count:16];
      }

      while (v12);
    }

    goto LABEL_16;
  }

LABEL_17:
  os_unfair_lock_unlock(&self->_groupLock);

  _Block_object_dispose(&v25, 8);
}

- (void)moveActivityToRunning:(id)running
{
  runningCopy = running;
  os_unfair_recursive_lock_lock_with_options();
  if ([(NSMutableSet *)self->_runningTasks containsObject:runningCopy])
  {
    os_unfair_recursive_lock_unlock();
    goto LABEL_35;
  }

  [(NSMutableSet *)self->_prerunningTasks removeObject:runningCopy];
  [(NSMutableSet *)self->_submittedTasks removeObject:runningCopy];
  [(NSMutableSet *)self->_pendingTasks removeObject:runningCopy];
  [(NSMutableSet *)self->_runningTasks count];
  [(NSMutableSet *)self->_runningTasks addObject:runningCopy];
  v5 = [_DASDaemonLogger logForCategory:@"runningTasks"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10012A598(&self->_runningTasks);
  }

  os_unfair_recursive_lock_unlock();
  [(_DASRuntimeLimiter *)self->_runtimeLimiter maximumRuntimeForActivity:runningCopy];
  [runningCopy setMaximumRuntime:v6];
  v7 = +[NSDate date];
  [runningCopy setStartDate:v7];

  if (-[_DASDynamicRuntimeAllocator isEnabled](self->_runtimeAllocator, "isEnabled") && [runningCopy uninterruptibleDuration])
  {
    v8 = [_DASDaemonLogger logForCategory:@"runningTasks"];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [runningCopy uninterruptibleDuration]);
      name = [runningCopy name];
      *buf = 138412546;
      v29 = v9;
      v30 = 2114;
      v31 = name;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Started running uninterruptible %@ sec task %{public}@", buf, 0x16u);
    }
  }

  telemetryQueue = self->_telemetryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DA630;
  block[3] = &unk_1001B5668;
  v12 = runningCopy;
  v26 = v12;
  dispatch_async(telemetryQueue, block);
  if ([(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager isTrackingActivity:v12])
  {
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager activityStarted:v12];
  }

  if (!_os_feature_enabled_impl())
  {
    groupName = [v12 groupName];
    [(_DASDaemon *)self addRunningActivity:v12 toGroupWithName:groupName];
LABEL_25:

    goto LABEL_26;
  }

  internalGroupNames = [v12 internalGroupNames];
  v14 = [internalGroupNames count];

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
    groupName = [v12 internalGroupNames];
    v17 = [groupName countByEnumeratingWithState:&v21 objects:v27 count:16];
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
            objc_enumerationMutation(groupName);
          }

          [(_DASDaemon *)self addRunningActivity:v12 toGroupWithName:*(*(&v21 + 1) + 8 * i)];
        }

        v18 = [groupName countByEnumeratingWithState:&v21 objects:v27 count:16];
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

- (void)beginWorkForActivity:(id)activity
{
  activityCopy = activity;
  if ([activityCopy requestsApplicationLaunch])
  {
    v4 = [NSMutableSet setWithObject:activityCopy];
    [(_DASDaemon *)self runApplicationLaunchActivities:v4];
  }

  else
  {
    requestsExtensionLaunch = [activityCopy requestsExtensionLaunch];
    v4 = [NSMutableSet setWithObject:activityCopy];
    if (requestsExtensionLaunch)
    {
      [(_DASDaemon *)self runExtensionLaunchActivities:v4];
    }

    else
    {
      [(_DASDaemon *)self runActivitiesAndRemoveUnknown:v4];
    }
  }
}

- (void)immediatelyBeginWorkForActivity:(id)activity
{
  activityCopy = activity;
  os_unfair_recursive_lock_lock_with_options();
  if (([(NSMutableSet *)self->_prerunningTasks containsObject:activityCopy]& 1) != 0 || [(NSMutableSet *)self->_runningTasks containsObject:activityCopy])
  {
    os_unfair_recursive_lock_unlock();
    v5 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = activityCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is already running, cannot begin work for it.", &v6, 0xCu);
    }
  }

  else
  {
    os_unfair_recursive_lock_unlock();
    [(_DASDaemon *)self moveActivityToPrerunning:activityCopy];
    [(_DASDaemon *)self beginWorkForActivity:activityCopy];
  }
}

- (BOOL)shouldEvaluateTask:(id)task atDate:(id)date
{
  taskCopy = task;
  dateCopy = date;
  v8 = self->_activityToIncompatibleActivitiesMap;
  objc_sync_enter(v8);
  activityToIncompatibleActivitiesMap = self->_activityToIncompatibleActivitiesMap;
  name = [taskCopy name];
  v11 = [(NSMutableDictionary *)activityToIncompatibleActivitiesMap objectForKeyedSubscript:name];

  v12 = [v11 count];
  objc_sync_exit(v8);

  if (v12)
  {
    v13 = 0;
  }

  else if ([taskCopy hasManyConstraints] & 1) != 0 || (objc_msgSend(taskCopy, "bypassesPredictions"))
  {
    v13 = 1;
  }

  else
  {
    startBefore = [taskCopy startBefore];
    [startBefore timeIntervalSinceDate:dateCopy];
    v13 = v15 < 1800.0;
  }

  return v13;
}

- (void)advanceAppLaunchDateIfNecessaryForActivity:(id)activity
{
  activityCopy = activity;
  userInfo = [activityCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:_DASNonRateLimitedLaunchKey];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    relatedApplications = [activityCopy relatedApplications];
    if (![relatedApplications count] || (v9 = objc_msgSend(activityCopy, "schedulingPriority"), v9 > _DASSchedulingPriorityUtility))
    {

      goto LABEL_30;
    }

    widgetID = [activityCopy widgetID];

    if (widgetID)
    {
      goto LABEL_30;
    }

    v11 = [_DASApplicationPolicy focalApplicationsWithContext:self->_context];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    relatedApplications2 = [activityCopy relatedApplications];
    v13 = [relatedApplications2 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v13)
    {
      v14 = *v40;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(relatedApplications2);
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

        v13 = [relatedApplications2 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v16 = self->_recentlyLaunchedApps;
    objc_sync_enter(v16);
    relatedApplications3 = [activityCopy relatedApplications];
    [relatedApplications3 firstObject];
    v18 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v19 = [(NSMutableDictionary *)self->_recentlyLaunchedApps objectForKeyedSubscript:*&v18];
    startAfter = [activityCopy startAfter];
    v21 = [(NSCountedSet *)self->_launchesPerApp countForObject:*&v18];
    if (v21 > 9 || ([activityCopy launchReason], v22 = objc_claimAutoreleasedReturnValue(), v23 = v22 == _DASLaunchReasonBackgroundProcessing, v22, v23))
    {
      launchReason = [activityCopy launchReason];
      v28 = launchReason == _DASLaunchReasonBackgroundProcessing;

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

      startAfter2 = [activityCopy startAfter];
      [startAfter2 timeIntervalSinceDate:v19];
      v32 = v31 < v29;

      if (!v32)
      {
        goto LABEL_29;
      }

      v33 = [v19 dateByAddingTimeInterval:v29];
      [activityCopy setStartAfter:v33];

      startAfter3 = [activityCopy startAfter];
      [activityCopy setStartBefore:startAfter3];

      v24 = [_DASDaemonLogger logForCategory:@"bar"];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        startAfter4 = [activityCopy startAfter];
        [startAfter4 timeIntervalSinceDate:startAfter];
        v37 = v36;
        startAfter5 = [activityCopy startAfter];
        *buf = 138412802;
        v44 = activityCopy;
        v45 = 2048;
        v46 = v37 / 60.0;
        v47 = 2112;
        v48 = startAfter5;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Advancing start date for %@ by %3.1lf minutes to %@", buf, 0x20u);
      }
    }

    else
    {
      v24 = [_DASDaemonLogger logForCategory:@"bar"];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        launchReason2 = [activityCopy launchReason];
        *buf = 138413058;
        v44 = activityCopy;
        v45 = 2112;
        v46 = v18;
        v47 = 2048;
        v48 = v21;
        v49 = 2112;
        v50 = launchReason2;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Skip time advancement for %@ because application %@ launch count %lu and reason %@", buf, 0x2Au);
      }
    }

LABEL_29:
    objc_sync_exit(v16);
  }

LABEL_30:
}

- (void)computeStaticPriorityForActivity:(id)activity
{
  v3 = 999999999;
  activityCopy = activity;
  featureCodes = [activityCopy featureCodes];

  if (featureCodes)
  {
    v6 = +[_DASPlistParser sharedInstance];
    v7 = [v6 dictionaryForPlist:2];

    if ([v7 count])
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      featureCodes2 = [activityCopy featureCodes];
      v9 = [featureCodes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(featureCodes2);
            }

            stringValue = [*(*(&v18 + 1) + 8 * i) stringValue];
            v14 = [v7 objectForKeyedSubscript:stringValue];

            v15 = [v14 objectForKey:@"priority"];
            v16 = v15;
            intValue = 999999999;
            if (v15)
            {
              intValue = [v15 intValue];
            }

            if (v3 >= intValue)
            {
              v3 = intValue;
            }
          }

          v10 = [featureCodes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      else
      {
        v3 = 999999999;
      }
    }
  }

  [activityCopy setStaticPriority:v3];
}

- (BOOL)validateConfigurationForActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(_DASConfigurationLimiter *)self->_configurationLimiter shouldLimitActivityAtSubmission:activityCopy];
  v6 = v5;
  if (v5 && [v5 count])
  {
    [(_DASConfigurationLimiter *)self->_configurationLimiter limitedActivity:activityCopy withLimitsResponses:v6];
    limitationResponse = [activityCopy limitationResponse];
    v8 = [_DASLimiterResponse queryActivityDecision:4 fromResponses:limitationResponse];

    if (v8)
    {
      testModeParameters = [(_DASDaemon *)self testModeParameters];
      if (!testModeParameters || (v10 = testModeParameters, v11 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:activityCopy], v10, (v11 & 1) == 0))
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

    limitationResponse2 = [activityCopy limitationResponse];
    v14 = 1;
    v15 = [_DASLimiterResponse queryActivityDecision:1 fromResponses:limitationResponse2];

    if (v15)
    {
      v16 = [_DASDaemonLogger logForCategory:@"ConfigurationLimiter"];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10012AAC8(activityCopy);
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

- (void)startedActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = os_transaction_create();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = activitiesCopy;
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

        [(_DASDaemon *)selfCopy moveActivityToRunning:*(*(&v15 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v7);
  objc_sync_exit(selfCopy);

  evaluationQueue = selfCopy->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DB438;
  block[3] = &unk_1001B5668;
  block[4] = selfCopy;
  dispatch_sync(evaluationQueue, block);
  v13 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Started activities: %{public}@", buf, 0xCu);
  }
}

- (void)submitActivities:(id)activities
{
  activitiesCopy = activities;
  v66 = os_transaction_create();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v68 = objc_autoreleasePoolPush();
  v5 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v102 = activitiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Submitted activities: %{public}@", buf, 0xCu);
  }

  v6 = [activitiesCopy count];
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
  obj = activitiesCopy;
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
        diskVolume = [v9 diskVolume];

        if (diskVolume)
        {
          [(_DASDiskSpaceMonitor *)selfCopy->_diskSpaceMonitor registerForPurgeableSpaceWithActivity:v9];
        }

        context = objc_autoreleasePoolPush();
        [(_DASDaemon *)selfCopy clearActivityFromPrerunning:v9];
        submitDate = [v9 submitDate];
        v12 = submitDate == 0;

        if (v12)
        {
          [v9 setSubmitDate:v78];
        }

        if ([(_DASDynamicRuntimeAllocator *)selfCopy->_runtimeAllocator isEnabled])
        {
          if (![v9 uninterruptibleDuration])
          {
            [(_DASRuntimeLimiter *)selfCopy->_runtimeLimiter uninterruptibleDurationForActivity:v9];
            if (v13 != 0.0)
            {
              [v9 setUninterruptibleDuration:v13];
            }
          }
        }

        telemetryQueue = selfCopy->_telemetryQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000DC028;
        block[3] = &unk_1001B5668;
        block[4] = v9;
        dispatch_async(telemetryQueue, block);
        featureCodes = [v9 featureCodes];
        if (featureCodes)
        {
        }

        else
        {
          fastPass = [v9 fastPass];
          v17 = fastPass == 0;

          if (v17)
          {
            goto LABEL_20;
          }
        }

        v18 = +[_DASClientMetricsRecorder sharedInstance];
        name = [v9 name];
        featureCodes2 = [v9 featureCodes];
        fastPass2 = [v9 fastPass];
        [v18 addFeatureCodesForTask:name featureCodes:featureCodes2 semanticVersion:{objc_msgSend(fastPass2, "semanticVersion")}];

LABEL_20:
        producedResultIdentifiers = [v9 producedResultIdentifiers];
        if (producedResultIdentifiers)
        {
        }

        else
        {
          dependencies = [v9 dependencies];
          v24 = dependencies == 0;

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
        dependencies2 = [v9 dependencies];
        v27 = [dependencies2 countByEnumeratingWithState:&v87 objects:v99 count:16];
        if (v27)
        {
          v28 = *v88;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v88 != v28)
              {
                objc_enumerationMutation(dependencies2);
              }

              identifier = [*(*(&v87 + 1) + 8 * i) identifier];
              [v25 addObject:identifier];
            }

            v27 = [dependencies2 countByEnumeratingWithState:&v87 objects:v99 count:16];
          }

          while (v27);
        }

        v31 = +[_DASClientMetricsRecorder sharedInstance];
        name2 = [v9 name];
        producedResultIdentifiers2 = [v9 producedResultIdentifiers];
        [v31 addDependencyInfoForTask:name2 producedResultIdentifiers:producedResultIdentifiers2 dependencyIdentifiers:v25];

LABEL_31:
        [(_DASDaemon *)selfCopy computeStaticPriorityForActivity:v9];
        [_DASConditionScore setActivityShouldBypassPredictions:v9];
        [(_DASDaemon *)selfCopy addTriggersToActivity:v9];
        if ([v9 requestsApplicationLaunch])
        {
          launchReason = [v9 launchReason];
          v35 = [launchReason isEqualToString:v74];

          if (v35)
          {
            isSilentPush = [v9 isSilentPush];
            schedulingPriority = [v9 schedulingPriority];
            if (((schedulingPriority >= _DASSchedulingPriorityBackground) & isSilentPush) == 1)
            {
              v38 = [_DASDaemonLogger logForCategory:@"bar"];
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                relatedApplications = [v9 relatedApplications];
                firstObject = [relatedApplications firstObject];
                *buf = 138412290;
                v102 = firstObject;
                _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "High-priority silent push for %@", buf, 0xCu);
              }

              [v70 addObject:v9];
              goto LABEL_77;
            }

            buf[0] = 0;
            barScheduler = selfCopy->_barScheduler;
            relatedApplications2 = [v9 relatedApplications];
            firstObject2 = [relatedApplications2 firstObject];
            LODWORD(barScheduler) = [(_DASBARScheduler *)barScheduler pushLaunchAllowedForApp:firstObject2 immediately:buf];

            if (barScheduler && buf[0] == 1)
            {
              [(_DASDaemon *)selfCopy addLaunchRequest:v9];
              [(_DASDaemon *)selfCopy immediatelyBeginWorkForActivity:v9];
              goto LABEL_77;
            }

            v42 = selfCopy->_barScheduler;
            relatedApplications3 = [v9 relatedApplications];
            firstObject3 = [relatedApplications3 firstObject];
            LODWORD(v42) = [(_DASBARScheduler *)v42 isNewsstandApp:firstObject3];

            if (v42)
            {
              [v9 setRequestsNewsstandLaunch:1];
            }
          }

          if (![(_DASDaemon *)selfCopy addLaunchRequest:v9])
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
          [(_DASUserRequestedBackupTaskManager *)selfCopy->_backupTaskManager activitySubmitted:v9];
        }

        groupName = [v9 groupName];
        if (_os_feature_enabled_impl())
        {
          internalGroupNames = [v9 internalGroupNames];
          v46 = [internalGroupNames count] == 0;

          if (v46)
          {
            internalGroupNames2 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(internalGroupNames2, OS_LOG_TYPE_ERROR))
            {
              name3 = [v9 name];
              sub_10012AC08(name3, v96, &v97, internalGroupNames2);
            }
          }

          else
          {
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            internalGroupNames2 = [v9 internalGroupNames];
            v48 = [internalGroupNames2 countByEnumeratingWithState:&v83 objects:v98 count:16];
            if (v48)
            {
              v49 = *v84;
              do
              {
                for (j = 0; j != v48; j = j + 1)
                {
                  if (*v84 != v49)
                  {
                    objc_enumerationMutation(internalGroupNames2);
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

                v48 = [internalGroupNames2 countByEnumeratingWithState:&v83 objects:v98 count:16];
              }

              while (v48);
            }
          }

          goto LABEL_69;
        }

        if (groupName)
        {
          v55 = [v7 objectForKeyedSubscript:groupName];
          internalGroupNames2 = v55;
          if (v55)
          {
            [v55 addObject:v9];
          }

          else
          {
            v57 = [NSMutableSet setWithObject:v9];
            [v7 setObject:v57 forKeyedSubscript:groupName];
          }

LABEL_69:
        }

        [_DASConditionScore computeOptimalScoreAndDateForActivity:v9];
        os_unfair_recursive_lock_lock_with_options();
        [(NSMutableSet *)selfCopy->_pendingTasks addObject:v9];
        os_unfair_recursive_lock_unlock();
        if ([(_DASDaemon *)selfCopy shouldEvaluateTask:v9 atDate:v78])
        {
          [v73 addObject:v9];
        }

        if ([(_DASNetworkEvaluationMonitor *)selfCopy->_networkEvaluationMonitor requiresNetworkPathMonitoring:v9])
        {
          v58 = objc_autoreleasePoolPush();
          networkEvaluationMonitor = selfCopy->_networkEvaluationMonitor;
          v60 = [_DASNetworkEvaluationMonitor nwParametersForActivity:v9];
          userInfo = [v9 userInfo];
          v62 = [userInfo objectForKeyedSubscript:v71];
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

  [(_DASDaemon *)selfCopy addPendingActivitiesToGroups:v7];
  if ([v69 count])
  {
    v65 = objc_autoreleasePoolPush();
    [(_DASDataStore *)selfCopy->_store saveActivities:v69];
    objc_autoreleasePoolPop(v65);
  }

  [(_DASDaemon *)selfCopy cancelActivities:v70, v66];
  [(_DASDaemon *)selfCopy evaluateScoreAndRunActivities:v73];
  [(_DASDaemon *)selfCopy determineNextTimerFireDateAndSchedule];

  objc_autoreleasePoolPop(v68);
  objc_sync_exit(selfCopy);
}

- (void)handleRunningActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = +[NSDate date];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = activitiesCopy;
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

- (void)removeGroupTrackingFor:(id)for from:(id)from
{
  forCopy = for;
  fromCopy = from;
  os_unfair_lock_lock(&self->_groupLock);
  v8 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:fromCopy];
  [v8 removeObject:forCopy];

  v9 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:fromCopy];
  [v9 removeObject:forCopy];

  v10 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:fromCopy];
  [v10 removeObject:forCopy];

  v11 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:fromCopy];
    v13 = 138543874;
    v14 = forCopy;
    v15 = 2112;
    v16 = fromCopy;
    v17 = 2048;
    v18 = [v12 count];
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "NO LONGER RUNNING %{public}@ ...Tasks running in group [%@] are %ld!", &v13, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)cleanupForActivity:(id)activity wasCompleted:(BOOL)completed
{
  completedCopy = completed;
  activityCopy = activity;
  v7 = activityCopy;
  if (!activityCopy)
  {
    goto LABEL_78;
  }

  p_info = &OBJC_METACLASS____DASDaemonLogger.info;
  if ([activityCopy requestsApplicationLaunch])
  {
    v9 = [_DASDaemonLogger logForCategory:@"assertions"];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10012AC5C();
    }

    assertion = [v7 assertion];
    v74 = 0;
    v11 = [assertion invalidateWithError:&v74];
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

  remoteDevice = [v7 remoteDevice];
  if (remoteDevice)
  {
    v17 = remoteDevice;
    targetDevice = [v7 targetDevice];

    if (targetDevice == 3)
    {
      [(_DASRemoteDeviceNearbyMonitor *)self->_remoteDeviceNearbyMonitor unregisterForRemoteDeviceWithActivity:v7];
    }
  }

  remoteDevice2 = [v7 remoteDevice];
  if (remoteDevice2)
  {
    v20 = remoteDevice2;
    requiresRemoteDeviceWake = [v7 requiresRemoteDeviceWake];

    if (requiresRemoteDeviceWake)
    {
      [(_DASRemoteDeviceWakeMonitor *)self->_remoteDeviceWakeMonitor unregisterRemoteDeviceWakeStateWithActivity:v7];
    }
  }

  diskVolume = [v7 diskVolume];

  if (diskVolume)
  {
    [(_DASDiskSpaceMonitor *)self->_diskSpaceMonitor unregisterForPurgeableSpaceWithActivity:v7];
  }

  [(_DASActivityRateLimitManager *)self->_rateLimiter completeActivity:v7];
  if (_os_feature_enabled_impl())
  {
    internalGroupNames = [v7 internalGroupNames];
    v24 = [internalGroupNames count];

    if (!v24)
    {
      LOBYTE(groupToRunningTasks) = 0;
      goto LABEL_40;
    }

    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    internalGroupNames2 = [v7 internalGroupNames];
    v26 = [internalGroupNames2 countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v26)
    {
      v27 = v26;
      v67 = completedCopy;
      LOBYTE(groupToRunningTasks) = 0;
      v29 = *v71;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v71 != v29)
          {
            objc_enumerationMutation(internalGroupNames2);
          }

          v31 = *(*(&v70 + 1) + 8 * i);
          os_unfair_lock_lock(&self->_groupLock);
          v32 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:v31];
          v33 = [v32 containsObject:v7];

          LOBYTE(groupToRunningTasks) = v33 | groupToRunningTasks;
          os_unfair_lock_unlock(&self->_groupLock);
          [(_DASDaemon *)self removeGroupTrackingFor:v7 from:v31];
        }

        v27 = [internalGroupNames2 countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v27);
      p_info = (&OBJC_METACLASS____DASDaemonLogger + 32);
      completedCopy = v67;
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
    groupName = [v7 groupName];
    v35 = [groupToRunningTasks objectForKeyedSubscript:groupName];
    LOBYTE(groupToRunningTasks) = [v35 containsObject:v7];

    os_unfair_lock_unlock(&self->_groupLock);
    internalGroupNames2 = [v7 groupName];
    [(_DASDaemon *)self removeGroupTrackingFor:v7 from:internalGroupNames2];
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
    startDate = [v7 startDate];

    if (startDate)
    {
      startDate2 = [v7 startDate];
      [v36 timeIntervalSinceDate:startDate2];
      v40 = llround(v39 / 60.0);

      [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.runtimemins.intensive" byCount:v40];
      name = [v7 name];
      v42 = [name isEqualToString:@"com.apple.photoanalysisd.backgroundanalysis"];

      if (v42)
      {
        v43 = &off_1001B7938;
      }

      else
      {
        name2 = [v7 name];
        v45 = [name2 isEqualToString:@"com.apple.mediaanalysisd.fullanalysis"];

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
        suspendRequestDate = [v7 suspendRequestDate];

        if (suspendRequestDate)
        {
          v49 = @"Intensive Activity Suspended";
        }

        else
        {
          v49 = @"Intensive Activity Completed";
        }

        if (completedCopy)
        {
          v50 = @"%@ completed after running for %.0f minutes";
        }

        else
        {
          v50 = @"%@ deferred after running for %.0f minutes";
        }

        name3 = [v7 name];
        startDate3 = [v7 startDate];
        [v36 timeIntervalSinceDate:startDate3];
        v54 = [NSString stringWithFormat:v50, name3, v53 / 60.0];

        [(_DASNotificationManager *)self->_notificationManager postNotificationAtDate:0 withTitle:v49 withTextContent:v54 icon:0 url:0 expirationDate:0];
      }
    }
  }

  startDate4 = [v7 startDate];

  if (startDate4)
  {
    startDate5 = [v7 startDate];
    [v36 timeIntervalSinceDate:startDate5];
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

  startDate6 = [v7 startDate];
  if (startDate6)
  {
    suspendRequestDate2 = [v7 suspendRequestDate];
    if (suspendRequestDate2)
    {

LABEL_72:
      goto LABEL_73;
    }
  }

  v62 = +[_DASUrgencyOverridePolicy policyInstance];
  v63 = [v62 appliesToActivity:v7];

  if (startDate6)
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
    name4 = [v7 name];
    [v64 removeActivity:name4];

    startDate6 = +[_DASPhotosPolicy policyInstance];
    [startDate6 setIntentSyncIsEngaged:0];
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

- (void)removeActivityFromNestedMaps:(id)maps
{
  mapsCopy = maps;
  [(_DASDaemon *)self removeActivityFromTriggerMap:mapsCopy];
  [(_DASDaemon *)self removeActivityFromGroupToPendingTasks:mapsCopy];
  [(_DASDaemon *)self removeActivityFromIncompatibleActivitiesMap:mapsCopy];
}

- (void)removeActivityFromTriggerMap:(id)map
{
  mapCopy = map;
  v5 = self->_triggerToActivitiesMap;
  objc_sync_enter(v5);
  triggerToActivitiesMap = self->_triggerToActivitiesMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DCE58;
  v8[3] = &unk_1001B8498;
  v7 = mapCopy;
  v9 = v7;
  [(NSMutableDictionary *)triggerToActivitiesMap enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

- (void)removeActivityFromGroupToPendingTasks:(id)tasks
{
  tasksCopy = tasks;
  os_unfair_lock_lock(&self->_groupLock);
  groupToPendingTasks = self->_groupToPendingTasks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DCF1C;
  v7[3] = &unk_1001B8498;
  v8 = tasksCopy;
  v6 = tasksCopy;
  [(NSMutableDictionary *)groupToPendingTasks enumerateKeysAndObjectsUsingBlock:v7];
  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)removeActivityFromIncompatibleActivitiesMap:(id)map
{
  mapCopy = map;
  v5 = self->_activityToIncompatibleActivitiesMap;
  objc_sync_enter(v5);
  activityToIncompatibleActivitiesMap = self->_activityToIncompatibleActivitiesMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DD000;
  v8[3] = &unk_1001B8498;
  v7 = mapCopy;
  v9 = v7;
  [(NSMutableDictionary *)activityToIncompatibleActivitiesMap enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

- (void)activityStarted:(id)started
{
  startedCopy = started;
  if ([startedCopy delayedStart])
  {
    v5 = os_transaction_create();
    v6 = [_DASDaemonLogger logForCategory:@"lifecycle"];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [startedCopy shortDescription];
      *buf = 138543362;
      v21 = shortDescription;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "STARTING %{public}@", buf, 0xCu);
    }

    os_unfair_recursive_lock_lock_with_options();
    prerunningTasks = self->_prerunningTasks;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000DD2FC;
    v18[3] = &unk_1001B8758;
    v9 = startedCopy;
    v19 = v9;
    v10 = [(NSMutableSet *)prerunningTasks objectsPassingTest:v18];
    if ([v10 count])
    {
      anyObject = [v10 anyObject];
      [v9 reconcileWithActivity:anyObject];
    }

    currentReportingConditions = [(_DASDaemon *)self currentReportingConditions];
    [v9 setStartConditions:currentReportingConditions];

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

- (void)logLimitations:(id)limitations
{
  limitationsCopy = limitations;
  if (([limitationsCopy requestsApplicationLaunch] & 1) == 0)
  {
    startDate = [limitationsCopy startDate];
    if (startDate)
    {
    }

    else
    {
      limitationResponse = [limitationsCopy limitationResponse];
      if (!limitationResponse)
      {
        goto LABEL_8;
      }

      v11 = limitationResponse;
      limitationResponse2 = [limitationsCopy limitationResponse];
      v13 = [limitationResponse2 count];

      if (!v13)
      {
        goto LABEL_8;
      }
    }

    v6 = limitationsCopy;
    AnalyticsSendEventLazy();
    startDate2 = [v6 startDate];
    if (startDate2)
    {
      v8 = startDate2;
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

- (void)activityCompleted:(id)completed withSuccess:(BOOL)success
{
  successCopy = success;
  completedCopy = completed;
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
        uuid = [v11 uuid];
        uuid2 = [completedCopy uuid];
        v14 = [uuid isEqual:uuid2];

        if (v14)
        {
          [completedCopy reconcileWithActivity:v11];
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
  [completedCopy setEndTime:v15];

  v16 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    shortDescription = [completedCopy shortDescription];
    maximumRuntime = [completedCopy maximumRuntime];
    *buf = 138543618;
    v43 = shortDescription;
    v44 = 2048;
    v45 = maximumRuntime;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "COMPLETED %{public}@ with runtime limit %ld", buf, 0x16u);
  }

  if ([_DASIntensityValidator shouldValidateActivity:completedCopy])
  {
    [(_DASActivityProfiler *)self->_profiler endProfilingForActivity:completedCopy completed:1 withState:self->_context];
    intensityValidatorQueue = self->_intensityValidatorQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DED20;
    block[3] = &unk_1001B56E0;
    block[4] = self;
    v37 = completedCopy;
    dispatch_async(intensityValidatorQueue, block);
  }

  v20 = +[_DASPLLogger sharedInstance];
  [v20 recordActivityLifeCycleEnd:completedCopy];

  [(_DASDaemon *)self recordToTaskRegistry:completedCopy lifeCycleStateName:@"completed"];
  [(_DASDaemon *)self cleanupForActivity:completedCopy wasCompleted:1];
  if ([completedCopy isContinuedProcessingTask])
  {
    v21 = [NSSet setWithObject:completedCopy];
    [(_DASDaemon *)self informObserversOfActivitiesCompleted:v21 withSuccess:successCopy];
  }

  if ([completedCopy isIntensive])
  {
    [(_DASFairScheduleManager *)self->_fairScheduleManager activityCompleted:completedCopy];
  }

  v22 = +[_DASActivityDurationTracker sharedInstance];
  [v22 activityCompleted:completedCopy];

  [(_DASActivityDependencyManager *)self->_dependencyManager reportActivityDidFinishRunning:completedCopy];
  if ([(_DASSleepWakeMonitor *)self->_sleepWakeMonitor inADarkWake])
  {
    [(_DASSleepWakeMonitor *)self->_sleepWakeMonitor recordNoLongerRunningActivity:completedCopy];
  }

  if ([completedCopy userRequestedBackupTask])
  {
    [(_DASUserRequestedBackupTaskManager *)self->_backupTaskManager reportActivityNoLongerRunning:completedCopy];
  }

  telemetryQueue = self->_telemetryQueue;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000DED8C;
  v34[3] = &unk_1001B5668;
  v24 = completedCopy;
  v35 = v24;
  dispatch_async(telemetryQueue, v34);
  if ([(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager isTrackingActivity:v24])
  {
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager activityEnded:v24];
    [(_DASRuntimeTrackerManager *)self->_runtimeTrackerManager allocatedRuntimeRemainingForActivity:v24];
    v26 = v25;
    runtimeTrackerManager = self->_runtimeTrackerManager;
    name = [v24 name];
    LODWORD(runtimeTrackerManager) = [(_DASRuntimeTrackerManager *)runtimeTrackerManager isTrackingDynamicRuntimeActivity:name];

    if (runtimeTrackerManager && v26 <= 0.0)
    {
      allPendingTasks = [(_DASDaemon *)self allPendingTasks];
      v30 = [(_DASDaemon *)self sortCandidateActivities:allPendingTasks];

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

- (void)recordToTaskRegistry:(id)registry lifeCycleStateName:(id)name
{
  registryCopy = registry;
  nameCopy = name;
  name = [registryCopy name];
  serviceName = [registryCopy serviceName];
  if (!self->_taskRegistryMode || ![(NSSet *)self->_taskRegistryProcesses containsObject:serviceName])
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
  if ([nameCopy isEqualToString:@"submitted"])
  {
    submitDate = [registryCopy submitDate];
LABEL_9:
    suspendRequestDate = submitDate;
    v16 = 0;
    v33 = 0;
    v34 = 0;
    currentReportingConditions = 0;
    goto LABEL_14;
  }

  if ([nameCopy isEqualToString:@"started"])
  {
    startDate = [registryCopy startDate];
    startConditions = [registryCopy startConditions];
    policyResponseMetadata = [registryCopy policyResponseMetadata];
    v19 = [policyResponseMetadata objectForKeyedSubscript:@"scoreWhenRun"];
    [v19 score];
    v20 = [NSNumber numberWithDouble:?];

    v16 = v20;
    [_DASConditionScore thresholdScoreForActivity:registryCopy];
    suspendRequestDate = startDate;
    v34 = [NSNumber numberWithDouble:?];
    [v34 doubleValue];
    currentReportingConditions = startConditions;
    v33 = [NSNumber numberWithDouble:v21 * 0.9];
  }

  else
  {
    if (![nameCopy isEqualToString:@"suspended"])
    {
      submitDate = +[NSDate now];
      goto LABEL_9;
    }

    suspendRequestDate = [registryCopy suspendRequestDate];
    currentReportingConditions = [(_DASDaemon *)self currentReportingConditions];
    v16 = 0;
    v33 = 0;
    v34 = 0;
  }

LABEL_14:
  v32 = v16;
  if (([nameCopy isEqualToString:@"started"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"suspended"))
  {
    if ([registryCopy wasForceRun])
    {
      v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [registryCopy wasForceRun]);
      [v13 setValue:v22 forKey:@"wasForceRun"];
    }

    v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [registryCopy lastDenialValue]);
    [v13 setValue:v23 forKey:@"lastDenialValue"];

    lastScored = [registryCopy lastScored];
    [v13 setValue:lastScored forKey:@"lastScored"];

    [v13 setValue:currentReportingConditions forKey:@"conditions"];
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

  v29 = currentReportingConditions;
  if (v33)
  {
    [v13 setValue:v33 forKey:{@"relaxedThresholdScore", currentReportingConditions}];
  }

  [v13 setValue:suspendRequestDate forKey:{@"timestamp", v29}];
  [v13 setValue:nameCopy forKey:@"state"];
  [v12 objectForKey:name];
  v26 = v25 = suspendRequestDate;
  v27 = [v26 mutableCopy];

  if (!v27)
  {
    v27 = objc_opt_new();
  }

  [v27 addObject:v13];
  [v12 setObject:v27 forKey:name];
  [(NSUserDefaults *)self->_testingDefaults setObject:v12 forKey:@"taskRegistry"];

LABEL_28:
}

- (void)activityCanceledWithReason:(id)reason expirationReason:(int64_t)expirationReason
{
  expirationReasonCopy = expirationReason;
  reasonCopy = reason;
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
        uuid = [v11 uuid];
        uuid2 = [reasonCopy uuid];
        v14 = [uuid isEqual:uuid2];

        if (v14)
        {
          [reasonCopy reconcileWithActivity:v11];
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

    shortDescription = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [reasonCopy schedulingPriority]);
    *buf = 138543618;
    v70 = reasonCopy;
    v71 = 2114;
    v72 = shortDescription;
    v20 = "CANCELED: %{public}@ at priority %{public}@";
    goto LABEL_17;
  }

  startDate = [reasonCopy startDate];

  v16 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (startDate)
  {
    if (!v17)
    {
      goto LABEL_19;
    }

    shortDescription = [reasonCopy shortDescription];
    maximumRuntime = [reasonCopy maximumRuntime];
    *buf = 138412546;
    v70 = shortDescription;
    v71 = 2048;
    v72 = maximumRuntime;
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
    shortDescription = [reasonCopy shortDescription];
    *buf = 138412290;
    v70 = shortDescription;
    v20 = "CANCELED: %@";
    v21 = v16;
    v22 = 12;
    goto LABEL_18;
  }

LABEL_19:

  if (![(NSMutableSet *)self->_runningTasks containsObject:reasonCopy])
  {
    goto LABEL_22;
  }

  suspendRequestDate = [reasonCopy suspendRequestDate];
  if (suspendRequestDate)
  {
    goto LABEL_21;
  }

  suspendRequestDate = [reasonCopy startDate];
  if (!suspendRequestDate || ([reasonCopy requestsApplicationLaunch] & 1) != 0)
  {
    goto LABEL_21;
  }

  clientName = [reasonCopy clientName];
  v51 = [clientName isEqualToString:_DASClientNameBGST];

  if ((v51 & 1) == 0)
  {
    suspendRequestDate = [_DASDaemonLogger logForCategory:@"misuse"];
    if (os_log_type_enabled(suspendRequestDate, OS_LOG_TYPE_DEFAULT))
    {
      name = [reasonCopy name];
      *buf = 138412290;
      v70 = name;
      _os_log_impl(&_mh_execute_header, suspendRequestDate, OS_LOG_TYPE_DEFAULT, "Please file a bug for %@ – the activity deferred without being asked to defer", buf, 0xCu);
    }

LABEL_21:
  }

LABEL_22:
  if ([(NSMutableSet *)self->_runningTasks containsObject:reasonCopy, expirationReasonCopy])
  {
    suspendRequestDate2 = [reasonCopy suspendRequestDate];
    if (suspendRequestDate2)
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
  v28 = reasonCopy;
  v63 = v28;
  dispatch_async(telemetryQueue, block);
  v29 = +[NSDate date];
  [v28 setEndTime:v29];

  fastPass = [v28 fastPass];
  if (fastPass)
  {
    v31 = fastPass;
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
    startDate2 = [v28 startDate];

    if (startDate2)
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
    name2 = [v40 name];
    LODWORD(runtimeTrackerManager) = [(_DASRuntimeTrackerManager *)runtimeTrackerManager isTrackingDynamicRuntimeActivity:name2];

    if (runtimeTrackerManager && v42 <= 0.0)
    {
      allPendingTasks = [(_DASDaemon *)self allPendingTasks];
      v46 = [(_DASDaemon *)self sortCandidateActivities:allPendingTasks];

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
    suspendRequestDate3 = [v40 suspendRequestDate];

    if (!suspendRequestDate3)
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

- (void)clientFailedtoExpireTaskWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  telemetryQueue = self->_telemetryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DFF3C;
  block[3] = &unk_1001B5668;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(telemetryQueue, block);
}

- (void)updateActivity:(id)activity withParameters:(id)parameters
{
  activityCopy = activity;
  parametersCopy = parameters;
  [(_DASBudgetManager *)self->_budgetManager reportUpdateForActivity:activityCopy withDataConsumed:parametersCopy];
  v8 = _DASUpdateActivityPercentCompletedKey;
  v21 = parametersCopy;
  v9 = [parametersCopy objectForKeyedSubscript:_DASUpdateActivityPercentCompletedKey];

  if (v9)
  {
    os_unfair_recursive_lock_lock_with_options();
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    selfCopy = self;
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
          uuid = [v15 uuid];
          uuid2 = [activityCopy uuid];
          v18 = [uuid isEqual:uuid2];

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

- (void)updateSystemConstraintsWithParameters:(id)parameters
{
  v4 = kDASSystemContextKeyHeavyDiskUsage;
  parametersCopy = parameters;
  v12 = [parametersCopy objectForKeyedSubscript:v4];
  v6 = [parametersCopy objectForKeyedSubscript:kDASSystemContextNonDASCriticalWorkloadRunning];
  v7 = [parametersCopy objectForKeyedSubscript:kDASSystemContextGPWorkloadRunningState];
  v8 = [parametersCopy objectForKeyedSubscript:kDASSystemContextMCWorkloadRunningState];

  if (v12)
  {
    v9 = +[_DASCustomSystemConstraintsPolicy policyInstance];
    [v9 updateSystemConstraint:kDASSystemContextKeyHeavyDiskUsage withState:objc_msgSend(v12 withDaemon:{"BOOLValue"), 0}];
LABEL_5:

    tasksNoLongerEligible = [(_DASDaemon *)self tasksNoLongerEligible];
    [(_DASDaemon *)self suspendActivities:tasksNoLongerEligible];
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
    tasksNoLongerEligible = +[_DASCustomSystemConstraintsPolicy policyInstance];
    [tasksNoLongerEligible updateSystemConstraint:kDASSystemContextMCWorkloadRunningState withState:objc_msgSend(v8 withDaemon:{"BOOLValue"), self}];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)addPrerunningActivity:(id)activity toGroupWithName:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  os_unfair_lock_lock(&self->_groupLock);
  v8 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:nameCopy];
  [v8 removeObject:activityCopy];

  v9 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:nameCopy];
  if (!v9)
  {
    v9 = +[NSMutableSet set];
    groupToPrerunningTasks = self->_groupToPrerunningTasks;
    groupName = [activityCopy groupName];
    [(NSMutableDictionary *)groupToPrerunningTasks setObject:v9 forKeyedSubscript:groupName];
  }

  [v9 _DAS_addOrReplaceObject:activityCopy];
  v12 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = activityCopy;
    v15 = 2112;
    v16 = nameCopy;
    v17 = 2048;
    v18 = [v9 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "With %@ ...Tasks pre-running in group [%@] are %ld!", &v13, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)addRunningActivity:(id)activity toGroupWithName:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  os_unfair_lock_lock(&self->_groupLock);
  v8 = [(NSMutableDictionary *)self->_groupToPrerunningTasks objectForKeyedSubscript:nameCopy];
  [v8 removeObject:activityCopy];

  v9 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:nameCopy];
  [v9 removeObject:activityCopy];

  v10 = [(NSMutableDictionary *)self->_groupToRunningTasks objectForKeyedSubscript:nameCopy];
  if (!v10)
  {
    v10 = +[NSMutableSet set];
    groupToRunningTasks = self->_groupToRunningTasks;
    groupName = [activityCopy groupName];
    [(NSMutableDictionary *)groupToRunningTasks setObject:v10 forKeyedSubscript:groupName];
  }

  [v10 _DAS_addOrReplaceObject:activityCopy];
  v13 = [_DASDaemonLogger logForCategory:@"lifecycle(activityGroup)"];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = activityCopy;
    v16 = 2112;
    v17 = nameCopy;
    v18 = 2048;
    v19 = [v10 count];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "With %@ ...Tasks running in group [%@] are %ld!", &v14, 0x20u);
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)addPendingActivity:(id)activity toGroupWithName:(id)name
{
  activityCopy = activity;
  nameCopy = name;
  os_unfair_lock_lock(&self->_groupLock);
  v7 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:nameCopy];
  if (!v7)
  {
    v7 = +[NSMutableSet set];
    [(NSMutableDictionary *)self->_groupToPendingTasks setObject:v7 forKeyedSubscript:nameCopy];
  }

  [v7 _DAS_addOrReplaceObject:activityCopy];
  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)addPendingActivitiesToGroups:(id)groups
{
  groupsCopy = groups;
  os_unfair_lock_lock(&self->_groupLock);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E0834;
  v5[3] = &unk_1001B8498;
  v5[4] = self;
  [groupsCopy enumerateKeysAndObjectsUsingBlock:v5];

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)createActivityGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_groupLock);
  groups = self->_groups;
  name = [groupCopy name];
  v6 = [(NSMutableDictionary *)groups objectForKeyedSubscript:name];

  if (!v6 || (v7 = [v6 maxConcurrent], v7 != objc_msgSend(groupCopy, "maxConcurrent")))
  {
    v8 = self->_groups;
    name2 = [groupCopy name];
    [(NSMutableDictionary *)v8 setObject:groupCopy forKeyedSubscript:name2];

    [(_DASDataStore *)self->_store saveGroup:groupCopy];
  }

  os_unfair_lock_unlock(&self->_groupLock);
}

- (void)submitActivity:(id)activity inGroup:(id)group
{
  activityCopy = activity;
  groupCopy = group;
  v8 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [groupCopy name];
    v10 = 138412802;
    v11 = activityCopy;
    v12 = 2112;
    v13 = name;
    v14 = 2048;
    maxConcurrent = [groupCopy maxConcurrent];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Submit activity: %@ in group: %@ with capacity: %ld", &v10, 0x20u);
  }

  [(_DASDaemon *)self submitActivity:activityCopy inGroup:groupCopy withHandler:&stru_1001B87A0];
}

- (void)submitActivity:(id)activity inGroup:(id)group withHandler:(id)handler
{
  activityCopy = activity;
  groupCopy = group;
  handlerCopy = handler;
  v121 = os_transaction_create();
  v120 = groupCopy;
  if (![(_DASDaemon *)self validateConfigurationForActivity:activityCopy])
  {
    v17 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:&off_1001CAF40];
    handlerCopy[2](handlerCopy, 0, v17);

    goto LABEL_120;
  }

  if (groupCopy)
  {
    [(_DASDaemon *)self createActivityGroup:groupCopy];
    name = [groupCopy name];
    [activityCopy setGroupName:name];
  }

  if (![(_DASRuntimeLimiter *)self->_runtimeLimiter featureHasNoRemainingRuntimeForActivity:activityCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    context = objc_autoreleasePoolPush();
    if (![activityCopy requestsImmediateRuntime])
    {
      goto LABEL_26;
    }

    if (selfCopy->_dasImmediateRuntimeDisabled)
    {
      v19 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [activityCopy name];
        *buf = 138412290;
        *&buf[4] = name2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Do It Now activity %@ is not granted for immediateRuntime due to dasImmediateRuntimeDisabled.", buf, 0xCu);
      }
    }

    else
    {
      [(_DASRuntimeLimiter *)self->_runtimeLimiter immediateDurationForActivity:activityCopy];
      v22 = v21;
      runtimeTrackerManager = selfCopy->_runtimeTrackerManager;
      name3 = [activityCopy name];
      LOBYTE(runtimeTrackerManager) = [(_DASRuntimeTrackerManager *)runtimeTrackerManager doesImmediateRuntimeTrackerExist:name3];

      if ((runtimeTrackerManager & 1) == 0)
      {
        v25 = +[_DASDaemonLogger defaultCategory];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          name4 = [activityCopy name];
          *buf = 138412290;
          *&buf[4] = name4;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Do It Now activity %@ is tracked by ImmediateRuntimeTracker.", buf, 0xCu);
        }

        v27 = selfCopy->_runtimeTrackerManager;
        name5 = [activityCopy name];
        [(_DASRuntimeTrackerManager *)v27 submitRuntimeActivityTracker:name5 inGroup:off_10020A090[0] withMaximumRuntime:v22];
      }

      if ([(_DASRuntimeTrackerManager *)selfCopy->_runtimeTrackerManager immediateRuntimeTrackerHasRemainingRuntime:activityCopy])
      {
LABEL_26:
        [(_DASActivityRateLimitManager *)selfCopy->_rateLimiter submitActivity:activityCopy];
        [activityCopy interval];
        if (v30 <= 0.0)
        {
          if (+[_DASConfig isInternalBuild])
          {
            v31 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
LABEL_29:
              v32 = [activityCopy debugDescription];
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
              v38 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activityCopy schedulingPriority]);
              startAfter = [activityCopy startAfter];
              startBefore = [activityCopy startBefore];
              *buf = 138544130;
              *&buf[4] = activityCopy;
              *&buf[12] = 2114;
              *&buf[14] = v38;
              *&buf[22] = 2114;
              v144 = startAfter;
              *v145 = 2114;
              *&v145[2] = startBefore;
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
            v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [activityCopy schedulingPriority]);
            [activityCopy interval];
            v35 = v34;
            startAfter2 = [activityCopy startAfter];
            startBefore2 = [activityCopy startBefore];
            *buf = 138544386;
            *&buf[4] = activityCopy;
            *&buf[12] = 2114;
            *&buf[14] = v33;
            *&buf[22] = 2048;
            v144 = v35;
            *v145 = 2114;
            *&v145[2] = startAfter2;
            *&v145[10] = 2114;
            *&v145[12] = startBefore2;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Submitted: %{public}@ at priority %{public}@ with interval %.0f (%{public}@ - %{public}@)", buf, 0x34u);
          }
        }

LABEL_37:

        [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.submitcount.all" byCount:1];
        v119 = +[NSDate date];
        submitDate = [activityCopy submitDate];
        v42 = submitDate == 0;

        if (v42)
        {
          [activityCopy setSubmitDate:v119];
        }

        if ([(_DASDynamicRuntimeAllocator *)selfCopy->_runtimeAllocator isEnabled])
        {
          if (![activityCopy uninterruptibleDuration])
          {
            [(_DASRuntimeLimiter *)self->_runtimeLimiter uninterruptibleDurationForActivity:activityCopy];
            if (v43 != 0.0)
            {
              [activityCopy setUninterruptibleDuration:v43];
            }
          }
        }

        telemetryQueue = selfCopy->_telemetryQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000E1FB8;
        block[3] = &unk_1001B5668;
        v45 = activityCopy;
        v139 = v45;
        dispatch_async(telemetryQueue, block);
        featureCodes = [v45 featureCodes];
        if (featureCodes)
        {
        }

        else
        {
          fastPass = [v45 fastPass];
          v48 = fastPass == 0;

          if (v48)
          {
            goto LABEL_47;
          }
        }

        v49 = +[_DASClientMetricsRecorder sharedInstance];
        name6 = [v45 name];
        featureCodes2 = [v45 featureCodes];
        fastPass2 = [v45 fastPass];
        [v49 addFeatureCodesForTask:name6 featureCodes:featureCodes2 semanticVersion:{objc_msgSend(fastPass2, "semanticVersion")}];

LABEL_47:
        producedResultIdentifiers = [v45 producedResultIdentifiers];
        if (producedResultIdentifiers)
        {
        }

        else
        {
          dependencies = [v45 dependencies];
          v55 = dependencies == 0;

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
        dependencies2 = [v45 dependencies];
        v58 = [dependencies2 countByEnumeratingWithState:&v134 objects:v142 count:16];
        if (v58)
        {
          v59 = *v135;
          do
          {
            for (i = 0; i != v58; i = i + 1)
            {
              if (*v135 != v59)
              {
                objc_enumerationMutation(dependencies2);
              }

              identifier = [*(*(&v134 + 1) + 8 * i) identifier];
              [v56 addObject:identifier];
            }

            v58 = [dependencies2 countByEnumeratingWithState:&v134 objects:v142 count:16];
          }

          while (v58);
        }

        v62 = +[_DASClientMetricsRecorder sharedInstance];
        name7 = [v45 name];
        producedResultIdentifiers2 = [v45 producedResultIdentifiers];
        [v62 addDependencyInfoForTask:name7 producedResultIdentifiers:producedResultIdentifiers2 dependencyIdentifiers:v56];

LABEL_58:
        [(_DASDaemon *)selfCopy computeStaticPriorityForActivity:v45];
        [(_DASDaemon *)selfCopy clearActivityFromPrerunning:v45];
        [_DASConditionScore setActivityShouldBypassPredictions:v45];
        if ([v45 requestsApplicationLaunch])
        {
          launchReason = [v45 launchReason];
          v66 = [launchReason isEqualToString:_DASLaunchReasonBackgroundRemoteNotification];

          if (v66)
          {
            isSilentPush = [v45 isSilentPush];
            [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.push.count" byCount:1];
            schedulingPriority = [v45 schedulingPriority];
            if (schedulingPriority >= _DASSchedulingPriorityBackground)
            {
              [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.highprioritypush" byCount:1];
              if (isSilentPush)
              {
                [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.silentpush.highprioritycount" byCount:1];
                [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.silentpush.count" byCount:1];
                v69 = [_DASDaemonLogger logForCategory:@"bar"];
                if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                {
                  relatedApplications = [v45 relatedApplications];
                  firstObject = [relatedApplications firstObject];
                  sub_10012B0D8(firstObject, buf, v69, relatedApplications);
                }

                v72 = [NSSet setWithObject:v45];
                [(_DASDaemon *)selfCopy cancelActivities:v72];

                v73 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:3 userInfo:&off_1001CAF68];
                handlerCopy[2](handlerCopy, 0, v73);

                goto LABEL_119;
              }
            }

            else
            {
              [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.lowprioritypush" byCount:1];
              if (isSilentPush)
              {
                [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.silentpush.count" byCount:1];
              }
            }

            buf[0] = 0;
            barScheduler = selfCopy->_barScheduler;
            relatedApplications2 = [v45 relatedApplications];
            firstObject2 = [relatedApplications2 firstObject];
            v77 = [(_DASBARScheduler *)barScheduler pushLaunchAllowedForApp:firstObject2 immediately:buf];

            if (v77 && buf[0] == 1)
            {
              handlerCopy[2](handlerCopy, 1, 0);
              [(_DASDaemon *)selfCopy addLaunchRequest:v45];
              [(_DASDaemon *)selfCopy immediatelyBeginWorkForActivity:v45];
              goto LABEL_119;
            }

            schedulingPriority2 = [v45 schedulingPriority];
            if (schedulingPriority2 == _DASSchedulingPriorityMaintenance)
            {
              [(_DASBlueListManager *)selfCopy->_blueListManager decrementPushBudgetRemaining];
            }

            if (!(v77 & 1 | ((isSilentPush & 1) == 0)))
            {
              [_DASMetricRecorder recordOccurrenceForKey:@"com.apple.das.silentpush.pushnotallowedcount"];
            }

            v79 = selfCopy->_barScheduler;
            relatedApplications3 = [v45 relatedApplications];
            firstObject3 = [relatedApplications3 firstObject];
            LODWORD(v79) = [(_DASBARScheduler *)v79 isNewsstandApp:firstObject3];

            if (v79)
            {
              [v45 setRequestsNewsstandLaunch:1];
            }
          }
        }

        if (([v45 requestsApplicationLaunch] & 1) != 0 || objc_msgSend(v45, "requestsExtensionLaunch"))
        {
          if (![(_DASDaemon *)selfCopy addLaunchRequest:v45])
          {
            v96 = [_DASDaemonLogger logForCategory:@"bar"];
            if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
            {
              relatedApplications4 = [v45 relatedApplications];
              firstObject4 = [relatedApplications4 firstObject];
              sub_10012B12C(firstObject4, buf, v96, relatedApplications4);
            }

            v99 = [NSSet setWithObject:v45];
            [(_DASDaemon *)selfCopy cancelActivities:v99];

            v100 = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:5 userInfo:&off_1001CAF90];
            handlerCopy[2](handlerCopy, 0, v100);

            goto LABEL_119;
          }

          if ([v45 requestsApplicationLaunch])
          {
            [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.submitcount.launch" byCount:1];
            relatedApplications5 = [v45 relatedApplications];
            v83 = [relatedApplications5 count];

            if (v83)
            {
              [(_DASDaemon *)selfCopy advanceAppLaunchDateIfNecessaryForActivity:v45];
            }
          }

          if ([v45 shouldBePersisted])
          {
            [(_DASDataStore *)selfCopy->_store saveActivity:v45];
          }
        }

        if ([v45 userRequestedBackupTask])
        {
          [(_DASUserRequestedBackupTaskManager *)selfCopy->_backupTaskManager activitySubmitted:v45];
        }

        [(_DASActivityDependencyManager *)selfCopy->_dependencyManager beginDependencyMonitoringForActivity:v45];
        diskVolume = [v45 diskVolume];

        if (diskVolume)
        {
          [(_DASDiskSpaceMonitor *)selfCopy->_diskSpaceMonitor registerForPurgeableSpaceWithActivity:v45];
        }

        if ([(_DASNetworkEvaluationMonitor *)selfCopy->_networkEvaluationMonitor requiresNetworkPathMonitoring:v45])
        {
          [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.submitcount.network" byCount:1];
          networkEvaluationMonitor = selfCopy->_networkEvaluationMonitor;
          v86 = [_DASNetworkEvaluationMonitor nwParametersForActivity:v45];
          userInfo = [v45 userInfo];
          v88 = [userInfo objectForKeyedSubscript:kNWEndpointKey];
          [(_DASNetworkEvaluationMonitor *)networkEvaluationMonitor startMonitoringActivity:v45 withNetworkParameters:v86 withEndpoint:v88];
        }

        [(_DASDaemon *)selfCopy recordToTaskRegistry:v45 lifeCycleStateName:@"submitted"];
        os_unfair_recursive_lock_lock_with_options();
        [(NSMutableSet *)selfCopy->_submittedTasks addObject:v45];
        os_unfair_recursive_lock_unlock();
        handlerCopy[2](handlerCopy, 1, 0);
        os_unfair_recursive_lock_lock_with_options();
        if ([(NSMutableSet *)selfCopy->_submittedTasks containsObject:v45])
        {
          [(_DASDaemon *)selfCopy addTriggersToActivity:v45];
          groupName = [v45 groupName];
          if (_os_feature_enabled_impl())
          {
            internalGroupNames = [v45 internalGroupNames];
            v91 = [internalGroupNames count] == 0;

            if (v91)
            {
              internalGroupNames2 = +[_DASDaemonLogger defaultCategory];
              if (os_log_type_enabled(internalGroupNames2, OS_LOG_TYPE_ERROR))
              {
                name8 = [v45 name];
                sub_10012B180(name8, v140);
              }
            }

            else
            {
              v132 = 0u;
              v133 = 0u;
              v131 = 0u;
              v130 = 0u;
              internalGroupNames2 = [v45 internalGroupNames];
              v93 = [internalGroupNames2 countByEnumeratingWithState:&v130 objects:v141 count:16];
              if (v93)
              {
                v94 = *v131;
                do
                {
                  for (j = 0; j != v93; j = j + 1)
                  {
                    if (*v131 != v94)
                    {
                      objc_enumerationMutation(internalGroupNames2);
                    }

                    if (*(*(&v130 + 1) + 8 * j))
                    {
                      [(_DASDaemon *)selfCopy addPendingActivity:v45 toGroupWithName:?];
                    }
                  }

                  v93 = [internalGroupNames2 countByEnumeratingWithState:&v130 objects:v141 count:16];
                }

                while (v93);
              }
            }
          }

          else if (groupName)
          {
            [(_DASDaemon *)selfCopy addPendingActivity:v45 toGroupWithName:groupName];
          }

          [(NSMutableSet *)selfCopy->_submittedTasks removeObject:v45];
          [(NSMutableSet *)selfCopy->_pendingTasks addObject:v45];

          os_unfair_recursive_lock_unlock();
          evaluationQueue = selfCopy->_evaluationQueue;
          v127[0] = _NSConcreteStackBlock;
          v127[1] = 3221225472;
          v127[2] = sub_1000E20AC;
          v127[3] = &unk_1001B56B8;
          v127[4] = selfCopy;
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
          timerSchedulingQueue = selfCopy->_timerSchedulingQueue;
          v122[0] = _NSConcreteStackBlock;
          v122[1] = 3221225472;
          v122[2] = sub_1000E2340;
          v122[3] = &unk_1001B6A08;
          v108 = v106;
          v123 = v108;
          v109 = v105;
          v124 = v109;
          v125 = selfCopy;
          v126 = buf;
          dispatch_sync(timerSchedulingQueue, v122);
          if (*(*&buf[8] + 40))
          {
            v110 = +[_DASDaemonLogger defaultCategory];
            if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
            {
              sub_10012B1CC();
            }

            name9 = [v109 name];
            [*(*&buf[8] + 40) timeIntervalSinceDate:v108];
            v113 = v112;
            startBefore3 = [v109 startBefore];
            [startBefore3 timeIntervalSinceDate:v108];
            v116 = v115;
            schedulingPriority3 = [v109 schedulingPriority];
            [(_DASDaemon *)selfCopy scheduleTimerOnBehalfOf:name9 between:schedulingPriority3 > _DASSchedulingPriorityUtility and:v113 waking:v116];
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
        objc_sync_exit(selfCopy);

        goto LABEL_120;
      }

      v19 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        name10 = [activityCopy name];
        *buf = 138412290;
        *&buf[4] = name10;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Do It Now activity %@ had exhausted periodic runtime limit. Adjusting submission to drop immediate runtime request.", buf, 0xCu);
      }
    }

    [activityCopy setRequestsImmediateRuntime:0];
    goto LABEL_26;
  }

  v146 = @"exhaustedRuntimeFeatureCodes";
  v12 = [(_DASRuntimeLimiter *)self->_runtimeLimiter exhaustedRuntimeFeatureCodesAssociatedWithActivity:activityCopy];
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
    *&buf[4] = activityCopy;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Rejecting submission of %@ with error: %@!", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, 0, v15);
LABEL_120:
}

- (void)endLaunchWithReason:(id)reason forApp:(id)app
{
  reasonCopy = reason;
  appCopy = app;
  v8 = appCopy;
  if (reasonCopy && appCopy)
  {
    evaluationQueue = self->_evaluationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E27B0;
    block[3] = &unk_1001B56B8;
    v12 = appCopy;
    v13 = reasonCopy;
    selfCopy = self;
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

- (void)backgroundAppRefreshEnabledForApp:(id)app withHandler:(id)handler
{
  barScheduler = self->_barScheduler;
  handlerCopy = handler;
  appCopy = app;
  backgroundAppRefreshEnabled = [(_DASBARScheduler *)barScheduler backgroundAppRefreshEnabled];
  v9 = [(_DASBARScheduler *)self->_barScheduler backgroundAppRefreshEnabledForApp:appCopy];

  handlerCopy[2](handlerCopy, backgroundAppRefreshEnabled, v9);
}

- (void)disableAppRefreshForApps:(id)apps
{
  barScheduler = self->_barScheduler;
  v4 = [NSSet setWithArray:apps];
  [(_DASBARScheduler *)barScheduler disableAppRefreshForApps:v4];
}

- (BOOL)canSubmitValidatedTaskRequest:(id)request withError:(id *)error
{
  requestCopy = request;
  if (![requestCopy isContinuedProcessingTask])
  {
    relatedApplications = [requestCopy relatedApplications];
    firstObject = [relatedApplications firstObject];

    if ([requestCopy isContactTracingBackgroundActivity] & 1) != 0 || -[_DASBARScheduler backgroundLaunchAllowedForApp:](self->_barScheduler, "backgroundLaunchAllowedForApp:", firstObject) || (objc_msgSend(requestCopy, "launchReason"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", _DASLaunchReasonHealthResearch), v23, (v24))
    {
      if ([(_DASBARScheduler *)self->_barScheduler backgroundLaunchAllowedForBGTaskActivity:requestCopy])
      {
        errorCopy = error;
        os_unfair_recursive_lock_lock_with_options();
        v98 = firstObject;
        v25 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:firstObject];
        v26 = [v25 mutableCopy];
        v27 = v26;
        v106 = requestCopy;
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = +[NSMutableSet set];
        }

        v52 = v28;

        selfCopy = self;
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
                clientProvidedIdentifier = [v58 clientProvidedIdentifier];
                clientProvidedIdentifier2 = [v106 clientProvidedIdentifier];
                v61 = [clientProvidedIdentifier isEqualToString:clientProvidedIdentifier2];

                isContactTracingBackgroundActivity = [v106 isContactTracingBackgroundActivity];
                if (v61)
                {
                  if (isContactTracingBackgroundActivity && [v58 isContactTracingBackgroundActivity])
                  {
                    clientProvidedStartDate = [v58 clientProvidedStartDate];
                    if (clientProvidedStartDate)
                    {
                      goto LABEL_57;
                    }

                    clientProvidedStartDate = [v106 clientProvidedStartDate];
                    if (clientProvidedStartDate)
                    {
                      goto LABEL_57;
                    }

                    requiresPlugin = [v58 requiresPlugin];
                    if (requiresPlugin != [v106 requiresPlugin])
                    {
                      goto LABEL_57;
                    }

                    requiresNetwork = [v58 requiresNetwork];
                    if (requiresNetwork == [v106 requiresNetwork])
                    {
                      startAfter = [v58 startAfter];
                      [v106 setStartAfter:startAfter];

                      startBefore = [v58 startBefore];
                      [v106 setStartBefore:startBefore];

                      clientProvidedStartDate = [_DASDaemonLogger logForCategory:@"exposure-notification"];
                      if (os_log_type_enabled(clientProvidedStartDate, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, clientProvidedStartDate, OS_LOG_TYPE_DEFAULT, "Pending identical task", buf, 2u);
                      }

LABEL_57:
                    }
                  }

                  [v104 addObject:v58];
                  goto LABEL_64;
                }

                if (isContactTracingBackgroundActivity && [v58 isContactTracingBackgroundActivity])
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
        requestCopy = v106;
        [v53 addObject:v106];
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        obj = v53;
        v70 = [obj countByEnumeratingWithState:&v108 objects:v124 count:16];
        launchReason5 = &_DASLaunchReasonBackgroundProcessing;
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
              launchReason = [v78 launchReason];
              if ([launchReason isEqualToString:v75])
              {

LABEL_78:
                ++v73;
                continue;
              }

              launchReason2 = [v78 launchReason];
              v81 = [launchReason2 isEqualToString:v76];

              if (v81)
              {
                goto LABEL_78;
              }

              launchReason3 = [v78 launchReason];
              v83 = [launchReason3 isEqualToString:v103];

              v105 += v83;
            }

            v72 = [obj countByEnumeratingWithState:&v108 objects:v124 count:16];
            if (!v72)
            {
              v84 = v73 > 0xA;
              requestCopy = v106;
              v85 = v105 > 1;
              launchReason5 = &_DASLaunchReasonBackgroundProcessing;
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
          [(_DASDaemon *)selfCopy cancelActivities:v87];
        }

        launchReason4 = [requestCopy launchReason];
        v89 = [launchReason4 isEqualToString:_DASLaunchReasonBackgroundProcessing];
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
          launchReason5 = [requestCopy launchReason];
          if ([launchReason5 isEqualToString:_DASLaunchReasonHealthResearch] & v84)
          {
            v90 = 1;
LABEL_94:

LABEL_95:
            v44 = v90 ^ 1;
            if (errorCopy && v90)
            {
              *errorCopy = [NSError errorWithDomain:_DASActivitySchedulerErrorDomain code:4 userInfo:0];
            }

            firstObject = v98;
            goto LABEL_103;
          }
        }

        launchReason6 = [requestCopy launchReason];
        v90 = [launchReason6 isEqualToString:_DASLaunchReasonBackgroundRefresh] & v85;

        if (v89)
        {
          goto LABEL_95;
        }

        goto LABEL_94;
      }

      if (error)
      {
        v29 = _DASActivitySchedulerErrorDomain;
        v30 = 2;
LABEL_101:
        [NSError errorWithDomain:v29 code:v30 userInfo:0];
        *error = v44 = 0;
        goto LABEL_103;
      }
    }

    else if (error)
    {
      v29 = _DASActivitySchedulerErrorDomain;
      v30 = 0;
      goto LABEL_101;
    }

    v44 = 0;
    goto LABEL_103;
  }

  errorCopy2 = error;
  os_unfair_recursive_lock_lock_with_options();
  v7 = [(NSMutableSet *)self->_pendingTasks copy];
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v120 objects:v133 count:16];
  firstObject = v8;
  selfCopy2 = self;
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
          objc_enumerationMutation(firstObject);
        }

        v15 = *(*(&v120 + 1) + 8 * j);
        identifier = [v15 identifier];
        identifier2 = [requestCopy identifier];
        v18 = [identifier isEqualToString:identifier2];

        if (v18)
        {
          v19 = v15;

          v12 = v19;
        }
      }

      v11 = [firstObject countByEnumeratingWithState:&v120 objects:v133 count:16];
    }

    while (v11);

    if (!v12)
    {
      self = selfCopy2;
      goto LABEL_26;
    }

    v20 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    self = selfCopy2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [requestCopy identifier];
      *buf = 138543362;
      v132 = identifier3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Replacing pending task with new submission: %{public}@", buf, 0xCu);
    }

    v8 = [NSSet setWithObject:v12];
    [(_DASDaemon *)selfCopy2 cancelActivities:v8];
  }

  else
  {
    v12 = 0;
  }

LABEL_26:
  os_unfair_recursive_lock_unlock();
  allPrerunningTasks = [(_DASDaemon *)self allPrerunningTasks];
  v32 = [allPrerunningTasks mutableCopy];

  startedTasks = [(_DASDaemon *)self startedTasks];
  [v32 unionSet:startedTasks];

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

        identifier4 = [*(*(&v116 + 1) + 8 * k) identifier];
        identifier5 = [requestCopy identifier];
        v41 = [identifier4 isEqualToString:identifier5];

        if (v41)
        {
          v45 = _DASActivitySchedulerErrorDomain;
          v128 = @"taskIdentifier";
          identifier6 = [requestCopy identifier];
          v129 = identifier6;
          v47 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
          v48 = [NSError errorWithDomain:v45 code:5 userInfo:v47];

          v49 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_10012B234(requestCopy);
          }

          if (errorCopy2)
          {
            v50 = v48;
            *errorCopy2 = v48;
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

  continuedProcessingWrapper = [requestCopy continuedProcessingWrapper];
  submissionStrategy = [continuedProcessingWrapper submissionStrategy];

  if (submissionStrategy || [(_DASDaemon *)selfCopy2 additionalCapacityForActivity:requestCopy inGroupWithName:_DASDefaultContinuedProcessingGroupName shouldTryToSuspend:0]> 0)
  {
    v44 = 1;
  }

  else
  {
    v93 = _DASActivitySchedulerErrorDomain;
    v126 = @"taskIdentifier";
    identifier7 = [requestCopy identifier];
    v127 = identifier7;
    v95 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
    v51 = [NSError errorWithDomain:v93 code:9 userInfo:v95];

    v96 = [_DASDaemonLogger logForCategory:@"BackgroundTasks"];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
    {
      sub_10012B2D8(requestCopy);
    }

    if (errorCopy2)
    {
      v97 = v51;
      *errorCopy2 = v51;
    }

LABEL_42:

    v44 = 0;
  }

LABEL_103:
  return v44;
}

- (void)cancelAllTaskRequestsForApplication:(id)application
{
  applicationCopy = application;
  v5 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v6 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:applicationCopy];
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

- (void)cancelTaskRequestWithIdentifier:(id)identifier forApplication:(id)application
{
  identifierCopy = identifier;
  applicationCopy = application;
  v8 = +[NSMutableSet set];
  os_unfair_recursive_lock_lock_with_options();
  v18 = applicationCopy;
  v9 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:applicationCopy];
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
          clientProvidedIdentifier = [v14 clientProvidedIdentifier];
          v16 = [clientProvidedIdentifier isEqualToString:identifierCopy];

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
    v24 = identifierCopy;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Canceling task request %{public}@ for %@", buf, 0x16u);
  }

  [(_DASDaemon *)self cancelActivities:v8];
}

- (void)getPendingTaskRequestsForApplication:(id)application withCompletionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  v8 = +[NSMutableArray array];
  os_unfair_recursive_lock_lock_with_options();
  os_unfair_recursive_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)self->_applicationLaunchRequests objectForKeyedSubscript:applicationCopy];
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
  handlerCopy[2](handlerCopy, v15);
}

- (void)scheduleConnectionTimeoutForPid:(int)pid
{
  v5 = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10012B378(pid, v5);
  }

  v6 = dispatch_time(0, 10000000000);
  activityLaunchQueue = self->_activityLaunchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E3D50;
  v8[3] = &unk_1001B87C8;
  pidCopy = pid;
  v8[4] = self;
  dispatch_after(v6, activityLaunchQueue, v8);
}

- (void)establishConnectionFromClient:(id)client withCompletionHandler:(id)handler
{
  clientCopy = client;
  handlerCopy = handler;
  v7 = [_DASDaemonLogger logForCategory:@"bar"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    connection = [clientCopy connection];
    *buf = 138412546;
    v36 = clientCopy;
    v37 = 1024;
    LODWORD(v38) = [connection processIdentifier];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Establishing connection from client %@ with pid %d", buf, 0x12u);
  }

  v9 = self->_connectedBGTaskClients;
  objc_sync_enter(v9);
  connection2 = [clientCopy connection];
  processIdentifier = [connection2 processIdentifier];

  connectedBGTaskClients = [(_DASDaemon *)self connectedBGTaskClients];
  v13 = [NSNumber numberWithInt:processIdentifier];
  [connectedBGTaskClients setObject:clientCopy forKeyedSubscript:v13];

  activitiesWaitingForBGTaskClients = [(_DASDaemon *)self activitiesWaitingForBGTaskClients];
  v15 = [NSNumber numberWithInt:processIdentifier];
  v16 = [activitiesWaitingForBGTaskClients objectForKeyedSubscript:v15];

  activitiesWaitingForBGTaskClients2 = [(_DASDaemon *)self activitiesWaitingForBGTaskClients];
  v18 = [NSNumber numberWithInt:processIdentifier];
  [activitiesWaitingForBGTaskClients2 removeObjectForKey:v18];

  objc_sync_exit(v9);
  if ([v16 count])
  {
    v19 = [_DASDaemonLogger logForCategory:@"bar"];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v16;
      v37 = 2112;
      v38 = clientCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delivering pending activities %@ to client %@", buf, 0x16u);
    }

    [clientCopy handleLaunchFromDaemonForActivities:v16];
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
          suspendRequestDate = [v25 suspendRequestDate];
          v27 = suspendRequestDate == 0;

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
      [clientCopy willExpireBGTaskActivities:v28];
    }
  }

  handlerCopy[2]();
}

- (void)updateOngoingTask:(id)task completionHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  if ([taskCopy isContinuedProcessingTask])
  {
    [(_DASContinuedProcessingTaskUIClient *)self->_continuedProcessingTaskClient updateMetadataForActivity:taskCopy];
    handlerCopy[2](handlerCopy);
  }
}

- (void)updateProgressForOngoingTask:(id)task completionHandler:(id)handler
{
  progressMonitor = self->_progressMonitor;
  handlerCopy = handler;
  taskCopy = task;
  progress = [taskCopy progress];
  [(_DASProgressReportingMonitor *)progressMonitor submitProgressUpdate:progress forActivity:taskCopy];

  [(_DASContinuedProcessingTaskUIClient *)self->_continuedProcessingTaskClient updateProgressForActivity:taskCopy];
  handlerCopy[2]();
}

- (void)continuedProcessingDeviceCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  capabilitiesCopy[2](capabilitiesCopy, +[_DASDeviceQuery supportsBackgroundGPU]);
}

- (void)submittedActivitiesWithHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_recursive_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_pendingTasks allObjects];
  v9 = [allObjects mutableCopy];

  allObjects2 = [(NSMutableSet *)self->_submittedTasks allObjects];
  v7 = [allObjects2 mutableCopy];
  [v9 addObjectsFromArray:v7];

  os_unfair_recursive_lock_unlock();
  [v9 sortUsingComparator:&stru_1001B8808];
  v8 = [NSArray arrayWithArray:v9];
  handlerCopy[2](handlerCopy, v8);
}

- (void)delayedRunningActivitiesWithHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_recursive_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_prerunningTasks allObjects];
  v7 = [allObjects mutableCopy];

  os_unfair_recursive_lock_unlock();
  [v7 sortUsingComparator:&stru_1001B8828];
  v6 = [v7 copy];
  handlerCopy[2](handlerCopy, v6);
}

- (void)runningActivitiesWithHandler:(id)handler
{
  handlerCopy = handler;
  +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E499C;
  v8 = v7[3] = &unk_1001B84C0;
  v5 = v8;
  [(_DASDaemon *)self allClientsDo:v7];
  [v5 sortUsingComparator:&stru_1001B8848];
  v6 = [NSArray arrayWithArray:v5];
  handlerCopy[2](handlerCopy, v6);
}

- (void)runningGroupActivitiesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSMutableArray array];
  os_unfair_lock_lock(&self->_groupLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_groupToRunningTasks allValues];
  v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        allObjects = [*(*(&v13 + 1) + 8 * v10) allObjects];
        [v5 addObjectsFromArray:allObjects];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_groupLock);
  v12 = [NSArray arrayWithArray:v5];
  handlerCopy[2](handlerCopy, v12);
}

- (void)forceRunActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v21 = [activitiesCopy count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Force Running %lu activities", buf, 0xCu);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = activitiesCopy;
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

- (void)runActivitiesWithUrgency:(int64_t)urgency activities:(id)activities
{
  activitiesCopy = activities;
  v7 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v31 = urgency;
    *&v31[4] = 2112;
    *&v31[6] = activitiesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "With %i urgency level, Running %@ activities", buf, 0x12u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = activitiesCopy;
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
          [v16 addActivity:v14 urgencyLevel:urgency];

          evaluationQueue = self->_evaluationQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000E50BC;
          block[3] = &unk_1001B7100;
          block[4] = self;
          v18 = v15;
          v23 = v14;
          urgencyCopy = urgency;
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

- (void)currentPredictionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = +[_DASPredictionManager sharedManager];
  currentPredictions = [v6 currentPredictions];
  (*(handler + 2))(handlerCopy, currentPredictions);
}

- (void)currentAllocations:(unint64_t)allocations timeFilter:(id)filter bgsqlData:(id)data withHandler:(id)handler
{
  handlerCopy = handler;
  filterCopy = filter;
  v14 = [(_DASDaemon *)self createTempBGSQLFile:data];
  v12 = [(_DASDaemon *)self getActivityAllocationStats:allocations timeFilter:filterCopy filepath:v14];

  v13 = [v12 copy];
  handlerCopy[2](handlerCopy, v13);
}

- (id)getActivityAllocationStats:(unint64_t)stats timeFilter:(id)filter filepath:(id)filepath
{
  filterCopy = filter;
  filepathCopy = filepath;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = objc_alloc_init(NSMutableArray);
  v10 = +[_DASPPSDataManager sharedInstance];
  v11 = [v10 loadPluginPrediction:0 timeFilter:filterCopy filepath:filepathCopy];

  if (v11)
  {
    v108 = v9;
    v101 = filepathCopy;
    v102 = filterCopy;
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
          metricKeysAndValues = [v19 metricKeysAndValues];
          v21 = objc_alloc_init(NSMutableDictionary);
          v22 = [metricKeysAndValues objectForKeyedSubscript:@"PredictionWindowID"];
          [v21 setObject:v22 forKeyedSubscript:@"predictionID"];

          v23 = [metricKeysAndValues objectForKeyedSubscript:@"PredictionDate"];
          [v21 setObject:v23 forKeyedSubscript:@"predictionDate"];

          [v108 addObject:v21];
          v24 = [metricKeysAndValues objectForKeyedSubscript:@"PredictionWindowID"];
          unsignedIntegerValue = [v24 unsignedIntegerValue];

          if (unsignedIntegerValue == stats)
          {
            v26 = metricKeysAndValues;

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
    if (!stats)
    {
      lastObject = [v12 lastObject];
      metricKeysAndValues2 = [lastObject metricKeysAndValues];

      v30 = [metricKeysAndValues2 objectForKeyedSubscript:@"PredictionWindowID"];
      stats = [v30 unsignedIntegerValue];

      lastObject2 = [v12 lastObject];
      [lastObject2 epochTimestamp];
      v17 = v32;

      v15 = metricKeysAndValues2;
    }

    filepathCopy = v101;
    v9 = v108;
    v11 = v100;
    [v103 setObject:v108 forKeyedSubscript:@"allPredictions"];
    if (v15)
    {
      v33 = [NSNumber numberWithUnsignedInteger:stats];
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
      v40 = [v39 loadTaskRuntimeAllocation:0 timeFilter:filterCopy filepath:v101];

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

              metricKeysAndValues3 = [*(*(&v114 + 1) + 8 * j) metricKeysAndValues];
              v50 = [metricKeysAndValues3 objectForKey:@"PredictionWindowID"];
              if (v50)
              {
                null = [(NSErrorUserInfoKey *)v42[124] null];

                if (v50 != null)
                {
                  v52 = [metricKeysAndValues3 objectForKeyedSubscript:@"PredictionWindowID"];
                  unsignedIntegerValue2 = [v52 unsignedIntegerValue];

                  if (unsignedIntegerValue2 == stats)
                  {
                    v54 = [metricKeysAndValues3 objectForKeyedSubscript:@"AllocatedRuntime"];
                    [v54 doubleValue];
                    v47 = v47 + v55;

                    v56 = [metricKeysAndValues3 objectForKeyedSubscript:@"UtilizedRuntime"];
                    [v56 doubleValue];
                    v46 = v46 + v57;

                    v58 = [metricKeysAndValues3 objectForKeyedSubscript:@"ReallocatedDuration"];
                    null2 = [(NSErrorUserInfoKey *)v42[124] null];
                    v60 = [v58 isEqual:null2];

                    if ((v60 & 1) == 0)
                    {
                      v61 = [metricKeysAndValues3 objectForKeyedSubscript:@"ReallocatedDuration"];
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
              metricKeysAndValues4 = [v70 metricKeysAndValues];
              v73 = [metricKeysAndValues4 objectForKey:@"PredictionWindowID"];
              if (v73)
              {
                null3 = [(NSErrorUserInfoKey *)v42[124] null];

                if (v73 != null3)
                {
                  v75 = [metricKeysAndValues4 objectForKeyedSubscript:@"PredictionWindowID"];
                  unsignedIntegerValue3 = [v75 unsignedIntegerValue];

                  if (unsignedIntegerValue3 == stats)
                  {
                    v77 = [metricKeysAndValues4 objectForKeyedSubscript:@"TaskName"];
                    [v71 setObject:v77 forKeyedSubscript:@"taskName"];

                    v78 = [metricKeysAndValues4 objectForKeyedSubscript:@"PredictionWindowID"];
                    [v71 setObject:v78 forKeyedSubscript:@"sessionPredictionID"];

                    v79 = [metricKeysAndValues4 objectForKeyedSubscript:@"AllocatedRuntime"];
                    [v79 doubleValue];
                    v81 = v80;

                    v82 = [metricKeysAndValues4 objectForKeyedSubscript:@"UtilizedRuntime"];
                    [v82 doubleValue];
                    v84 = v83;

                    v85 = [metricKeysAndValues4 objectForKeyedSubscript:@"ReallocatedDuration"];
                    null4 = [(NSErrorUserInfoKey *)v42[124] null];
                    v87 = [v85 isEqual:null4];

                    v88 = 0.0;
                    if ((v87 & 1) == 0)
                    {
                      v89 = [metricKeysAndValues4 objectForKeyedSubscript:@"ReallocatedDuration"];
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

        filepathCopy = v101;
        filterCopy = v102;
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
  earlyToday = [(_DASDaemon *)self earlyToday];
  v5 = +[NSDate now];
  v6 = +[NSMutableDictionary dictionary];
  v7 = BiomeLibrary();
  widgets = [v7 Widgets];
  viewed = [widgets Viewed];

  v36 = v5;
  v37 = earlyToday;
  v10 = [[BMPublisherOptions alloc] initWithStartDate:v5 endDate:earlyToday maxEvents:0 lastN:0 reversed:1];
  v11 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v11 getConsoleUserUid];

  v34 = v10;
  v35 = viewed;
  v13 = [viewed publisherWithUser:getConsoleUserUid useCase:@"DuetActivitySchedulerWidgetRefresh" options:v10];
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
  allObjects = [v17 allObjects];
  v19 = [allObjects mutableCopy];

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
  earlyToday = [(_DASDaemon *)self earlyToday];
  v6 = +[NSDate now];
  v7 = BiomeLibrary();
  widgets = [v7 Widgets];
  refresh = [widgets Refresh];

  v42 = v6;
  v43 = earlyToday;
  v10 = [[BMPublisherOptions alloc] initWithStartDate:v6 endDate:earlyToday maxEvents:0 lastN:0 reversed:1];
  v11 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v11 getConsoleUserUid];

  v40 = v10;
  v41 = refresh;
  v13 = [refresh publisherWithUser:getConsoleUserUid useCase:@"DuetActivitySchedulerWidgetRefresh" options:v10];
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
  allObjects = [v20 allObjects];
  v22 = [allObjects mutableCopy];

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

- (void)statisticsWithHandler:(id)handler
{
  v14[0] = @"widgetViews";
  v12[0] = @"name";
  v12[1] = @"data";
  v13[0] = @"Widget Views";
  handlerCopy = handler;
  widgetViewsStatistics = [(_DASDaemon *)self widgetViewsStatistics];
  v13[1] = widgetViewsStatistics;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[1] = @"widgetRefreshes";
  v15[0] = v6;
  v10[1] = @"data";
  v11[0] = @"Widget Refreshes";
  v10[0] = @"name";
  widgetRefreshStatistics = [(_DASDaemon *)self widgetRefreshStatistics];
  v11[1] = widgetRefreshStatistics;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v15[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

  handlerCopy[2](handlerCopy, v9);
}

- (void)allBudgetsWithHandler:(id)handler
{
  budgetManager = self->_budgetManager;
  handlerCopy = handler;
  allBudgets = [(_DASBudgetManager *)budgetManager allBudgets];
  (*(handler + 2))(handlerCopy, allBudgets);
}

- (void)balanceForBudgetWithName:(id)name withHandler:(id)handler
{
  budgetManager = self->_budgetManager;
  handlerCopy = handler;
  [(_DASBudgetManager *)budgetManager balanceForBudgetWithName:name];
  (*(handler + 2))(handlerCopy);
}

- (void)policiesWithHandler:(id)handler
{
  handlerCopy = handler;
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
        policyName = [v8 policyName];
        v10 = [_DASPolicyManager bitmaskForPolicy:policyName];

        v11 = +[NSMutableDictionary dictionary];
        policyName2 = [v8 policyName];
        [v11 setValue:policyName2 forKey:@"policyName"];

        policyDescription = [v8 policyDescription];
        if (policyDescription)
        {
          policyDescription2 = [v8 policyDescription];
          [v11 setValue:policyDescription2 forKey:@"policyDescription"];
        }

        else
        {
          [v11 setValue:&stru_1001BA3C0 forKey:@"policyDescription"];
        }

        v15 = [NSNumber numberWithUnsignedLong:v10];
        stringValue = [v15 stringValue];
        [v3 setValue:v11 forKey:stringValue];
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = [v3 copy];
  handlerCopy[2](handlerCopy, v17);
}

- (id)evaluatePolicies:(id)policies
{
  policiesCopy = policies;
  v5 = +[NSMutableDictionary dictionary];
  os_unfair_recursive_lock_lock_with_options();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  selfCopy = self;
  pendingTasks = [(_DASDaemon *)self pendingTasks];
  v7 = [pendingTasks countByEnumeratingWithState:&v82 objects:v91 count:16];
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
          objc_enumerationMutation(pendingTasks);
        }

        v11 = *(*(&v82 + 1) + 8 * i);
        name = [v11 name];
        v13 = [policiesCopy isEqualToString:name];

        if (v13)
        {
          v14 = v11;
          v65 = 1;
          goto LABEL_11;
        }
      }

      v8 = [pendingTasks countByEnumeratingWithState:&v82 objects:v91 count:16];
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
  prerunningTasks = [(_DASDaemon *)selfCopy prerunningTasks];
  v16 = [prerunningTasks countByEnumeratingWithState:&v78 objects:v90 count:16];
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
          objc_enumerationMutation(prerunningTasks);
        }

        v20 = *(*(&v78 + 1) + 8 * j);
        name2 = [v20 name];
        v22 = [policiesCopy isEqualToString:name2];

        if (v22)
        {
          v23 = v20;

          v64 = 1;
          v14 = v23;
          goto LABEL_21;
        }
      }

      v17 = [prerunningTasks countByEnumeratingWithState:&v78 objects:v90 count:16];
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
  runningTasks = [(_DASDaemon *)selfCopy runningTasks];
  v25 = [runningTasks countByEnumeratingWithState:&v74 objects:v89 count:16];
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
          objc_enumerationMutation(runningTasks);
        }

        v29 = *(*(&v74 + 1) + 8 * k);
        name3 = [v29 name];
        v31 = [policiesCopy isEqualToString:name3];

        if (v31)
        {
          v33 = v29;

          v32 = 1;
          goto LABEL_31;
        }
      }

      v26 = [runningTasks countByEnumeratingWithState:&v74 objects:v89 count:16];
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
      v88 = policiesCopy;
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
            context = [(_DASDaemon *)selfCopy context];
            v45 = [v39 responseForActivity:v33 withState:context];

            rationale = [v45 rationale];
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

            v51 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [rationale responseOptions]);
            [v41 setValue:v51 forKey:@"rationaleResponseOptions"];

            if (objc_opt_respondsToSelector())
            {
              v52 = [v39 blockReasons:v45];
              [v41 setValue:v52 forKey:@"blockReasons"];
            }

            v53 = [rationale description];
            [v41 setValue:v53 forKey:@"rationaleDescription"];

            policyName = [v39 policyName];
            [v66 setValue:v41 forKey:policyName];

            v33 = v67;
          }

          objc_autoreleasePoolPop(v40);
        }

        v36 = [obj countByEnumeratingWithState:&v70 objects:v86 count:16];
      }

      while (v36);
    }

    v55 = [NSNumber numberWithBool:v65];
    unsignedIntValue = [v55 unsignedIntValue];
    v57 = [NSNumber numberWithBool:v64];
    v58 = unsignedIntValue | (2 * [v57 unsignedIntValue]);
    v59 = [NSNumber numberWithBool:v62];
    v60 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v58 | (4 * [v59 unsignedIntValue]));

    v33 = v67;
    v5 = v63;
    [v63 setValue:v60 forKey:@"taskStatus"];
    [v63 setValue:v66 forKey:@"policyEvaluations"];
  }

  return v5;
}

- (void)evaluatePolicies:(id)policies handler:(id)handler
{
  policiesCopy = policies;
  handlerCopy = handler;
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
  v9 = policiesCopy;
  v12 = v9;
  dispatch_sync(evaluationQueue, block);
  v10 = [v15[5] copy];
  handlerCopy[2](handlerCopy, v10);

  _Block_object_dispose(&v14, 8);
}

- (void)evaluateAllActivities:(id)activities handler:(id)handler
{
  activitiesCopy = activities;
  handlerCopy = handler;
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
  v9 = activitiesCopy;
  v11 = v9;
  dispatch_sync(evaluationQueue, block);
  handlerCopy[2](handlerCopy, *(v14 + 24));

  _Block_object_dispose(&v13, 8);
}

- (BOOL)evaluateAllActivitiesFor:(id)for writingToFile:(id)file
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E7BD8;
  v7[3] = &unk_1001B88D8;
  v7[4] = self;
  fileCopy = file;
  v5 = fileCopy;
  LOBYTE(for) = [for enumerateObjectsInChunksOfSize:5 block:v7];

  return for;
}

- (BOOL)evaluatePoliciesForActivitiesChunk:(id)chunk writingToFile:(id)file
{
  chunkCopy = chunk;
  fileCopy = file;
  v8 = +[NSMutableDictionary dictionary];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = chunkCopy;
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
        name = [v14 name];
        v16 = [(_DASDaemon *)self evaluatePolicies:name];
        name2 = [v14 name];
        [v8 setValue:v16 forKey:name2];
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
  v22 = [fileCopy writeData:v18 error:&v26];
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

- (void)runProceedableActivities:(id)activities handler:(id)handler
{
  activitiesCopy = activities;
  handlerCopy = handler;
  v30 = +[NSMutableDictionary dictionary];
  v27 = objc_opt_new();
  testModeParameters = [(_DASDaemon *)self testModeParameters];
  v38 = [testModeParameters objectForKeyedSubscript:@"activities"];

  testModeParameters2 = [(_DASDaemon *)self testModeParameters];
  v36 = [testModeParameters2 objectForKeyedSubscript:@"overrides"];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = activitiesCopy;
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
        unsignedIntegerValue = [v34 unsignedIntegerValue];
        v13 = +[NSMutableDictionary dictionary];
        [v13 setObject:v37 forKeyedSubscript:@"blockingPolicies"];
        [v13 setObject:&__kCFBooleanFalse forKeyedSubscript:@"foundActivity"];
        v35 = v13;
        if ([v45[5] count] && (unsignedIntegerValue & 1) != 0)
        {
          [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:@"foundActivity"];
          v14 = [v45[5] objectForKeyedSubscript:@"policyEvaluations"];
          allKeys = [v14 allKeys];
          v16 = [allKeys sortedArrayUsingSelector:"localizedCaseInsensitiveCompare:"];

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
                longValue = [v23 longValue];

                if ((![v38 containsObject:v10] || (objc_msgSend(v36, "containsObject:", v21) & 1) == 0) && (longValue == 100 || longValue == 33))
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
  handlerCopy[2](handlerCopy, v30);
}

- (void)activityContainsOverrides:(id)overrides handler:(id)handler
{
  handlerCopy = handler;
  v4 = +[_DASPlistParser sharedInstance];
  loadOverrides = [v4 loadOverrides];

  if (loadOverrides)
  {
    v6 = +[_DASPlistParser sharedInstance];
    loadOverrides2 = [v6 loadOverrides];
    handlerCopy[2](handlerCopy, loadOverrides2);
  }
}

- (void)blockingPoliciesWithParameters:(id)parameters handler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v34 = parametersCopy;
  v35 = [parametersCopy objectForKeyedSubscript:@"activity"];
  os_unfair_recursive_lock_lock_with_options();
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  selfCopy = self;
  allObjects = [(NSMutableSet *)self->_pendingTasks allObjects];
  v8 = [allObjects countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v8)
  {
    v9 = *v50;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(allObjects);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        name = [v11 name];
        v13 = [name isEqualToString:v35];

        if (v13)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [allObjects countByEnumeratingWithState:&v49 objects:v57 count:16];
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
          allObjects2 = [(NSMutableSet *)selfCopy->_pendingTasks allObjects];
          v20 = [allObjects2 countByEnumeratingWithState:&v41 objects:v55 count:16];
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
                  objc_enumerationMutation(allObjects2);
                }

                v24 = *(*(&v41 + 1) + 8 * j);
                if ([_DASPhotosPolicy isiCPLActivity:v24])
                {
                  lastScored = [v24 lastScored];
                  if (lastScored)
                  {
                    [v18 timeIntervalSinceDate:lastScored];
                    if (v26 < 0.0)
                    {
                      v27 = lastScored;

                      v28 = v24;
                      v18 = v27;
                      v8 = v28;
                    }
                  }
                }
              }

              v21 = [allObjects2 countByEnumeratingWithState:&v41 objects:v55 count:16];
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
    v30 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, v29);
  }

  else
  {
    v31 = +[_DASDaemonLogger defaultCategory];
    v30 = handlerCopy;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v34 description];
      *buf = 138412290;
      v54 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No blocked activity was found for %@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct);
  }
}

- (void)enterTestModeWithParameters:(id)parameters reset:(BOOL)reset handler:(id)handler
{
  resetCopy = reset;
  parametersCopy = parameters;
  handlerCopy = handler;
  v10 = +[_DASDaemonLogger defaultCategory];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (resetCopy)
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
      v14 = parametersCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Entering test mode with parameters: %@", &v13, 0xCu);
    }

    [(NSUserDefaults *)self->_testingDefaults setObject:parametersCopy forKey:@"testModeParameters"];
    [(_DASDaemon *)self setTestModeParameters:parametersCopy];
    v12 = +[NSDate date];
    [(NSUserDefaults *)self->_testingDefaults setObject:v12 forKey:@"testModeLastUpdated"];
  }

  handlerCopy[2](handlerCopy, 1);
}

- (void)submitRateLimitConfiguration:(id)configuration handler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v6 = +[_DASActivityRateLimitManager sharedLimiter];
  [v6 submitRateLimitConfiguration:configurationCopy];

  handlerCopy[2](handlerCopy, 1);
}

- (void)pauseWithParameters:(id)parameters handler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  v8 = +[_DASDaemonLogger defaultCategory];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = parametersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Pausing scheduling with parameters: %@", &v13, 0xCu);
  }

  if ([parametersCopy count])
  {
    v9 = [parametersCopy mutableCopy];
    v10 = [NSDate dateWithTimeIntervalSinceNow:86400.0];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    [v9 setObject:v11 forKeyedSubscript:@"validUntil"];

    [(NSUserDefaults *)self->_testingDefaults setObject:v9 forKey:@"pausedParameters"];
    [(_DASDaemon *)self setPausedParameters:v9];
    tasksNoLongerEligible = [(_DASDaemon *)self tasksNoLongerEligible];
    [(_DASDaemon *)self suspendActivities:tasksNoLongerEligible];
  }

  else
  {
    [(NSUserDefaults *)self->_testingDefaults removeObjectForKey:@"pausedParameters"];
    [(_DASDaemon *)self setPausedParameters:0];
  }

  handlerCopy[2](handlerCopy, 1);
}

- (void)addPauseExceptParameter:(id)parameter handler:(id)handler
{
  handlerCopy = handler;
  if (parameter)
  {
    testingDefaults = self->_testingDefaults;
    parameterCopy = parameter;
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

    [v15 addObject:parameterCopy];
    v16 = [NSArray arrayWithArray:v15];
    [v12 setObject:v16 forKeyedSubscript:@"exceptTypes"];

    v17 = [NSDictionary dictionaryWithDictionary:v12];
    [(_DASDaemon *)self setPausedParameters:v17];

    v18 = self->_testingDefaults;
    pausedParameters = [(_DASDaemon *)self pausedParameters];
    [(NSUserDefaults *)v18 setObject:pausedParameters forKey:@"pausedParameters"];

    v20 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      pausedParameters2 = [(_DASDaemon *)self pausedParameters];
      v22 = 138412290;
      v23 = pausedParameters2;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Adding pause parameter: %@", &v22, 0xCu);
    }
  }

  handlerCopy[2](handlerCopy, 1);
}

- (void)deleteLimitForActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler
{
  activityCopy = activity;
  nameCopy = name;
  handlerCopy = handler;
  limitationName = [(_DASRuntimeLimiter *)self->_runtimeLimiter limitationName];
  lowercaseString = [limitationName lowercaseString];
  v12 = [lowercaseString isEqualToString:nameCopy];

  if (v12)
  {
    p_runtimeLimiter = &self->_runtimeLimiter;
  }

  else
  {
    limitationName2 = [(_DASConfigurationLimiter *)self->_configurationLimiter limitationName];
    lowercaseString2 = [limitationName2 lowercaseString];
    v16 = [lowercaseString2 isEqualToString:nameCopy];

    if (!v16)
    {
      goto LABEL_6;
    }

    p_runtimeLimiter = &self->_configurationLimiter;
  }

  handlerCopy[2](handlerCopy, [*p_runtimeLimiter deleteLimitForActivity:activityCopy]);
LABEL_6:
  handlerCopy[2](handlerCopy, 0);
}

- (void)updateLimit:(double)limit forActivity:(id)activity forLimiterWithName:(id)name handler:(id)handler
{
  activityCopy = activity;
  nameCopy = name;
  handlerCopy = handler;
  limitationName = [(_DASRuntimeLimiter *)self->_runtimeLimiter limitationName];
  lowercaseString = [limitationName lowercaseString];
  lowercaseString2 = [nameCopy lowercaseString];
  v15 = [lowercaseString isEqualToString:lowercaseString2];

  if (v15)
  {
    v16 = [(_DASRuntimeLimiter *)self->_runtimeLimiter setLimit:activityCopy forActivity:limit];
  }

  else
  {
    limitationName2 = [(_DASConfigurationLimiter *)self->_configurationLimiter limitationName];
    lowercaseString3 = [limitationName2 lowercaseString];
    lowercaseString4 = [nameCopy lowercaseString];
    v20 = [lowercaseString3 isEqualToString:lowercaseString4];

    if (!v20)
    {
      goto LABEL_6;
    }

    v16 = [(_DASConfigurationLimiter *)self->_configurationLimiter setLimitForActivity:activityCopy];
  }

  handlerCopy[2](handlerCopy, v16);
LABEL_6:
  handlerCopy[2](handlerCopy, 0);
}

- (void)getLimiterResponseForActivity:(id)activity handler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
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
      name = [v13 name];
      v15 = [activityCopy isEqualToString:name];

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

    limitationResponse = [v13 limitationResponse];

    v17 = +[NSMutableArray array];
    if (!limitationResponse)
    {
      v16 = 0;
      goto LABEL_22;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v18 = limitationResponse;
    v20 = [v18 countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v34 = activityCopy;
      obj = v18;
      v32 = v8;
      v33 = handlerCopy;
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
          rationale = [v24 rationale];
          [v25 setObject:rationale forKey:@"rationale"];

          limiterName = [v24 limiterName];
          [v25 setObject:limiterName forKey:@"limiterName"];

          [v25 setObject:v27 forKey:@"validityDuration"];
          [v17 addObject:v25];
        }

        v21 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v21);
      activityCopy = v34;
      v18 = obj;
      v16 = obj;
      v8 = v32;
      handlerCopy = v33;
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
  handlerCopy[2](handlerCopy, v31);
}

- (void)getRuntimeLimit:(id)limit handler:(id)handler
{
  limitCopy = limit;
  handlerCopy = handler;
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
        name = [v14 name];
        v16 = [limitCopy isEqualToString:name];

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
    v24 = limitCopy;
    v25 = 2048;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%@] Maximum Allowable Runtime: %lf", buf, 0x16u);
  }

  handlerCopy[2](handlerCopy, v10);
}

- (id)createTempBGSQLFile:(id)file
{
  if (file)
  {
    fileCopy = file;
    v4 = NSTemporaryDirectory();
    v5 = +[NSUUID UUID];
    v6 = [NSString stringWithFormat:@"%@tempSQL_%@.BGSQL", v4, v5];
    v7 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      uTF8String = [v6 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "File Path: %s", buf, 0xCu);
    }

    v8 = +[NSFileManager defaultManager];
    [v8 createFileAtPath:v6 contents:fileCopy attributes:0];

    v9 = [NSURL fileURLWithPath:v6 isDirectory:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)removeTempBGSQLFile:(id)file
{
  fileCopy = file;
  if (fileCopy)
  {
    v4 = +[_DASDaemonLogger defaultCategory];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      path = [fileCopy path];
      *buf = 136315138;
      uTF8String = [path UTF8String];
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing temporary BGSQL file at %s", buf, 0xCu);
    }

    v6 = +[NSFileManager defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtURL:fileCopy error:&v12];
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

- (void)getElapsedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  filterCopy = filter;
  runtimesCopy = runtimes;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v15 = [v17 computeElapsedRunTimes:runtimesCopy timeFilter:filterCopy filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  handlerCopy[2](handlerCopy, v16);
}

- (void)getEstimatedRuntimes:(id)runtimes timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  filterCopy = filter;
  runtimesCopy = runtimes;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v15 = [v17 computeEstimatedRunTimes:runtimesCopy timeFilter:filterCopy filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  handlerCopy[2](handlerCopy, v16);
}

- (void)getConditionsPenalties:(id)penalties handler:(id)handler
{
  handlerCopy = handler;
  penaltiesCopy = penalties;
  v9 = +[_DASLatencyProjector sharedInstance];
  v7 = [v9 computeConditionsPenalties:penaltiesCopy];

  v8 = [v7 copy];
  handlerCopy[2](handlerCopy, v8);
}

- (void)getSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  metricsCopy = metrics;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v12 = [v14 getSchedulerEfficiencyMetrics:metricsCopy filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  handlerCopy[2](handlerCopy, v13);
}

- (void)getContentionPenalties:(id)penalties handler:(id)handler
{
  handlerCopy = handler;
  penaltiesCopy = penalties;
  v9 = +[_DASLatencyProjector sharedInstance];
  v7 = [v9 computeContentionPenalties:penaltiesCopy];

  v8 = [v7 copy];
  handlerCopy[2](handlerCopy, v8);
}

- (void)getOvernightIntensiveSchedulerEfficiencyMetrics:(id)metrics bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  metricsCopy = metrics;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v12 = [v14 getOvernightIntensiveSchedulerEfficiencyMetrics:metricsCopy filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  handlerCopy[2](handlerCopy, v13);
}

- (void)getFeatureTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  filterCopy = filter;
  timelinesCopy = timelines;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v15 = [v17 getFeatureTimelines:timelinesCopy timeFilter:filterCopy filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  handlerCopy[2](handlerCopy, v16);
}

- (void)getActivityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  filterCopy = filter;
  timelinesCopy = timelines;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v15 = [v17 getActivityTimelines:timelinesCopy timeFilter:filterCopy filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  handlerCopy[2](handlerCopy, v16);
}

- (void)getEligibilityTimelines:(id)timelines timeFilter:(id)filter bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  filterCopy = filter;
  timelinesCopy = timelines;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v15 = [v17 getEligibilityTimelinesForTasks:timelinesCopy timeFilter:filterCopy filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  handlerCopy[2](handlerCopy, v16);
}

- (void)getDeviceConditionTimelines:(id)timelines bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  timelinesCopy = timelines;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v12 = [v14 getDeviceConditionTimelines:timelinesCopy filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  handlerCopy[2](handlerCopy, v13);
}

- (void)getInstallTimeline:(id)timeline bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  timelineCopy = timeline;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v12 = [v14 getInstallTimeline:timelineCopy filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  handlerCopy[2](handlerCopy, v13);
}

- (void)getBuddyEvents:(id)events bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  eventsCopy = events;
  v14 = +[_DASLatencyProjector sharedInstance];
  v11 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v12 = [v14 getBuddyData:eventsCopy filepath:v11];

  [(_DASDaemon *)self removeTempBGSQLFile:v11];
  v13 = [v12 copy];
  handlerCopy[2](handlerCopy, v13);
}

- (void)getEstimatedMADCompletionTimes:(id)times endDate:(id)date bgsqlData:(id)data handler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  dateCopy = date;
  timesCopy = times;
  v17 = +[_DASLatencyProjector sharedInstance];
  v14 = [(_DASDaemon *)self createTempBGSQLFile:dataCopy];

  v15 = [v17 computeEstimatedMADCompletionTimes:timesCopy endDate:dateCopy filepath:v14];

  [(_DASDaemon *)self removeTempBGSQLFile:v14];
  v16 = [v15 copy];
  handlerCopy[2](handlerCopy, v16);
}

- (void)getSortedCandidateActivities:(id)activities handler:(id)handler
{
  handlerCopy = handler;
  activities = [NSPredicate predicateWithFormat:@"SELF.name IN %@", activities];
  v7 = +[_DASDaemon sharedInstance];
  allTasks = [v7 allTasks];
  v9 = [allTasks filteredSetUsingPredicate:activities];

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

        name = [*(*(&v20 + 1) + 8 * v17) name];
        [v12 addObject:name];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v19 = [v12 copy];
  handlerCopy[2](handlerCopy, v19);
}

- (void)triggerScoreEvaluationAndRunActivities:(id)activities handler:(id)handler
{
  handlerCopy = handler;
  activities = [NSPredicate predicateWithFormat:@"SELF.name IN %@", activities];
  v6 = +[_DASDaemon sharedInstance];
  allTasks = [v6 allTasks];
  v8 = [allTasks filteredSetUsingPredicate:activities];
  allObjects = [v8 allObjects];

  if (allObjects)
  {
    v10 = +[_DASDaemon sharedInstance];
    v11 = [allObjects mutableCopy];
    [v10 evaluateScoreAndRunActivities:v11];
  }

  handlerCopy[2](handlerCopy, allObjects != 0);
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

- (void)handleTriggers:(id)triggers
{
  triggersCopy = triggers;
  v61 = os_transaction_create();
  v4 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [triggersCopy description];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    *buf = 138543362;
    v105 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to suspend based on triggers: %{public}@", buf, 0xCu);
  }

  tasksNoLongerEligible = [(_DASDaemon *)self tasksNoLongerEligible];
  [(_DASDaemon *)self suspendActivities:tasksNoLongerEligible];

  v66 = +[NSMutableSet set];
  v75 = +[NSMutableSet set];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = triggersCopy;
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
              policyName = [v65 policyName];
              *buf = 138543618;
              v105 = v68;
              v106 = 2112;
              v107 = policyName;
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
                    launchReason = [v18 launchReason];
                    if ([launchReason isEqualToString:v8])
                    {

LABEL_26:
                      [v13 addObject:v18];
                      goto LABEL_27;
                    }

                    launchReason2 = [v18 launchReason];
                    v21 = [launchReason2 isEqualToString:v79];

                    if (v21)
                    {
                      goto LABEL_26;
                    }

                    launchReason3 = [v18 launchReason];
                    v23 = [launchReason3 isEqualToString:v78];

                    if (v23)
                    {
                      v24 = +[NSDate date];
                      startAfter = [v18 startAfter];
                      [startAfter timeIntervalSinceDate:v24];
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
                  fileProtection = [v35 fileProtection];
                  v37 = +[_DASFileProtection complete];
                  if ([fileProtection isEqual:v37])
                  {
                  }

                  else
                  {
                    fileProtection2 = [v35 fileProtection];
                    v39 = +[_DASFileProtection completeUnlessOpen];
                    v40 = [fileProtection2 isEqual:v39];

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

- (BOOL)doesInternalGroupsContainGroupName:(id)name groupName:(id)groupName
{
  groupNameCopy = groupName;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  internalGroupNames = [name internalGroupNames];
  v7 = [internalGroupNames countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(internalGroupNames);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToString:groupNameCopy])
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [internalGroupNames countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)handleCompletedActivities:(id)activities
{
  activitiesCopy = activities;
  v45 = os_transaction_create();
  v5 = +[NSMutableSet set];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = activitiesCopy;
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
        name = [v6 name];
        v10 = [(NSMutableDictionary *)activityToIncompatibleActivitiesMap objectForKeyedSubscript:name];

        if (v10)
        {
          v11 = self->_activityToIncompatibleActivitiesMap;
          name2 = [v6 name];
          v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:name2];
          [v5 unionSet:v13];

          v14 = self->_activityToIncompatibleActivitiesMap;
          name3 = [v6 name];
          [(NSMutableDictionary *)v14 removeObjectForKey:name3];
        }

        objc_sync_exit(v7);

        if (_os_feature_enabled_impl())
        {
          internalGroupNames = [v6 internalGroupNames];
          v17 = [internalGroupNames count] == 0;

          if (v17)
          {
            goto LABEL_25;
          }

          os_unfair_lock_lock(&self->_groupLock);
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          internalGroupNames2 = [v6 internalGroupNames];
          v19 = [internalGroupNames2 countByEnumeratingWithState:&v59 objects:v69 count:16];
          if (v19)
          {
            v20 = *v60;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v60 != v20)
                {
                  objc_enumerationMutation(internalGroupNames2);
                }

                v22 = *(*(&v59 + 1) + 8 * j);
                groupToPendingTasks = self->_groupToPendingTasks;
                groupName = [v6 groupName];
                v25 = [(NSMutableDictionary *)groupToPendingTasks objectForKeyedSubscript:groupName];

                if (v25)
                {
                  v26 = [(NSMutableDictionary *)self->_groupToPendingTasks objectForKeyedSubscript:v22];
                  v27 = [v26 copy];
                  [v5 unionSet:v27];
                }
              }

              v19 = [internalGroupNames2 countByEnumeratingWithState:&v59 objects:v69 count:16];
            }

            while (v19);
          }

          goto LABEL_23;
        }

        groupName2 = [v6 groupName];

        if (!groupName2)
        {
          goto LABEL_25;
        }

        os_unfair_lock_lock(&self->_groupLock);
        v29 = self->_groupToPendingTasks;
        groupName3 = [v6 groupName];
        v31 = [(NSMutableDictionary *)v29 objectForKeyedSubscript:groupName3];

        if (v31)
        {
          v32 = self->_groupToPendingTasks;
          internalGroupNames2 = [v6 groupName];
          v33 = [(NSMutableDictionary *)v32 objectForKeyedSubscript:internalGroupNames2];
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

- (void)registerTriggersWithContextStoreForPolicies:(id)policies
{
  policiesCopy = policies;
  v30 = [&__NSDictionary0__struct mutableCopy];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = policiesCopy;
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
        triggers = [v31 triggers];
        if (triggers)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v5 = [triggers countByEnumeratingWithState:&v33 objects:v41 count:16];
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
                  objc_enumerationMutation(triggers);
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
                    unsignedIntegerValue = [v13 unsignedIntegerValue];
                    v15 = [v9 objectForKeyedSubscript:@"mustWake"];
                    bOOLValue = [v15 BOOLValue];
                    v17 = [v9 objectForKeyedSubscript:@"qualityOfService"];
                    if (v17)
                    {
                      v18 = [v9 objectForKeyedSubscript:@"qualityOfService"];
                      v19 = v32;
                      -[_DASDaemon registerWithContextStoreForId:contextualPredicate:dismissalCondition:deviceSet:mustWake:qualityOfService:](self, "registerWithContextStoreForId:contextualPredicate:dismissalCondition:deviceSet:mustWake:qualityOfService:", v10, v32, v12, unsignedIntegerValue, bOOLValue, [v18 unsignedIntegerValue]);
                    }

                    else
                    {
                      v19 = v32;
                      [(_DASDaemon *)self registerWithContextStoreForId:v10 contextualPredicate:v32 dismissalCondition:v12 deviceSet:unsignedIntegerValue mustWake:bOOLValue qualityOfService:17];
                    }

                    v7 = v27;
                    v6 = v28;
                  }

                  [v30 setObject:v31 forKeyedSubscript:v10];
                }

                v8 = v8 + 1;
              }

              while (v6 != v8);
              v6 = [triggers countByEnumeratingWithState:&v33 objects:v41 count:16];
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

- (void)addTriggersToActivity:(id)activity
{
  selfCopy = self;
  activityCopy = activity;
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
        if ([v10 appliesToActivity:{activityCopy, selfCopy}])
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

                    fileProtection = [activityCopy fileProtection];
                    none = [v11[404] none];
                    if ([fileProtection isEqual:none])
                    {

                      v14 = v32;
                      v13 = v33;
                      goto LABEL_25;
                    }

                    fileProtection2 = [activityCopy fileProtection];
                    [v11[404] completeUntilFirstUserAuthentication];
                    v21 = v8;
                    v22 = activityCopy;
                    v24 = v23 = v4;
                    v25 = [fileProtection2 isEqual:v24];

                    v4 = v23;
                    activityCopy = v22;
                    v8 = v21;
                    v11 = &pc_session_begin_ptr;

                    v14 = v32;
                    v13 = v33;
                    if ((v25 & 1) == 0)
                    {
LABEL_35:
                      if (([v17 isEqualToString:@"com.apple.duetactivityscheduler.cpuusagepolicy.cpuusagelevelchange"] & 1) == 0 && !objc_msgSend(v17, "isEqualToString:", @"com.apple.duetactivityscheduler.thermalpolicypolicy.thermalpressurechange") || (objc_msgSend(activityCopy, "bypassesPredictions") & 1) != 0 || (v26 = objc_msgSend(activityCopy, "schedulingPriority"), v26 >= _DASSchedulingPriorityUtility) || (objc_msgSend(activityCopy, "isIntensive") & 1) != 0 || objc_msgSend(activityCopy, "triggersRestart"))
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
    [(_DASDaemon *)selfCopy associateActivity:activityCopy withTriggerKeys:v4];
  }
}

- (void)associateActivity:(id)activity withTriggerKeys:(id)keys
{
  activityCopy = activity;
  keysCopy = keys;
  v8 = self->_triggerToActivitiesMap;
  objc_sync_enter(v8);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = keysCopy;
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
        [v17 _DAS_addOrReplaceObject:activityCopy];
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
        startBefore = [v10 startBefore];
        [startBefore timeIntervalSinceDate:v4];
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

- (id)getActivitiesToSkipFromCandidateActivities:(id)activities
{
  activitiesCopy = activities;
  v25 = +[NSMutableSet set];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = activitiesCopy;
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

        fastPass = [v10 fastPass];
        if (fastPass || ([v10 triggersRestart] & 1) != 0)
        {
LABEL_10:

          goto LABEL_11;
        }

        fastPass = [v10 internalGroupNames];
        if ([fastPass count])
        {
          schedulingPriority = [v10 schedulingPriority];
          v13 = _DASSchedulingPriorityDefault;

          if (schedulingPriority > v13)
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
            groupName = [v10 groupName];
            v22 = [(_DASDaemon *)self additionalCapacityForActivity:v10 inGroupWithName:groupName shouldTryToSuspend:0];

            if (!v22 && [v10 isPartOfCustomGroup])
            {
              [v25 addObject:v10];
            }
          }

          goto LABEL_11;
        }

        groupName2 = [v10 groupName];
        if (!groupName2)
        {
          goto LABEL_10;
        }

        v15 = groupName2;
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

- (void)chooseActivitiesToRunFromCandidateActivities:(id)activities toBeRunActivities:(id)runActivities toLaunchApplications:(id)applications toLaunchExtension:(id)extension
{
  activitiesCopy = activities;
  runActivitiesCopy = runActivities;
  applicationsCopy = applications;
  extensionCopy = extension;
  v28 = activitiesCopy;
  v11 = [(_DASDaemon *)self sortCandidateActivities:activitiesCopy];
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
                  [applicationsCopy addObject:v18];
                }

                else if ([v18 requestsExtensionLaunch])
                {
                  [extensionCopy addObject:v18];
                }

                else
                {
                  [runActivitiesCopy addObject:v18];
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

- (id)sortCandidateActivities:(id)activities
{
  context = self->_context;
  activitiesCopy = activities;
  v6 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
  v7 = [(_CDLocalContext *)context objectForKeyedSubscript:v6];
  bOOLValue = [v7 BOOLValue];

  v9 = [_DASPhotosPolicy isPhotosForegroundWithContext:self->_context];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000ED898;
  v14[3] = &unk_1001B8950;
  v15 = bOOLValue;
  v16 = v9;
  v14[4] = self;
  v10 = objc_retainBlock(v14);
  allObjects = [activitiesCopy allObjects];

  v12 = [allObjects sortedArrayUsingComparator:v10];

  return v12;
}

- (void)evaluateScoreAndRunActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = os_transaction_create();
  evaluationQueue = self->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EE060;
  block[3] = &unk_1001B56B8;
  v10 = v5;
  selfCopy = self;
  v12 = activitiesCopy;
  v7 = activitiesCopy;
  v8 = v5;
  dispatch_sync(evaluationQueue, block);
}

- (void)filterAndAddActivity:(id)activity toCandidateActivities:(id)activities orCancelActivities:(id)cancelActivities groupNames:(id)names allowsBackgroundTasks:(BOOL)tasks backupRequested:(BOOL)requested inADarkWake:(BOOL)wake isLPMEnforced:(BOOL)self0 now:(id)self1 externallyPowered:(BOOL)self2
{
  activityCopy = activity;
  activitiesCopy = activities;
  cancelActivitiesCopy = cancelActivities;
  namesCopy = names;
  nowCopy = now;
  if (wake)
  {
    if (([activityCopy darkWakeEligible] & 1) == 0 && (objc_msgSend(activityCopy, "triggersRestart") & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([activityCopy userRequestedBackupTask])
  {
    if (!requested)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ([activityCopy skipEvaluationIfUnplugged] && !powered)
  {
    goto LABEL_9;
  }

  fileProtection = [activityCopy fileProtection];

  if (fileProtection)
  {
    v24 = +[_DASFileProtectionPolicy policyInstance];
    v25 = [v24 responseForActivity:activityCopy withState:self->_context];

    policyDecision = [v25 policyDecision];
    if (policyDecision == 33)
    {
      goto LABEL_9;
    }
  }

  if ([activityCopy requiresNetwork])
  {
    if (![activityCopy targetDevice])
    {
      v27 = +[_DASNetworkEvaluationMonitor sharedInstance];
      v28 = [v27 isNetworkPathAvailableForActivity:activityCopy];

      if (!v28)
      {
        goto LABEL_9;
      }
    }
  }

  if (![(_DASDaemon *)self isActivity:activityCopy timewiseEligibleAt:nowCopy])
  {
    goto LABEL_9;
  }

  if ([activityCopy cancelAfterDeadline])
  {
    startBefore = [activityCopy startBefore];
    [nowCopy timeIntervalSinceDate:startBefore];
    v31 = v30;

    v22 = cancelActivitiesCopy;
    if (v31 > 0.0)
    {
      goto LABEL_8;
    }
  }

  if ([activityCopy bypassesPredictions])
  {
LABEL_7:
    internalGroupNames = [activityCopy internalGroupNames];
    [namesCopy unionSet:internalGroupNames];

    v22 = activitiesCopy;
LABEL_8:
    [v22 addObject:activityCopy];
    goto LABEL_9;
  }

  if (!enforced)
  {
    goto LABEL_41;
  }

  if ([_DASPhotosPolicy isiCPLActivity:activityCopy])
  {
    goto LABEL_41;
  }

  schedulingPriority = [activityCopy schedulingPriority];
  if (schedulingPriority >= _DASSchedulingPriorityUserInitiated)
  {
    goto LABEL_41;
  }

  startBefore2 = [activityCopy startBefore];
  startAfter = [activityCopy startAfter];
  [startBefore2 timeIntervalSinceDate:startAfter];
  v36 = v35;

  startAfter2 = [activityCopy startAfter];
  [startAfter2 timeIntervalSinceNow];
  v39 = v38;

  schedulingPriority2 = [activityCopy schedulingPriority];
  if (schedulingPriority2 >= _DASSchedulingPriorityUtility)
  {
    v41 = 1.0;
    if (v36 >= 1.0)
    {
      v41 = v36;
    }

    if (-v39 / v41 >= 0.9)
    {
LABEL_41:
      remoteDevice = [activityCopy remoteDevice];
      if (!remoteDevice || (v43 = remoteDevice, v44 = [activityCopy targetDevice], v43, v44 != 3) || (objc_msgSend(activityCopy, "remoteDevice"), v45 = objc_claimAutoreleasedReturnValue(), v46 = -[_DASRemoteDeviceNearbyMonitor isRemoteDeviceNearby:](self->_remoteDeviceNearbyMonitor, "isRemoteDeviceNearby:", v45), v45, v46))
      {
        if (([activityCopy hasManyConstraints] & 1) == 0)
        {
          startBefore3 = [activityCopy startBefore];
          [startBefore3 timeIntervalSinceDate:nowCopy];
          if (v48 > 1800.0 && ([activityCopy lastScored], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v50 = v49;
            lastScored = [activityCopy lastScored];
            [nowCopy timeIntervalSinceDate:lastScored];
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

- (void)unprotectedEvaluateScoreAndRunActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = objc_autoreleasePoolPush();
  if ([activitiesCopy count])
  {
    v47 = v5;
    v55 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [activitiesCopy count]);
    v46 = +[NSMutableSet set];
    v45 = +[NSMutableSet set];
    v44 = +[NSMutableSet set];
    v52 = +[NSMutableSet set];
    v54 = +[NSDate date];
    v6 = +[_DASRequiresPluggedInPolicy policyInstance];
    isExternallyPowered = [v6 isExternallyPowered];

    context = self->_context;
    v9 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
    v10 = [(_CDLocalContext *)context objectForKeyedSubscript:v9];
    bOOLValue = [v10 BOOLValue];

    inADarkWake = [(_DASSleepWakeMonitor *)self->_sleepWakeMonitor inADarkWake];
    [(_DASSleepWakeMonitor *)self->_sleepWakeMonitor wakeState];
    v13 = IOPMAllowsBackgroundTask();
    v14 = +[_DASLowPowerModePolicy policyInstance];
    v15 = [v14 isLowPowerModePolicyEnforced:self->_context];

    v16 = +[NSMutableSet set];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v48 = activitiesCopy;
    obj = activitiesCopy;
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

          LOBYTE(v43) = isExternallyPowered;
          BYTE1(v42) = v15;
          LOBYTE(v42) = inADarkWake;
          [(_DASDaemon *)self filterAndAddActivity:*(*(&v68 + 1) + 8 * i) toCandidateActivities:v55 orCancelActivities:v52 groupNames:v16 allowsBackgroundTasks:v13 backupRequested:bOOLValue inADarkWake:v42 isLPMEnforced:v54 now:v43 externallyPowered:?];
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

          LOBYTE(v43) = isExternallyPowered;
          BYTE1(v42) = v15;
          LOBYTE(v42) = inADarkWake;
          [(_DASDaemon *)self filterAndAddActivity:*(*(&v60 + 1) + 8 * k) toCandidateActivities:v55 orCancelActivities:v52 groupNames:v53 allowsBackgroundTasks:v13 backupRequested:bOOLValue inADarkWake:v42 isLPMEnforced:v54 now:v43 externallyPowered:?];
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
    activitiesCopy = v48;
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

- (void)evaluateScoreAndRunAllActivitiesForReason:(id)reason
{
  reasonCopy = reason;
  v5 = os_transaction_create();
  evaluationQueue = self->_evaluationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EEBDC;
  block[3] = &unk_1001B56B8;
  v10 = v5;
  selfCopy = self;
  v12 = reasonCopy;
  v7 = reasonCopy;
  v8 = v5;
  dispatch_sync(evaluationQueue, block);
}

- (BOOL)shouldPreemptActivity:(id)activity forFastPassActivity:(id)passActivity
{
  activityCopy = activity;
  passActivityCopy = passActivity;
  fastPass = [passActivityCopy fastPass];
  if (!fastPass)
  {
    goto LABEL_6;
  }

  v9 = fastPass;
  fastPass2 = [activityCopy fastPass];

  if (fastPass2)
  {
    goto LABEL_6;
  }

  startDate = [activityCopy startDate];
  v12 = [(_DASDaemon *)self isActivitySuspendable:activityCopy withStartDate:startDate];

  if (v12)
  {
    fastPass3 = [passActivityCopy fastPass];
    processingTaskIdentifiers = [fastPass3 processingTaskIdentifiers];
    if (processingTaskIdentifiers)
    {
      fastPass4 = [passActivityCopy fastPass];
      processingTaskIdentifiers2 = [fastPass4 processingTaskIdentifiers];
      name = [activityCopy name];
      v18 = [processingTaskIdentifiers2 containsObject:name];
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

- (BOOL)isActivitySuspendable:(id)suspendable withStartDate:(id)date
{
  suspendableCopy = suspendable;
  suspendRequestDate = [suspendableCopy suspendRequestDate];
  if (suspendRequestDate || (v10 = [suspendableCopy schedulingPriority], !date) || v10 > _DASSchedulingPriorityDefault)
  {
  }

  else
  {
    name = [suspendableCopy name];

    if (name && (![_DASPhotosPolicy isiCPLActivity:suspendableCopy]|| ![_DASPhotosPolicy isPhotosSyncOverriddenWithContext:self->_context]))
    {
      testModeParameters = [(_DASDaemon *)self testModeParameters];
      if (!testModeParameters || (v13 = testModeParameters, v14 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:suspendableCopy], v13, (v14 & 1) == 0))
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

- (id)candidateGroupActivityForPreemption:(id)preemption
{
  preemptionCopy = preemption;
  v4 = +[NSDate distantPast];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = preemptionCopy;
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
      schedulingPriority = [v11 schedulingPriority];
      if (schedulingPriority <= _DASSchedulingPriorityDefault)
      {
        if ([v11 suspendable])
        {
          startDate = [v11 startDate];
          if (startDate)
          {
            v14 = startDate;
            suspendRequestDate = [v11 suspendRequestDate];

            if (!suspendRequestDate)
            {
              startDate2 = [v11 startDate];
              [startDate2 timeIntervalSinceDate:v4];
              v18 = v17;

              if (v18 > 0.0)
              {
                startDate3 = [v11 startDate];

                v20 = v11;
                v8 = v20;
                v4 = startDate3;
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

- (id)tasksNoLongerEligibleFromTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = +[NSDate date];
  v54 = +[NSMutableSet set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v6 = tasksCopy;
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

        startDate = [v11 startDate];

        if (startDate)
        {
          startDate2 = [v11 startDate];
          [v5 timeIntervalSinceDate:startDate2];
          v16 = v15 / 60.0;

          if (v16 > 60.0 && v16 < 70.0)
          {
            maximumRuntime = [v11 maximumRuntime];
            v18 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = maximumRuntime;
              suspendRequestDate = [v11 suspendRequestDate];
              v21 = [NSNumber numberWithDouble:v19 / 60.0];
              *buf = 138544130;
              v63 = v11;
              v64 = 2048;
              v65 = v16;
              v66 = 1024;
              v67 = suspendRequestDate != 0;
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
              suspendRequestDate2 = [v11 suspendRequestDate];
              *buf = 138543874;
              v63 = v11;
              v64 = 2048;
              v65 = v16;
              v66 = 1024;
              v67 = suspendRequestDate2 != 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ running for %lf mins (suspendRequested=%u)", buf, 0x1Cu);
            }
          }

          if (v16 > 120.0 && v16 < 130.0)
          {
            v25 = [_DASDaemonLogger logForCategory:@"lifecycle"];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              suspendRequestDate3 = [v11 suspendRequestDate];
              *buf = 138543874;
              v63 = v11;
              v64 = 2048;
              v65 = v16;
              v66 = 1024;
              v67 = suspendRequestDate3 != 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ running for %lf mins (suspendRequested=%u)", buf, 0x1Cu);
            }
          }
        }

        [(_DASShadowPolicyEvaluator *)self->_shadowPolicyEvaluator reportShadowEvaluationForPolicy:1 forActivity:v11 atDate:v5];
        suspendRequestDate4 = [v11 suspendRequestDate];

        if (!suspendRequestDate4)
        {
          runtimeLimiter = self->_runtimeLimiter;
          startDate3 = [v11 startDate];
          v30 = [(_DASRuntimeLimiter *)runtimeLimiter shouldLimitActivityAtRuntime:v11 whileBlockingOtherTasks:0 withStartDate:startDate3 atDate:v5 withContext:self->_context];

          if (v30 && [v30 decision]== 3)
          {
            v31 = self->_runtimeLimiter;
            v61 = v30;
            v32 = [NSArray arrayWithObjects:&v61 count:1];
            LODWORD(v31) = [(_DASRuntimeLimiter *)v31 limitedActivity:v11 withLimitsResponses:v32];

            if (v31)
            {
              testModeParameters = [(_DASDaemon *)self testModeParameters];
              if (testModeParameters && (v34 = testModeParameters, v35 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:v11], v34, (v35 & 1) != 0))
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
              testModeParameters2 = [(_DASDaemon *)self testModeParameters];
              if (testModeParameters2)
              {
                v38 = testModeParameters2;
                v39 = [(_DASDaemon *)self testModeConstraintsApplyToActivity:v11];

                if (v39)
                {
                  v40 = +[NSMutableArray array];
                  v41 = +[NSMutableArray array];
                  policyScores = [v11 policyScores];
                  v43 = [(_DASDaemon *)self testModeConstraintsRequireOverridingDecisionWithScores:policyScores ignoredPolicies:v40 honoredPolicies:v41];

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

- (void)updateSuspendRequestDate:(id)date forActivity:(id)activity withReason:(id)reason
{
  activityCopy = activity;
  reasonCopy = reason;
  [activityCopy setSuspendRequestDate:date];
  v10 = +[_DASPLLogger sharedInstance];
  [v10 recordActivityLifeCycleSuspend:activityCopy];

  [_DASMetricRecorder incrementOccurrencesForKey:@"com.apple.das.suspensioncount" byCount:1];
  if ([reasonCopy isEqualToString:@"Limitations"])
  {
    [activityCopy setLastDenialValue:{objc_msgSend(activityCopy, "lastDenialValue") | +[_DASPolicyManager bitmaskForPolicy:](_DASPolicyManager, "bitmaskForPolicy:", @"Limitations"}];
    telemetryQueue = self->_telemetryQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EFD10;
    block[3] = &unk_1001B5668;
    v14 = activityCopy;
    dispatch_async(telemetryQueue, block);
  }

  else
  {
    v12 = @"Sysdiagnose";
    if ([reasonCopy isEqualToString:@"Sysdiagnose"] || (v12 = @"Preemption", objc_msgSend(reasonCopy, "isEqualToString:", @"Preemption")) || (v12 = @"Incompatibility", objc_msgSend(reasonCopy, "isEqualToString:", @"Incompatibility")))
    {
      [activityCopy setLastDenialValue:{objc_msgSend(activityCopy, "lastDenialValue") | +[_DASPolicyManager bitmaskForPolicy:](_DASPolicyManager, "bitmaskForPolicy:", v12)}];
    }
  }
}

- (void)reportPostRestoreCheckpoint:(unint64_t)checkpoint withParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = kBGSTKeyTaskName;
  v7 = [parametersCopy objectForKeyedSubscript:kBGSTKeyTaskName];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = [parametersCopy objectForKeyedSubscript:v6];
  v10 = v9;
  if (isKindOfClass)
  {
    firstObject = [v9 firstObject];
  }

  else
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      firstObject = [parametersCopy objectForKeyedSubscript:v6];
    }

    else
    {
      firstObject = 0;
    }
  }

  v13 = kBGSTKeyFeatureCode;
  v14 = [parametersCopy objectForKeyedSubscript:kBGSTKeyFeatureCode];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  v16 = [parametersCopy objectForKeyedSubscript:v13];
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    v29 = v16;
    v18 = [NSArray arrayWithObjects:&v29 count:1];

    v17 = v18;
  }

  v19 = kBGSTKeyInvolvedProcesses;
  v20 = [parametersCopy objectForKeyedSubscript:kBGSTKeyInvolvedProcesses];
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();

  v22 = [parametersCopy objectForKeyedSubscript:v19];
  v23 = v22;
  if ((v21 & 1) == 0)
  {
    v28 = v22;
    v24 = [NSArray arrayWithObjects:&v28 count:1];

    v23 = v24;
  }

  if (checkpoint == 30)
  {
    v25 = [parametersCopy objectForKeyedSubscript:kBGSTKeyPaused];
    bOOLValue = [v25 BOOLValue];

    if (bOOLValue)
    {
      checkpoint = 50;
    }

    else
    {
      checkpoint = 30;
    }
  }

  v27 = +[_DASPostRestoreBUILogger sharedInstance];
  [v27 reportState:checkpoint forTaskName:firstObject featureCode:v17 involvedProcesses:v23];
}

- (void)activityStartedWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v4 = [parametersCopy objectForKeyedSubscript:kBGSTKeyFeatureCode];

  if (v4)
  {
    [(_DASDaemon *)self reportPostRestoreCheckpoint:20 withParameters:parametersCopy];
  }

  [(_DASBudgetManager *)self->_budgetManager reportActivityRunningWithParameters:parametersCopy];
}

- (void)activityStoppedWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKeyedSubscript:kBGSTKeyFeatureCode];

  if (v5)
  {
    [(_DASDaemon *)self reportPostRestoreCheckpoint:30 withParameters:parametersCopy];
  }

  [(_DASBudgetManager *)self->_budgetManager reportActivityNoLongerRunningWithParameters:parametersCopy];
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
  [parametersCopy enumerateKeysAndObjectsUsingBlock:v6];
  _Block_object_dispose(v7, 8);

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
}

- (void)reportOversizeLoadSymptomForActivity:(id)activity atStart:(BOOL)start
{
  startCopy = start;
  activityCopy = activity;
  uploadSize = [activityCopy uploadSize];
  downloadSize = [activityCopy downloadSize];
  if ([activityCopy noTransferSizeSpecified])
  {
    downloadSize = _DASActivityTransferSizeSmall;
  }

  if ([_DASNetworkQualityPolicy shouldReportOversizeLoadForTransferSize:&uploadSize[downloadSize] withContext:self->_context])
  {
    name = [activityCopy name];
    uTF8String = [name UTF8String];
    symptom_create();
    symptom_set_qualifier();
    symptom_set_qualifier();
    symptom_set_qualifier();
    strlen(uTF8String);
    symptom_set_additional_qualifier();
    v11 = symptom_send();
    v12 = [_DASDaemonLogger logForCategory:@"networkbudgeting"];
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10012B820(activityCopy);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [activityCopy name];
      v15 = [NSNumber numberWithUnsignedInteger:uploadSize];
      v16 = [NSNumber numberWithUnsignedInteger:downloadSize];
      v17 = v16;
      v18 = @"end";
      v19 = 138413058;
      v20 = name2;
      v21 = 2112;
      if (startCopy)
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

- (void)reportActivityTiming:(id)timing
{
  timingCopy = timing;
  v6 = +[NSDate date];
  v7 = timingCopy;
  v4 = timingCopy;
  v5 = v6;
  AnalyticsSendEventLazy();
}

- (void)reportSystemWorkload:(unint64_t)workload ofCategory:(unint64_t)category withHandler:(id)handler
{
  handlerCopy = handler;
  v8 = +[_DASSystemWorkloadRecorder sharedInstance];
  v11 = 0;
  v9 = [v8 recordWorkload:workload ofCategory:category error:&v11];
  v10 = v11;

  handlerCopy[2](handlerCopy, v9, v10);
}

- (void)reportFeatureCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature atDate:(id)date withHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  v11 = +[_DASClientMetricsRecorder sharedInstance];
  v14 = 0;
  v12 = [v11 reportFeatureCheckpoint:checkpoint forFeature:feature atDate:dateCopy error:&v14];

  v13 = v14;
  handlerCopy[2](handlerCopy, v12, v13);
}

- (void)reportCustomCheckpoint:(unint64_t)checkpoint forTask:(id)task withHandler:(id)handler
{
  handlerCopy = handler;
  taskCopy = task;
  v9 = +[_DASClientMetricsRecorder sharedInstance];
  v12 = 0;
  v10 = [v9 reportCustomCheckpoint:checkpoint forTask:taskCopy error:&v12];

  v11 = v12;
  handlerCopy[2](handlerCopy, v10, v11);
}

- (void)reportThroughputMetricsForIdentifier:(id)identifier taskName:(id)name itemCount:(unint64_t)count totalDuration:(double)duration qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0
{
  handlerCopy = handler;
  valueCopy = value;
  qosCopy = qos;
  nameCopy = name;
  identifierCopy = identifier;
  v22 = +[_DASClientMetricsRecorder sharedInstance];
  v25 = 0;
  v23 = [v22 reportThroughputMetricsForIdentifier:identifierCopy taskName:nameCopy itemCount:count totalDuration:qosCopy qos:category workloadCategory:valueCopy expectedValue:duration error:&v25];

  v24 = v25;
  handlerCopy[2](handlerCopy, v23, v24);
}

- (void)reportProgressMetricsForIdentifier:(id)identifier taskName:(id)name itemsCompleted:(id)completed totalItemCount:(id)count qos:(id)qos workloadCategory:(unint64_t)category expectedValue:(id)value withHandler:(id)self0
{
  handlerCopy = handler;
  valueCopy = value;
  qosCopy = qos;
  countCopy = count;
  completedCopy = completed;
  nameCopy = name;
  identifierCopy = identifier;
  v23 = +[_DASClientMetricsRecorder sharedInstance];
  v26 = 0;
  v24 = [v23 reportProgressMetricsForIdentifier:identifierCopy taskName:nameCopy itemsCompleted:completedCopy totalItemCount:countCopy qos:qosCopy workloadCategory:category expectedValue:valueCopy error:&v26];

  v25 = v26;
  handlerCopy[2](handlerCopy, v24, v25);
}

- (void)extensionActivity:(id)activity finishedWithStatus:(unsigned __int8)status
{
  statusCopy = status;
  activityCopy = activity;
  v7 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = activityCopy;
    v12 = 1024;
    v13 = statusCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ finished with status %hhu", &v10, 0x12u);
  }

  extensionIdentifier = [activityCopy extensionIdentifier];
  v9 = [_DASPlugin existingPluginForIdentifier:extensionIdentifier ofType:@"com.apple.ml-extension"];

  [v9 unload];
  if (statusCopy == 2)
  {
    [(_DASDaemon *)self activityCanceled:activityCopy];
    [(_DASDaemon *)self submitActivity:activityCopy];
  }

  else
  {
    [(_DASDaemon *)self activityCompleted:activityCopy];
  }
}

- (void)prewarmApplication:(id)application
{
  applicationCopy = application;
  v3 = +[_APRSPrewarmInterface sharedInstance];
  v4 = [v3 prewarmLaunchAppFromBundleID:applicationCopy];
}

- (void)prewarmSuspendApplication:(id)application withHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  v7 = +[_APRSPrewarmInterface sharedInstance];
  [v7 invalidatePrewarmAssertionForApplication:applicationCopy onInvalidation:handlerCopy];
}

- (void)_unexpectedXPCObject:(id)object WithLog:(id)log
{
  logCopy = log;
  v5 = xpc_dictionary_copy_basic_description();
  v6 = [_DASDaemonLogger logForCategory:@"lifecycle"];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10012B8AC();
  }

  free(v5);
}

- (void)_prewarmSuspendForMessage:(id)message
{
  messageCopy = message;
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v16 = v5;
  v17 = v5;
  xpc_dictionary_get_audit_token();
  if (DWORD1(v17) == -1)
  {
    [(_DASDaemon *)self _unexpectedXPCObject:messageCopy WithLog:@"Prewarm suspend failed to fetch audit token"];
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
        bundle = [v7 bundle];
        identifier = [bundle identifier];
        *buf = 138412290;
        v19 = identifier;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Suspending prewarm for %@", buf, 0xCu);
      }

      v9 = +[_APRSPrewarmInterface sharedInstance];
      bundle2 = [v7 bundle];
      identifier2 = [bundle2 identifier];
      [v9 invalidatePrewarmAssertionForApplication:identifier2];
    }

    else if (v10)
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Prewarm suspend failed to fetch handle with error %@", buf, 0xCu);
    }
  }
}

- (void)_prewarmSuspendHandleIncoming:(id)incoming onConnection:(id)connection
{
  incomingCopy = incoming;
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_prewarmInvalidationLock);
  if (xpc_get_type(incomingCopy) == &_xpc_type_dictionary)
  {
    [(_DASDaemon *)self _prewarmSuspendForMessage:incomingCopy];
    reply = xpc_dictionary_create_reply(incomingCopy);
    v9 = reply;
    if (connectionCopy && reply)
    {
      xpc_connection_send_message(connectionCopy, reply);
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

  if (incomingCopy == &_xpc_error_connection_invalid)
  {
    [(NSMutableSet *)self->_prewarmInvalidationConnections removeObject:connectionCopy];
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

  [(_DASDaemon *)self _unexpectedXPCObject:incomingCopy WithLog:@"Prewarm suspend connection received unexpected message"];
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