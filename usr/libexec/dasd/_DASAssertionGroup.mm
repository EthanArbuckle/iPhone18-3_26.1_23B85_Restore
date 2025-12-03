@interface _DASAssertionGroup
- (BOOL)acquireWithError:(id *)error;
- (_DASAssertionGroup)initWithActivity:(id)activity assertions:(id)assertions delegate:(id)delegate;
- (_DASAssertionGroupDelegate)delegate;
- (id)description;
- (void)dealloc;
- (void)invalidate;
- (void)setInvalidationHandler:(id)handler;
- (void)setWarningHandler:(id)handler;
@end

@implementation _DASAssertionGroup

- (_DASAssertionGroup)initWithActivity:(id)activity assertions:(id)assertions delegate:(id)delegate
{
  activityCopy = activity;
  assertionsCopy = assertions;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = _DASAssertionGroup;
  v12 = [(_DASAssertionGroup *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_activity, activity);
    v14 = [assertionsCopy copy];
    assertions = v13->_assertions;
    v13->_assertions = v14;

    objc_storeWeak(&v13->_delegate, delegateCopy);
    v13->_isActive = 0;
    v16 = os_log_create("com.apple.duetactivityscheduler", "AssertionGroup");
    log = v13->_log;
    v13->_log = v16;
  }

  return v13;
}

- (BOOL)acquireWithError:(id *)error
{
  self->_isActive = 0;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011E79C(self, log);
  }

  if (!self->_warningHandler && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10011E85C();
  }

  if (!self->_invalidationHandler && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10011E8C4();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_assertions;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v22;
    *&v8 = 138412546;
    v20 = v8;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v12 acquireWithError:{error, v20, v21}];
        v14 = self->_log;
        if ((v13 & 1) == 0)
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            activity = self->_activity;
            if (error)
            {
              v19 = *error;
            }

            else
            {
              v19 = 0;
            }

            *buf = 138412802;
            v26 = v12;
            v27 = 2112;
            v28 = activity;
            v29 = 2112;
            v30 = v19;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to acquire %@ for %@ with error: %@; bailing", buf, 0x20u);
          }

          [(_DASAssertionGroup *)self invalidate];
          isActive = self->_isActive;

          return isActive;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEFAULT))
        {
          v15 = self->_activity;
          *buf = v20;
          v26 = v12;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Acquired %@ for %@", buf, 0x16u);
        }
      }

      v9 = [(NSSet *)v6 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  isActive = 1;
  self->_isActive = 1;
  return isActive;
}

- (void)invalidate
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    sub_10011E92C(self, log);
  }

  self->_isActive = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_assertions;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v17;
    *&v6 = 138412546;
    v14 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 isValid])
        {
          v15 = 0;
          v11 = [v10 invalidateWithError:&v15];
          v12 = v15;
          if ((v11 & 1) == 0)
          {
            v13 = self->_log;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = v14;
              v21 = v10;
              v22 = 2112;
              v23 = v12;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to invalidate %@ with error: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v12 = 0;
        }
      }

      v7 = [(NSSet *)v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }
}

- (void)setWarningHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_retainBlock(handlerCopy);
  warningHandler = self->_warningHandler;
  self->_warningHandler = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_assertions;
  v8 = [(NSSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_initWeak(&location, v11);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10004861C;
        v12[3] = &unk_1001B64E0;
        v13 = handlerCopy;
        objc_copyWeak(&v14, &location);
        [v11 setWarningHandler:v12];
        objc_destroyWeak(&v14);

        objc_destroyWeak(&location);
      }

      v8 = [(NSSet *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_retainBlock(handlerCopy);
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v5;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_assertions;
  v7 = [(NSSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        objc_initWeak(&location, v10);
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_100048858;
        v12[3] = &unk_1001B6508;
        v13 = handlerCopy;
        objc_copyWeak(&v14, &location);
        v12[4] = self;
        [v10 setInvalidationHandler:v12];
        objc_destroyWeak(&v14);

        objc_destroyWeak(&location);
      }

      v7 = [(NSSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }
}

- (void)dealloc
{
  [(_DASAssertionGroup *)self invalidate];
  v3.receiver = self;
  v3.super_class = _DASAssertionGroup;
  [(_DASAssertionGroup *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  assertions = self->_assertions;
  return [NSString stringWithFormat:@"<%@: assertions: %@, activity: %@>", v3, assertions, self->_activity];
}

- (_DASAssertionGroupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end