@interface _DASActivityRecorder
+ (id)predicateForActivityWithSubmitDate:(id)date;
+ (id)predicateForLaunchActivities;
+ (id)predicateForUniqueRecord:(id)record;
- (id)createNewActivity:(id)activity;
- (id)createOrUpdateActivity:(id)activity context:(id)context;
- (id)fetchActivitiesUsingPredicate:(id)predicate context:(id)context;
- (id)fetchActivity:(id)activity context:(id)context;
- (id)getActivityFromManagedObject:(id)object;
- (void)copyActivity:(id)activity toManagedObject:(id)object;
- (void)deleteActivites:(id)activites moc:(id)moc;
- (void)deleteActivitiesIfRequired:(id)required;
- (void)deleteActivity:(id)activity context:(id)context;
- (void)deleteOldActivities:(id)activities;
@end

@implementation _DASActivityRecorder

+ (id)predicateForActivityWithSubmitDate:(id)date
{
  dateCopy = date;
  v4 = dateCopy;
  if (dateCopy)
  {
    v5 = [dateCopy dateByAddingTimeInterval:-2.0];
    v6 = [v4 dateByAddingTimeInterval:2.0];
    v7 = [NSPredicate predicateWithFormat:@"submitDate > %@ AND submitDate < %@", v5, v6];
  }

  else
  {
    v7 = [NSPredicate predicateWithValue:1];
  }

  return v7;
}

+ (id)predicateForUniqueRecord:(id)record
{
  recordCopy = record;
  name = [recordCopy name];
  v5 = [_DASActivityRecorder predicateForActivityWithName:name];

  submitDate = [recordCopy submitDate];

  v7 = [_DASActivityRecorder predicateForActivityWithSubmitDate:submitDate];

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

- (id)createNewActivity:(id)activity
{
  activityCopy = activity;
  entityName = [(_DASActivityRecorder *)self entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:activityCopy];

  return v6;
}

- (id)createOrUpdateActivity:(id)activity context:(id)context
{
  activityCopy = activity;
  contextCopy = context;
  if (activityCopy)
  {
    v8 = objc_opt_new();
    entityName = [(_DASActivityRecorder *)self entityName];
    v10 = [NSEntityDescription entityForName:entityName inManagedObjectContext:contextCopy];
    [v8 setEntity:v10];

    v11 = [_DASActivityRecorder predicateForUniqueRecord:activityCopy];
    [v8 setPredicate:v11];

    v15 = 0;
    v12 = [contextCopy executeFetchRequest:v8 error:&v15];
    lastObject = [v12 lastObject];

    if (!lastObject)
    {
      lastObject = [(_DASActivityRecorder *)self createNewActivity:contextCopy];
    }

    [(_DASActivityRecorder *)self copyActivity:activityCopy toManagedObject:lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (id)fetchActivitiesUsingPredicate:(id)predicate context:(id)context
{
  contextCopy = context;
  predicateCopy = predicate;
  v8 = objc_opt_new();
  entityName = [(_DASActivityRecorder *)self entityName];
  v10 = [NSEntityDescription entityForName:entityName inManagedObjectContext:contextCopy];
  [v8 setEntity:v10];

  [v8 setPredicate:predicateCopy];
  [v8 setFetchBatchSize:512];
  [v8 setFetchLimit:512];
  v13 = 0;
  v11 = [contextCopy executeFetchRequest:v8 error:&v13];

  return v11;
}

- (id)fetchActivity:(id)activity context:(id)context
{
  contextCopy = context;
  v7 = [_DASActivityRecorder predicateForUniqueRecord:activity];
  v8 = [(_DASActivityRecorder *)self fetchActivitiesUsingPredicate:v7 context:contextCopy];

  lastObject = [v8 lastObject];

  return lastObject;
}

- (id)getActivityFromManagedObject:(id)object
{
  objectCopy = object;
  v4 = objc_opt_new();
  name = [objectCopy name];
  [v4 setName:name];

  startAfter = [objectCopy startAfter];
  [v4 setStartAfter:startAfter];

  startBefore = [objectCopy startBefore];
  [v4 setStartBefore:startBefore];

  submitDate = [objectCopy submitDate];
  [v4 setSubmitDate:submitDate];

  [v4 setSchedulingPriority:{objc_msgSend(objectCopy, "schedulingPriority")}];
  [objectCopy predictedOptimalScore];
  [v4 setPredictedOptimalScore:?];
  predictedOptimalStartDate = [objectCopy predictedOptimalStartDate];
  [v4 setPredictedOptimalStartDate:predictedOptimalStartDate];

  [v4 setSuspendable:{objc_msgSend(objectCopy, "suspendable")}];
  [v4 setTargetDevice:{objc_msgSend(objectCopy, "targetDevice")}];
  remoteDevice = [objectCopy remoteDevice];
  [v4 setRemoteDevice:remoteDevice];

  [v4 setRequiresRemoteDeviceWake:{objc_msgSend(objectCopy, "requiresRemoteDeviceWake")}];
  [v4 setCancelAfterDeadline:{objc_msgSend(objectCopy, "cancelAfterDeadline")}];
  [v4 setDuration:{objc_msgSend(objectCopy, "duration")}];
  [v4 setTransferSize:{objc_msgSend(objectCopy, "transferSize")}];
  [v4 setTriggersRestart:{objc_msgSend(objectCopy, "triggersRestart")}];
  [v4 setRequiresPlugin:{objc_msgSend(objectCopy, "requiresPlugin")}];
  [v4 setRequiresNetwork:{objc_msgSend(objectCopy, "requiresNetwork")}];
  [v4 setRequiresDeviceInactivity:{objc_msgSend(objectCopy, "requiresDeviceInactivity")}];
  [v4 setRequiresInexpensiveNetworking:{objc_msgSend(objectCopy, "requiresInexpensiveNetworking")}];
  [v4 setRequestsApplicationLaunch:{objc_msgSend(objectCopy, "requestsApplicationLaunch")}];
  [v4 setRequestsExtensionLaunch:{objc_msgSend(objectCopy, "requestsExtensionLaunch")}];
  [v4 setSupportsAnyApplication:{objc_msgSend(objectCopy, "supportsAnyApplication")}];
  [v4 setCpuIntensive:{objc_msgSend(objectCopy, "cpuIntensive")}];
  [v4 setDiskIntensive:{objc_msgSend(objectCopy, "diskIntensive")}];
  [v4 setMemoryIntensive:{objc_msgSend(objectCopy, "memoryIntensive")}];
  [v4 setBeforeUserIsActive:{objc_msgSend(objectCopy, "beforeUserIsActive")}];
  bundleID = [objectCopy bundleID];
  [v4 setBundleId:bundleID];

  rateLimitConfigurationName = [objectCopy rateLimitConfigurationName];
  [v4 setRateLimitConfigurationName:rateLimitConfigurationName];

  [v4 setIsUpload:{objc_msgSend(objectCopy, "isUpload")}];
  [v4 setBudgeted:{objc_msgSend(objectCopy, "budgeted")}];
  launchReason = [objectCopy launchReason];
  [v4 setLaunchReason:launchReason];

  v14 = [NSUUID alloc];
  uuid = [objectCopy uuid];
  v16 = [v14 initWithUUIDBytes:{objc_msgSend(uuid, "bytes")}];
  [v4 setUuid:v16];

  extensionIdentifier = [objectCopy extensionIdentifier];
  [v4 setExtensionIdentifier:extensionIdentifier];

  v18 = objc_opt_class();
  v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
  relatedApplications = [objectCopy relatedApplications];

  if (relatedApplications)
  {
    relatedApplications2 = [objectCopy relatedApplications];
    v22 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v19 fromData:relatedApplications2 error:0];
    [v4 setRelatedApplications:v22];
  }

  schedulerRecommendedApplications = [objectCopy schedulerRecommendedApplications];

  if (schedulerRecommendedApplications)
  {
    schedulerRecommendedApplications2 = [objectCopy schedulerRecommendedApplications];
    v25 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v19 fromData:schedulerRecommendedApplications2 error:0];
    [v4 setSchedulerRecommendedApplications:v25];
  }

  userInfo = [objectCopy userInfo];

  if (userInfo)
  {
    v27 = +[_DASActivity validClassesForUserInfoSerialization];
    userInfo2 = [objectCopy userInfo];
    v29 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v27 fromData:userInfo2 error:0];
    [v4 setUserInfo:v29];
  }

  return v4;
}

- (void)copyActivity:(id)activity toManagedObject:(id)object
{
  activityCopy = activity;
  objectCopy = object;
  name = [activityCopy name];
  [objectCopy setName:name];

  startAfter = [activityCopy startAfter];
  [objectCopy setStartAfter:startAfter];

  startBefore = [activityCopy startBefore];
  [objectCopy setStartBefore:startBefore];

  submitDate = [activityCopy submitDate];
  [objectCopy setSubmitDate:submitDate];

  [objectCopy setSchedulingPriority:{objc_msgSend(activityCopy, "schedulingPriority")}];
  [activityCopy predictedOptimalScore];
  [objectCopy setPredictedOptimalScore:?];
  predictedOptimalStartDate = [activityCopy predictedOptimalStartDate];
  [objectCopy setPredictedOptimalStartDate:predictedOptimalStartDate];

  [objectCopy setSuspendable:{objc_msgSend(activityCopy, "suspendable")}];
  [objectCopy setTargetDevice:{objc_msgSend(activityCopy, "targetDevice")}];
  remoteDevice = [activityCopy remoteDevice];
  [objectCopy setRemoteDevice:remoteDevice];

  [objectCopy setRequiresRemoteDeviceWake:{objc_msgSend(activityCopy, "requiresRemoteDeviceWake")}];
  [objectCopy setCancelAfterDeadline:{objc_msgSend(activityCopy, "cancelAfterDeadline")}];
  [objectCopy setDuration:{objc_msgSend(activityCopy, "duration")}];
  [objectCopy setTransferSize:{objc_msgSend(activityCopy, "transferSize")}];
  [objectCopy setTriggersRestart:{objc_msgSend(activityCopy, "triggersRestart")}];
  [objectCopy setRequiresPlugin:{objc_msgSend(activityCopy, "requiresPlugin")}];
  [objectCopy setRequiresNetwork:{objc_msgSend(activityCopy, "requiresNetwork")}];
  [objectCopy setRequiresDeviceInactivity:{objc_msgSend(activityCopy, "requiresDeviceInactivity")}];
  [objectCopy setRequiresInexpensiveNetworking:{objc_msgSend(activityCopy, "requiresInexpensiveNetworking")}];
  [objectCopy setRequestsApplicationLaunch:{objc_msgSend(activityCopy, "requestsApplicationLaunch")}];
  [objectCopy setRequestsExtensionLaunch:{objc_msgSend(activityCopy, "requestsExtensionLaunch")}];
  [objectCopy setSupportsAnyApplication:{objc_msgSend(activityCopy, "supportsAnyApplication")}];
  [objectCopy setCpuIntensive:{objc_msgSend(activityCopy, "cpuIntensive")}];
  [objectCopy setDiskIntensive:{objc_msgSend(activityCopy, "diskIntensive")}];
  [objectCopy setMemoryIntensive:{objc_msgSend(activityCopy, "memoryIntensive")}];
  [objectCopy setBeforeUserIsActive:{objc_msgSend(activityCopy, "beforeUserIsActive")}];
  bundleId = [activityCopy bundleId];
  [objectCopy setBundleID:bundleId];

  rateLimitConfigurationName = [activityCopy rateLimitConfigurationName];
  [objectCopy setRateLimitConfigurationName:rateLimitConfigurationName];

  [objectCopy setIsUpload:{objc_msgSend(activityCopy, "isUpload")}];
  [objectCopy setBudgeted:{objc_msgSend(activityCopy, "budgeted")}];
  launchReason = [activityCopy launchReason];
  [objectCopy setLaunchReason:launchReason];

  [objectCopy setCurrentState:0];
  extensionIdentifier = [activityCopy extensionIdentifier];
  [objectCopy setExtensionIdentifier:extensionIdentifier];

  v28[0] = 0;
  v28[1] = 0;
  uuid = [activityCopy uuid];
  [uuid getUUIDBytes:v28];

  v18 = [NSData dataWithBytes:v28 length:16];
  [objectCopy setUuid:v18];

  relatedApplications = [activityCopy relatedApplications];

  if (relatedApplications)
  {
    relatedApplications2 = [activityCopy relatedApplications];
    v21 = [NSKeyedArchiver archivedDataWithRootObject:relatedApplications2 requiringSecureCoding:1 error:0];
    [objectCopy setRelatedApplications:v21];
  }

  schedulerRecommendedApplications = [activityCopy schedulerRecommendedApplications];

  if (schedulerRecommendedApplications)
  {
    schedulerRecommendedApplications2 = [activityCopy schedulerRecommendedApplications];
    v24 = [NSKeyedArchiver archivedDataWithRootObject:schedulerRecommendedApplications2 requiringSecureCoding:1 error:0];
    [objectCopy setSchedulerRecommendedApplications:v24];
  }

  userInfo = [activityCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [activityCopy userInfo];
    v27 = [NSKeyedArchiver archivedDataWithRootObject:userInfo2 requiringSecureCoding:1 error:0];
    [objectCopy setUserInfo:v27];
  }
}

- (void)deleteActivity:(id)activity context:(id)context
{
  contextCopy = context;
  activityCopy = activity;
  v11 = objc_opt_new();
  entityName = [(_DASActivityRecorder *)self entityName];
  v9 = [NSEntityDescription entityForName:entityName inManagedObjectContext:contextCopy];
  [v11 setEntity:v9];

  v10 = [_DASActivityRecorder predicateForUniqueRecord:activityCopy];

  [v11 setPredicate:v10];
  [(_DASActivityRecorder *)self deleteActivites:v11 moc:contextCopy];
}

- (void)deleteActivites:(id)activites moc:(id)moc
{
  mocCopy = moc;
  activitesCopy = activites;
  [activitesCopy setFetchBatchSize:512];
  v7 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:activitesCopy];

  v9 = 0;
  v8 = [mocCopy executeRequest:v7 error:&v9];
}

- (void)deleteOldActivities:(id)activities
{
  activitiesCopy = activities;
  v9 = [NSDate dateWithTimeIntervalSinceNow:-432000.0];
  v5 = [NSPredicate predicateWithFormat:@"currentState <= %@ AND startBefore <= %@", &off_1001C97F0, v9];
  v6 = objc_alloc_init(NSFetchRequest);
  entityName = [(_DASActivityRecorder *)self entityName];
  v8 = [NSEntityDescription entityForName:entityName inManagedObjectContext:activitiesCopy];
  [v6 setEntity:v8];

  [v6 setPredicate:v5];
  [(_DASActivityRecorder *)self deleteActivites:v6 moc:activitiesCopy];
}

- (void)deleteActivitiesIfRequired:(id)required
{
  requiredCopy = required;
  v5 = objc_alloc_init(NSFetchRequest);
  entityName = [(_DASActivityRecorder *)self entityName];
  v7 = [NSEntityDescription entityForName:entityName inManagedObjectContext:requiredCopy];
  [v5 setEntity:v7];

  v8 = 0;
  if ([requiredCopy countForFetchRequest:v5 error:&v8] >= 0x201)
  {
    [(_DASActivityRecorder *)self deleteActivites:v5 moc:requiredCopy];
  }
}

@end