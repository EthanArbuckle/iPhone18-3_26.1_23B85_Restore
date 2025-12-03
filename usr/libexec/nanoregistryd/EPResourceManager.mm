@interface EPResourceManager
+ (id)stringForResourceAvailability:(unint64_t)availability;
- (EPResourceManager)initWithQueue:(id)queue;
- (id)newResourceWithDelegate:(id)delegate;
- (int64_t)referenceCounter;
- (void)createResource;
- (void)dealloc;
- (void)destroyResource;
- (void)enumerateResourcesWithBlock:(id)block;
- (void)invalidate;
- (void)removeResource:(void *)resource async:(BOOL)async;
- (void)setAvailability:(unint64_t)availability withError:(id)error;
- (void)setNeedsResource:(BOOL)resource;
- (void)trackResource:(id)resource;
- (void)updateNeedsResource;
- (void)updateResourceAvailability;
@end

@implementation EPResourceManager

- (EPResourceManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = EPResourceManager;
  v6 = [(EPResourceManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = +[NSPointerArray weakObjectsPointerArray];
    resources = v7->_resources;
    v7->_resources = v8;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EPResourceManager;
  [(EPResourceManager *)&v2 dealloc];
}

+ (id)stringForResourceAvailability:(unint64_t)availability
{
  v3 = @"EPResourceAvailabilityResourceIsBecomingAvailable";
  if (availability == 1)
  {
    v3 = @"EPResourceAvailabilityResourceIsAvailable";
  }

  if (availability == 2)
  {
    return @"EPResourceAvailabilityResourceWillNotBecomeAvailable";
  }

  else
  {
    return v3;
  }
}

- (id)newResourceWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "resourceClass"))];

  [(EPResourceManager *)self trackResource:v5];
  [(EPResourceManager *)self resourceWasAdded:v5];
  return v5;
}

- (void)trackResource:(id)resource
{
  resourceCopy = resource;
  if (resourceCopy)
  {
    allObjects = [(NSPointerArray *)self->_resources allObjects];
    v6 = [allObjects containsObject:resourceCopy];

    if (v6)
    {
      v7 = sub_1000A9948();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = sub_1000A9948();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = 138412546;
          v13 = v11;
          v14 = 2048;
          v15 = resourceCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@[%p]: Avoiding a duplicate resource pointer (Crazy!)", &v12, 0x16u);
        }
      }
    }

    else
    {
      [(NSPointerArray *)self->_resources addPointer:resourceCopy];
    }

    [(NSPointerArray *)self->_resources compact];
    [(EPResourceManager *)self updateNeedsResource];
    [resourceCopy setAvailability:self->_availability withError:self->_error];
  }
}

- (int64_t)referenceCounter
{
  allObjects = [(NSPointerArray *)self->_resources allObjects];
  v3 = [allObjects count];

  return v3;
}

- (void)updateNeedsResource
{
  allObjects = [(NSPointerArray *)self->_resources allObjects];
  -[EPResourceManager setNeedsResource:](self, "setNeedsResource:", [allObjects count] != 0);
}

- (void)removeResource:(void *)resource async:(BOOL)async
{
  asyncCopy = async;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CE1D8;
  v8[3] = &unk_1001761C0;
  v8[4] = self;
  v8[5] = resource;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (asyncCopy)
  {
    dispatch_async(self->_queue, v6);
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)setNeedsResource:(BOOL)resource
{
  if (self->_needsResource != resource)
  {
    self->_needsResource = resource;
    if (resource)
    {
      objc_storeStrong(&self->_me, self);

      [(EPResourceManager *)self createResource];
    }

    else
    {
      [(EPResourceManager *)self destroyResource];
      me = self->_me;
      self->_me = 0;
    }
  }
}

- (void)setAvailability:(unint64_t)availability withError:(id)error
{
  errorCopy = error;
  if (self->_availability != availability || (error = self->_error, error != errorCopy) && ([(NSError *)error isEqual:errorCopy]& 1) == 0)
  {
    self->_availability = availability;
    objc_storeStrong(&self->_error, error);
    if (errorCopy)
    {
      v9 = sub_1000A98C0();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = sub_1000A98C0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001036E4(self, errorCopy, v11);
        }
      }
    }

    [(EPResourceManager *)self updateResourceAvailability];
  }
}

- (void)updateResourceAvailability
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000CE438;
  v2[3] = &unk_1001785C0;
  v2[4] = self;
  [(EPResourceManager *)self enumerateResourcesWithBlock:v2];
}

- (void)enumerateResourcesWithBlock:(id)block
{
  blockCopy = block;
  v5 = objc_autoreleasePoolPush();
  v6 = [(NSPointerArray *)self->_resources copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (v12 && ([*(*(&v13 + 1) + 8 * v11) invalidated] & 1) == 0)
        {
          blockCopy[2](blockCopy, v12);
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v5);
}

- (void)invalidate
{
  self->_invalidated = 1;
  v3 = sub_1000A9948();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = sub_1000A9948();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412546;
      v9 = v7;
      v10 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "invalidated %@[%p]", &v8, 0x16u);
    }
  }

  [(EPResourceManager *)self enumerateResourcesWithBlock:&stru_100179470];
}

- (void)createResource
{
  v2 = sub_1000A98C0();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000A98C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      resourceClass = [objc_opt_class() resourceClass];
      v6 = NSStringFromClass(resourceClass);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating resource for %@", &v7, 0xCu);
    }
  }
}

- (void)destroyResource
{
  [(EPResourceManager *)self setAvailability:0 withError:0];
  v2 = sub_1000A98C0();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = sub_1000A98C0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      resourceClass = [objc_opt_class() resourceClass];
      v6 = NSStringFromClass(resourceClass);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Destroying resource for %@", &v7, 0xCu);
    }
  }
}

@end