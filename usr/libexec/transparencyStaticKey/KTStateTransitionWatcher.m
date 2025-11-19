@interface KTStateTransitionWatcher
+ (id)stripUnexpectedPathError:(id)a3;
- (BOOL)isExpectedFailure:(id)a3 expected:(id)a4;
- (BOOL)onqueueCheckExpectedFailure:(id)a3 attempt:(id)a4;
- (id)description;
- (id)initNamed:(id)a3 serialQueue:(id)a4 path:(id)a5 initialRequest:(id)a6;
- (id)timeout:(unint64_t)a3;
- (void)_onqueuePerformTimeoutWithUnderlyingError:(id)a3;
- (void)onqueueHandleTransition:(id)a3;
- (void)onqueueProcessTransition:(id)a3;
- (void)onqueueStartFinishOperation;
@end

@implementation KTStateTransitionWatcher

- (id)initNamed:(id)a3 serialQueue:(id)a4 path:(id)a5 initialRequest:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v40.receiver = self;
  v40.super_class = KTStateTransitionWatcher;
  v15 = [(KTStateTransitionWatcher *)&v40 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    objc_storeStrong(&v16->_intendedPath, a5);
    v17 = [v13 asPathStep];
    remainingPath = v16->_remainingPath;
    v16->_remainingPath = v17;

    v19 = [NSString stringWithFormat:@"watcher-%@", v11];
    v20 = [KTResultOperation named:v19 withBlock:&stru_100096250];
    v21 = v16->_result;
    v16->_result = v20;

    v22 = objc_alloc_init(NSOperationQueue);
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v22;

    objc_storeStrong(&v16->_queue, a4);
    v16->_timeoutCanOccur = 1;
    objc_storeStrong(&v16->_initialRequest, a6);
    objc_initWeak(&location, v16);
    if (v14)
    {
      v24 = [NSString stringWithFormat:@"watcher-timeout-%@", v11];
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100037044;
      v36[3] = &unk_100095BB0;
      objc_copyWeak(&v38, &location);
      v25 = v14;
      v37 = v25;
      v26 = [KTResultOperation named:v24 withBlock:v36];
      initialTimeoutListenerOp = v16->_initialTimeoutListenerOp;
      v16->_initialTimeoutListenerOp = v26;

      v28 = v16->_initialTimeoutListenerOp;
      v29 = [v25 transitionOperation];
      [(KTResultOperation *)v28 addDependency:v29];

      [(NSOperationQueue *)v16->_operationQueue addOperation:v16->_initialTimeoutListenerOp];
      objc_destroyWeak(&v38);
    }

    v30 = [KTSignalTermHandler alloc];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100037180;
    v34[3] = &unk_100094BA8;
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
  v3 = [(KTStateTransitionWatcher *)self name];
  v4 = [(KTStateTransitionWatcher *)self remainingPath];
  v5 = [(KTStateTransitionWatcher *)self result];
  v6 = [NSString stringWithFormat:@"<KTStateTransitionWatcher(%@): remaining: %@, result: %@>", v3, v4, v5];

  return v6;
}

- (void)onqueueHandleTransition:(id)a3
{
  v12 = a3;
  v4 = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(KTStateTransitionWatcher *)self remainingPath];
  if (v5)
  {
    v6 = v5;
    v7 = [(KTStateTransitionWatcher *)self completed];

    if ((v7 & 1) == 0)
    {
      if (![(KTStateTransitionWatcher *)self active])
      {
        v8 = [v12 nextState];
        v9 = [(KTStateTransitionWatcher *)self intendedPath];
        v10 = [v9 initialState];
        v11 = [v8 isEqualToString:v10];

        if (!v11)
        {
          goto LABEL_7;
        }

        [(KTStateTransitionWatcher *)self setActive:1];
      }

      [(KTStateTransitionWatcher *)self onqueueProcessTransition:v12];
    }
  }

LABEL_7:
}

- (void)_onqueuePerformTimeoutWithUnderlyingError:(id)a3
{
  v12 = a3;
  v4 = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(KTStateTransitionWatcher *)self timer];

  if (v5)
  {
    v6 = [(KTStateTransitionWatcher *)self timer];
    dispatch_source_cancel(v6);

    [(KTStateTransitionWatcher *)self setTimer:0];
  }

  if ([(KTStateTransitionWatcher *)self timeoutCanOccur])
  {
    [(KTStateTransitionWatcher *)self setTimeoutCanOccur:0];
    v7 = [(KTStateTransitionWatcher *)self name];
    v8 = [(KTStateTransitionWatcher *)self remainingPath];
    v9 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for [%@]", v7, v8];

    v10 = [NSError errorWithDomain:@"KTResultOperationError" code:3 description:v9 underlying:v12];
    v11 = [(KTStateTransitionWatcher *)self result];
    [v11 setError:v10];

    [(KTStateTransitionWatcher *)self onqueueStartFinishOperation];
  }
}

- (id)timeout:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [(KTStateTransitionWatcher *)self queue];
  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v5);
  [(KTStateTransitionWatcher *)self setTimer:v6];

  v7 = [(KTStateTransitionWatcher *)self timer];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_100037714;
  v15 = &unk_100094BA8;
  objc_copyWeak(&v16, &location);
  dispatch_source_set_event_handler(v7, &v12);

  v8 = [(KTStateTransitionWatcher *)self timer:v12];
  v9 = dispatch_time(0, a3);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);

  v10 = [(KTStateTransitionWatcher *)self timer];
  dispatch_resume(v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
  return self;
}

- (BOOL)isExpectedFailure:(id)a3 expected:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 domain];
  v9 = [v6 domain];
  if (![v8 isEqual:v9])
  {

    goto LABEL_7;
  }

  v10 = [v7 code];
  v11 = [v6 code];

  if (v10 != v11)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_36;
  }

  v12 = [v7 userInfo];
  v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

  if (v13)
  {
    v14 = [v6 userInfo];
    v15 = [v14 objectForKeyedSubscript:NSUnderlyingErrorKey];

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
    v17 = [v7 userInfo];
    v18 = [v17 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

    if (v18)
    {
      v19 = [v6 userInfo];
      v20 = [v19 objectForKeyedSubscript:NSMultipleUnderlyingErrorsKey];

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

- (BOOL)onqueueCheckExpectedFailure:(id)a3 attempt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(v8);

  if (!v6 || ([v7 error], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v15 = [(KTStateTransitionWatcher *)self remainingPath];
    v16 = [v15 expectedFailure];
    if (v16)
    {
      v17 = v16;
      v18 = [v7 error];

      if (!v18)
      {
        v11 = [(KTStateTransitionWatcher *)self remainingPath];
        v19 = [NSString stringWithFormat:@"state %@, had unexpected success", v11];
        v20 = [NSError errorWithDomain:@"com.apple.transparency" code:-4713 description:v19];
        v21 = [(KTStateTransitionWatcher *)self result];
        [v21 setError:v20];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v11 = [(KTStateTransitionWatcher *)self remainingPath];
    v22 = [v11 expectedFailure];
    if (v22)
    {
      v19 = v22;
      v14 = 1;
LABEL_15:

      goto LABEL_16;
    }

    v26 = [v7 error];

    if (!v26)
    {
      v14 = 1;
      goto LABEL_17;
    }

    v11 = [(KTStateTransitionWatcher *)self remainingPath];
    v19 = [NSString stringWithFormat:@"state %@, had unexpected failure: expected no failure", v11];
    v20 = [v7 error];
    v21 = [NSError errorWithDomain:@"com.apple.transparency" code:-4714 description:v19 underlying:v20];
    v27 = [(KTStateTransitionWatcher *)self result];
    [v27 setError:v21];

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v10 = [(KTStateTransitionWatcher *)self remainingPath];
  v11 = [v10 expectedFailure];

  v12 = [v7 error];
  v13 = [(KTStateTransitionWatcher *)self isExpectedFailure:v12 expected:v6];

  if ((v13 & 1) == 0)
  {
    v19 = [(KTStateTransitionWatcher *)self remainingPath];
    v20 = [v7 error];
    v21 = [NSString stringWithFormat:@"state %@, had unexpected error %@, expected %@", v19, v20, v11];
    v23 = [v7 error];
    v24 = [NSError errorWithDomain:@"com.apple.transparency" code:-4712 description:v21 underlying:v23];
    v25 = [(KTStateTransitionWatcher *)self result];
    [v25 setError:v24];

    goto LABEL_14;
  }

  v14 = 1;
LABEL_16:

LABEL_17:
  return v14;
}

+ (id)stripUnexpectedPathError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (([v4 isEqual:@"com.apple.transparency"] & 1) != 0 || objc_msgSend(v3, "code") == -4711 || objc_msgSend(v3, "code") == -4712 || objc_msgSend(v3, "code") == -4713)
  {

LABEL_6:
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:NSUnderlyingErrorKey];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;

    goto LABEL_10;
  }

  v10 = [v3 code];

  if (v10 == -4714)
  {
    goto LABEL_6;
  }

  v8 = v3;
LABEL_10:

  return v8;
}

- (void)onqueueProcessTransition:(id)a3
{
  v22 = a3;
  v4 = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(KTStateTransitionWatcher *)self remainingPath];
  if (v5)
  {
    v6 = v5;
    v7 = [(KTStateTransitionWatcher *)self completed];

    if ((v7 & 1) == 0)
    {
      v8 = [(KTStateTransitionWatcher *)self remainingPath];
      v9 = [v22 nextState];
      v10 = [v8 nextStep:v9];

      if (v10)
      {
        v11 = [(KTStateTransitionWatcher *)self remainingPath];
        v12 = [v11 expectedFailure];
        v13 = [(KTStateTransitionWatcher *)self onqueueCheckExpectedFailure:v12 attempt:v22];

        if (v13)
        {
          [(KTStateTransitionWatcher *)self setRemainingPath:v10];
          v14 = [(KTStateTransitionWatcher *)self remainingPath];
          v15 = [v14 successState];

          if ((v15 & 1) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        v16 = [v22 error];

        if (v16)
        {
          v17 = [v22 error];
          v18 = [(KTStateTransitionWatcher *)self result];
          [v18 setError:v17];
        }

        else
        {
          v17 = [v22 nextState];
          v18 = [(KTStateTransitionWatcher *)self remainingPath];
          v19 = [NSString stringWithFormat:@"state became %@, was expecting %@", v17, v18];
          v20 = [NSError errorWithDomain:@"com.apple.transparency" code:-4711 description:v19];
          v21 = [(KTStateTransitionWatcher *)self result];
          [v21 setError:v20];
        }
      }

      [(KTStateTransitionWatcher *)self onqueueStartFinishOperation];
LABEL_12:
    }
  }
}

- (void)onqueueStartFinishOperation
{
  v3 = [(KTStateTransitionWatcher *)self queue];
  dispatch_assert_queue_V2(v3);

  [(KTStateTransitionWatcher *)self setTimeoutCanOccur:0];
  v4 = [(KTStateTransitionWatcher *)self sigTerm];
  [v4 unregister];

  [(KTStateTransitionWatcher *)self setSigTerm:0];
  v5 = [(KTStateTransitionWatcher *)self timer];

  if (v5)
  {
    v6 = [(KTStateTransitionWatcher *)self timer];
    dispatch_source_cancel(v6);

    [(KTStateTransitionWatcher *)self setTimer:0];
  }

  v7 = [(KTStateTransitionWatcher *)self operationQueue];
  v8 = [(KTStateTransitionWatcher *)self result];
  [v7 addOperation:v8];

  [(KTStateTransitionWatcher *)self setActive:0];

  [(KTStateTransitionWatcher *)self setCompleted:1];
}

@end