@interface NDUserSyncStakeholder
+ (BOOL)EDUMode;
+ (id)sharedStakeholder;
- (NDUserSyncStakeholder)init;
- (id)startUMTask:(id)a3 taskInfo:(id)a4;
- (void)endBridgingUMTask:(id)a3;
- (void)endUMTask:(id)a3;
- (void)restoredTaskActive:(id)a3;
- (void)restoredTaskEnqueued:(id)a3;
- (void)startBridgingUMTask:(id)a3;
- (void)tasksHaveBeenEnqueued;
- (void)uploadContent;
@end

@implementation NDUserSyncStakeholder

+ (id)sharedStakeholder
{
  if (qword_1000EB1C0 != -1)
  {
    dispatch_once(&qword_1000EB1C0, &stru_1000D5A58);
  }

  v3 = qword_1000EB1C8;

  return v3;
}

+ (BOOL)EDUMode
{
  v2 = +[UMUserManager sharedManager];
  v3 = [v2 isMultiUser];

  return v3;
}

- (void)tasksHaveBeenEnqueued
{
  os_unfair_lock_lock(&self->_monitorTaskLock);
  self->_tasksEnqueued = 1;
  if (![(NSMutableSet *)self->_monitorTaskSet count])
  {
    [(UMUserSyncTask *)self->_monitorTask end];
    monitorTask = self->_monitorTask;
    self->_monitorTask = 0;

    self->_tasksInitialized = 1;
  }

  os_unfair_lock_unlock(&self->_monitorTaskLock);
}

- (void)restoredTaskActive:(id)a3
{
  v4 = a3;
  if (!self->_tasksInitialized)
  {
    v6 = v4;
    os_unfair_lock_lock(&self->_monitorTaskLock);
    [(NSMutableSet *)self->_monitorTaskSet removeObject:v6];
    if (![(NSMutableSet *)self->_monitorTaskSet count]&& self->_tasksEnqueued)
    {
      [(UMUserSyncTask *)self->_monitorTask end];
      monitorTask = self->_monitorTask;
      self->_monitorTask = 0;

      self->_tasksInitialized = 1;
    }

    os_unfair_lock_unlock(&self->_monitorTaskLock);
    v4 = v6;
  }
}

- (void)restoredTaskEnqueued:(id)a3
{
  v4 = a3;
  if (!self->_tasksInitialized)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_monitorTaskLock);
    [(NSMutableSet *)self->_monitorTaskSet addObject:v5];
    os_unfair_lock_unlock(&self->_monitorTaskLock);
    v4 = v5;
  }
}

- (void)uploadContent
{
  os_unfair_lock_lock(&self->_monitorTaskLock);
  if (!self->_tasksInitialized)
  {
    v3 = [UMUserSyncTask taskWithName:@"nsurlsession bg task" reason:@"monitor"];
    monitorTask = self->_monitorTask;
    self->_monitorTask = v3;

    [(UMUserSyncTask *)self->_monitorTask begin];
  }

  os_unfair_lock_unlock(&self->_monitorTaskLock);
}

- (void)endUMTask:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_activeTasksLock);
    [(NSMutableSet *)self->_activeTasks removeObject:v4];
    os_unfair_lock_unlock(&self->_activeTasksLock);
    [v4 end];
    v5 = +[NSURLCredentialStorage sharedCredentialStorage];
    v6 = [v5 allCredentials];

    if (v6)
    {
      v7 = +[NSMutableSet set];
      os_unfair_lock_lock(&self->_activeTasksLock);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = self->_activeTasks;
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [*(*(&v16 + 1) + 8 * v11) bundleID];
            [v7 addObject:v12];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v9);
      }

      os_unfair_lock_unlock(&self->_activeTasksLock);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10005F938;
      v14[3] = &unk_1000D5AA8;
      v13 = v7;
      v15 = v13;
      [v6 enumerateKeysAndObjectsUsingBlock:v14];
    }
  }
}

- (void)endBridgingUMTask:(id)a3
{
  v4 = a3;
  bridgeTasks = self->_bridgeTasks;
  v10 = v4;
  v6 = [v4 uniqueIdentifier];
  v7 = [(NSMutableDictionary *)bridgeTasks objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 end];
    v8 = self->_bridgeTasks;
    v9 = [v10 uniqueIdentifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:v9];
  }
}

- (void)startBridgingUMTask:(id)a3
{
  v12 = a3;
  if (+[NDUserSyncStakeholder EDUMode])
  {
    v4 = +[Daemon sharedDaemon];
    if ([v4 isInSyncBubble])
    {
    }

    else
    {
      if ([v12 taskKind] != 1)
      {
        v9 = v4;
        goto LABEL_8;
      }

      v5 = [v12 originalRequest];
      [v5 _timeWindowDelay];
      v7 = v6;

      if (v7 != 0.0)
      {
        goto LABEL_9;
      }
    }

    v8 = [v12 bundleID];
    v9 = [UMUserSyncTask taskWithName:@"nsurlsession bg task" reason:@"retry" forBundleID:v8];

    [v9 begin];
    bridgeTasks = self->_bridgeTasks;
    v11 = [v12 uniqueIdentifier];
    [(NSMutableDictionary *)bridgeTasks setObject:v9 forKeyedSubscript:v11];

LABEL_8:
  }

LABEL_9:
}

- (id)startUMTask:(id)a3 taskInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[NDUserSyncStakeholder EDUMode])
  {
    v8 = +[Daemon sharedDaemon];
    if ([v8 isInSyncBubble])
    {

LABEL_6:
      v12 = [UMUserSyncTask taskWithName:@"nsurlsession bg task" reason:@"client" forBundleID:v6];
      os_unfair_lock_lock(&self->_activeTasksLock);
      [(NSMutableSet *)self->_activeTasks addObject:v12];
      os_unfair_lock_unlock(&self->_activeTasksLock);
      [v12 begin];
      goto LABEL_9;
    }

    if ([v7 taskKind] == 1)
    {
      v9 = [v7 originalRequest];
      [v9 _timeWindowDelay];
      v11 = v10;

      if (v11 == 0.0)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (NDUserSyncStakeholder)init
{
  v10.receiver = self;
  v10.super_class = NDUserSyncStakeholder;
  v2 = [(NDUserSyncStakeholder *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    *(v2 + 12) = 0;
    v2[8] = 0;
    v5 = objc_opt_new();
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    v7 = objc_opt_new();
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;
  }

  return v2;
}

@end