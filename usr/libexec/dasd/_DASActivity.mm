@interface _DASActivity
+ (id)activityFromDASBGSystemTask:(id)task withClientOffset:(double)offset;
+ (void)initialize;
- (void)linkToBGSystemTask:(id)task;
@end

@implementation _DASActivity

+ (void)initialize
{
  v2 = [_DASDaemonLogger logForCategory:@"BGST"];
  v3 = qword_10020B560;
  qword_10020B560 = v2;

  _objc_release_x1(v2, v3);
}

+ (id)activityFromDASBGSystemTask:(id)task withClientOffset:(double)offset
{
  taskCopy = task;
  priority = [taskCopy priority];
  if (priority < 2)
  {
    v7 = &_DASSchedulingPriorityMaintenance;
    goto LABEL_7;
  }

  if (priority == 2)
  {
    v7 = &_DASSchedulingPriorityUtility;
    goto LABEL_7;
  }

  if (priority == 3)
  {
    v7 = &_DASSchedulingPriorityUserInitiated;
LABEL_7:
    v8 = *v7;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  eligibleTime = [taskCopy eligibleTime];
  deadlineTime = [taskCopy deadlineTime];
  if (offset == 0.0)
  {
    goto LABEL_14;
  }

  if (offset == 64000000.0)
  {
    v11 = +[NSDate distantFuture];

    v12 = +[NSDate distantFuture];
    eligibleTime = v11;
LABEL_13:

    deadlineTime = v12;
    goto LABEL_14;
  }

  v13 = +[NSDate date];
  v14 = [v13 dateByAddingTimeInterval:offset];

  [deadlineTime timeIntervalSinceDate:v14];
  if (v15 < 0.0)
  {
    v12 = v14;
    eligibleTime = v12;
    goto LABEL_13;
  }

  eligibleTime = v14;
LABEL_14:
  name = [taskCopy name];
  [taskCopy expected_duration];
  v18 = [_DASActivity activityWithName:name priority:v8 duration:v17 startingAfter:eligibleTime startingBefore:deadlineTime];
  [v18 setUserIdentifier:{objc_msgSend(taskCopy, "uid")}];
  related_applications = [taskCopy related_applications];
  [v18 setRelatedApplications:related_applications];

  serviceName = [taskCopy serviceName];
  [v18 setServiceName:serviceName];

  rateLimitConfigurationName = [taskCopy rateLimitConfigurationName];
  [v18 setRateLimitConfigurationName:rateLimitConfigurationName];

  involved_processes = [taskCopy involved_processes];
  [v18 setInvolvedProcesses:involved_processes];

  [v18 setRunOnAppForeground:{objc_msgSend(taskCopy, "runOnAppForeground")}];
  [v18 setRunWhenAppLaunchUnlikely:{objc_msgSend(taskCopy, "runWhenAppLaunchUnlikely")}];
  [v18 setRequestsImmediateRuntime:{objc_msgSend(taskCopy, "requestsImmediateRuntime")}];
  [v18 setRequestsApplicationLaunch:{objc_msgSend(taskCopy, "requestsApplicationLaunch")}];
  [v18 setBudgeted:{objc_msgSend(taskCopy, "duet_power_budgeted")}];
  [v18 setBeforeApplicationLaunch:{objc_msgSend(taskCopy, "beforeApplicationLaunch")}];
  [v18 setDataBudgeted:{objc_msgSend(taskCopy, "data_budgeted")}];
  dataBudgetName = [taskCopy dataBudgetName];
  [v18 setClientDataBudgetName:dataBudgetName];

  group_name = [taskCopy group_name];

  if (group_name)
  {
    group_name2 = [taskCopy group_name];
    [v18 setGroupName:group_name2];
  }

  if ([taskCopy type] == 2)
  {
    [taskCopy interval];
    [v18 setInterval:?];
  }

  featureCodes = [taskCopy featureCodes];

  if (featureCodes)
  {
    featureCodes2 = [taskCopy featureCodes];
    [v18 setFeatureCodes:featureCodes2];
  }

  if ([taskCopy requires_protection_class] == 1)
  {
    v28 = +[_DASFileProtection complete];
  }

  else if ([taskCopy requires_protection_class] == 2)
  {
    v28 = +[_DASFileProtection completeUnlessOpen];
  }

  else if ([taskCopy requires_protection_class] == 4)
  {
    v28 = +[_DASFileProtection completeUntilFirstUserAuthentication];
  }

  else
  {
    if ([taskCopy requires_protection_class] != 3)
    {
      goto LABEL_30;
    }

    v28 = +[_DASFileProtection completeWhenUserInactive];
  }

  v29 = v28;
  [v18 setFileProtection:v28];

LABEL_30:
  [v18 setRequiresBuddyComplete:{objc_msgSend(taskCopy, "requires_buddy_complete")}];
  if ([taskCopy shouldWakeDevice])
  {
    [v18 setSchedulingPriority:_DASSchedulingPriorityDefault];
  }

  [v18 setShouldWakeDevice:{objc_msgSend(taskCopy, "shouldWakeDevice")}];
  [v18 setDarkWakeEligible:{objc_msgSend(taskCopy, "power_nap")}];
  [v18 setBeforeDaysFirstActivity:{objc_msgSend(taskCopy, "app_refresh")}];
  [v18 setRequiresSignificantUserInactivity:{objc_msgSend(taskCopy, "requires_significant_user_inactivity")}];
  [v18 setRequiresDeviceInactivity:{objc_msgSend(taskCopy, "requiresUserInactivity")}];
  [v18 setPreventDeviceSleep:{objc_msgSend(taskCopy, "prevents_device_sleep")}];
  [v18 setRequiresPlugin:{objc_msgSend(taskCopy, "requiresExternalPower")}];
  [v18 setTriggersRestart:{objc_msgSend(taskCopy, "may_reboot_device")}];
  if ([taskCopy resource_intensive])
  {
    if ([taskCopy resources])
    {
      [v18 setCpuIntensive:{objc_msgSend(taskCopy, "resources") & 1}];
      [v18 setMemoryIntensive:{(objc_msgSend(taskCopy, "resources") >> 1) & 1}];
      [v18 setDiskIntensive:{(objc_msgSend(taskCopy, "resources") >> 2) & 1}];
      [v18 setAneIntensive:{(objc_msgSend(taskCopy, "resources") >> 3) & 1}];
      [v18 setGpuIntensive:{(objc_msgSend(taskCopy, "resources") >> 4) & 1}];
    }

    else
    {
      [v18 setCpuIntensive:1];
    }
  }

  [v18 setRequiresNetwork:{objc_msgSend(taskCopy, "requires_network_connectivity")}];
  [v18 setRequiresInexpensiveNetworking:{objc_msgSend(taskCopy, "requires_inexpensive_network")}];
  [v18 setRequiresUnconstrainedNetworking:{objc_msgSend(taskCopy, "requires_unconstrained_network")}];
  if ([taskCopy expected_network_download_size_bytes])
  {
    [v18 setDownloadSize:{objc_msgSend(taskCopy, "expected_network_download_size_bytes") / 1024}];
  }

  if ([taskCopy expected_network_upload_size_bytes])
  {
    [v18 setUploadSize:{objc_msgSend(taskCopy, "expected_network_upload_size_bytes") / 1024}];
  }

  [v18 setUserRequestedBackupTask:{objc_msgSend(taskCopy, "user_requested_backup_task")}];
  if ([taskCopy targetDevice] == 1)
  {
    v30 = 1;
  }

  else if ([taskCopy targetDevice] == 2)
  {
    v30 = 2;
  }

  else if ([taskCopy targetDevice] == 3)
  {
    v30 = 3;
  }

  else
  {
    v30 = 0;
  }

  [v18 setTargetDevice:v30];
  remoteDevice = [taskCopy remoteDevice];
  [v18 setRemoteDevice:remoteDevice];

  [v18 setRequiresRemoteDeviceWake:{objc_msgSend(taskCopy, "requiresRemoteDeviceWake")}];
  if ([taskCopy communicates_with_paired_device])
  {
    [v18 setTargetDevice:1];
  }

  produced_result_identifiers = [taskCopy produced_result_identifiers];
  [v18 setProducedResultIdentifiers:produced_result_identifiers];

  dependencies = [taskCopy dependencies];
  [v18 setDependencies:dependencies];

  diskVolume = [taskCopy diskVolume];
  [v18 setDiskVolume:diskVolume];

  if ([taskCopy run_on_motion_state] && objc_msgSend(taskCopy, "run_on_motion_state") - 1 <= 6)
  {
    [v18 setMotionState:{objc_msgSend(taskCopy, "run_on_motion_state")}];
  }

  if ([taskCopy backlogged])
  {
    [v18 setBacklogged:{objc_msgSend(taskCopy, "backlogged")}];
  }

  if ([taskCopy type] == 3)
  {
    v35 = objc_opt_new();
    [v18 setFastPass:v35];

    processingTaskIdentifiers = [taskCopy processingTaskIdentifiers];
    fastPass = [v18 fastPass];
    [fastPass setProcessingTaskIdentifiers:processingTaskIdentifiers];

    semanticVersion = [taskCopy semanticVersion];
    fastPass2 = [v18 fastPass];
    [fastPass2 setSemanticVersion:semanticVersion];

    if ([taskCopy resource_intensive])
    {
      [v18 setGpuIntensive:0];
      [v18 setAneIntensive:0];
      [v18 setDiskIntensive:0];
      [v18 setMemoryIntensive:0];
      [v18 setCpuIntensive:0];
      [v18 setRequiresDeviceInactivity:0];
    }

    [v18 setPreventDeviceSleep:1];
  }

  userInfo = [v18 userInfo];
  v41 = [userInfo mutableCopy];

  if (!v41)
  {
    v41 = objc_alloc_init(NSMutableDictionary);
  }

  network_endpoint = [taskCopy network_endpoint];

  if (network_endpoint)
  {
    network_endpoint2 = [taskCopy network_endpoint];
    v44 = [NWEndpoint endpointWithCEndpoint:network_endpoint2];
    [v41 setObject:v44 forKeyedSubscript:kNWEndpointKey];

    network_parameters = [taskCopy network_parameters];

    if (network_parameters)
    {
      network_parameters2 = [taskCopy network_parameters];
      v47 = [NWParameters parametersWithCParameters:network_parameters2];
      [v41 setObject:v47 forKeyedSubscript:kNWParametersKey];
    }
  }

  if ([taskCopy resources])
  {
    resourcesDescription = [taskCopy resourcesDescription];
    [v41 setObject:resourcesDescription forKeyedSubscript:_DASResourcesKey];
  }

  if ([taskCopy overrideRateLimiting])
  {
    v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [taskCopy overrideRateLimiting]);
    [v41 setObject:v49 forKeyedSubscript:_DASOverrideRateLimitingKey];
  }

  if ([taskCopy magneticInterferenceSensitivity])
  {
    v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [taskCopy magneticInterferenceSensitivity]);
    [v41 setObject:v50 forKeyedSubscript:_DASCTSMagneticInterferenceSensitivityKey];
  }

  if ([taskCopy mailFetch])
  {
    v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [taskCopy mailFetch]);
    [v41 setObject:v51 forKeyedSubscript:_DASCTSMailFetchKey];
  }

  if ([taskCopy bypassPeakPower])
  {
    v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [taskCopy bypassPeakPower]);
    [v41 setObject:v52 forKeyedSubscript:_DASCTSBypassPeakPowerPressureKey];
  }

  if ([taskCopy bypassBatteryAging])
  {
    v53 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [taskCopy bypassBatteryAging]);
    [v41 setObject:v53 forKeyedSubscript:_DASCTSBypassBatteryAgingProtectionKey];
  }

  if ([taskCopy requiresMinimumBatteryLevel])
  {
    v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [taskCopy requiresMinimumBatteryLevel]);
    [v41 setObject:v54 forKeyedSubscript:_DASCTSMinBatteryLevelKey];
  }

  if ([taskCopy requiresMinimumDataBudgetPercentage])
  {
    v55 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [taskCopy requiresMinimumDataBudgetPercentage] / 100.0);
    [v41 setObject:v55 forKeyedSubscript:_DASCTSMinDataBudgetPercentRemainingKey];
  }

  if ([taskCopy blockRebootActivitiesForSU])
  {
    v56 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [taskCopy blockRebootActivitiesForSU]);
    [v41 setObject:v56 forKeyedSubscript:_DASCTSBlockRebootActivitiesForSUKey];
  }

  if ([taskCopy useStatisticalModelForTriggersRestart])
  {
    v57 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [taskCopy useStatisticalModelForTriggersRestart]);
    [v41 setObject:v57 forKeyedSubscript:_DASCTSUseStatisticalModelForRestartTasksKey];
  }

  context = [taskCopy context];

  if (context)
  {
    context2 = [taskCopy context];
    [v41 setObject:context2 forKeyedSubscript:_DASContextKey];
  }

  if ([v41 count])
  {
    [v18 setUserInfo:v41];
  }

  v60 = +[_DASBGSystemTaskHelper sharedInstance];
  activityQueue = [v60 activityQueue];
  [v18 setHandlerQueue:activityQueue];

  [v18 setDelayedStart:1];
  [v18 linkToBGSystemTask:taskCopy];
  v62 = v18;

  return v18;
}

- (void)linkToBGSystemTask:(id)task
{
  taskCopy = task;
  objc_initWeak(&location, taskCopy);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100082160;
  v7[3] = &unk_1001B70D8;
  objc_copyWeak(&v8, &location);
  [(_DASActivity *)self setStartHandler:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000822B8;
  v5[3] = &unk_1001B70D8;
  objc_copyWeak(&v6, &location);
  [(_DASActivity *)self setSuspendHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end