@interface EPResourceManager
+ (id)stringForResourceAvailability:(unint64_t)a3;
- (EPResourceManager)initWithQueue:(id)a3;
- (id)newResourceWithDelegate:(id)a3;
- (int64_t)referenceCounter;
- (void)createResource;
- (void)dealloc;
- (void)destroyResource;
- (void)enumerateResourcesWithBlock:(id)a3;
- (void)invalidate;
- (void)removeResource:(void *)a3 async:(BOOL)a4;
- (void)setAvailability:(unint64_t)a3 withError:(id)a4;
- (void)setNeedsResource:(BOOL)a3;
- (void)trackResource:(id)a3;
- (void)updateNeedsResource;
- (void)updateResourceAvailability;
@end

@implementation EPResourceManager

- (EPResourceManager)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EPResourceManager;
  v6 = [(EPResourceManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
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

+ (id)stringForResourceAvailability:(unint64_t)a3
{
  v3 = @"EPResourceAvailabilityResourceIsBecomingAvailable";
  if (a3 == 1)
  {
    v3 = @"EPResourceAvailabilityResourceIsAvailable";
  }

  if (a3 == 2)
  {
    return @"EPResourceAvailabilityResourceWillNotBecomeAvailable";
  }

  else
  {
    return v3;
  }
}

- (id)newResourceWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(objc_opt_class() "resourceClass"))];

  [(EPResourceManager *)self trackResource:v5];
  [(EPResourceManager *)self resourceWasAdded:v5];
  return v5;
}

- (void)trackResource:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSPointerArray *)self->_resources allObjects];
    v6 = [v5 containsObject:v4];

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
          v15 = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@[%p]: Avoiding a duplicate resource pointer (Crazy!)", &v12, 0x16u);
        }
      }
    }

    else
    {
      [(NSPointerArray *)self->_resources addPointer:v4];
    }

    [(NSPointerArray *)self->_resources compact];
    [(EPResourceManager *)self updateNeedsResource];
    [v4 setAvailability:self->_availability withError:self->_error];
  }
}

- (int64_t)referenceCounter
{
  v2 = [(NSPointerArray *)self->_resources allObjects];
  v3 = [v2 count];

  return v3;
}

- (void)updateNeedsResource
{
  v3 = [(NSPointerArray *)self->_resources allObjects];
  -[EPResourceManager setNeedsResource:](self, "setNeedsResource:", [v3 count] != 0);
}

- (void)removeResource:(void *)a3 async:(BOOL)a4
{
  v4 = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000CE1D8;
  v8[3] = &unk_1001761C0;
  v8[4] = self;
  v8[5] = a3;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (v4)
  {
    dispatch_async(self->_queue, v6);
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)setNeedsResource:(BOOL)a3
{
  if (self->_needsResource != a3)
  {
    self->_needsResource = a3;
    if (a3)
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

- (void)setAvailability:(unint64_t)a3 withError:(id)a4
{
  v7 = a4;
  if (self->_availability != a3 || (error = self->_error, error != v7) && ([(NSError *)error isEqual:v7]& 1) == 0)
  {
    self->_availability = a3;
    objc_storeStrong(&self->_error, a4);
    if (v7)
    {
      v9 = sub_1000A98C0();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

      if (v10)
      {
        v11 = sub_1000A98C0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1001036E4(self, v7, v11);
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

- (void)enumerateResourcesWithBlock:(id)a3
{
  v4 = a3;
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
          v4[2](v4, v12);
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
      v11 = self;
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
      v5 = [objc_opt_class() resourceClass];
      v6 = NSStringFromClass(v5);
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
      v5 = [objc_opt_class() resourceClass];
      v6 = NSStringFromClass(v5);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Destroying resource for %@", &v7, 0xCu);
    }
  }
}

@end