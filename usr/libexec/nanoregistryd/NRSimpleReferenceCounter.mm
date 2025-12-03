@interface NRSimpleReferenceCounter
- (BOOL)containsObject:(id)object;
- (NRSimpleReferenceCounter)initWithIdentifier:(id)identifier allocateBlock:(id)block freeBlock:(id)freeBlock queue:(id)queue async:(BOOL)async;
- (id)description;
- (unint64_t)count;
- (void)_clearWithCleanupBlock:(id)block;
- (void)_justDoItWithBlock:(id)block;
- (void)addObject:(id)object withAllocationBlock:(id)block;
- (void)clearWithCleanupBlock:(id)block;
- (void)enumerateObjects:(id)objects;
- (void)removeObject:(id)object withCleanupBlock:(id)block;
@end

@implementation NRSimpleReferenceCounter

- (NRSimpleReferenceCounter)initWithIdentifier:(id)identifier allocateBlock:(id)block freeBlock:(id)freeBlock queue:(id)queue async:(BOOL)async
{
  identifierCopy = identifier;
  blockCopy = block;
  freeBlockCopy = freeBlock;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = NRSimpleReferenceCounter;
  v17 = [(NRSimpleReferenceCounter *)&v26 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    v19 = objc_retainBlock(blockCopy);
    allocateBlock = v18->_allocateBlock;
    v18->_allocateBlock = v19;

    v21 = objc_retainBlock(freeBlockCopy);
    freeBlock = v18->_freeBlock;
    v18->_freeBlock = v21;

    objc_storeStrong(&v18->_queue, queue);
    v18->_async = async;
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

- (void)_justDoItWithBlock:(id)block
{
  blockCopy = block;
  blockCopy2 = blockCopy;
  if (blockCopy)
  {
    queue = self->_queue;
    block = blockCopy2;
    if (queue)
    {
      if (self->_async)
      {
        dispatch_async(queue, blockCopy2);
      }

      else
      {
        dispatch_assert_queue_not_V2(queue);
        dispatch_sync(self->_queue, block);
      }
    }

    else
    {
      blockCopy = blockCopy2[2](blockCopy2);
    }

    blockCopy2 = block;
  }

  _objc_release_x1(blockCopy, blockCopy2);
}

- (void)_clearWithCleanupBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock(&self->_mapLock);
  dictionaryRepresentation = [(NSMapTable *)self->_map dictionaryRepresentation];
  [(NSMapTable *)self->_map removeAllObjects];
  os_unfair_lock_unlock(&self->_mapLock);
  if ([dictionaryRepresentation count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = dictionaryRepresentation;
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

    if (blockCopy)
    {
      blockCopy[2](blockCopy, 1);
    }

    freeBlock = self->_freeBlock;
    if (freeBlock)
    {
      freeBlock[2]();
    }
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, 0);
  }
}

- (void)clearWithCleanupBlock:(id)block
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A2F74;
  v4[3] = &unk_100175FA0;
  selfCopy = self;
  blockCopy = block;
  v3 = blockCopy;
  [(NRSimpleReferenceCounter *)selfCopy _justDoItWithBlock:v4];
}

- (void)addObject:(id)object withAllocationBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
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
      v22 = objectCopy;
      v23 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting to add object %@[%p] to %@", buf, 0x20u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A3128;
  v15[3] = &unk_1001768B0;
  v16 = objectCopy;
  selfCopy2 = self;
  v18 = blockCopy;
  v13 = blockCopy;
  v14 = objectCopy;
  [(NRSimpleReferenceCounter *)self _justDoItWithBlock:v15];
}

- (void)removeObject:(id)object withCleanupBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
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
      v22 = objectCopy;
      v23 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting to remove object %@[%p] from %@", buf, 0x20u);
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000A35C0;
  v15[3] = &unk_1001768B0;
  v16 = objectCopy;
  selfCopy2 = self;
  v18 = blockCopy;
  v13 = blockCopy;
  v14 = objectCopy;
  [(NRSimpleReferenceCounter *)self _justDoItWithBlock:v15];
}

- (void)enumerateObjects:(id)objects
{
  objectsCopy = objects;
  v5 = objectsCopy;
  if (objectsCopy)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A3B20;
    v6[3] = &unk_100175FA0;
    v6[4] = self;
    v7 = objectsCopy;
    [(NRSimpleReferenceCounter *)self _justDoItWithBlock:v6];
  }
}

- (BOOL)containsObject:(id)object
{
  v4 = [NSValue valueWithNonretainedObject:object];
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