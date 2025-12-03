@interface _DASCoreDataStore
- (void)createMOInMOC:(id)c activity:(id)activity group:(id)group triggers:(id)triggers;
- (void)createMOInMOC:(id)c group:(id)group activities:(id)activities;
- (void)deleteActivitiesIfRequired;
- (void)deleteActivity:(id)activity;
- (void)deleteOldActivities;
- (void)loadAllGroups:(id)groups;
- (void)loadAllTasks:(id)tasks startedTasks:(id)startedTasks;
- (void)loadPendingLaunchTasks:(id)tasks;
- (void)loadStartedTasks:(id)tasks;
- (void)mocSaveAndReset:(id)reset;
- (void)saveActivities:(id)activities;
- (void)saveActivities:(id)activities groups:(id)groups triggersArray:(id)array;
- (void)saveActivity:(id)activity;
- (void)saveActivity:(id)activity group:(id)group triggers:(id)triggers hasStarted:(BOOL)started;
- (void)saveActivity:(id)activity triggers:(id)triggers;
- (void)saveGroup:(id)group;
- (void)saveGroup:(id)group activity:(id)activity;
- (void)saveGroups:(id)groups activitiesArray:(id)array;
- (void)updateActivityCanceled:(id)canceled;
- (void)updateActivityCompleted:(id)completed;
- (void)updateActivityStarted:(id)started;
@end

@implementation _DASCoreDataStore

- (void)mocSaveAndReset:(id)reset
{
  resetCopy = reset;
  if ([resetCopy hasChanges])
  {
    v8 = 0;
    v4 = [resetCopy save:&v8];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        userInfo = [v5 userInfo];
        *buf = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = userInfo;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CoreData save error:  : %@, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  [resetCopy reset];
}

- (void)createMOInMOC:(id)c activity:(id)activity group:(id)group triggers:(id)triggers
{
  cCopy = c;
  activityCopy = activity;
  groupCopy = group;
  triggersCopy = triggers;
  v24 = objc_opt_new();
  v13 = [v24 createOrUpdateActivity:activityCopy context:cCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = triggersCopy;
  v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v25 + 1) + 8 * i);
        v20 = objc_opt_new();
        v21 = [v20 fetchOrCreateTrigger:v19 managedObjectContext:cCopy];
        [v21 addActivitiesObject:v13];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  if (groupCopy)
  {
    v22 = objc_opt_new();
    v23 = [v22 createOrUpdateGroup:groupCopy context:cCopy];
    [v23 addActivitiesObject:v13];
  }
}

- (void)saveActivity:(id)activity
{
  activityCopy = activity;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100034C24;
  v10[3] = &unk_1001B56B8;
  v11 = activityCopy;
  v12 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = activityCopy;
  [v8 performWithOptions:4 andBlock:v10];
}

- (void)saveActivities:(id)activities
{
  activitiesCopy = activities;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100034D74;
  v10[3] = &unk_1001B56B8;
  v11 = activitiesCopy;
  v12 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = activitiesCopy;
  [v8 performWithOptions:4 andBlock:v10];
}

- (void)saveActivity:(id)activity triggers:(id)triggers
{
  activityCopy = activity;
  triggersCopy = triggers;
  database = self->_database;
  v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100034FA8;
  v14[3] = &unk_1001B5E90;
  v14[4] = self;
  v15 = v10;
  v16 = activityCopy;
  v17 = triggersCopy;
  v11 = triggersCopy;
  v12 = activityCopy;
  v13 = v10;
  [v13 performWithOptions:4 andBlock:v14];
}

- (void)saveActivities:(id)activities groups:(id)groups triggersArray:(id)array
{
  activitiesCopy = activities;
  groupsCopy = groups;
  arrayCopy = array;
  database = self->_database;
  v12 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v13 = [(_DASCoreDataStorage *)database mocForProtectionClass:v12];

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_100035198;
  v25[4] = sub_1000351A8;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000351B0;
  v18[3] = &unk_1001B5FA8;
  v14 = activitiesCopy;
  v19 = v14;
  v24 = v25;
  v15 = groupsCopy;
  v20 = v15;
  selfCopy = self;
  v16 = v13;
  v22 = v16;
  v17 = arrayCopy;
  v23 = v17;
  [v16 performWithOptions:4 andBlock:v18];

  _Block_object_dispose(v25, 8);
}

- (void)createMOInMOC:(id)c group:(id)group activities:(id)activities
{
  cCopy = c;
  groupCopy = group;
  activitiesCopy = activities;
  v10 = objc_opt_new();
  v11 = +[NSMutableSet set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = activitiesCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v10 createOrUpdateActivity:*(*(&v20 + 1) + 8 * v16) context:{cCopy, v20}];
        [v11 addObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = objc_opt_new();
  v19 = [v18 createOrUpdateGroup:groupCopy context:cCopy];
  [v19 addActivities:v11];
}

- (void)saveGroup:(id)group
{
  groupCopy = group;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100035578;
  v10[3] = &unk_1001B56B8;
  v11 = groupCopy;
  v12 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = groupCopy;
  [v8 performWithOptions:4 andBlock:v10];
}

- (void)saveGroup:(id)group activity:(id)activity
{
  groupCopy = group;
  activityCopy = activity;
  database = self->_database;
  v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000356EC;
  v14[3] = &unk_1001B5E90;
  v14[4] = self;
  v15 = v10;
  v16 = groupCopy;
  v17 = activityCopy;
  v11 = activityCopy;
  v12 = groupCopy;
  v13 = v10;
  [v13 performWithOptions:4 andBlock:v14];
}

- (void)saveGroups:(id)groups activitiesArray:(id)array
{
  groupsCopy = groups;
  arrayCopy = array;
  if ([groupsCopy count])
  {
    database = self->_database;
    v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
    v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000358B0;
    v12[3] = &unk_1001B5E90;
    v13 = groupsCopy;
    selfCopy = self;
    v15 = v10;
    v16 = arrayCopy;
    v11 = v10;
    [v11 performWithOptions:4 andBlock:v12];
  }
}

- (void)loadAllTasks:(id)tasks startedTasks:(id)startedTasks
{
  tasksCopy = tasks;
  startedTasksCopy = startedTasks;
  database = self->_database;
  v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100035A94;
  v15[3] = &unk_1001B5E90;
  v16 = objc_opt_new();
  v17 = v10;
  v18 = tasksCopy;
  v19 = startedTasksCopy;
  v11 = startedTasksCopy;
  v12 = tasksCopy;
  v13 = v10;
  v14 = v16;
  [v13 performWithOptions:4 andBlock:v15];
}

- (void)saveActivity:(id)activity group:(id)group triggers:(id)triggers hasStarted:(BOOL)started
{
  activityCopy = activity;
  groupCopy = group;
  triggersCopy = triggers;
  database = self->_database;
  v14 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v15 = [(_DASCoreDataStorage *)database mocForProtectionClass:v14];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100035D1C;
  v20[3] = &unk_1001B5FD0;
  v20[4] = self;
  v21 = v15;
  v22 = activityCopy;
  v23 = groupCopy;
  v24 = triggersCopy;
  startedCopy = started;
  v16 = triggersCopy;
  v17 = groupCopy;
  v18 = activityCopy;
  v19 = v15;
  [v19 performWithOptions:4 andBlock:v20];
}

- (void)loadPendingLaunchTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = objc_opt_new();
  v8 = +[_DASActivityRecorder predicateForPendingActivities];
  v9 = +[_DASActivityRecorder predicateForLaunchActivities];
  v26[0] = v8;
  v26[1] = v9;
  v10 = [NSArray arrayWithObjects:v26 count:2];
  v11 = [NSCompoundPredicate andPredicateWithSubpredicates:v10];

  database = self->_database;
  v13 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v14 = [(_DASCoreDataStorage *)database mocForProtectionClass:v13];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100035F80;
  v20[3] = &unk_1001B5FF8;
  v15 = v5;
  v21 = v15;
  v22 = v7;
  v23 = v11;
  v24 = v14;
  v16 = tasksCopy;
  v25 = v16;
  v17 = v14;
  v18 = v11;
  v19 = v7;
  [v17 performWithOptions:4 andBlock:v20];

  objc_autoreleasePoolPop(v6);
}

- (void)loadStartedTasks:(id)tasks
{
  tasksCopy = tasks;
  v5 = objc_opt_new();
  v6 = +[_DASActivityRecorder predicateForStartedActivities];
  database = self->_database;
  v8 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v9 = [(_DASCoreDataStorage *)database mocForProtectionClass:v8];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000361DC;
  v14[3] = &unk_1001B5E90;
  v15 = v5;
  v16 = v6;
  v17 = v9;
  v18 = tasksCopy;
  v10 = tasksCopy;
  v11 = v9;
  v12 = v6;
  v13 = v5;
  [v11 performWithOptions:4 andBlock:v14];
}

- (void)loadAllGroups:(id)groups
{
  groupsCopy = groups;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003640C;
  v11[3] = &unk_1001B56B8;
  v12 = objc_opt_new();
  v13 = v7;
  v14 = groupsCopy;
  v8 = groupsCopy;
  v9 = v7;
  v10 = v12;
  [v9 performWithOptions:4 andBlock:v11];
}

- (void)updateActivityStarted:(id)started
{
  startedCopy = started;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100036644;
  v11[3] = &unk_1001B5E90;
  v12 = objc_opt_new();
  v13 = startedCopy;
  v14 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = startedCopy;
  v10 = v12;
  [v8 performWithOptions:4 andBlock:v11];
}

- (void)updateActivityCompleted:(id)completed
{
  completedCopy = completed;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100036794;
  v11[3] = &unk_1001B5E90;
  v12 = objc_opt_new();
  v13 = completedCopy;
  v14 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = completedCopy;
  v10 = v12;
  [v8 performWithOptions:4 andBlock:v11];
}

- (void)updateActivityCanceled:(id)canceled
{
  canceledCopy = canceled;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000368E4;
  v11[3] = &unk_1001B5E90;
  v12 = objc_opt_new();
  v13 = canceledCopy;
  v14 = v7;
  selfCopy = self;
  v8 = v7;
  v9 = canceledCopy;
  v10 = v12;
  [v8 performWithOptions:4 andBlock:v11];
}

- (void)deleteActivity:(id)activity
{
  activityCopy = activity;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  database = self->_database;
  v8 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v9 = [(_DASCoreDataStorage *)database mocForProtectionClass:v8];

  v10 = objc_opt_new();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100036AD0;
  v15[3] = &unk_1001B5FF8;
  v11 = v5;
  v16 = v11;
  v17 = v10;
  v12 = activityCopy;
  v18 = v12;
  v19 = v9;
  selfCopy = self;
  v13 = v9;
  v14 = v10;
  [v13 performWithOptions:4 andBlock:v15];

  objc_autoreleasePoolPop(v6);
}

- (void)deleteOldActivities
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v8 = objc_opt_new();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100036C40;
  v12[3] = &unk_1001B5E90;
  v9 = v3;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  selfCopy = self;
  v10 = v7;
  v11 = v8;
  [v10 performWithOptions:4 andBlock:v12];

  objc_autoreleasePoolPop(v4);
}

- (void)deleteActivitiesIfRequired
{
  v3 = os_transaction_create();
  v4 = objc_autoreleasePoolPush();
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v8 = objc_opt_new();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100036DB0;
  v12[3] = &unk_1001B5E90;
  v9 = v3;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  selfCopy = self;
  v10 = v7;
  v11 = v8;
  [v10 performWithOptions:4 andBlock:v12];

  objc_autoreleasePoolPop(v4);
}

@end