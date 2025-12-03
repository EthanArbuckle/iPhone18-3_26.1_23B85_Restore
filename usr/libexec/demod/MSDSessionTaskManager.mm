@interface MSDSessionTaskManager
- (MSDSessionTaskManager)init;
- (id)getSessionTask:(id)task;
- (id)getTaskInState:(int)state;
- (void)addSessionTask:(id)task;
- (void)cancelAndRemoveAllSessionTask;
- (void)removeSessionTask:(id)task;
@end

@implementation MSDSessionTaskManager

- (MSDSessionTaskManager)init
{
  v6.receiver = self;
  v6.super_class = MSDSessionTaskManager;
  v2 = [(MSDSessionTaskManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable strongToStrongObjectsMapTable];
    [(MSDSessionTaskManager *)v2 setSharedStore:v3];

    [(MSDSessionTaskManager *)v2 setSharedStoreLock:0];
    v4 = v2;
  }

  return v2;
}

- (id)getSessionTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_sharedStoreLock);
  sharedStore = [(MSDSessionTaskManager *)self sharedStore];
  v6 = [sharedStore objectForKey:taskCopy];

  os_unfair_lock_unlock(&self->_sharedStoreLock);

  return v6;
}

- (void)addSessionTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_sharedStoreLock);
  sharedStore = [(MSDSessionTaskManager *)self sharedStore];
  task = [taskCopy task];
  [sharedStore setObject:taskCopy forKey:task];

  os_unfair_lock_unlock(&self->_sharedStoreLock);
}

- (void)removeSessionTask:(id)task
{
  taskCopy = task;
  os_unfair_lock_lock(&self->_sharedStoreLock);
  sharedStore = [(MSDSessionTaskManager *)self sharedStore];
  task = [taskCopy task];

  [sharedStore removeObjectForKey:task];

  os_unfair_lock_unlock(&self->_sharedStoreLock);
}

- (void)cancelAndRemoveAllSessionTask
{
  os_unfair_lock_lock(&self->_sharedStoreLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sharedStore = [(MSDSessionTaskManager *)self sharedStore];
  v4 = [sharedStore countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(sharedStore);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        sharedStore2 = [(MSDSessionTaskManager *)self sharedStore];
        v10 = [sharedStore2 objectForKey:v8];

        if (![v10 state])
        {
          task = [v10 task];
          [task cancel];
        }

        sharedStore3 = [(MSDSessionTaskManager *)self sharedStore];
        [sharedStore3 removeObjectForKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [sharedStore countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_sharedStoreLock);
}

- (id)getTaskInState:(int)state
{
  v5 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_sharedStoreLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  sharedStore = [(MSDSessionTaskManager *)self sharedStore];
  v7 = [sharedStore countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(sharedStore);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        sharedStore2 = [(MSDSessionTaskManager *)self sharedStore];
        v13 = [sharedStore2 objectForKey:v11];

        if ([v13 state] == state)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [sharedStore countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_sharedStoreLock);

  return v5;
}

@end