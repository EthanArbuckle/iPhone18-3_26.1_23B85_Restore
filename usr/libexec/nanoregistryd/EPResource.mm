@interface EPResource
- (EPResource)initWithResourceManager:(id)a3 andOwnerDelegate:(id)a4;
- (EPResourceOwnerDelegate)ownerDelegate;
- (void)dealloc;
- (void)invalidate;
- (void)setAvailability:(unint64_t)a3 withError:(id)a4;
@end

@implementation EPResource

- (EPResource)initWithResourceManager:(id)a3 andOwnerDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = EPResource;
  v9 = [(EPResource *)&v17 init];
  if (v9)
  {
    v10 = sub_1000A9948();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = sub_1000A9948();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v7 referenceCounter];
        *buf = 138412802;
        v19 = v14;
        v20 = 2048;
        v21 = v9;
        v22 = 2048;
        v23 = v15;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "init %@[%p] manager refcount = %ld", buf, 0x20u);
      }
    }

    objc_storeStrong(&v9->_resourceManager, a3);
    objc_storeWeak(&v9->_ownerDelegate, v8);
  }

  return v9;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(EPResourceManagerProtocol *)self->_resourceManager removeResource:self async:1];
  }

  v3.receiver = self;
  v3.super_class = EPResource;
  [(EPResource *)&v3 dealloc];
}

- (void)setAvailability:(unint64_t)a3 withError:(id)a4
{
  v7 = a4;
  if (self->_availability != a3 || (error = self->_error, error != v7) && ([(NSError *)error isEqual:v7]& 1) == 0)
  {
    self->_availability = a3;
    objc_storeStrong(&self->_error, a4);
    v9 = [(EPResourceManagerProtocol *)self->_resourceManager queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CDA50;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(v9, block);
  }
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

  [(EPResourceManagerProtocol *)self->_resourceManager removeResource:self async:0];
}

- (EPResourceOwnerDelegate)ownerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerDelegate);

  return WeakRetained;
}

@end