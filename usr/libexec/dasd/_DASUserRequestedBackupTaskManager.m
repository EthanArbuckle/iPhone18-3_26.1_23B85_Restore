@interface _DASUserRequestedBackupTaskManager
+ (_DASUserRequestedBackupTaskManager)managerWithContext:(id)a3;
+ (id)userRequestedBackupKeyPath;
- (BOOL)activityEligibleForRunning:(id)a3;
- (_DASUserRequestedBackupTaskManager)initWithContext:(id)a3;
- (id)currentClient;
- (unint64_t)backupTaskStatusForCompletedActivity:(int64_t)a3;
- (void)_queue_obtainPendingBackupTasks;
- (void)activitySubmitted:(id)a3;
- (void)reportActivityNoLongerRunning:(id)a3;
- (void)reportActivityRunning:(id)a3;
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

- (_DASUserRequestedBackupTaskManager)initWithContext:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v7->_context, a3);
    context = v7->_context;
    v15 = [objc_opt_class() userRequestedBackupKeyPath];
    v16 = [(_CDLocalContext *)context objectForKeyedSubscript:v15];
    v7->_syncInProgress = [v16 BOOLValue];
  }

  return v7;
}

+ (_DASUserRequestedBackupTaskManager)managerWithContext:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithContext:v3];

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

- (void)activitySubmitted:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  backupTasks = self->_backupTasks;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)backupTasks objectForKeyedSubscript:v6];
  v8 = [v7 unsignedIntegerValue];

  if (v8 == 1)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  v10 = [NSNumber numberWithUnsignedInteger:v9];
  v11 = self->_backupTasks;
  v12 = [v4 name];

  [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reportActivityRunning:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  syncInProgress = self->_syncInProgress;
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (syncInProgress)
  {
    if (v7)
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ running", &v10, 0xCu);
    }

    backupTasks = self->_backupTasks;
    v9 = [v4 name];
    [(NSMutableDictionary *)backupTasks setObject:&off_1001CA978 forKeyedSubscript:v9];
  }

  else if (v7)
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ running (no sync in progress)", &v10, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)backupTaskStatusForCompletedActivity:(int64_t)a3
{
  if (a3 == 3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)reportActivityNoLongerRunning:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  syncInProgress = self->_syncInProgress;
  log = self->_log;
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (syncInProgress)
  {
    if (v7)
    {
      *buf = 138412290;
      v40 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ done running", buf, 0xCu);
    }

    backupTasks = self->_backupTasks;
    v9 = [(NSMutableDictionary *)v4 name];
    v10 = [(NSMutableDictionary *)backupTasks objectForKeyedSubscript:v9];
    v11 = [v10 unsignedIntegerValue];

    if (![(_DASUserRequestedBackupTaskManager *)self isBackupStatusCompleted:v11])
    {
      v12 = [NSNumber numberWithUnsignedInteger:[(_DASUserRequestedBackupTaskManager *)self backupTaskStatusForCompletedActivity:[(NSMutableDictionary *)v4 completionStatus]]];
      v13 = self->_backupTasks;
      v14 = [(NSMutableDictionary *)v4 name];
      [(NSMutableDictionary *)v13 setObject:v12 forKeyedSubscript:v14];
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
    if ([(NSMutableDictionary *)v4 completionStatus]== 3)
    {
      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10012D3A0(v4, v18);
      }

      v19 = [(NSMutableDictionary *)v4 name];
      v47[0] = NSLocalizedDescriptionKey;
      v47[1] = @"client";
      v48[0] = @"Error attempting to sync local changes.";
      v48[1] = v19;
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

    v27 = [(_DASUserRequestedBackupTaskManager *)self currentClient];
    totalClients = self->_totalClients;
    v29 = v36[3];
    v30 = [(NSMutableArray *)self->_clientsWithErrors count];
    v31 = [(NSMutableArray *)self->_clientsWithErrors copy];
    [v27 cloudSyncProgressUpdate:totalClients completedClients:v29 - v30 errors:v31];

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
      v40 = v4;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "%@ done running (no sync in progress)", buf, 0xCu);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)activityEligibleForRunning:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  syncInProgress = self->_syncInProgress;
  backupTasks = self->_backupTasks;
  v7 = [v4 name];

  v8 = [(NSMutableDictionary *)backupTasks objectForKeyedSubscript:v7];

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
  v4 = [v3 allPendingSyncOnBackupTasks];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
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
        v11 = [*(*(&v12 + 1) + 8 * v9) name];
        [(NSMutableDictionary *)backupTasks setObject:&off_1001CA9A8 forKeyedSubscript:v11];

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
  v6 = [v5 BOOLValue];

  log = self->_log;
  v8 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (v6)
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

      v12 = [(_DASUserRequestedBackupTaskManager *)self currentClient];
      [v12 cloudSyncProgressUpdate:0 completedClients:0 errors:&__NSArray0__struct];

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