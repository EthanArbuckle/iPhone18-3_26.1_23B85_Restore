@interface OctagonStateMachine
- (BOOL)isPaused;
- (NSDictionary)stateConditions;
- (OctagonStateMachine)initWithName:(id)a3 states:(id)a4 flags:(id)a5 initialState:(id)a6 queue:(id)a7 stateEngine:(id)a8 unexpectedStateErrorDomain:(id)a9 lockStateTracker:(id)a10 reachabilityTracker:(id)a11;
- (OctagonStateMachineEngine)stateEngine;
- (id)_onqueueNextStateMachineTransition;
- (id)createOperationToFinishAttempt:(id)a3;
- (id)description;
- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 reply:(id)a6;
- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 transitionOp:(id)a6 reply:(id)a7;
- (id)dumpPendingFlags;
- (id)pendingFlagsString;
- (id)possiblePendingFlags;
- (id)timeoutErrorForState:(id)a3;
- (id)waitForState:(id)a3 wait:(unint64_t)a4;
- (void)_onqueueHandleFlag:(id)a3;
- (void)_onqueueHandlePendingFlag:(id)a3;
- (void)_onqueueHandlePendingFlagLater:(id)a3;
- (void)_onqueuePokeStateMachine;
- (void)_onqueueRecheckConditions;
- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)a3 startTimeout:(unint64_t)a4;
- (void)_onqueueSendAnyPendingFlags;
- (void)_onqueueStartNextStateMachineOperation:(BOOL)a3;
- (void)disablePendingFlags;
- (void)doSimpleStateMachineRPC:(id)a3 op:(id)a4 sourceStates:(id)a5 reply:(id)a6;
- (void)haltOperation;
- (void)handleExternalRequest:(id)a3 startTimeout:(unint64_t)a4;
- (void)handleFlag:(id)a3;
- (void)handlePendingFlag:(id)a3;
- (void)pokeStateMachine;
- (void)registerMultiStateArrivalWatcher:(id)a3 startTimeout:(unint64_t)a4;
- (void)registerStateTransitionWatcher:(id)a3 startTimeout:(unint64_t)a4;
- (void)setCurrentState:(id)a3;
- (void)startOperation;
- (void)testPauseStateMachineAfterEntering:(id)a3;
- (void)testReleaseStateMachinePause:(id)a3;
@end

@implementation OctagonStateMachine

- (OctagonStateMachineEngine)stateEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateEngine);

  return WeakRetained;
}

- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 transitionOp:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [(OctagonStateMachine *)self name];
  v18 = sub_100006610([NSString stringWithFormat:@"%@-%@", v17, @"state-rpc"]);

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Beginning a '%@' rpc", buf, 0xCu);
  }

  v19 = [(OctagonStateMachine *)self lockStateTracker];

  if (v19)
  {
    v20 = [(OctagonStateMachine *)self lockStateTracker];
    [v20 recheck];
  }

  v21 = [OctagonStateTransitionRequest alloc];
  v22 = [(OctagonStateMachine *)self queue];
  v23 = [(OctagonStateTransitionRequest *)v21 init:v12 sourceStates:v16 serialQueue:v22 transitionOp:v14];

  v24 = [OctagonStateTransitionWatcher alloc];
  v25 = [NSString stringWithFormat:@"watcher-%@", v12];
  v26 = [(OctagonStateTransitionWatcher *)v24 initNamed:v25 stateMachine:self path:v15 initialRequest:v23];

  v27 = [(OctagonStateMachine *)self timeout];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = 120000000000;
  }

  [(OctagonStateMachine *)self registerStateTransitionWatcher:v26 startTimeout:v28];
  v29 = [NSString stringWithFormat:@"%@-callback", v12];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100164550;
  v39[3] = &unk_100338D18;
  v39[4] = self;
  v40 = v12;
  v41 = v26;
  v42 = v13;
  v30 = v13;
  v31 = v26;
  v32 = v12;
  v33 = [CKKSResultOperation named:v29 withBlockTakingSelf:v39];

  v34 = [v31 result];
  [v33 addDependency:v34];

  v35 = [(OctagonStateMachine *)self operationQueue];
  [v35 addOperation:v33];

  v36 = [(OctagonStateMachine *)self timeout];
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = 120000000000;
  }

  [(OctagonStateMachine *)self handleExternalRequest:v23 startTimeout:v37];

  return v33;
}

- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [NSString stringWithFormat:@"intial-transition-%@", v13];
  v15 = [v11 initialState];
  v16 = [OctagonStateTransitionOperation named:v14 entering:v15];

  v17 = [(OctagonStateMachine *)self doWatchedStateMachineRPC:v13 sourceStates:v12 path:v11 transitionOp:v16 reply:v10];

  return v17;
}

- (void)doSimpleStateMachineRPC:(id)a3 op:(id)a4 sourceStates:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(OctagonStateMachine *)self name];
  v15 = sub_100006610([NSString stringWithFormat:@"%@-%@", v14, @"state-rpc"]);

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning a '%@' rpc", buf, 0xCu);
  }

  v16 = [(OctagonStateMachine *)self lockStateTracker];

  if (v16)
  {
    v17 = [(OctagonStateMachine *)self lockStateTracker];
    [v17 recheck];
  }

  v18 = [OctagonStateTransitionRequest alloc];
  v19 = [(OctagonStateMachine *)self queue];
  v20 = [(OctagonStateTransitionRequest *)v18 init:v10 sourceStates:v12 serialQueue:v19 transitionOp:v11];

  [(OctagonStateMachine *)self handleExternalRequest:v20 startTimeout:30000000000];
  objc_initWeak(buf, self);
  v21 = [NSString stringWithFormat:@"%@-callback", v10];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100164B30;
  v27[3] = &unk_100338CF0;
  objc_copyWeak(&v31, buf);
  v22 = v10;
  v28 = v22;
  v23 = v11;
  v29 = v23;
  v24 = v13;
  v30 = v24;
  v25 = [CKKSResultOperation named:v21 withBlock:v27];

  [v25 addDependency:v23];
  v26 = [(OctagonStateMachine *)self operationQueue];
  [v26 addOperation:v25];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)a3 startTimeout:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 states];
  v8 = [(OctagonStateMachine *)self currentState];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [(OctagonStateMachine *)self currentState];
    [v6 onqueueEnterState:v10];
  }

  else
  {
    v11 = [(OctagonStateMachine *)self stateMachineWatchers];
    [v11 addObject:v6];

    [(OctagonStateMachine *)self _onqueuePokeStateMachine];
    if (a4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      objc_initWeak(&location, self);
      v12 = dispatch_time(0, a4);
      v13 = [(OctagonStateMachine *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100164E1C;
      block[3] = &unk_100344D38;
      objc_copyWeak(&v16, &location);
      v15 = v6;
      dispatch_after(v12, v13, block);

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

- (void)registerMultiStateArrivalWatcher:(id)a3 startTimeout:(unint64_t)a4
{
  v6 = a3;
  v7 = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164F60;
  block[3] = &unk_100345100;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)registerStateTransitionWatcher:(id)a3 startTimeout:(unint64_t)a4
{
  v6 = a3;
  v7 = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016502C;
  block[3] = &unk_100345100;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (void)handleExternalRequest:(id)a3 startTimeout:(unint64_t)a4
{
  v6 = a3;
  v7 = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016529C;
  block[3] = &unk_100345100;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_sync(v7, block);
}

- (id)timeoutErrorForState:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self stateNumberMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(OctagonStateMachine *)self unexpectedStateErrorDomain];
    v8 = [v6 integerValue];
    v9 = [NSString stringWithFormat:@"Current state: '%@'", v4];
    v10 = [NSError errorWithDomain:v7 code:v8 description:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)haltOperation
{
  v3 = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001655E4;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [(OctagonStateMachine *)self nextStateMachineCycleOperation];
  [v4 waitUntilFinished];
}

- (void)startOperation
{
  v3 = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100165718;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (BOOL)isPaused
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(OctagonStateMachine *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10016588C;
  v5[3] = &unk_100344E90;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)testReleaseStateMachinePause:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100165990;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)testPauseStateMachineAfterEntering:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100165B54;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onqueueSendAnyPendingFlags
{
  v3 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(OctagonStateMachine *)self allowPendingFlags])
  {
    v4 = [(OctagonStateMachine *)self pendingFlags];
    v5 = [v4 allValues];
    v6 = [v5 copy];

    v44 = +[NSDate date];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (!v8)
    {

      goto LABEL_37;
    }

    v9 = v8;
    v10 = 0;
    v42 = 0;
    v11 = *v46;
    obj = v7;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v46 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v45 + 1) + 8 * v12);
      v14 = [v13 fireTime];

      if (!v14)
      {
        v17 = 1;
        goto LABEL_16;
      }

      v15 = [v13 fireTime];
      v16 = [v15 compare:v44];

      v17 = v16 == -1;
      if (v16 == -1)
      {
        break;
      }

      v18 = [v13 fireTime];
      v19 = v18;
      if (v10)
      {
        v20 = [v10 earlierDate:v18];

        v10 = v20;
LABEL_14:

        goto LABEL_16;
      }

      v17 = 0;
      v10 = v18;
LABEL_16:
      v23 = [v13 afterOperation];

      if (v23)
      {
        v24 = [v13 afterOperation];
        v25 = [v24 isFinished];

        if (v25)
        {
          v26 = [(OctagonStateMachine *)self name];
          v27 = sub_100006610([NSString stringWithFormat:@"%@-%@", v26, @"pending-flag"]);

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [v13 flag];
            v29 = [v13 afterOperation];
            *buf = 138412546;
            v50 = v28;
            v51 = 2112;
            v52 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Operation has ended for pending flag %@: %@", buf, 0x16u);
          }
        }

        else
        {
          v17 = 0;
        }
      }

      if (![v13 conditions])
      {
        goto LABEL_27;
      }

      v30 = [v13 conditions];
      v31 = ([(OctagonStateMachine *)self currentConditions]& v30);
      if (v31 == [v13 conditions])
      {
        v32 = [(OctagonStateMachine *)self name];
        v33 = sub_100006610([NSString stringWithFormat:@"%@-%@", v32, @"pending-flag"]);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v13 flag];
          *buf = 138412290;
          v50 = v34;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Conditions are right for %@", buf, 0xCu);
        }

LABEL_27:
        if (v17)
        {
          v35 = [(OctagonStateMachine *)self currentFlags];
          v36 = [v13 flag];
          [v35 _onqueueSetFlag:v36];

          v37 = [(OctagonStateMachine *)self pendingFlags];
          v38 = [v13 flag];
          [v37 setObject:0 forKeyedSubscript:v38];

          v42 = 1;
        }
      }

      if (v9 == ++v12)
      {
        v7 = obj;
        v9 = [obj countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (!v9)
        {

          if (v10)
          {
            [v10 timeIntervalSinceDate:v44];
            v40 = (v39 * 1000000000.0);
            v41 = [(OctagonStateMachine *)self pendingFlagsScheduler];
            [v41 triggerAt:v40];

            if ((v42 & 1) == 0)
            {
LABEL_38:

              return;
            }

LABEL_36:
            [(OctagonStateMachine *)self _onqueuePokeStateMachine];
            goto LABEL_38;
          }

          if (v42)
          {
            goto LABEL_36;
          }

LABEL_37:
          v10 = 0;
          goto LABEL_38;
        }

        goto LABEL_4;
      }
    }

    v21 = [(OctagonStateMachine *)self name];
    v19 = sub_100006610([NSString stringWithFormat:@"%@-%@", v21, @"pending-flag"]);

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v13 flag];
      *buf = 138412290;
      v50 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delay has ended for pending flag %@", buf, 0xCu);
    }

    goto LABEL_14;
  }
}

- (void)_onqueueRecheckConditions
{
  v4 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v4);

  if ([(OctagonStateMachine *)self allowPendingFlags])
  {
    v5 = [(OctagonStateMachine *)self pendingFlags];
    v6 = [v5 allValues];
    v7 = [v6 copy];

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v9)
    {
      v10 = 0;
      v11 = *v48;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v10 |= [*(*(&v47 + 1) + 8 * i) conditions];
        }

        v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v9);

      if (v10)
      {
        v13 = [(OctagonStateMachine *)self conditionChecksInFlight];
        objc_initWeak(&location, self);
        v14 = v10 & ~v13;
        if (v14)
        {
          v15 = [(OctagonStateMachine *)self lockStateTracker];
          v16 = v15 == 0;

          if (v16)
          {
            v39 = +[NSAssertionHandler currentHandler];
            [v39 handleFailureInMethod:a2 object:self file:@"OctagonStateMachine.m" lineNumber:419 description:@"Must have a lock state tracker to wait for unlock"];
          }

          v17 = [(OctagonStateMachine *)self lockStateTracker];
          v18 = [v17 isLocked];

          if (v18)
          {
            v19 = [(OctagonStateMachine *)self name];
            v20 = sub_100006610([NSString stringWithFormat:@"%@-%@", v19, @"pending-flag"]);

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Waiting for unlock", buf, 2u);
            }

            [(OctagonStateMachine *)self setCurrentConditions:[(OctagonStateMachine *)self currentConditions]& 0xFFFFFFFFFFFFFFFELL];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_100166768;
            v43[3] = &unk_1003452E8;
            objc_copyWeak(&v44, &location);
            v21 = [NSBlockOperation blockOperationWithBlock:v43];
            [(OctagonStateMachine *)self setCheckUnlockOperation:v21];

            [(OctagonStateMachine *)self setConditionChecksInFlight:[(OctagonStateMachine *)self conditionChecksInFlight]| 1];
            v22 = [(OctagonStateMachine *)self checkUnlockOperation];
            v23 = [(OctagonStateMachine *)self lockStateTracker];
            v24 = [v23 unlockDependency];
            [v22 addNullableDependency:v24];

            v25 = [(OctagonStateMachine *)self operationQueue];
            v26 = [(OctagonStateMachine *)self checkUnlockOperation];
            [v25 addOperation:v26];

            objc_destroyWeak(&v44);
          }

          else
          {
            [(OctagonStateMachine *)self setCurrentConditions:[(OctagonStateMachine *)self currentConditions]| 1];
          }
        }

        if ((v14 & 2) != 0)
        {
          v27 = [(OctagonStateMachine *)self reachabilityTracker];
          v28 = v27 == 0;

          if (v28)
          {
            v40 = +[NSAssertionHandler currentHandler];
            [v40 handleFailureInMethod:a2 object:self file:@"OctagonStateMachine.m" lineNumber:447 description:@"Must have a network reachability tracker to use network reachability pending flags"];
          }

          v29 = [(OctagonStateMachine *)self reachabilityTracker];
          v30 = [v29 currentReachability];

          if (v30)
          {
            [(OctagonStateMachine *)self setCurrentConditions:[(OctagonStateMachine *)self currentConditions]| 2];
          }

          else
          {
            v31 = [(OctagonStateMachine *)self name];
            v32 = sub_100006610([NSString stringWithFormat:@"%@-%@", v31, @"pending-flag"]);

            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Waiting for network reachability", buf, 2u);
            }

            [(OctagonStateMachine *)self setCurrentConditions:[(OctagonStateMachine *)self currentConditions]& 0xFFFFFFFFFFFFFFFDLL];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_100166804;
            v41[3] = &unk_1003452E8;
            objc_copyWeak(&v42, &location);
            v33 = [NSBlockOperation blockOperationWithBlock:v41];
            [(OctagonStateMachine *)self setCheckReachabilityOperation:v33];

            [(OctagonStateMachine *)self setConditionChecksInFlight:[(OctagonStateMachine *)self conditionChecksInFlight]| 2];
            v34 = [(OctagonStateMachine *)self checkReachabilityOperation];
            v35 = [(OctagonStateMachine *)self reachabilityTracker];
            v36 = [v35 reachabilityDependency];
            [v34 addNullableDependency:v36];

            v37 = [(OctagonStateMachine *)self operationQueue];
            v38 = [(OctagonStateMachine *)self checkReachabilityOperation];
            [v37 addOperation:v38];

            objc_destroyWeak(&v42);
          }
        }

        objc_destroyWeak(&location);
      }
    }

    else
    {
    }
  }
}

- (id)possiblePendingFlags
{
  v2 = [(OctagonStateMachine *)self pendingFlags];
  v3 = [v2 allKeys];

  return v3;
}

- (id)dumpPendingFlags
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100166BD0;
  v11 = sub_100166BE0;
  v12 = +[NSMutableDictionary dictionary];
  v3 = [(OctagonStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100166BE8;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)disablePendingFlags
{
  v3 = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166DD4;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_onqueueHandlePendingFlag:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OctagonStateMachine *)self pendingFlags];
  v7 = [v4 flag];
  [v6 setObject:v4 forKeyedSubscript:v7];

  v8 = [v4 afterOperation];

  if (v8)
  {
    objc_initWeak(&location, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100166F84;
    v15 = &unk_1003452E8;
    objc_copyWeak(&v16, &location);
    v9 = [NSBlockOperation blockOperationWithBlock:&v12];
    v10 = [v4 afterOperation];
    [v9 addNullableDependency:v10];

    v11 = [(OctagonStateMachine *)self operationQueue];
    [v11 addOperation:v9];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  [(OctagonStateMachine *)self _onqueueRecheckConditions];
  [(OctagonStateMachine *)self _onqueueSendAnyPendingFlags];
}

- (void)_onqueueHandlePendingFlagLater:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OctagonStateMachine *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016719C;
  v8[3] = &unk_100343E38;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)handlePendingFlag:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016725C;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onqueueHandleFlag:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OctagonStateMachine *)self currentFlags];
  [v6 _onqueueSetFlag:v4];

  [(OctagonStateMachine *)self _onqueuePokeStateMachine];
}

- (void)handleFlag:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167398;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onqueuePokeStateMachine
{
  v3 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  [(OctagonStateMachine *)self _onqueueStartNextStateMachineOperation:0];
}

- (void)pokeStateMachine
{
  v3 = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167478;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)createOperationToFinishAttempt:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001675CC;
  v9[3] = &unk_100344D38;
  objc_copyWeak(&v11, &location);
  v5 = v4;
  v10 = v5;
  v6 = [CKKSResultOperation named:@"octagon-state-follow-up" withBlock:v9];
  v7 = [(OctagonStateMachine *)self holdStateMachineOperation];
  [v6 addNullableDependency:v7];

  [v6 addNullableDependency:v5];
  [v6 setQualityOfService:25];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_onqueueStartNextStateMachineOperation:(BOOL)a3
{
  v5 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(OctagonStateMachine *)self nextStateMachineCycleOperation];

  if (!v6)
  {
    v7 = [(OctagonStateMachine *)self testHoldStates];
    v8 = [(OctagonStateMachine *)self currentState];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = [(OctagonStateMachine *)self name];
      v11 = sub_100006610([NSString stringWithFormat:@"%@-%@", v10, @"state"]);

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(OctagonStateMachine *)self currentState];
        *buf = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "In test hold for state %@; pausing", buf, 0xCu);
      }

      v13 = [(OctagonStateMachine *)self paused];
      [v13 fulfill];
    }

    else
    {
      v13 = [(OctagonStateMachine *)self _onqueueNextStateMachineTransition];
      v14 = [(OctagonStateMachine *)self name];
      v15 = sub_100006610([NSString stringWithFormat:@"%@-%@", v14, @"state"]);

      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v16)
        {
          *buf = 138412290;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning state transition attempt %@", buf, 0xCu);
        }

        v17 = [(OctagonStateMachine *)self createOperationToFinishAttempt:v13];
        [(OctagonStateMachine *)self setNextStateMachineCycleOperation:v17];

        v18 = [(OctagonStateMachine *)self operationQueue];
        v19 = [(OctagonStateMachine *)self nextStateMachineCycleOperation];
        [v18 addOperation:v19];

        v20 = [(OctagonStateMachine *)self holdStateMachineOperation];
        [v13 addNullableDependency:v20];

        [v13 setQualityOfService:25];
        v21 = [(OctagonStateMachine *)self operationQueue];
        [v21 addOperation:v13];

        if (a3)
        {
          goto LABEL_15;
        }

        v22 = objc_alloc_init(CKKSCondition);
        [(OctagonStateMachine *)self setPaused:v22];
      }

      else
      {
        if (v16)
        {
          v23 = [(OctagonStateMachine *)self currentState];
          v24 = [(OctagonStateMachine *)self currentFlags];
          v25 = [v24 contentsAsString];
          v26 = [(OctagonStateMachine *)self pendingFlagsString];
          *buf = 138412802;
          v28 = v23;
          v29 = 2112;
          v30 = v25;
          v31 = 2112;
          v32 = v26;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "State machine rests (%@, f:[%@] p:[%@])", buf, 0x20u);
        }

        v22 = [(OctagonStateMachine *)self paused];
        [(CKKSCondition *)v22 fulfill];
      }
    }

LABEL_15:
  }
}

- (id)_onqueueNextStateMachineTransition
{
  v3 = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(OctagonStateMachine *)self halted])
  {
    v4 = [(OctagonStateMachine *)self currentState];
    v5 = [v4 isEqualToString:@"halted"];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [OctagonStateTransitionOperation named:@"halt" entering:@"halted"];
    }
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = [(OctagonStateMachine *)self stateMachineRequests];
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 sourceStates];
          v14 = [(OctagonStateMachine *)self currentState];
          v15 = [v13 containsObject:v14];

          if (v15)
          {
            v16 = [v12 _onqueueStart];
            if (v16)
            {
              v6 = v16;
              v19 = [(OctagonStateMachine *)self name];
              v20 = sub_100006610([NSString stringWithFormat:@"%@-%@", v19, @"state"]);

              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [(OctagonStateMachine *)self currentState];
                *buf = 138412546;
                v28 = v12;
                v29 = 2112;
                v30 = v21;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Running state machine request %@ (from %@)", buf, 0x16u);
              }

              goto LABEL_17;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = [(OctagonStateMachine *)self stateEngine];
    v17 = [(OctagonStateMachine *)self currentState];
    v18 = [(OctagonStateMachine *)self currentFlags];
    v6 = [v7 _onqueueNextStateMachineTransition:v17 flags:v18 pendingFlags:self];

LABEL_17:
  }

  return v6;
}

- (id)waitForState:(id)a3 wait:(unint64_t)a4
{
  v6 = a3;
  v7 = [(OctagonStateMachine *)self stateConditions];
  v8 = [v7 objectForKeyedSubscript:v6];
  v9 = [v8 wait:a4];

  currentState = v6;
  if (v9)
  {
    currentState = self->_currentState;
  }

  v11 = currentState;

  return currentState;
}

- (void)setCurrentState:(id)a3
{
  v6 = a3;
  if (v6 | self->_currentState)
  {
    v14 = v6;
    if (([v6 isEqualToString:?] & 1) == 0)
    {
      if (self->_currentState)
      {
        v7 = objc_alloc_init(CKKSCondition);
        v8 = [(OctagonStateMachine *)self mutableStateConditions];
        [v8 setObject:v7 forKeyedSubscript:self->_currentState];
      }

      v9 = [(OctagonStateMachine *)self allowableStates];
      v10 = [v9 containsObject:v14];

      if ((v10 & 1) == 0)
      {
        v13 = +[NSAssertionHandler currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"OctagonStateMachine.m" lineNumber:182 description:{@"state machine tried to enter unknown state %@", v14}];
      }

      objc_storeStrong(&self->_currentState, a3);
      if (v14)
      {
        v11 = [(OctagonStateMachine *)self mutableStateConditions];
        v12 = [v11 objectForKeyedSubscript:v14];
        [v12 fulfill];
      }
    }
  }

  _objc_release_x1();
}

- (id)description
{
  v3 = [(OctagonStateMachine *)self pendingFlags];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(OctagonStateMachine *)self pendingFlagsString];
    v6 = [NSString stringWithFormat:@" (pending: %@)", v5];
  }

  else
  {
    v6 = &stru_100348050;
  }

  v7 = [(OctagonStateMachine *)self name];
  v8 = [(OctagonStateMachine *)self currentState];
  v9 = [NSString stringWithFormat:@"<OctagonStateMachine(%@, %@, %@)>", v7, v8, v6];

  return v9;
}

- (id)pendingFlagsString
{
  v2 = [(OctagonStateMachine *)self pendingFlags];
  v3 = [v2 allValues];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (NSDictionary)stateConditions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100166BD0;
  v11 = sub_100166BE0;
  v12 = 0;
  v3 = [(OctagonStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100168544;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (OctagonStateMachine)initWithName:(id)a3 states:(id)a4 flags:(id)a5 initialState:(id)a6 queue:(id)a7 stateEngine:(id)a8 unexpectedStateErrorDomain:(id)a9 lockStateTracker:(id)a10 reachabilityTracker:(id)a11
{
  v61 = a3;
  v65 = a4;
  v62 = a5;
  v60 = a6;
  v64 = a7;
  obj = a8;
  v57 = a9;
  v58 = a10;
  v59 = a11;
  v73.receiver = self;
  v73.super_class = OctagonStateMachine;
  v18 = [(OctagonStateMachine *)&v73 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, a3);
    objc_storeStrong(&v19->_lockStateTracker, a10);
    objc_storeStrong(&v19->_reachabilityTracker, a11);
    v19->_conditionChecksInFlight = 0;
    v19->_currentConditions = 0;
    v20 = [v65 mutableCopy];
    [v20 setObject:&off_1003648E8 forKeyedSubscript:@"not_started"];
    [v20 setObject:&off_100364900 forKeyedSubscript:@"halted"];
    objc_storeStrong(&v19->_stateNumberMap, v20);
    objc_storeStrong(&v19->_unexpectedStateErrorDomain, a9);
    v21 = [v20 allKeys];
    v22 = [NSSet setWithArray:v21];
    allowableStates = v19->_allowableStates;
    v19->_allowableStates = v22;

    objc_storeStrong(&v19->_queue, a7);
    v24 = objc_alloc_init(NSOperationQueue);
    operationQueue = v19->_operationQueue;
    v19->_operationQueue = v24;

    v26 = [[OctagonFlags alloc] initWithQueue:v64 flags:v62];
    currentFlags = v19->_currentFlags;
    v19->_currentFlags = v26;

    objc_storeWeak(&v19->_stateEngine, obj);
    v28 = [NSBlockOperation blockOperationWithBlock:&stru_100338CC8];
    holdStateMachineOperation = v19->_holdStateMachineOperation;
    v19->_holdStateMachineOperation = v28;

    v30 = +[NSMutableSet set];
    testHoldStates = v19->_testHoldStates;
    v19->_testHoldStates = v30;

    v19->_halted = 0;
    v32 = objc_alloc_init(NSMutableDictionary);
    mutableStateConditions = v19->_mutableStateConditions;
    v19->_mutableStateConditions = v32;

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v34 = [v20 allKeys];
    v35 = [v34 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v35)
    {
      v36 = *v70;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v70 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = *(*(&v69 + 1) + 8 * i);
          v39 = objc_alloc_init(CKKSCondition);
          v40 = [(OctagonStateMachine *)v19 mutableStateConditions];
          [v40 setObject:v39 forKeyedSubscript:v38];
        }

        v35 = [v34 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v35);
    }

    [(OctagonStateMachine *)v19 setCurrentState:@"not_started"];
    v41 = +[NSMutableArray array];
    stateMachineRequests = v19->_stateMachineRequests;
    v19->_stateMachineRequests = v41;

    v43 = +[NSMutableArray array];
    stateMachineWatchers = v19->_stateMachineWatchers;
    v19->_stateMachineWatchers = v43;

    objc_initWeak(&location, v19);
    v19->_allowPendingFlags = 1;
    v45 = +[NSMutableDictionary dictionary];
    pendingFlags = v19->_pendingFlags;
    v19->_pendingFlags = v45;

    v47 = [CKKSNearFutureScheduler alloc];
    v48 = [NSString stringWithFormat:@"%@-pending-flag", v61, v57, v58];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100168B04;
    v66[3] = &unk_1003452E8;
    objc_copyWeak(&v67, &location);
    v49 = [(CKKSNearFutureScheduler *)v47 initWithName:v48 delay:100000000 keepProcessAlive:0 dependencyDescriptionCode:1006 block:v66];
    pendingFlagsScheduler = v19->_pendingFlagsScheduler;
    v19->_pendingFlagsScheduler = v49;

    v51 = [OctagonStateTransitionOperation named:@"initialize" entering:v60];
    [v51 addDependency:v19->_holdStateMachineOperation];
    [(NSOperationQueue *)v19->_operationQueue addOperation:v51];
    v52 = objc_alloc_init(CKKSCondition);
    paused = v19->_paused;
    v19->_paused = v52;

    v54 = [(OctagonStateMachine *)v19 createOperationToFinishAttempt:v51];
    nextStateMachineCycleOperation = v19->_nextStateMachineCycleOperation;
    v19->_nextStateMachineCycleOperation = v54;

    [(NSOperationQueue *)v19->_operationQueue addOperation:v19->_nextStateMachineCycleOperation];
    objc_destroyWeak(&v67);
    objc_destroyWeak(&location);
  }

  return v19;
}

@end