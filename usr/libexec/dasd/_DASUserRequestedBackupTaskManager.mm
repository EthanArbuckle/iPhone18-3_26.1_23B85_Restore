@interface _DASUserRequestedBackupTaskManager
+ (_DASUserRequestedBackupTaskManager)managerWithContext:(id)context;
+ (id)userRequestedBackupKeyPath;
- (BOOL)activityEligibleForRunning:(id)running;
- (_DASUserRequestedBackupTaskManager)initWithContext:(id)context;
- (id)currentClient;
- (unint64_t)backupTaskStatusForCompletedActivity:(int64_t)activity;
- (void)_queue_obtainPendingBackupTasks;
- (void)activitySubmitted:(id)submitted;
- (void)reportActivityNoLongerRunning:(id)running;
- (void)reportActivityRunning:(id)running;
- (void)syncRequested;
@end

@implementation _DASUserRequestedBackupTaskManager

+ (id)userRequestedBackupKeyPath
{
  if (qword_10020B910 != -1)
  {
    sub_10012D38C();
  }

  v3 = qword_10020B918;

  return v3;
}

- (_DASUserRequestedBackupTaskManager)initWithContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = _DASUserRequestedBackupTaskManager;
  v6 = [(_DASUserRequestedBackupTaskManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = os_log_create("com.apple.duetactivityscheduler", "syncOnBackup");
    log = v7->_log;
    v7->_log = v8;

    v10 = +[NSMutableDictionary dictionary];
    backupTasks = v7->_backupTasks;
    v7->_backupTasks = v10;

    v12 = +[NSMutableArray array];
    clientsWithErrors = v7->_clientsWithErrors;
    v7->_clientsWithErrors = v12;

    objc_storeStrong(&v7->_context, context);
    context = v7->_context;
    userRequestedBackupKeyPath = [objc_opt_class() userRequestedBackupKeyPath];
    v16 = [(_CDLocalContext *)context objectForKeyedSubscript:userRequestedBackupKeyPath];
    v7->_syncInProgress = [v16 BOOLValue];
  }

  return v7;
}

+ (_DASUserRequestedBackupTaskManager)managerWithContext:(id)context
{
  contextCopy = context;
  v4 = [objc_alloc(objc_opt_class()) initWithContext:contextCopy];

  return v4;
}

- (id)currentClient
{
  client = self->_client;
  if (!client)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_10020B920;
    v13 = qword_10020B920;
    if (!qword_10020B920)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100110988;
      v9[3] = &unk_1001B5798;
      v9[4] = &v10;
      sub_100110988(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_client;
    self->_client = v6;

    client = self->_client;
  }

  return client;
}

- (void)activitySubmitted:(id)submitted
{
  submittedCopy = submitted;
  os_unfair_lock_lock(&self->_lock);
  backupTasks = self->_backupTasks;
  name = [submittedCopy name];
  v7 = [(NSMutableDictionary *)backupTasks objectForKeyedSubscript:name];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    v9 = 3;
  }

  else
  {
    v9 = unsignedIntegerValue;
  }

  v10 = [NSNumber numberWithUnsignedInteger:v9];
  v11 = self->_backupTasks;
  name2 = [submittedCopy name];

  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:name2];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reportActivityRunning:(id)running
{
  runningCopy = running;
  os_unfair_lock_lock(&self->_lock);
  syncInProgress = self->_syncInProgress;
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (syncInProgress)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = runningCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ running", &v10, 0xCu);
    }

    backupTasks = self->_backupTasks;
    name = [runningCopy name];
    [(NSMutableDictionary *)backupTasks setObject:&off_1001CA978 forKeyedSubscript:name];
  }

  else if (v7)
  {
    v10 = 138412290;
    v11 = runningCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ running (no sync in progress)", &v10, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)backupTaskStatusForCompletedActivity:(int64_t)activity
{
  if (activity == 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)reportActivityNoLongerRunning:(id)running
{
  runningCopy = running;
  os_unfair_lock_lock(&self->_lock);
  syncInProgress = self->_syncInProgress;
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (syncInProgress)
  {
    if (v7)
    {
      *buf = 138412290;
      v40 = runningCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ done running", buf, 0xCu);
    }

    backupTasks = self->_backupTasks;
    name = [(NSMutableDictionary *)runningCopy name];
    v10 = [(NSMutableDictionary *)backupTasks objectForKeyedSubscript:name];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    if (![(_DASUserRequestedBackupTaskManager *)self isBackupStatusCompleted:unsignedIntegerValue])
    {
      v12 = [NSNumber numberWithUnsignedInteger:[(_DASUserRequestedBackupTaskManager *)self backupTaskStatusForCompletedActivity:[(NSMutableDictionary *)runningCopy completionStatus]]];
      v13 = self->_backupTasks;
      name2 = [(NSMutableDictionary *)runningCopy name];
      [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:name2];
    }

    v15 = self->_log;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_backupTasks;
      *buf = 138412290;
      v40 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Now backup tasks are: %@", buf, 0xCu);
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v17 = self->_backupTasks;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10011036C;
    v34[3] = &unk_1001B7098;
    v34[4] = self;
    v34[5] = &v35;
    [(NSMutableDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v34];
    if ([(NSMutableDictionary *)runningCopy completionStatus]== 3)
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10012D3A0(runningCopy, v18);
      }

      name3 = [(NSMutableDictionary *)runningCopy name];
      v47[0] = NSLocalizedDescriptionKey;
      v47[1] = @"client";
      v48[0] = @"Error attempting to sync local changes.";
      v48[1] = name3;
      v20 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
      v21 = [NSError errorWithDomain:@"XPCSyncOnBackup" code:228965071 userInfo:v20];

      [(NSMutableArray *)self->_clientsWithErrors addObject:v21];
    }

    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [NSNumber numberWithInteger:self->_totalClients];
      v24 = [NSNumber numberWithInteger:v36[3] - [(NSMutableArray *)self->_clientsWithErrors count]];
      v26 = self->_backupTasks;
      clientsWithErrors = self->_clientsWithErrors;
      *buf = 138413058;
      v40 = v23;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = clientsWithErrors;
      v45 = 2112;
      v46 = v26;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Total=%@ Completed=%@ Errors=%@ All=%@", buf, 0x2Au);
    }

    currentClient = [(_DASUserRequestedBackupTaskManager *)self currentClient];
    totalClients = self->_totalClients;
    v29 = v36[3];
    v30 = [(NSMutableArray *)self->_clientsWithErrors count];
    v31 = [(NSMutableArray *)self->_clientsWithErrors copy];
    [currentClient cloudSyncProgressUpdate:totalClients completedClients:v29 - v30 errors:v31];

    if (v36[3] == self->_totalClients)
    {
      self->_totalClients = 0;
      [(NSMutableArray *)self->_clientsWithErrors removeAllObjects];
      [(NSMutableDictionary *)self->_backupTasks removeAllObjects];
      self->_syncInProgress = 0;
      context = self->_context;
      v33 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
      [(_CDLocalContext *)context setObject:&off_1001CA990 forKeyedSubscript:v33];
    }

    os_unfair_lock_unlock(&self->_lock);
    _Block_object_dispose(&v35, 8);
  }

  else
  {
    if (v7)
    {
      *buf = 138412290;
      v40 = runningCopy;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ done running (no sync in progress)", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)activityEligibleForRunning:(id)running
{
  runningCopy = running;
  os_unfair_lock_lock(&self->_lock);
  syncInProgress = self->_syncInProgress;
  backupTasks = self->_backupTasks;
  name = [runningCopy name];

  v8 = [(NSMutableDictionary *)backupTasks objectForKeyedSubscript:name];

  v9 = v8 != 0 && syncInProgress;
  if ([v8 unsignedIntegerValue])
  {
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)_queue_obtainPendingBackupTasks
{
  [(NSMutableDictionary *)self->_backupTasks removeAllObjects];
  v3 = +[_DASDaemon sharedInstance];
  allPendingSyncOnBackupTasks = [v3 allPendingSyncOnBackupTasks];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = allPendingSyncOnBackupTasks;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        backupTasks = self->_backupTasks;
        name = [*(*(&v12 + 1) + 8 * v9) name];
        [(NSMutableDictionary *)backupTasks setObject:&off_1001CA9A8 forKeyedSubscript:name];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)syncRequested
{
  os_unfair_lock_lock(&self->_lock);
  context = self->_context;
  v4 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
  v5 = [(_CDLocalContext *)context objectForKeyedSubscript:v4];
  bOOLValue = [v5 BOOLValue];

  log = self->_log;
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v8)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Sync requested", &v15, 2u);
    }

    [(_DASUserRequestedBackupTaskManager *)self _queue_obtainPendingBackupTasks];
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      backupTasks = self->_backupTasks;
      v15 = 138412290;
      v16 = backupTasks;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pending tasks are %@", &v15, 0xCu);
    }

    self->_totalClients = [(NSMutableDictionary *)self->_backupTasks count];
    self->_syncInProgress = 1;
    if (![(NSMutableDictionary *)self->_backupTasks count])
    {
      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No pending tasks, reporting update!", &v15, 2u);
      }

      currentClient = [(_DASUserRequestedBackupTaskManager *)self currentClient];
      [currentClient cloudSyncProgressUpdate:0 completedClients:0 errors:&__NSArray0__struct];

      self->_syncInProgress = 0;
      v13 = self->_context;
      v14 = +[_DASUserRequestedBackupTaskManager userRequestedBackupKeyPath];
      [(_CDLocalContext *)v13 setObject:&off_1001CA990 forKeyedSubscript:v14];
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Sync ended", &v15, 2u);
    }

    self->_syncInProgress = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end