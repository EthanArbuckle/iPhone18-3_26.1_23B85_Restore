@interface NRSimpleReferenceCounter
- (BOOL)containsObject:(id)a3;
- (NRSimpleReferenceCounter)initWithIdentifier:(id)a3 allocateBlock:(id)a4 freeBlock:(id)a5 queue:(id)a6 async:(BOOL)a7;
- (id)description;
- (unint64_t)count;
- (void)_clearWithCleanupBlock:(id)a3;
- (void)_justDoItWithBlock:(id)a3;
- (void)addObject:(id)a3 withAllocationBlock:(id)a4;
- (void)clearWithCleanupBlock:(id)a3;
- (void)enumerateObjects:(id)a3;
- (void)removeObject:(id)a3 withCleanupBlock:(id)a4;
@end

@implementation NRSimpleReferenceCounter

- (NRSimpleReferenceCounter)initWithIdentifier:(id)a3 allocateBlock:(id)a4 freeBlock:(id)a5 queue:(id)a6 async:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v26.receiver = self;
  v26.super_class = NRSimpleReferenceCounter;
  v17 = [(NRSimpleReferenceCounter *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    v19 = objc_retainBlock(v14);
    allocateBlock = v18->_allocateBlock;
    v18->_allocateBlock = v19;

    v21 = objc_retainBlock(v15);
    freeBlock = v18->_freeBlock;
    v18->_freeBlock = v21;

    objc_storeStrong(&v18->_queue, a6);
    v18->_async = a7;
    v18->_mapLock._os_unfair_lock_opaque = 0;
    v23 = +[NSMapTable strongToStrongObjectsMapTable];
    map = v18->_map;
    v18->_map = v23;
  }

  return v18;
}

- (id)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@[%@]", v5, self->_identifier];

  return v6;
}

- (void)_justDoItWithBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block = v5;
    if (queue)
    {
      if (self->_async)
      {
        dispatch_async(queue, v5);
      }

      else
      {
        dispatch_assert_queue_not_V2(queue);
        dispatch_sync(self->_queue, block);
      }
    }

    else
    {
      v4 = v5[2](v5);
    }

    v5 = block;
  }

  _objc_release_x1(v4, v5);
}

- (void)_clearWithCleanupBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_mapLock);
  v5 = [(NSMapTable *)self->_map dictionaryRepresentation];
  [(NSMapTable *)self->_map removeAllObjects];
  os_unfair_lock_unlock(&self->_mapLock);
  if ([v5 count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [v6 objectForKeyedSubscript:{*(*(&v14 + 1) + 8 * v10), v14}];
          didRemoveBlock = self->_didRemoveBlock;
          if (didRemoveBlock)
          {
            didRemoveBlock[2](didRemoveBlock, v11);
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    if (v4)
    {
      v4[2](v4, 1);
    }

    freeBlock = self->_freeBlock;
    if (freeBlock)
    {
      freeBlock[2]();
    }
  }

  else if (v4)
  {
    v4[2](v4, 0);
  }
}

- (void)clearWithCleanupBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A2F74;
  v4[3] = &unk_100175FA0;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(NRSimpleReferenceCounter *)v5 _justDoItWithBlock:v4];
}

- (void)addObject:(id)a3 withAllocationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v20 = v12;
      v21 = 2048;
      v22 = v6;
      v23 = 2112;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting to add object %@[%p] to %@", buf, 0x20u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A3128;
  v15[3] = &unk_1001768B0;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [(NRSimpleReferenceCounter *)self _justDoItWithBlock:v15];
}

- (void)removeObject:(id)a3 withCleanupBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nr_daemon_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v10 = nr_daemon_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138412802;
      v20 = v12;
      v21 = 2048;
      v22 = v6;
      v23 = 2112;
      v24 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting to remove object %@[%p] from %@", buf, 0x20u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A35C0;
  v15[3] = &unk_1001768B0;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  [(NRSimpleReferenceCounter *)self _justDoItWithBlock:v15];
}

- (void)enumerateObjects:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A3B20;
    v6[3] = &unk_100175FA0;
    v6[4] = self;
    v7 = v4;
    [(NRSimpleReferenceCounter *)self _justDoItWithBlock:v6];
  }
}

- (BOOL)containsObject:(id)a3
{
  v4 = [NSValue valueWithNonretainedObject:a3];
  os_unfair_lock_lock(&self->_mapLock);
  v5 = [(NSMapTable *)self->_map objectForKey:v4];
  v6 = v5 != 0;

  os_unfair_lock_unlock(&self->_mapLock);
  return v6;
}

- (unint64_t)count
{
  os_unfair_lock_lock(&self->_mapLock);
  v3 = [(NSMapTable *)self->_map count];
  os_unfair_lock_unlock(&self->_mapLock);
  return v3;
}

@end