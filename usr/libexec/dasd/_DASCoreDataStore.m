@interface _DASCoreDataStore
- (void)createMOInMOC:(id)a3 activity:(id)a4 group:(id)a5 triggers:(id)a6;
- (void)createMOInMOC:(id)a3 group:(id)a4 activities:(id)a5;
- (void)deleteActivitiesIfRequired;
- (void)deleteActivity:(id)a3;
- (void)deleteOldActivities;
- (void)loadAllGroups:(id)a3;
- (void)loadAllTasks:(id)a3 startedTasks:(id)a4;
- (void)loadPendingLaunchTasks:(id)a3;
- (void)loadStartedTasks:(id)a3;
- (void)mocSaveAndReset:(id)a3;
- (void)saveActivities:(id)a3;
- (void)saveActivities:(id)a3 groups:(id)a4 triggersArray:(id)a5;
- (void)saveActivity:(id)a3;
- (void)saveActivity:(id)a3 group:(id)a4 triggers:(id)a5 hasStarted:(BOOL)a6;
- (void)saveActivity:(id)a3 triggers:(id)a4;
- (void)saveGroup:(id)a3;
- (void)saveGroup:(id)a3 activity:(id)a4;
- (void)saveGroups:(id)a3 activitiesArray:(id)a4;
- (void)updateActivityCanceled:(id)a3;
- (void)updateActivityCompleted:(id)a3;
- (void)updateActivityStarted:(id)a3;
@end

@implementation _DASCoreDataStore

- (void)mocSaveAndReset:(id)a3
{
  v3 = a3;
  if ([v3 hasChanges])
  {
    v8 = 0;
    v4 = [v3 save:&v8];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = +[_DASDaemonLogger defaultCategory];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 userInfo];
        *buf = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CoreData save error:  : %@, %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  [v3 reset];
}

- (void)createMOInMOC:(id)a3 activity:(id)a4 group:(id)a5 triggers:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v24 = objc_opt_new();
  v13 = [v24 createOrUpdateActivity:v10 context:v9];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v12;
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
        v21 = [v20 fetchOrCreateTrigger:v19 managedObjectContext:v9];
        [v21 addActivitiesObject:v13];
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v16);
  }

  if (v11)
  {
    v22 = objc_opt_new();
    v23 = [v22 createOrUpdateGroup:v11 context:v9];
    [v23 addActivitiesObject:v13];
  }
}

- (void)saveActivity:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100034C24;
  v10[3] = &unk_1001B56B8;
  v11 = v4;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v4;
  [v8 performWithOptions:4 andBlock:v10];
}

- (void)saveActivities:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100034D74;
  v10[3] = &unk_1001B56B8;
  v11 = v4;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v4;
  [v8 performWithOptions:4 andBlock:v10];
}

- (void)saveActivity:(id)a3 triggers:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100034FA8;
  v14[3] = &unk_1001B5E90;
  v14[4] = self;
  v15 = v10;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v10;
  [v13 performWithOptions:4 andBlock:v14];
}

- (void)saveActivities:(id)a3 groups:(id)a4 triggersArray:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v14 = v8;
  v19 = v14;
  v24 = v25;
  v15 = v9;
  v20 = v15;
  v21 = self;
  v16 = v13;
  v22 = v16;
  v17 = v10;
  v23 = v17;
  [v16 performWithOptions:4 andBlock:v18];

  _Block_object_dispose(v25, 8);
}

- (void)createMOInMOC:(id)a3 group:(id)a4 activities:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = +[NSMutableSet set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v9;
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

        v17 = [v10 createOrUpdateActivity:*(*(&v20 + 1) + 8 * v16) context:{v7, v20}];
        [v11 addObject:v17];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = objc_opt_new();
  v19 = [v18 createOrUpdateGroup:v8 context:v7];
  [v19 addActivities:v11];
}

- (void)saveGroup:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100035578;
  v10[3] = &unk_1001B56B8;
  v11 = v4;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = v4;
  [v8 performWithOptions:4 andBlock:v10];
}

- (void)saveGroup:(id)a3 activity:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000356EC;
  v14[3] = &unk_1001B5E90;
  v14[4] = self;
  v15 = v10;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v10;
  [v13 performWithOptions:4 andBlock:v14];
}

- (void)saveGroups:(id)a3 activitiesArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    database = self->_database;
    v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
    v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000358B0;
    v12[3] = &unk_1001B5E90;
    v13 = v6;
    v14 = self;
    v15 = v10;
    v16 = v7;
    v11 = v10;
    [v11 performWithOptions:4 andBlock:v12];
  }
}

- (void)loadAllTasks:(id)a3 startedTasks:(id)a4
{
  v6 = a3;
  v7 = a4;
  database = self->_database;
  v9 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v10 = [(_DASCoreDataStorage *)database mocForProtectionClass:v9];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100035A94;
  v15[3] = &unk_1001B5E90;
  v16 = objc_opt_new();
  v17 = v10;
  v18 = v6;
  v19 = v7;
  v11 = v7;
  v12 = v6;
  v13 = v10;
  v14 = v16;
  [v13 performWithOptions:4 andBlock:v15];
}

- (void)saveActivity:(id)a3 group:(id)a4 triggers:(id)a5 hasStarted:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  database = self->_database;
  v14 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v15 = [(_DASCoreDataStorage *)database mocForProtectionClass:v14];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100035D1C;
  v20[3] = &unk_1001B5FD0;
  v20[4] = self;
  v21 = v15;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = a6;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  v19 = v15;
  [v19 performWithOptions:4 andBlock:v20];
}

- (void)loadPendingLaunchTasks:(id)a3
{
  v4 = a3;
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
  v16 = v4;
  v25 = v16;
  v17 = v14;
  v18 = v11;
  v19 = v7;
  [v17 performWithOptions:4 andBlock:v20];

  objc_autoreleasePoolPop(v6);
}

- (void)loadStartedTasks:(id)a3
{
  v4 = a3;
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
  v18 = v4;
  v10 = v4;
  v11 = v9;
  v12 = v6;
  v13 = v5;
  [v11 performWithOptions:4 andBlock:v14];
}

- (void)loadAllGroups:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10003640C;
  v11[3] = &unk_1001B56B8;
  v12 = objc_opt_new();
  v13 = v7;
  v14 = v4;
  v8 = v4;
  v9 = v7;
  v10 = v12;
  [v9 performWithOptions:4 andBlock:v11];
}

- (void)updateActivityStarted:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100036644;
  v11[3] = &unk_1001B5E90;
  v12 = objc_opt_new();
  v13 = v4;
  v14 = v7;
  v15 = self;
  v8 = v7;
  v9 = v4;
  v10 = v12;
  [v8 performWithOptions:4 andBlock:v11];
}

- (void)updateActivityCompleted:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100036794;
  v11[3] = &unk_1001B5E90;
  v12 = objc_opt_new();
  v13 = v4;
  v14 = v7;
  v15 = self;
  v8 = v7;
  v9 = v4;
  v10 = v12;
  [v8 performWithOptions:4 andBlock:v11];
}

- (void)updateActivityCanceled:(id)a3
{
  v4 = a3;
  database = self->_database;
  v6 = +[_DASDataProtectionStateMonitor dataProtectionClassC];
  v7 = [(_DASCoreDataStorage *)database mocForProtectionClass:v6];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000368E4;
  v11[3] = &unk_1001B5E90;
  v12 = objc_opt_new();
  v13 = v4;
  v14 = v7;
  v15 = self;
  v8 = v7;
  v9 = v4;
  v10 = v12;
  [v8 performWithOptions:4 andBlock:v11];
}

- (void)deleteActivity:(id)a3
{
  v4 = a3;
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
  v12 = v4;
  v18 = v12;
  v19 = v9;
  v20 = self;
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
  v16 = self;
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
  v16 = self;
  v10 = v7;
  v11 = v8;
  [v10 performWithOptions:4 andBlock:v12];

  objc_autoreleasePoolPop(v4);
}

@end