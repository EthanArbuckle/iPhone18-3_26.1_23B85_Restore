@interface _DASAssertion
- (BOOL)_invalidateCallingHandler:(BOOL)handler withError:(id *)error;
- (BOOL)acquireWithError:(id *)error;
- (BOOL)invalidateAndKillWithExplanation:(id)explanation code:(unint64_t)code error:(id *)error;
- (BOOL)isValid;
- (NSString)description;
- (id)_initWithUnderlyingAssertion:(id)assertion forPid:(int)pid;
- (void)_callWarningHandler;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)dealloc;
@end

@implementation _DASAssertion

- (id)_initWithUnderlyingAssertion:(id)assertion forPid:(int)pid
{
  assertionCopy = assertion;
  v13.receiver = self;
  v13.super_class = _DASAssertion;
  v8 = [(_DASAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingAssertion, assertion);
    v9->_pid = pid;
    v9->_lock._os_unfair_lock_opaque = 0;
    v10 = os_log_create("com.apple.duetactivityscheduler", "Assertion");
    log = v9->_log;
    v9->_log = v10;
  }

  return v9;
}

- (BOOL)acquireWithError:(id *)error
{
  underlyingAssertion = [(_DASAssertion *)self underlyingAssertion];
  LOBYTE(error) = [underlyingAssertion acquireWithError:error];

  return error;
}

- (BOOL)_invalidateCallingHandler:(BOOL)handler withError:(id *)error
{
  handlerCopy = handler;
  if (![(_DASAssertion *)self isValid])
  {
    return 1;
  }

  underlyingAssertion = [(_DASAssertion *)self underlyingAssertion];
  v8 = [underlyingAssertion invalidateWithError:error];

  if (handlerCopy)
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

- (BOOL)invalidateAndKillWithExplanation:(id)explanation code:(unint64_t)code error:(id *)error
{
  explanationCopy = explanation;
  if ([(_DASAssertion *)self isValid])
  {
    v9 = [[RBSTerminateContext alloc] initWithExplanation:explanationCopy];
    v10 = 1;
    [v9 setReportType:1];
    [v9 setExceptionCode:code];
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

      v10 = [(_DASAssertion *)self invalidateWithError:error];
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
  underlyingAssertion = [(_DASAssertion *)self underlyingAssertion];
  isValid = [underlyingAssertion isValid];

  return isValid;
}

- (void)_callWarningHandler
{
  os_unfair_lock_lock(&self->_lock);
  warningHandler = [(_DASAssertion *)self warningHandler];

  if (warningHandler)
  {
    warningHandler2 = [(_DASAssertion *)self warningHandler];
    [(_DASAssertion *)self setWarningHandler:0];
    os_unfair_lock_unlock(&self->_lock);
    if (warningHandler2)
    {
      warningHandler2[2](warningHandler2);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  assertionCopy = assertion;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = assertionCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Did invalidate assertion %@", &v7, 0xCu);
  }

  [(_DASAssertion *)self _callInvalidationHandler:1];
}

- (void)assertionWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = invalidateCopy;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Will invalidate assertion %@", &v6, 0xCu);
  }

  [(_DASAssertion *)self _callWarningHandler];
}

- (NSString)description
{
  underlyingAssertion = [(_DASAssertion *)self underlyingAssertion];
  v3 = [NSString stringWithFormat:@"_DASAssertion for underlying assertion: %@", underlyingAssertion];

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