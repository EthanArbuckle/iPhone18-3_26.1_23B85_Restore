@interface _DASActivity
+ (id)activityFromDASBGSystemTask:(id)a3 withClientOffset:(double)a4;
+ (void)initialize;
- (void)linkToBGSystemTask:(id)a3;
@end

@implementation _DASActivity

+ (void)initialize
{
  v2 = [_DASDaemonLogger logForCategory:@"BGST"];
  v3 = qword_10020B560;
  qword_10020B560 = v2;

  _objc_release_x1(v2, v3);
}

+ (id)activityFromDASBGSystemTask:(id)a3 withClientOffset:(double)a4
{
  v5 = a3;
  v6 = [v5 priority];
  if (v6 < 2)
  {
    v7 = &_DASSchedulingPriorityMaintenance;
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v7 = &_DASSchedulingPriorityUtility;
    goto LABEL_7;
  }

  if (v6 == 3)
  {
    v7 = &_DASSchedulingPriorityUserInitiated;
LABEL_7:
    v8 = *v7;
    goto LABEL_8;
  }

  v8 = 0;
LABEL_8:
  v9 = [v5 eligibleTime];
  v10 = [v5 deadlineTime];
  if (a4 == 0.0)
  {
    goto LABEL_14;
  }

  if (a4 == 64000000.0)
  {
    v11 = +[NSDate distantFuture];

    v12 = +[NSDate distantFuture];
    v9 = v11;
LABEL_13:

    v10 = v12;
    goto LABEL_14;
  }

  v13 = +[NSDate date];
  v14 = [v13 dateByAddingTimeInterval:a4];

  [v10 timeIntervalSinceDate:v14];
  if (v15 < 0.0)
  {
    v12 = v14;
    v9 = v12;
    goto LABEL_13;
  }

  v9 = v14;
LABEL_14:
  v16 = [v5 name];
  [v5 expected_duration];
  v18 = [_DASActivity activityWithName:v16 priority:v8 duration:v17 startingAfter:v9 startingBefore:v10];
  [v18 setUserIdentifier:{objc_msgSend(v5, "uid")}];
  v19 = [v5 related_applications];
  [v18 setRelatedApplications:v19];

  v20 = [v5 serviceName];
  [v18 setServiceName:v20];

  v21 = [v5 rateLimitConfigurationName];
  [v18 setRateLimitConfigurationName:v21];

  v22 = [v5 involved_processes];
  [v18 setInvolvedProcesses:v22];

  [v18 setRunOnAppForeground:{objc_msgSend(v5, "runOnAppForeground")}];
  [v18 setRunWhenAppLaunchUnlikely:{objc_msgSend(v5, "runWhenAppLaunchUnlikely")}];
  [v18 setRequestsImmediateRuntime:{objc_msgSend(v5, "requestsImmediateRuntime")}];
  [v18 setRequestsApplicationLaunch:{objc_msgSend(v5, "requestsApplicationLaunch")}];
  [v18 setBudgeted:{objc_msgSend(v5, "duet_power_budgeted")}];
  [v18 setBeforeApplicationLaunch:{objc_msgSend(v5, "beforeApplicationLaunch")}];
  [v18 setDataBudgeted:{objc_msgSend(v5, "data_budgeted")}];
  v23 = [v5 dataBudgetName];
  [v18 setClientDataBudgetName:v23];

  v24 = [v5 group_name];

  if (v24)
  {
    v25 = [v5 group_name];
    [v18 setGroupName:v25];
  }

  if ([v5 type] == 2)
  {
    [v5 interval];
    [v18 setInterval:?];
  }

  v26 = [v5 featureCodes];

  if (v26)
  {
    v27 = [v5 featureCodes];
    [v18 setFeatureCodes:v27];
  }

  if ([v5 requires_protection_class] == 1)
  {
    v28 = +[_DASFileProtection complete];
  }

  else if ([v5 requires_protection_class] == 2)
  {
    v28 = +[_DASFileProtection completeUnlessOpen];
  }

  else if ([v5 requires_protection_class] == 4)
  {
    v28 = +[_DASFileProtection completeUntilFirstUserAuthentication];
  }

  else
  {
    if ([v5 requires_protection_class] != 3)
    {
      goto LABEL_30;
    }

    v28 = +[_DASFileProtection completeWhenUserInactive];
  }

  v29 = v28;
  [v18 setFileProtection:v28];

LABEL_30:
  [v18 setRequiresBuddyComplete:{objc_msgSend(v5, "requires_buddy_complete")}];
  if ([v5 shouldWakeDevice])
  {
    [v18 setSchedulingPriority:_DASSchedulingPriorityDefault];
  }

  [v18 setShouldWakeDevice:{objc_msgSend(v5, "shouldWakeDevice")}];
  [v18 setDarkWakeEligible:{objc_msgSend(v5, "power_nap")}];
  [v18 setBeforeDaysFirstActivity:{objc_msgSend(v5, "app_refresh")}];
  [v18 setRequiresSignificantUserInactivity:{objc_msgSend(v5, "requires_significant_user_inactivity")}];
  [v18 setRequiresDeviceInactivity:{objc_msgSend(v5, "requiresUserInactivity")}];
  [v18 setPreventDeviceSleep:{objc_msgSend(v5, "prevents_device_sleep")}];
  [v18 setRequiresPlugin:{objc_msgSend(v5, "requiresExternalPower")}];
  [v18 setTriggersRestart:{objc_msgSend(v5, "may_reboot_device")}];
  if ([v5 resource_intensive])
  {
    if ([v5 resources])
    {
      [v18 setCpuIntensive:{objc_msgSend(v5, "resources") & 1}];
      [v18 setMemoryIntensive:{(objc_msgSend(v5, "resources") >> 1) & 1}];
      [v18 setDiskIntensive:{(objc_msgSend(v5, "resources") >> 2) & 1}];
      [v18 setAneIntensive:{(objc_msgSend(v5, "resources") >> 3) & 1}];
      [v18 setGpuIntensive:{(objc_msgSend(v5, "resources") >> 4) & 1}];
    }

    else
    {
      [v18 setCpuIntensive:1];
    }
  }

  [v18 setRequiresNetwork:{objc_msgSend(v5, "requires_network_connectivity")}];
  [v18 setRequiresInexpensiveNetworking:{objc_msgSend(v5, "requires_inexpensive_network")}];
  [v18 setRequiresUnconstrainedNetworking:{objc_msgSend(v5, "requires_unconstrained_network")}];
  if ([v5 expected_network_download_size_bytes])
  {
    [v18 setDownloadSize:{objc_msgSend(v5, "expected_network_download_size_bytes") / 1024}];
  }

  if ([v5 expected_network_upload_size_bytes])
  {
    [v18 setUploadSize:{objc_msgSend(v5, "expected_network_upload_size_bytes") / 1024}];
  }

  [v18 setUserRequestedBackupTask:{objc_msgSend(v5, "user_requested_backup_task")}];
  if ([v5 targetDevice] == 1)
  {
    v30 = 1;
  }

  else if ([v5 targetDevice] == 2)
  {
    v30 = 2;
  }

  else if ([v5 targetDevice] == 3)
  {
    v30 = 3;
  }

  else
  {
    v30 = 0;
  }

  [v18 setTargetDevice:v30];
  v31 = [v5 remoteDevice];
  [v18 setRemoteDevice:v31];

  [v18 setRequiresRemoteDeviceWake:{objc_msgSend(v5, "requiresRemoteDeviceWake")}];
  if ([v5 communicates_with_paired_device])
  {
    [v18 setTargetDevice:1];
  }

  v32 = [v5 produced_result_identifiers];
  [v18 setProducedResultIdentifiers:v32];

  v33 = [v5 dependencies];
  [v18 setDependencies:v33];

  v34 = [v5 diskVolume];
  [v18 setDiskVolume:v34];

  if ([v5 run_on_motion_state] && objc_msgSend(v5, "run_on_motion_state") - 1 <= 6)
  {
    [v18 setMotionState:{objc_msgSend(v5, "run_on_motion_state")}];
  }

  if ([v5 backlogged])
  {
    [v18 setBacklogged:{objc_msgSend(v5, "backlogged")}];
  }

  if ([v5 type] == 3)
  {
    v35 = objc_opt_new();
    [v18 setFastPass:v35];

    v36 = [v5 processingTaskIdentifiers];
    v37 = [v18 fastPass];
    [v37 setProcessingTaskIdentifiers:v36];

    v38 = [v5 semanticVersion];
    v39 = [v18 fastPass];
    [v39 setSemanticVersion:v38];

    if ([v5 resource_intensive])
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

  v40 = [v18 userInfo];
  v41 = [v40 mutableCopy];

  if (!v41)
  {
    v41 = objc_alloc_init(NSMutableDictionary);
  }

  v42 = [v5 network_endpoint];

  if (v42)
  {
    v43 = [v5 network_endpoint];
    v44 = [NWEndpoint endpointWithCEndpoint:v43];
    [v41 setObject:v44 forKeyedSubscript:kNWEndpointKey];

    v45 = [v5 network_parameters];

    if (v45)
    {
      v46 = [v5 network_parameters];
      v47 = [NWParameters parametersWithCParameters:v46];
      [v41 setObject:v47 forKeyedSubscript:kNWParametersKey];
    }
  }

  if ([v5 resources])
  {
    v48 = [v5 resourcesDescription];
    [v41 setObject:v48 forKeyedSubscript:_DASResourcesKey];
  }

  if ([v5 overrideRateLimiting])
  {
    v49 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 overrideRateLimiting]);
    [v41 setObject:v49 forKeyedSubscript:_DASOverrideRateLimitingKey];
  }

  if ([v5 magneticInterferenceSensitivity])
  {
    v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 magneticInterferenceSensitivity]);
    [v41 setObject:v50 forKeyedSubscript:_DASCTSMagneticInterferenceSensitivityKey];
  }

  if ([v5 mailFetch])
  {
    v51 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 mailFetch]);
    [v41 setObject:v51 forKeyedSubscript:_DASCTSMailFetchKey];
  }

  if ([v5 bypassPeakPower])
  {
    v52 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 bypassPeakPower]);
    [v41 setObject:v52 forKeyedSubscript:_DASCTSBypassPeakPowerPressureKey];
  }

  if ([v5 bypassBatteryAging])
  {
    v53 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 bypassBatteryAging]);
    [v41 setObject:v53 forKeyedSubscript:_DASCTSBypassBatteryAgingProtectionKey];
  }

  if ([v5 requiresMinimumBatteryLevel])
  {
    v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 requiresMinimumBatteryLevel]);
    [v41 setObject:v54 forKeyedSubscript:_DASCTSMinBatteryLevelKey];
  }

  if ([v5 requiresMinimumDataBudgetPercentage])
  {
    v55 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", [v5 requiresMinimumDataBudgetPercentage] / 100.0);
    [v41 setObject:v55 forKeyedSubscript:_DASCTSMinDataBudgetPercentRemainingKey];
  }

  if ([v5 blockRebootActivitiesForSU])
  {
    v56 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 blockRebootActivitiesForSU]);
    [v41 setObject:v56 forKeyedSubscript:_DASCTSBlockRebootActivitiesForSUKey];
  }

  if ([v5 useStatisticalModelForTriggersRestart])
  {
    v57 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 useStatisticalModelForTriggersRestart]);
    [v41 setObject:v57 forKeyedSubscript:_DASCTSUseStatisticalModelForRestartTasksKey];
  }

  v58 = [v5 context];

  if (v58)
  {
    v59 = [v5 context];
    [v41 setObject:v59 forKeyedSubscript:_DASContextKey];
  }

  if ([v41 count])
  {
    [v18 setUserInfo:v41];
  }

  v60 = +[_DASBGSystemTaskHelper sharedInstance];
  v61 = [v60 activityQueue];
  [v18 setHandlerQueue:v61];

  [v18 setDelayedStart:1];
  [v18 linkToBGSystemTask:v5];
  v62 = v18;

  return v18;
}

- (void)linkToBGSystemTask:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, v4);
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