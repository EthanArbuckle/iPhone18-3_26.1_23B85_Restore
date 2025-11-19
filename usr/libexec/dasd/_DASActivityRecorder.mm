@interface _DASActivityRecorder
+ (id)predicateForActivityWithSubmitDate:(id)a3;
+ (id)predicateForLaunchActivities;
+ (id)predicateForUniqueRecord:(id)a3;
- (id)createNewActivity:(id)a3;
- (id)createOrUpdateActivity:(id)a3 context:(id)a4;
- (id)fetchActivitiesUsingPredicate:(id)a3 context:(id)a4;
- (id)fetchActivity:(id)a3 context:(id)a4;
- (id)getActivityFromManagedObject:(id)a3;
- (void)copyActivity:(id)a3 toManagedObject:(id)a4;
- (void)deleteActivites:(id)a3 moc:(id)a4;
- (void)deleteActivitiesIfRequired:(id)a3;
- (void)deleteActivity:(id)a3 context:(id)a4;
- (void)deleteOldActivities:(id)a3;
@end

@implementation _DASActivityRecorder

+ (id)predicateForActivityWithSubmitDate:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 dateByAddingTimeInterval:-2.0];
    v6 = [v4 dateByAddingTimeInterval:2.0];
    v7 = [NSPredicate predicateWithFormat:@"submitDate > %@ AND submitDate < %@", v5, v6];
  }

  else
  {
    v7 = [NSPredicate predicateWithValue:1];
  }

  return v7;
}

+ (id)predicateForUniqueRecord:(id)a3
{
  v3 = a3;
  v4 = [v3 name];
  v5 = [_DASActivityRecorder predicateForActivityWithName:v4];

  v6 = [v3 submitDate];

  v7 = [_DASActivityRecorder predicateForActivityWithSubmitDate:v6];

  v11[0] = v7;
  v11[1] = v5;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [NSCompoundPredicate andPredicateWithSubpredicates:v8];

  return v9;
}

+ (id)predicateForLaunchActivities
{
  v2 = [NSPredicate predicateWithFormat:@"requestsApplicationLaunch == %d", 1];
  v3 = [NSPredicate predicateWithFormat:@"requestsExtensionLaunch == %d", 1];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [NSArray arrayWithObjects:v7 count:2];
  v5 = [NSCompoundPredicate orPredicateWithSubpredicates:v4];

  return v5;
}

- (id)createNewActivity:(id)a3
{
  v4 = a3;
  v5 = [(_DASActivityRecorder *)self entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:v5 inManagedObjectContext:v4];

  return v6;
}

- (id)createOrUpdateActivity:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_opt_new();
    v9 = [(_DASActivityRecorder *)self entityName];
    v10 = [NSEntityDescription entityForName:v9 inManagedObjectContext:v7];
    [v8 setEntity:v10];

    v11 = [_DASActivityRecorder predicateForUniqueRecord:v6];
    [v8 setPredicate:v11];

    v15 = 0;
    v12 = [v7 executeFetchRequest:v8 error:&v15];
    v13 = [v12 lastObject];

    if (!v13)
    {
      v13 = [(_DASActivityRecorder *)self createNewActivity:v7];
    }

    [(_DASActivityRecorder *)self copyActivity:v6 toManagedObject:v13];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)fetchActivitiesUsingPredicate:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(_DASActivityRecorder *)self entityName];
  v10 = [NSEntityDescription entityForName:v9 inManagedObjectContext:v6];
  [v8 setEntity:v10];

  [v8 setPredicate:v7];
  [v8 setFetchBatchSize:512];
  [v8 setFetchLimit:512];
  v13 = 0;
  v11 = [v6 executeFetchRequest:v8 error:&v13];

  return v11;
}

- (id)fetchActivity:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [_DASActivityRecorder predicateForUniqueRecord:a3];
  v8 = [(_DASActivityRecorder *)self fetchActivitiesUsingPredicate:v7 context:v6];

  v9 = [v8 lastObject];

  return v9;
}

- (id)getActivityFromManagedObject:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 name];
  [v4 setName:v5];

  v6 = [v3 startAfter];
  [v4 setStartAfter:v6];

  v7 = [v3 startBefore];
  [v4 setStartBefore:v7];

  v8 = [v3 submitDate];
  [v4 setSubmitDate:v8];

  [v4 setSchedulingPriority:{objc_msgSend(v3, "schedulingPriority")}];
  [v3 predictedOptimalScore];
  [v4 setPredictedOptimalScore:?];
  v9 = [v3 predictedOptimalStartDate];
  [v4 setPredictedOptimalStartDate:v9];

  [v4 setSuspendable:{objc_msgSend(v3, "suspendable")}];
  [v4 setTargetDevice:{objc_msgSend(v3, "targetDevice")}];
  v10 = [v3 remoteDevice];
  [v4 setRemoteDevice:v10];

  [v4 setRequiresRemoteDeviceWake:{objc_msgSend(v3, "requiresRemoteDeviceWake")}];
  [v4 setCancelAfterDeadline:{objc_msgSend(v3, "cancelAfterDeadline")}];
  [v4 setDuration:{objc_msgSend(v3, "duration")}];
  [v4 setTransferSize:{objc_msgSend(v3, "transferSize")}];
  [v4 setTriggersRestart:{objc_msgSend(v3, "triggersRestart")}];
  [v4 setRequiresPlugin:{objc_msgSend(v3, "requiresPlugin")}];
  [v4 setRequiresNetwork:{objc_msgSend(v3, "requiresNetwork")}];
  [v4 setRequiresDeviceInactivity:{objc_msgSend(v3, "requiresDeviceInactivity")}];
  [v4 setRequiresInexpensiveNetworking:{objc_msgSend(v3, "requiresInexpensiveNetworking")}];
  [v4 setRequestsApplicationLaunch:{objc_msgSend(v3, "requestsApplicationLaunch")}];
  [v4 setRequestsExtensionLaunch:{objc_msgSend(v3, "requestsExtensionLaunch")}];
  [v4 setSupportsAnyApplication:{objc_msgSend(v3, "supportsAnyApplication")}];
  [v4 setCpuIntensive:{objc_msgSend(v3, "cpuIntensive")}];
  [v4 setDiskIntensive:{objc_msgSend(v3, "diskIntensive")}];
  [v4 setMemoryIntensive:{objc_msgSend(v3, "memoryIntensive")}];
  [v4 setBeforeUserIsActive:{objc_msgSend(v3, "beforeUserIsActive")}];
  v11 = [v3 bundleID];
  [v4 setBundleId:v11];

  v12 = [v3 rateLimitConfigurationName];
  [v4 setRateLimitConfigurationName:v12];

  [v4 setIsUpload:{objc_msgSend(v3, "isUpload")}];
  [v4 setBudgeted:{objc_msgSend(v3, "budgeted")}];
  v13 = [v3 launchReason];
  [v4 setLaunchReason:v13];

  v14 = [NSUUID alloc];
  v15 = [v3 uuid];
  v16 = [v14 initWithUUIDBytes:{objc_msgSend(v15, "bytes")}];
  [v4 setUuid:v16];

  v17 = [v3 extensionIdentifier];
  [v4 setExtensionIdentifier:v17];

  v18 = objc_opt_class();
  v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
  v20 = [v3 relatedApplications];

  if (v20)
  {
    v21 = [v3 relatedApplications];
    v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v19 fromData:v21 error:0];
    [v4 setRelatedApplications:v22];
  }

  v23 = [v3 schedulerRecommendedApplications];

  if (v23)
  {
    v24 = [v3 schedulerRecommendedApplications];
    v25 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v19 fromData:v24 error:0];
    [v4 setSchedulerRecommendedApplications:v25];
  }

  v26 = [v3 userInfo];

  if (v26)
  {
    v27 = +[_DASActivity validClassesForUserInfoSerialization];
    v28 = [v3 userInfo];
    v29 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v27 fromData:v28 error:0];
    [v4 setUserInfo:v29];
  }

  return v4;
}

- (void)copyActivity:(id)a3 toManagedObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 name];
  [v6 setName:v7];

  v8 = [v5 startAfter];
  [v6 setStartAfter:v8];

  v9 = [v5 startBefore];
  [v6 setStartBefore:v9];

  v10 = [v5 submitDate];
  [v6 setSubmitDate:v10];

  [v6 setSchedulingPriority:{objc_msgSend(v5, "schedulingPriority")}];
  [v5 predictedOptimalScore];
  [v6 setPredictedOptimalScore:?];
  v11 = [v5 predictedOptimalStartDate];
  [v6 setPredictedOptimalStartDate:v11];

  [v6 setSuspendable:{objc_msgSend(v5, "suspendable")}];
  [v6 setTargetDevice:{objc_msgSend(v5, "targetDevice")}];
  v12 = [v5 remoteDevice];
  [v6 setRemoteDevice:v12];

  [v6 setRequiresRemoteDeviceWake:{objc_msgSend(v5, "requiresRemoteDeviceWake")}];
  [v6 setCancelAfterDeadline:{objc_msgSend(v5, "cancelAfterDeadline")}];
  [v6 setDuration:{objc_msgSend(v5, "duration")}];
  [v6 setTransferSize:{objc_msgSend(v5, "transferSize")}];
  [v6 setTriggersRestart:{objc_msgSend(v5, "triggersRestart")}];
  [v6 setRequiresPlugin:{objc_msgSend(v5, "requiresPlugin")}];
  [v6 setRequiresNetwork:{objc_msgSend(v5, "requiresNetwork")}];
  [v6 setRequiresDeviceInactivity:{objc_msgSend(v5, "requiresDeviceInactivity")}];
  [v6 setRequiresInexpensiveNetworking:{objc_msgSend(v5, "requiresInexpensiveNetworking")}];
  [v6 setRequestsApplicationLaunch:{objc_msgSend(v5, "requestsApplicationLaunch")}];
  [v6 setRequestsExtensionLaunch:{objc_msgSend(v5, "requestsExtensionLaunch")}];
  [v6 setSupportsAnyApplication:{objc_msgSend(v5, "supportsAnyApplication")}];
  [v6 setCpuIntensive:{objc_msgSend(v5, "cpuIntensive")}];
  [v6 setDiskIntensive:{objc_msgSend(v5, "diskIntensive")}];
  [v6 setMemoryIntensive:{objc_msgSend(v5, "memoryIntensive")}];
  [v6 setBeforeUserIsActive:{objc_msgSend(v5, "beforeUserIsActive")}];
  v13 = [v5 bundleId];
  [v6 setBundleID:v13];

  v14 = [v5 rateLimitConfigurationName];
  [v6 setRateLimitConfigurationName:v14];

  [v6 setIsUpload:{objc_msgSend(v5, "isUpload")}];
  [v6 setBudgeted:{objc_msgSend(v5, "budgeted")}];
  v15 = [v5 launchReason];
  [v6 setLaunchReason:v15];

  [v6 setCurrentState:0];
  v16 = [v5 extensionIdentifier];
  [v6 setExtensionIdentifier:v16];

  v28[0] = 0;
  v28[1] = 0;
  v17 = [v5 uuid];
  [v17 getUUIDBytes:v28];

  v18 = [NSData dataWithBytes:v28 length:16];
  [v6 setUuid:v18];

  v19 = [v5 relatedApplications];

  if (v19)
  {
    v20 = [v5 relatedApplications];
    v21 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];
    [v6 setRelatedApplications:v21];
  }

  v22 = [v5 schedulerRecommendedApplications];

  if (v22)
  {
    v23 = [v5 schedulerRecommendedApplications];
    v24 = [NSKeyedArchiver archivedDataWithRootObject:v23 requiringSecureCoding:1 error:0];
    [v6 setSchedulerRecommendedApplications:v24];
  }

  v25 = [v5 userInfo];

  if (v25)
  {
    v26 = [v5 userInfo];
    v27 = [NSKeyedArchiver archivedDataWithRootObject:v26 requiringSecureCoding:1 error:0];
    [v6 setUserInfo:v27];
  }
}

- (void)deleteActivity:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_opt_new();
  v8 = [(_DASActivityRecorder *)self entityName];
  v9 = [NSEntityDescription entityForName:v8 inManagedObjectContext:v6];
  [v11 setEntity:v9];

  v10 = [_DASActivityRecorder predicateForUniqueRecord:v7];

  [v11 setPredicate:v10];
  [(_DASActivityRecorder *)self deleteActivites:v11 moc:v6];
}

- (void)deleteActivites:(id)a3 moc:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 setFetchBatchSize:512];
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v6];

  v9 = 0;
  v8 = [v5 executeRequest:v7 error:&v9];
}

- (void)deleteOldActivities:(id)a3
{
  v4 = a3;
  v9 = [NSDate dateWithTimeIntervalSinceNow:-432000.0];
  v5 = [NSPredicate predicateWithFormat:@"currentState <= %@ AND startBefore <= %@", &off_1001C97F0, v9];
  v6 = objc_alloc_init(NSFetchRequest);
  v7 = [(_DASActivityRecorder *)self entityName];
  v8 = [NSEntityDescription entityForName:v7 inManagedObjectContext:v4];
  [v6 setEntity:v8];

  [v6 setPredicate:v5];
  [(_DASActivityRecorder *)self deleteActivites:v6 moc:v4];
}

- (void)deleteActivitiesIfRequired:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSFetchRequest);
  v6 = [(_DASActivityRecorder *)self entityName];
  v7 = [NSEntityDescription entityForName:v6 inManagedObjectContext:v4];
  [v5 setEntity:v7];

  v8 = 0;
  if ([v4 countForFetchRequest:v5 error:&v8] >= 0x201)
  {
    [(_DASActivityRecorder *)self deleteActivites:v5 moc:v4];
  }
}

@end