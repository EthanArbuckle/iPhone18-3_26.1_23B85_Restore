@interface MSDSessionTaskManager
- (MSDSessionTaskManager)init;
- (id)getSessionTask:(id)a3;
- (id)getTaskInState:(int)a3;
- (void)addSessionTask:(id)a3;
- (void)cancelAndRemoveAllSessionTask;
- (void)removeSessionTask:(id)a3;
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

- (id)getSessionTask:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_sharedStoreLock);
  v5 = [(MSDSessionTaskManager *)self sharedStore];
  v6 = [v5 objectForKey:v4];

  os_unfair_lock_unlock(&self->_sharedStoreLock);

  return v6;
}

- (void)addSessionTask:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_sharedStoreLock);
  v5 = [(MSDSessionTaskManager *)self sharedStore];
  v6 = [v4 task];
  [v5 setObject:v4 forKey:v6];

  os_unfair_lock_unlock(&self->_sharedStoreLock);
}

- (void)removeSessionTask:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_sharedStoreLock);
  v5 = [(MSDSessionTaskManager *)self sharedStore];
  v6 = [v4 task];

  [v5 removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_sharedStoreLock);
}

- (void)cancelAndRemoveAllSessionTask
{
  os_unfair_lock_lock(&self->_sharedStoreLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(MSDSessionTaskManager *)self sharedStore];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(MSDSessionTaskManager *)self sharedStore];
        v10 = [v9 objectForKey:v8];

        if (![v10 state])
        {
          v11 = [v10 task];
          [v11 cancel];
        }

        v12 = [(MSDSessionTaskManager *)self sharedStore];
        [v12 removeObjectForKey:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_sharedStoreLock);
}

- (id)getTaskInState:(int)a3
{
  v5 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_sharedStoreLock);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(MSDSessionTaskManager *)self sharedStore];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(MSDSessionTaskManager *)self sharedStore];
        v13 = [v12 objectForKey:v11];

        if ([v13 state] == a3)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_sharedStoreLock);

  return v5;
}

@end