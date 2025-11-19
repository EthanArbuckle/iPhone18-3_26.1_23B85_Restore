@interface _DASActivityCompletionDependencyGroup
+ (id)groupFromPersistence:(id)a3;
+ (id)groupFromPersistenceWithoutCreation:(id)a3;
+ (void)resetDependenciesContainingSubstring:(id)a3;
- (BOOL)isDependencySatisfiedForActivity:(id)a3;
- (BOOL)isPersistenceAvailableWithFileProtection:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (_DASActivityCompletionDependencyGroup)initWithTrackedActivityIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (void)deregisterDependent:(id)a3;
- (void)handleActivitySubmission:(id)a3;
- (void)persistActivityDidConsume:(id)a3;
- (void)persistTrackedActivityDidRun:(id)a3;
- (void)pruneStreamOfGroup;
- (void)reportDependentActivityDidRun:(id)a3;
- (void)reportTrackedActivityDidRun:(id)a3;
- (void)resetAccumulation;
- (void)updateStreamForTrackedActivityDidRun:(id)a3;
@end

@implementation _DASActivityCompletionDependencyGroup

+ (id)groupFromPersistence:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithTrackedActivityIdentifier:v3];
  v5 = [_DASDaemonLogger logForCategory:@"DependencyGroupPersistence"];
  v6 = BiomeLibrary();
  v7 = [v6 ActivityScheduler];
  v8 = [v7 Dependency];
  v9 = [v8 Completion];
  v10 = [v9 publisher];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000C094C;
  v24[3] = &unk_1001B7298;
  v25 = v3;
  v11 = v3;
  v12 = [v10 filterWithIsIncluded:v24];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000C09A8;
  v22[3] = &unk_1001B5570;
  v23 = v5;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C0A04;
  v19[3] = &unk_1001B5AE0;
  v20 = v23;
  v13 = v4;
  v21 = v13;
  v14 = v23;
  v15 = [v12 sinkWithCompletion:v22 receiveInput:v19];

  v16 = v21;
  v17 = v13;

  return v13;
}

- (_DASActivityCompletionDependencyGroup)initWithTrackedActivityIdentifier:(id)a3
{
  v5 = a3;
  v25.receiver = self;
  v25.super_class = _DASActivityCompletionDependencyGroup;
  v6 = [(_DASActivityCompletionDependencyGroup *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_trackedActivityIdentifier, a3);
    v8 = +[NSMutableSet set];
    dependents = v7->_dependents;
    v7->_dependents = v8;

    v10 = +[NSMutableSet set];
    haveRunActivities = v7->_haveRunActivities;
    v7->_haveRunActivities = v10;

    v7->_hasDependencyRun = 0;
    v12 = BiomeLibrary();
    v13 = [v12 ActivityScheduler];
    v14 = [v13 Dependency];
    v15 = [v14 Completion];
    completionStream = v7->_completionStream;
    v7->_completionStream = v15;

    v17 = [NSString stringWithFormat:@"com.apple.dasd.CompletionDependencyGroup.%@", v5];
    v18 = [v17 UTF8String];
    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create(v18, v19);
    queue = v7->_queue;
    v7->_queue = v20;

    v22 = os_log_create("com.apple.duetactivityscheduler", "CompletionDependencyGroup");
    log = v7->_log;
    v7->_log = v22;
  }

  return v7;
}

- (BOOL)isPersistenceAvailableWithFileProtection:(id)a3
{
  completionStream = self->_completionStream;
  v4 = a3;
  v5 = [(BMStream *)completionStream configuration];
  v6 = [v5 storeConfig];
  v7 = [v6 protectionClass];

  v8 = [v4 asBiomeProtectionClass];
  return v8 <= v7;
}

- (void)handleActivitySubmission:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    trackedActivityIdentifier = self->_trackedActivityIdentifier;
    *buf = 136315650;
    v12 = "[_DASActivityCompletionDependencyGroup handleActivitySubmission:]";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = trackedActivityIdentifier;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Adding %@ to tracked dependents for %@", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C0E18;
  v9[3] = &unk_1001B56E0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_sync(queue, v9);
}

- (void)deregisterDependent:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    trackedActivityIdentifier = self->_trackedActivityIdentifier;
    *buf = 136315650;
    v12 = "[_DASActivityCompletionDependencyGroup deregisterDependent:]";
    v13 = 2112;
    v14 = v4;
    v15 = 2112;
    v16 = trackedActivityIdentifier;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%s: Removing %@ from tracked dependents for %@", buf, 0x20u);
  }

  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C0F5C;
  v9[3] = &unk_1001B56E0;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_sync(queue, v9);
}

- (void)reportTrackedActivityDidRun:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C1000;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)reportDependentActivityDidRun:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C10E4;
  v7[3] = &unk_1001B56E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (BOOL)isDependencySatisfiedForActivity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1228;
  block[3] = &unk_1001B5D98;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  v10 = v6;
  dispatch_sync(queue, block);
  hasDependencyRun = 0;
  if ((v13[3] & 1) == 0)
  {
    hasDependencyRun = self->_hasDependencyRun;
  }

  _Block_object_dispose(&v12, 8);
  return hasDependencyRun;
}

- (void)resetAccumulation
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1304;
  block[3] = &unk_1001B5668;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)dictionary
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  queue = self->_queue;
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000C14F0;
  v15 = &unk_1001B56B8;
  v16 = self;
  v17 = v3;
  v18 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_sync(queue, &v12);
  trackedActivityIdentifier = self->_trackedActivityIdentifier;
  v19[0] = @"trackedActivityIdentifier";
  v19[1] = @"dependents";
  v20[0] = trackedActivityIdentifier;
  v20[1] = v7;
  v20[2] = v6;
  v19[2] = @"haveRunIdentifiers";
  v19[3] = @"hasDependencyRun";
  v9 = [NSNumber numberWithBool:self->_hasDependencyRun, v12, v13, v14, v15, v16];
  v20[3] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

  return v10;
}

+ (void)resetDependenciesContainingSubstring:(id)a3
{
  v3 = a3;
  v4 = BiomeLibrary();
  v5 = [v4 ActivityScheduler];
  v6 = [v5 Dependency];
  v7 = [v6 Completion];

  v8 = [v7 pruner];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C1794;
  v10[3] = &unk_1001B7F68;
  v11 = v3;
  v9 = v3;
  [v8 deleteEventsPassingTest:v10];
}

- (void)updateStreamForTrackedActivityDidRun:(id)a3
{
  v4 = a3;
  [(_DASActivityCompletionDependencyGroup *)self pruneStreamOfGroup];
  [(_DASActivityCompletionDependencyGroup *)self persistTrackedActivityDidRun:v4];
}

- (void)pruneStreamOfGroup
{
  v3 = [(BMStream *)self->_completionStream pruner];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000C191C;
  v4[3] = &unk_1001B7F68;
  v4[4] = self;
  [v3 deleteEventsPassingTest:v4];
}

- (void)persistTrackedActivityDidRun:(id)a3
{
  v5 = [[BMActivitySchedulerDependencyCompletion alloc] initWithIdentifier:self->_trackedActivityIdentifier consumerIdentifier:0 type:1];
  v4 = [(BMStream *)self->_completionStream source];
  [v4 sendEvent:v5];
}

- (void)persistActivityDidConsume:(id)a3
{
  v4 = a3;
  v5 = [BMActivitySchedulerDependencyCompletion alloc];
  trackedActivityIdentifier = self->_trackedActivityIdentifier;
  v7 = [v4 identifier];

  v9 = [v5 initWithIdentifier:trackedActivityIdentifier consumerIdentifier:v7 type:2];
  v8 = [(BMStream *)self->_completionStream source];
  [v8 sendEvent:v9];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithTrackedActivityIdentifier:", self->_trackedActivityIdentifier}];
  v6 = [(NSMutableSet *)self->_dependents copyWithZone:a3];
  [v5 setDependents:v6];

  v7 = [(NSMutableSet *)self->_haveRunActivities copyWithZone:a3];
  [v5 setHaveRunActivities:v7];

  [v5 setHasDependencyRun:self->_hasDependencyRun];
  return v5;
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> Identifier: %@, ", objc_opt_class(), self, self->_trackedActivityIdentifier];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1C14;
  block[3] = &unk_1001B56E0;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(queue, block);
  v6 = v5;

  return v5;
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> Identifier: %@, ", objc_opt_class(), self, self->_trackedActivityIdentifier];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1D5C;
  block[3] = &unk_1001B56E0;
  v5 = v3;
  v9 = v5;
  v10 = self;
  dispatch_sync(queue, block);
  v6 = v5;

  return v5;
}

+ (id)groupFromPersistenceWithoutCreation:(id)a3
{
  v3 = a3;
  v4 = [_DASDaemonLogger logForCategory:@"DependencyGroupPersistence"];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v5 = BiomeLibrary();
  v6 = [v5 ActivityScheduler];
  v7 = [v6 Dependency];
  v8 = [v7 Completion];
  v9 = [v8 publisher];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000C213C;
  v19[3] = &unk_1001B7298;
  v10 = v3;
  v20 = v10;
  v11 = [v9 filterWithIsIncluded:v19];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C2198;
  v17[3] = &unk_1001B5570;
  v12 = v4;
  v18 = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000C21F4;
  v16[3] = &unk_1001B7FB8;
  v16[4] = &v21;
  v13 = [v11 sinkWithCompletion:v17 shouldContinue:v16];

  if (v22[3])
  {
    v14 = [objc_opt_class() groupFromPersistence:v10];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v14;
}

@end