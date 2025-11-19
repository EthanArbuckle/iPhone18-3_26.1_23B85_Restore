@interface _DASAssertion
- (BOOL)_invalidateCallingHandler:(BOOL)a3 withError:(id *)a4;
- (BOOL)acquireWithError:(id *)a3;
- (BOOL)invalidateAndKillWithExplanation:(id)a3 code:(unint64_t)a4 error:(id *)a5;
- (BOOL)isValid;
- (NSString)description;
- (id)_initWithUnderlyingAssertion:(id)a3 forPid:(int)a4;
- (void)_callWarningHandler;
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)assertionWillInvalidate:(id)a3;
- (void)dealloc;
@end

@implementation _DASAssertion

- (id)_initWithUnderlyingAssertion:(id)a3 forPid:(int)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _DASAssertion;
  v8 = [(_DASAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingAssertion, a3);
    v9->_pid = a4;
    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = os_log_create("com.apple.duetactivityscheduler", "Assertion");
    log = v9->_log;
    v9->_log = v10;
  }

  return v9;
}

- (BOOL)acquireWithError:(id *)a3
{
  v4 = [(_DASAssertion *)self underlyingAssertion];
  LOBYTE(a3) = [v4 acquireWithError:a3];

  return a3;
}

- (BOOL)_invalidateCallingHandler:(BOOL)a3 withError:(id *)a4
{
  v5 = a3;
  if (![(_DASAssertion *)self isValid])
  {
    return 1;
  }

  v7 = [(_DASAssertion *)self underlyingAssertion];
  v8 = [v7 invalidateWithError:a4];

  if (v5)
  {
    objc_initWeak(&location, self);
    v9 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000AB94;
    v11[3] = &unk_1001B5468;
    objc_copyWeak(&v12, &location);
    dispatch_async(v9, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (BOOL)invalidateAndKillWithExplanation:(id)a3 code:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([(_DASAssertion *)self isValid])
  {
    v9 = [[RBSTerminateContext alloc] initWithExplanation:v8];
    v10 = 1;
    [v9 setReportType:1];
    [v9 setExceptionCode:a4];
    [v9 setMaximumTerminationResistance:20];
    v11 = [RBSProcessIdentifier identifierWithPid:[(_DASAssertion *)self pid]];
    v12 = [RBSProcessPredicate predicateMatchingIdentifier:v11];

    v13 = [[RBSTerminateRequest alloc] initWithPredicate:v12 context:v9];
    v18 = 0;
    v14 = [v13 execute:&v18];
    v15 = v18;
    if ((v14 & 1) == 0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10011BB2C(log, self, v15);
      }

      v10 = [(_DASAssertion *)self invalidateWithError:a5];
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)isValid
{
  v2 = [(_DASAssertion *)self underlyingAssertion];
  v3 = [v2 isValid];

  return v3;
}

- (void)_callWarningHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_DASAssertion *)self warningHandler];

  if (v3)
  {
    v4 = [(_DASAssertion *)self warningHandler];
    [(_DASAssertion *)self setWarningHandler:0];
    os_unfair_lock_unlock(&self->_lock);
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Did invalidate assertion %@", &v7, 0xCu);
  }

  [(_DASAssertion *)self _callInvalidationHandler:1];
}

- (void)assertionWillInvalidate:(id)a3
{
  v4 = a3;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Will invalidate assertion %@", &v6, 0xCu);
  }

  [(_DASAssertion *)self _callWarningHandler];
}

- (NSString)description
{
  v2 = [(_DASAssertion *)self underlyingAssertion];
  v3 = [NSString stringWithFormat:@"_DASAssertion for underlying assertion: %@", v2];

  return v3;
}

- (void)dealloc
{
  if ([(_DASAssertion *)self isValid])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      sub_10011BBE4(self, log);
    }

    [(_DASAssertion *)self _invalidateCallingHandler:0 withError:0];
  }

  v4.receiver = self;
  v4.super_class = _DASAssertion;
  [(_DASAssertion *)&v4 dealloc];
}

@end