@interface KTStateTransitionWatcher
+ (id)stripUnexpectedPathError:(id)error;
- (BOOL)isExpectedFailure:(id)failure expected:(id)expected;
- (BOOL)onqueueCheckExpectedFailure:(id)failure attempt:(id)attempt;
- (id)description;
- (id)initNamed:(id)named serialQueue:(id)queue path:(id)path initialRequest:(id)request;
- (id)timeout:(unint64_t)timeout;
- (void)_onqueuePerformTimeoutWithUnderlyingError:(id)error;
- (void)onqueueHandleTransition:(id)transition;
- (void)onqueueProcessTransition:(id)transition;
- (void)onqueueStartFinishOperation;
@end

@implementation KTStateTransitionWatcher

- (id)initNamed:(id)named serialQueue:(id)queue path:(id)path initialRequest:(id)request
{
  namedCopy = named;
  queueCopy = queue;
  pathCopy = path;
  requestCopy = request;
  v40.receiver = self;
  v40.super_class = KTStateTransitionWatcher;
  v15 = [(KTStateTransitionWatcher *)&v40 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, named);
    objc_storeStrong(&v16->_intendedPath, path);
    asPathStep = [pathCopy asPathStep];
    remainingPath = v16->_remainingPath;
    v16->_remainingPath = asPathStep;

    namedCopy = [NSString stringWithFormat:@"watcher-%@", namedCopy];
    v20 = [KTResultOperation named:namedCopy withBlock:&stru_10032A570];
    v21 = v16->_result;
    v16->_result = v20;

    v22 = objc_alloc_init(NSOperationQueue);
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v22;

    objc_storeStrong(&v16->_queue, queue);
    v16->_timeoutCanOccur = 1;
    objc_storeStrong(&v16->_initialRequest, request);
    objc_initWeak(&location, v16);
    if (requestCopy)
    {
      namedCopy2 = [NSString stringWithFormat:@"watcher-timeout-%@", namedCopy];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10020EA64;
      v36[3] = &unk_10031AEE0;
      objc_copyWeak(&v38, &location);
      v25 = requestCopy;
      v37 = v25;
      v26 = [KTResultOperation named:namedCopy2 withBlock:v36];
      initialTimeoutListenerOp = v16->_initialTimeoutListenerOp;
      v16->_initialTimeoutListenerOp = v26;

      v28 = v16->_initialTimeoutListenerOp;
      transitionOperation = [v25 transitionOperation];
      [(KTResultOperation *)v28 addDependency:transitionOperation];

      [(NSOperationQueue *)v16->_operationQueue addOperation:v16->_initialTimeoutListenerOp];
      objc_destroyWeak(&v38);
    }

    v30 = [KTSignalTermHandler alloc];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10020EBA0;
    v34[3] = &unk_1003175E0;
    objc_copyWeak(&v35, &location);
    v31 = [(KTSignalTermHandler *)v30 initWithSIGTERMNotification:v34];
    sigTerm = v16->_sigTerm;
    v16->_sigTerm = v31;

    *&v16->_active = 0;
    objc_destroyWeak(&v35);
    objc_destroyWeak(&location);
  }

  return v16;
}

- (id)description
{
  name = [(KTStateTransitionWatcher *)self name];
  remainingPath = [(KTStateTransitionWatcher *)self remainingPath];
  result = [(KTStateTransitionWatcher *)self result];
  v6 = [NSString stringWithFormat:@"<KTStateTransitionWatcher(%@): remaining: %@, result: %@>", name, remainingPath, result];

  return v6;
}

- (void)onqueueHandleTransition:(id)transition
{
  transitionCopy = transition;
  queue = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  remainingPath = [(KTStateTransitionWatcher *)self remainingPath];
  if (remainingPath)
  {
    v6 = remainingPath;
    completed = [(KTStateTransitionWatcher *)self completed];

    if ((completed & 1) == 0)
    {
      if (![(KTStateTransitionWatcher *)self active])
      {
        nextState = [transitionCopy nextState];
        intendedPath = [(KTStateTransitionWatcher *)self intendedPath];
        initialState = [intendedPath initialState];
        v11 = [nextState isEqualToString:initialState];

        if (!v11)
        {
          goto LABEL_7;
        }

        [(KTStateTransitionWatcher *)self setActive:1];
      }

      [(KTStateTransitionWatcher *)self onqueueProcessTransition:transitionCopy];
    }
  }

LABEL_7:
}

- (void)_onqueuePerformTimeoutWithUnderlyingError:(id)error
{
  errorCopy = error;
  queue = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  timer = [(KTStateTransitionWatcher *)self timer];

  if (timer)
  {
    timer2 = [(KTStateTransitionWatcher *)self timer];
    dispatch_source_cancel(timer2);

    [(KTStateTransitionWatcher *)self setTimer:0];
  }

  if ([(KTStateTransitionWatcher *)self timeoutCanOccur])
  {
    [(KTStateTransitionWatcher *)self setTimeoutCanOccur:0];
    name = [(KTStateTransitionWatcher *)self name];
    remainingPath = [(KTStateTransitionWatcher *)self remainingPath];
    v9 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for [%@]", name, remainingPath];

    v10 = [NSError errorWithDomain:@"KTResultOperationError" code:3 description:v9 underlying:errorCopy];
    result = [(KTStateTransitionWatcher *)self result];
    [result setError:v10];

    [(KTStateTransitionWatcher *)self onqueueStartFinishOperation];
  }
}

- (id)timeout:(unint64_t)timeout
{
  objc_initWeak(&location, self);
  queue = [(KTStateTransitionWatcher *)self queue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(KTStateTransitionWatcher *)self setTimer:v6];

  timer = [(KTStateTransitionWatcher *)self timer];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10020F134;
  v15 = &unk_1003175E0;
  objc_copyWeak(&v16, &location);
  dispatch_source_set_event_handler(timer, &v12);

  v8 = [(KTStateTransitionWatcher *)self timer:v12];
  v9 = dispatch_time(0, timeout);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);

  timer2 = [(KTStateTransitionWatcher *)self timer];
  dispatch_resume(timer2);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  return self;
}

- (BOOL)isExpectedFailure:(id)failure expected:(id)expected
{
  failureCopy = failure;
  expectedCopy = expected;
  domain = [expectedCopy domain];
  domain2 = [failureCopy domain];
  if (![domain isEqual:domain2])
  {

    goto LABEL_7;
  }

  code = [expectedCopy code];
  code2 = [failureCopy code];

  if (code != code2)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_36;
  }

  userInfo = [expectedCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v13)
  {
    userInfo2 = [failureCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:NSUnderlyingErrorKey];

    if (v15)
    {
      v16 = [(KTStateTransitionWatcher *)self isExpectedFailure:v15 expected:v13];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    userInfo3 = [expectedCopy userInfo];
    v18 = [userInfo3 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

    if (v18)
    {
      userInfo4 = [failureCopy userInfo];
      v20 = [userInfo4 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

      v34 = v20;
      if (v20)
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        obj = v18;
        v21 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v21)
        {
          v22 = v21;
          v33 = *v40;
          v31 = v18;
          while (1)
          {
            v23 = 0;
LABEL_13:
            if (*v40 != v33)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v39 + 1) + 8 * v23);
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v25 = v34;
            v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (!v26)
            {
              break;
            }

            v27 = v26;
            v28 = *v36;
LABEL_17:
            v29 = 0;
            while (1)
            {
              if (*v36 != v28)
              {
                objc_enumerationMutation(v25);
              }

              if ([(KTStateTransitionWatcher *)self isExpectedFailure:*(*(&v35 + 1) + 8 * v29) expected:v24])
              {
                break;
              }

              if (v27 == ++v29)
              {
                v27 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
                if (v27)
                {
                  goto LABEL_17;
                }

                goto LABEL_30;
              }
            }

            if (++v23 != v22)
            {
              goto LABEL_13;
            }

            v22 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
            v16 = 1;
            v18 = v31;
            v13 = 0;
            if (!v22)
            {
              goto LABEL_33;
            }
          }

LABEL_30:

          v16 = 0;
          v18 = v31;
          v13 = 0;
        }

        else
        {
          v16 = 1;
        }

LABEL_33:
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_36:
  return v16;
}

- (BOOL)onqueueCheckExpectedFailure:(id)failure attempt:(id)attempt
{
  failureCopy = failure;
  attemptCopy = attempt;
  queue = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!failureCopy || ([attemptCopy error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    remainingPath = [(KTStateTransitionWatcher *)self remainingPath];
    expectedFailure = [remainingPath expectedFailure];
    if (expectedFailure)
    {
      v17 = expectedFailure;
      error = [attemptCopy error];

      if (!error)
      {
        remainingPath2 = [(KTStateTransitionWatcher *)self remainingPath];
        remainingPath4 = [NSString stringWithFormat:@"state %@, had unexpected success", remainingPath2];
        error3 = [NSError errorWithDomain:@"com.apple.transparency" code:-4713 description:remainingPath4];
        result = [(KTStateTransitionWatcher *)self result];
        [result setError:error3];
        goto LABEL_14;
      }
    }

    else
    {
    }

    remainingPath2 = [(KTStateTransitionWatcher *)self remainingPath];
    expectedFailure2 = [remainingPath2 expectedFailure];
    if (expectedFailure2)
    {
      remainingPath4 = expectedFailure2;
      v14 = 1;
LABEL_15:

      goto LABEL_16;
    }

    error2 = [attemptCopy error];

    if (!error2)
    {
      v14 = 1;
      goto LABEL_17;
    }

    remainingPath2 = [(KTStateTransitionWatcher *)self remainingPath];
    remainingPath4 = [NSString stringWithFormat:@"state %@, had unexpected failure: expected no failure", remainingPath2];
    error3 = [attemptCopy error];
    result = [NSError errorWithDomain:@"com.apple.transparency" code:-4714 description:remainingPath4 underlying:error3];
    result2 = [(KTStateTransitionWatcher *)self result];
    [result2 setError:result];

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  remainingPath3 = [(KTStateTransitionWatcher *)self remainingPath];
  remainingPath2 = [remainingPath3 expectedFailure];

  error4 = [attemptCopy error];
  v13 = [(KTStateTransitionWatcher *)self isExpectedFailure:error4 expected:failureCopy];

  if ((v13 & 1) == 0)
  {
    remainingPath4 = [(KTStateTransitionWatcher *)self remainingPath];
    error3 = [attemptCopy error];
    result = [NSString stringWithFormat:@"state %@, had unexpected error %@, expected %@", remainingPath4, error3, remainingPath2];
    error5 = [attemptCopy error];
    v24 = [NSError errorWithDomain:@"com.apple.transparency" code:-4712 description:result underlying:error5];
    result3 = [(KTStateTransitionWatcher *)self result];
    [result3 setError:v24];

    goto LABEL_14;
  }

  v14 = 1;
LABEL_16:

LABEL_17:
  return v14;
}

+ (id)stripUnexpectedPathError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (([domain isEqual:@"com.apple.transparency"] & 1) != 0 || objc_msgSend(errorCopy, "code") == -4711 || objc_msgSend(errorCopy, "code") == -4712 || objc_msgSend(errorCopy, "code") == -4713)
  {

LABEL_6:
    userInfo = [errorCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = errorCopy;
    }

    v8 = v7;

    goto LABEL_10;
  }

  code = [errorCopy code];

  if (code == -4714)
  {
    goto LABEL_6;
  }

  v8 = errorCopy;
LABEL_10:

  return v8;
}

- (void)onqueueProcessTransition:(id)transition
{
  transitionCopy = transition;
  queue = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  remainingPath = [(KTStateTransitionWatcher *)self remainingPath];
  if (remainingPath)
  {
    v6 = remainingPath;
    completed = [(KTStateTransitionWatcher *)self completed];

    if ((completed & 1) == 0)
    {
      remainingPath2 = [(KTStateTransitionWatcher *)self remainingPath];
      nextState = [transitionCopy nextState];
      v10 = [remainingPath2 nextStep:nextState];

      if (v10)
      {
        remainingPath3 = [(KTStateTransitionWatcher *)self remainingPath];
        expectedFailure = [remainingPath3 expectedFailure];
        v13 = [(KTStateTransitionWatcher *)self onqueueCheckExpectedFailure:expectedFailure attempt:transitionCopy];

        if (v13)
        {
          [(KTStateTransitionWatcher *)self setRemainingPath:v10];
          remainingPath4 = [(KTStateTransitionWatcher *)self remainingPath];
          successState = [remainingPath4 successState];

          if ((successState & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        error = [transitionCopy error];

        if (error)
        {
          error2 = [transitionCopy error];
          result = [(KTStateTransitionWatcher *)self result];
          [result setError:error2];
        }

        else
        {
          error2 = [transitionCopy nextState];
          result = [(KTStateTransitionWatcher *)self remainingPath];
          v19 = [NSString stringWithFormat:@"state became %@, was expecting %@", error2, result];
          v20 = [NSError errorWithDomain:@"com.apple.transparency" code:-4711 description:v19];
          result2 = [(KTStateTransitionWatcher *)self result];
          [result2 setError:v20];
        }
      }

      [(KTStateTransitionWatcher *)self onqueueStartFinishOperation];
LABEL_12:
    }
  }
}

- (void)onqueueStartFinishOperation
{
  queue = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  [(KTStateTransitionWatcher *)self setTimeoutCanOccur:0];
  sigTerm = [(KTStateTransitionWatcher *)self sigTerm];
  [sigTerm unregister];

  [(KTStateTransitionWatcher *)self setSigTerm:0];
  timer = [(KTStateTransitionWatcher *)self timer];

  if (timer)
  {
    timer2 = [(KTStateTransitionWatcher *)self timer];
    dispatch_source_cancel(timer2);

    [(KTStateTransitionWatcher *)self setTimer:0];
  }

  operationQueue = [(KTStateTransitionWatcher *)self operationQueue];
  result = [(KTStateTransitionWatcher *)self result];
  [operationQueue addOperation:result];

  [(KTStateTransitionWatcher *)self setActive:0];

  [(KTStateTransitionWatcher *)self setCompleted:1];
}

@end