@interface OctagonStateMachine
- (BOOL)isPaused;
- (NSDictionary)stateConditions;
- (OctagonStateMachine)initWithName:(id)name states:(id)states flags:(id)flags initialState:(id)state queue:(id)queue stateEngine:(id)engine unexpectedStateErrorDomain:(id)domain lockStateTracker:(id)self0 reachabilityTracker:(id)self1;
- (OctagonStateMachineEngine)stateEngine;
- (id)_onqueueNextStateMachineTransition;
- (id)createOperationToFinishAttempt:(id)attempt;
- (id)description;
- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path reply:(id)reply;
- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path transitionOp:(id)op reply:(id)reply;
- (id)dumpPendingFlags;
- (id)pendingFlagsString;
- (id)possiblePendingFlags;
- (id)timeoutErrorForState:(id)state;
- (id)waitForState:(id)state wait:(unint64_t)wait;
- (void)_onqueueHandleFlag:(id)flag;
- (void)_onqueueHandlePendingFlag:(id)flag;
- (void)_onqueueHandlePendingFlagLater:(id)later;
- (void)_onqueuePokeStateMachine;
- (void)_onqueueRecheckConditions;
- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)watcher startTimeout:(unint64_t)timeout;
- (void)_onqueueSendAnyPendingFlags;
- (void)_onqueueStartNextStateMachineOperation:(BOOL)operation;
- (void)disablePendingFlags;
- (void)doSimpleStateMachineRPC:(id)c op:(id)op sourceStates:(id)states reply:(id)reply;
- (void)haltOperation;
- (void)handleExternalRequest:(id)request startTimeout:(unint64_t)timeout;
- (void)handleFlag:(id)flag;
- (void)handlePendingFlag:(id)flag;
- (void)pokeStateMachine;
- (void)registerMultiStateArrivalWatcher:(id)watcher startTimeout:(unint64_t)timeout;
- (void)registerStateTransitionWatcher:(id)watcher startTimeout:(unint64_t)timeout;
- (void)setCurrentState:(id)state;
- (void)startOperation;
- (void)testPauseStateMachineAfterEntering:(id)entering;
- (void)testReleaseStateMachinePause:(id)pause;
@end

@implementation OctagonStateMachine

- (OctagonStateMachineEngine)stateEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateEngine);

  return WeakRetained;
}

- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path transitionOp:(id)op reply:(id)reply
{
  cCopy = c;
  replyCopy = reply;
  opCopy = op;
  pathCopy = path;
  statesCopy = states;
  name = [(OctagonStateMachine *)self name];
  v18 = sub_100006610([NSString stringWithFormat:@"%@-%@", name, @"state-rpc"]);

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = cCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Beginning a '%@' rpc", buf, 0xCu);
  }

  lockStateTracker = [(OctagonStateMachine *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(OctagonStateMachine *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  v21 = [OctagonStateTransitionRequest alloc];
  queue = [(OctagonStateMachine *)self queue];
  v23 = [(OctagonStateTransitionRequest *)v21 init:cCopy sourceStates:statesCopy serialQueue:queue transitionOp:opCopy];

  v24 = [OctagonStateTransitionWatcher alloc];
  cCopy = [NSString stringWithFormat:@"watcher-%@", cCopy];
  v26 = [(OctagonStateTransitionWatcher *)v24 initNamed:cCopy stateMachine:self path:pathCopy initialRequest:v23];

  timeout = [(OctagonStateMachine *)self timeout];
  if (timeout)
  {
    v28 = timeout;
  }

  else
  {
    v28 = 120000000000;
  }

  [(OctagonStateMachine *)self registerStateTransitionWatcher:v26 startTimeout:v28];
  cCopy2 = [NSString stringWithFormat:@"%@-callback", cCopy];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100164550;
  v39[3] = &unk_100338D18;
  v39[4] = self;
  v40 = cCopy;
  v41 = v26;
  v42 = replyCopy;
  v30 = replyCopy;
  v31 = v26;
  v32 = cCopy;
  v33 = [CKKSResultOperation named:cCopy2 withBlockTakingSelf:v39];

  result = [v31 result];
  [v33 addDependency:result];

  operationQueue = [(OctagonStateMachine *)self operationQueue];
  [operationQueue addOperation:v33];

  timeout2 = [(OctagonStateMachine *)self timeout];
  if (timeout2)
  {
    v37 = timeout2;
  }

  else
  {
    v37 = 120000000000;
  }

  [(OctagonStateMachine *)self handleExternalRequest:v23 startTimeout:v37];

  return v33;
}

- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path reply:(id)reply
{
  replyCopy = reply;
  pathCopy = path;
  statesCopy = states;
  cCopy = c;
  cCopy = [NSString stringWithFormat:@"intial-transition-%@", cCopy];
  initialState = [pathCopy initialState];
  v16 = [OctagonStateTransitionOperation named:cCopy entering:initialState];

  v17 = [(OctagonStateMachine *)self doWatchedStateMachineRPC:cCopy sourceStates:statesCopy path:pathCopy transitionOp:v16 reply:replyCopy];

  return v17;
}

- (void)doSimpleStateMachineRPC:(id)c op:(id)op sourceStates:(id)states reply:(id)reply
{
  cCopy = c;
  opCopy = op;
  statesCopy = states;
  replyCopy = reply;
  name = [(OctagonStateMachine *)self name];
  v15 = sub_100006610([NSString stringWithFormat:@"%@-%@", name, @"state-rpc"]);

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = cCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning a '%@' rpc", buf, 0xCu);
  }

  lockStateTracker = [(OctagonStateMachine *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(OctagonStateMachine *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  v18 = [OctagonStateTransitionRequest alloc];
  queue = [(OctagonStateMachine *)self queue];
  v20 = [(OctagonStateTransitionRequest *)v18 init:cCopy sourceStates:statesCopy serialQueue:queue transitionOp:opCopy];

  [(OctagonStateMachine *)self handleExternalRequest:v20 startTimeout:30000000000];
  objc_initWeak(buf, self);
  cCopy = [NSString stringWithFormat:@"%@-callback", cCopy];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100164B30;
  v27[3] = &unk_100338CF0;
  objc_copyWeak(&v31, buf);
  v22 = cCopy;
  v28 = v22;
  v23 = opCopy;
  v29 = v23;
  v24 = replyCopy;
  v30 = v24;
  v25 = [CKKSResultOperation named:cCopy withBlock:v27];

  [v25 addDependency:v23];
  operationQueue = [(OctagonStateMachine *)self operationQueue];
  [operationQueue addOperation:v25];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)watcher startTimeout:(unint64_t)timeout
{
  watcherCopy = watcher;
  states = [watcherCopy states];
  currentState = [(OctagonStateMachine *)self currentState];
  v9 = [states containsObject:currentState];

  if (v9)
  {
    currentState2 = [(OctagonStateMachine *)self currentState];
    [watcherCopy onqueueEnterState:currentState2];
  }

  else
  {
    stateMachineWatchers = [(OctagonStateMachine *)self stateMachineWatchers];
    [stateMachineWatchers addObject:watcherCopy];

    [(OctagonStateMachine *)self _onqueuePokeStateMachine];
    if (timeout - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      objc_initWeak(&location, self);
      v12 = dispatch_time(0, timeout);
      queue = [(OctagonStateMachine *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100164E1C;
      block[3] = &unk_100344D38;
      objc_copyWeak(&v16, &location);
      v15 = watcherCopy;
      dispatch_after(v12, queue, block);

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

- (void)registerMultiStateArrivalWatcher:(id)watcher startTimeout:(unint64_t)timeout
{
  watcherCopy = watcher;
  queue = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100164F60;
  block[3] = &unk_100345100;
  block[4] = self;
  v10 = watcherCopy;
  timeoutCopy = timeout;
  v8 = watcherCopy;
  dispatch_sync(queue, block);
}

- (void)registerStateTransitionWatcher:(id)watcher startTimeout:(unint64_t)timeout
{
  watcherCopy = watcher;
  queue = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016502C;
  block[3] = &unk_100345100;
  block[4] = self;
  v10 = watcherCopy;
  timeoutCopy = timeout;
  v8 = watcherCopy;
  dispatch_sync(queue, block);
}

- (void)handleExternalRequest:(id)request startTimeout:(unint64_t)timeout
{
  requestCopy = request;
  queue = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10016529C;
  block[3] = &unk_100345100;
  block[4] = self;
  v10 = requestCopy;
  timeoutCopy = timeout;
  v8 = requestCopy;
  dispatch_sync(queue, block);
}

- (id)timeoutErrorForState:(id)state
{
  stateCopy = state;
  stateNumberMap = [(OctagonStateMachine *)self stateNumberMap];
  v6 = [stateNumberMap objectForKeyedSubscript:stateCopy];

  if (v6)
  {
    unexpectedStateErrorDomain = [(OctagonStateMachine *)self unexpectedStateErrorDomain];
    integerValue = [v6 integerValue];
    stateCopy = [NSString stringWithFormat:@"Current state: '%@'", stateCopy];
    v10 = [NSError errorWithDomain:unexpectedStateErrorDomain code:integerValue description:stateCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)haltOperation
{
  queue = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001655E4;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);

  nextStateMachineCycleOperation = [(OctagonStateMachine *)self nextStateMachineCycleOperation];
  [nextStateMachineCycleOperation waitUntilFinished];
}

- (void)startOperation
{
  queue = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100165718;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)isPaused
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(OctagonStateMachine *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10016588C;
  v5[3] = &unk_100344E90;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)testReleaseStateMachinePause:(id)pause
{
  pauseCopy = pause;
  queue = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100165990;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = pauseCopy;
  v6 = pauseCopy;
  dispatch_sync(queue, v7);
}

- (void)testPauseStateMachineAfterEntering:(id)entering
{
  enteringCopy = entering;
  queue = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100165B54;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = enteringCopy;
  v6 = enteringCopy;
  dispatch_sync(queue, v7);
}

- (void)_onqueueSendAnyPendingFlags
{
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OctagonStateMachine *)self allowPendingFlags])
  {
    pendingFlags = [(OctagonStateMachine *)self pendingFlags];
    allValues = [pendingFlags allValues];
    v6 = [allValues copy];

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
      fireTime = [v13 fireTime];

      if (!fireTime)
      {
        v17 = 1;
        goto LABEL_16;
      }

      fireTime2 = [v13 fireTime];
      v16 = [fireTime2 compare:v44];

      v17 = v16 == -1;
      if (v16 == -1)
      {
        break;
      }

      fireTime3 = [v13 fireTime];
      v19 = fireTime3;
      if (v10)
      {
        v20 = [v10 earlierDate:fireTime3];

        v10 = v20;
LABEL_14:

        goto LABEL_16;
      }

      v17 = 0;
      v10 = fireTime3;
LABEL_16:
      afterOperation = [v13 afterOperation];

      if (afterOperation)
      {
        afterOperation2 = [v13 afterOperation];
        isFinished = [afterOperation2 isFinished];

        if (isFinished)
        {
          name = [(OctagonStateMachine *)self name];
          v27 = sub_100006610([NSString stringWithFormat:@"%@-%@", name, @"pending-flag"]);

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            flag = [v13 flag];
            afterOperation3 = [v13 afterOperation];
            *buf = 138412546;
            v50 = flag;
            v51 = 2112;
            v52 = afterOperation3;
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

      conditions = [v13 conditions];
      v31 = ([(OctagonStateMachine *)self currentConditions]& conditions);
      if (v31 == [v13 conditions])
      {
        name2 = [(OctagonStateMachine *)self name];
        v33 = sub_100006610([NSString stringWithFormat:@"%@-%@", name2, @"pending-flag"]);

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          flag2 = [v13 flag];
          *buf = 138412290;
          v50 = flag2;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Conditions are right for %@", buf, 0xCu);
        }

LABEL_27:
        if (v17)
        {
          currentFlags = [(OctagonStateMachine *)self currentFlags];
          flag3 = [v13 flag];
          [currentFlags _onqueueSetFlag:flag3];

          pendingFlags2 = [(OctagonStateMachine *)self pendingFlags];
          flag4 = [v13 flag];
          [pendingFlags2 setObject:0 forKeyedSubscript:flag4];

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
            pendingFlagsScheduler = [(OctagonStateMachine *)self pendingFlagsScheduler];
            [pendingFlagsScheduler triggerAt:v40];

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

    name3 = [(OctagonStateMachine *)self name];
    v19 = sub_100006610([NSString stringWithFormat:@"%@-%@", name3, @"pending-flag"]);

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      flag5 = [v13 flag];
      *buf = 138412290;
      v50 = flag5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Delay has ended for pending flag %@", buf, 0xCu);
    }

    goto LABEL_14;
  }
}

- (void)_onqueueRecheckConditions
{
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OctagonStateMachine *)self allowPendingFlags])
  {
    pendingFlags = [(OctagonStateMachine *)self pendingFlags];
    allValues = [pendingFlags allValues];
    v7 = [allValues copy];

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
        conditionChecksInFlight = [(OctagonStateMachine *)self conditionChecksInFlight];
        objc_initWeak(&location, self);
        v14 = v10 & ~conditionChecksInFlight;
        if (v14)
        {
          lockStateTracker = [(OctagonStateMachine *)self lockStateTracker];
          v16 = lockStateTracker == 0;

          if (v16)
          {
            v39 = +[NSAssertionHandler currentHandler];
            [v39 handleFailureInMethod:a2 object:self file:@"OctagonStateMachine.m" lineNumber:419 description:@"Must have a lock state tracker to wait for unlock"];
          }

          lockStateTracker2 = [(OctagonStateMachine *)self lockStateTracker];
          isLocked = [lockStateTracker2 isLocked];

          if (isLocked)
          {
            name = [(OctagonStateMachine *)self name];
            v20 = sub_100006610([NSString stringWithFormat:@"%@-%@", name, @"pending-flag"]);

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
            checkUnlockOperation = [(OctagonStateMachine *)self checkUnlockOperation];
            lockStateTracker3 = [(OctagonStateMachine *)self lockStateTracker];
            unlockDependency = [lockStateTracker3 unlockDependency];
            [checkUnlockOperation addNullableDependency:unlockDependency];

            operationQueue = [(OctagonStateMachine *)self operationQueue];
            checkUnlockOperation2 = [(OctagonStateMachine *)self checkUnlockOperation];
            [operationQueue addOperation:checkUnlockOperation2];

            objc_destroyWeak(&v44);
          }

          else
          {
            [(OctagonStateMachine *)self setCurrentConditions:[(OctagonStateMachine *)self currentConditions]| 1];
          }
        }

        if ((v14 & 2) != 0)
        {
          reachabilityTracker = [(OctagonStateMachine *)self reachabilityTracker];
          v28 = reachabilityTracker == 0;

          if (v28)
          {
            v40 = +[NSAssertionHandler currentHandler];
            [v40 handleFailureInMethod:a2 object:self file:@"OctagonStateMachine.m" lineNumber:447 description:@"Must have a network reachability tracker to use network reachability pending flags"];
          }

          reachabilityTracker2 = [(OctagonStateMachine *)self reachabilityTracker];
          currentReachability = [reachabilityTracker2 currentReachability];

          if (currentReachability)
          {
            [(OctagonStateMachine *)self setCurrentConditions:[(OctagonStateMachine *)self currentConditions]| 2];
          }

          else
          {
            name2 = [(OctagonStateMachine *)self name];
            v32 = sub_100006610([NSString stringWithFormat:@"%@-%@", name2, @"pending-flag"]);

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
            checkReachabilityOperation = [(OctagonStateMachine *)self checkReachabilityOperation];
            reachabilityTracker3 = [(OctagonStateMachine *)self reachabilityTracker];
            reachabilityDependency = [reachabilityTracker3 reachabilityDependency];
            [checkReachabilityOperation addNullableDependency:reachabilityDependency];

            operationQueue2 = [(OctagonStateMachine *)self operationQueue];
            checkReachabilityOperation2 = [(OctagonStateMachine *)self checkReachabilityOperation];
            [operationQueue2 addOperation:checkReachabilityOperation2];

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
  pendingFlags = [(OctagonStateMachine *)self pendingFlags];
  allKeys = [pendingFlags allKeys];

  return allKeys;
}

- (id)dumpPendingFlags
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100166BD0;
  v11 = sub_100166BE0;
  v12 = +[NSMutableDictionary dictionary];
  queue = [(OctagonStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100166BE8;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)disablePendingFlags
{
  queue = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100166DD4;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onqueueHandlePendingFlag:(id)flag
{
  flagCopy = flag;
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingFlags = [(OctagonStateMachine *)self pendingFlags];
  flag = [flagCopy flag];
  [pendingFlags setObject:flagCopy forKeyedSubscript:flag];

  afterOperation = [flagCopy afterOperation];

  if (afterOperation)
  {
    objc_initWeak(&location, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100166F84;
    v15 = &unk_1003452E8;
    objc_copyWeak(&v16, &location);
    v9 = [NSBlockOperation blockOperationWithBlock:&v12];
    afterOperation2 = [flagCopy afterOperation];
    [v9 addNullableDependency:afterOperation2];

    operationQueue = [(OctagonStateMachine *)self operationQueue];
    [operationQueue addOperation:v9];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  [(OctagonStateMachine *)self _onqueueRecheckConditions];
  [(OctagonStateMachine *)self _onqueueSendAnyPendingFlags];
}

- (void)_onqueueHandlePendingFlagLater:(id)later
{
  laterCopy = later;
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(OctagonStateMachine *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10016719C;
  v8[3] = &unk_100343E38;
  v8[4] = self;
  v9 = laterCopy;
  v7 = laterCopy;
  dispatch_async(queue2, v8);
}

- (void)handlePendingFlag:(id)flag
{
  flagCopy = flag;
  queue = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016725C;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = flagCopy;
  v6 = flagCopy;
  dispatch_sync(queue, v7);
}

- (void)_onqueueHandleFlag:(id)flag
{
  flagCopy = flag;
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  currentFlags = [(OctagonStateMachine *)self currentFlags];
  [currentFlags _onqueueSetFlag:flagCopy];

  [(OctagonStateMachine *)self _onqueuePokeStateMachine];
}

- (void)handleFlag:(id)flag
{
  flagCopy = flag;
  queue = [(OctagonStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100167398;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = flagCopy;
  v6 = flagCopy;
  dispatch_sync(queue, v7);
}

- (void)_onqueuePokeStateMachine
{
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  [(OctagonStateMachine *)self _onqueueStartNextStateMachineOperation:0];
}

- (void)pokeStateMachine
{
  queue = [(OctagonStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100167478;
  block[3] = &unk_100346018;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)createOperationToFinishAttempt:(id)attempt
{
  attemptCopy = attempt;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001675CC;
  v9[3] = &unk_100344D38;
  objc_copyWeak(&v11, &location);
  v5 = attemptCopy;
  v10 = v5;
  v6 = [CKKSResultOperation named:@"octagon-state-follow-up" withBlock:v9];
  holdStateMachineOperation = [(OctagonStateMachine *)self holdStateMachineOperation];
  [v6 addNullableDependency:holdStateMachineOperation];

  [v6 addNullableDependency:v5];
  [v6 setQualityOfService:25];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_onqueueStartNextStateMachineOperation:(BOOL)operation
{
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  nextStateMachineCycleOperation = [(OctagonStateMachine *)self nextStateMachineCycleOperation];

  if (!nextStateMachineCycleOperation)
  {
    testHoldStates = [(OctagonStateMachine *)self testHoldStates];
    currentState = [(OctagonStateMachine *)self currentState];
    v9 = [testHoldStates containsObject:currentState];

    if (v9)
    {
      name = [(OctagonStateMachine *)self name];
      v11 = sub_100006610([NSString stringWithFormat:@"%@-%@", name, @"state"]);

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        currentState2 = [(OctagonStateMachine *)self currentState];
        *buf = 138412290;
        v28 = currentState2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "In test hold for state %@; pausing", buf, 0xCu);
      }

      paused = [(OctagonStateMachine *)self paused];
      [paused fulfill];
    }

    else
    {
      paused = [(OctagonStateMachine *)self _onqueueNextStateMachineTransition];
      name2 = [(OctagonStateMachine *)self name];
      v15 = sub_100006610([NSString stringWithFormat:@"%@-%@", name2, @"state"]);

      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (paused)
      {
        if (v16)
        {
          *buf = 138412290;
          v28 = paused;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Beginning state transition attempt %@", buf, 0xCu);
        }

        v17 = [(OctagonStateMachine *)self createOperationToFinishAttempt:paused];
        [(OctagonStateMachine *)self setNextStateMachineCycleOperation:v17];

        operationQueue = [(OctagonStateMachine *)self operationQueue];
        nextStateMachineCycleOperation2 = [(OctagonStateMachine *)self nextStateMachineCycleOperation];
        [operationQueue addOperation:nextStateMachineCycleOperation2];

        holdStateMachineOperation = [(OctagonStateMachine *)self holdStateMachineOperation];
        [paused addNullableDependency:holdStateMachineOperation];

        [paused setQualityOfService:25];
        operationQueue2 = [(OctagonStateMachine *)self operationQueue];
        [operationQueue2 addOperation:paused];

        if (operation)
        {
          goto LABEL_15;
        }

        paused2 = objc_alloc_init(CKKSCondition);
        [(OctagonStateMachine *)self setPaused:paused2];
      }

      else
      {
        if (v16)
        {
          currentState3 = [(OctagonStateMachine *)self currentState];
          currentFlags = [(OctagonStateMachine *)self currentFlags];
          contentsAsString = [currentFlags contentsAsString];
          pendingFlagsString = [(OctagonStateMachine *)self pendingFlagsString];
          *buf = 138412802;
          v28 = currentState3;
          v29 = 2112;
          v30 = contentsAsString;
          v31 = 2112;
          v32 = pendingFlagsString;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "State machine rests (%@, f:[%@] p:[%@])", buf, 0x20u);
        }

        paused2 = [(OctagonStateMachine *)self paused];
        [(CKKSCondition *)paused2 fulfill];
      }
    }

LABEL_15:
  }
}

- (id)_onqueueNextStateMachineTransition
{
  queue = [(OctagonStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OctagonStateMachine *)self halted])
  {
    currentState = [(OctagonStateMachine *)self currentState];
    v5 = [currentState isEqualToString:@"halted"];

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
    stateMachineRequests = [(OctagonStateMachine *)self stateMachineRequests];
    v8 = [stateMachineRequests countByEnumeratingWithState:&v23 objects:v31 count:16];
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
            objc_enumerationMutation(stateMachineRequests);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          sourceStates = [v12 sourceStates];
          currentState2 = [(OctagonStateMachine *)self currentState];
          v15 = [sourceStates containsObject:currentState2];

          if (v15)
          {
            _onqueueStart = [v12 _onqueueStart];
            if (_onqueueStart)
            {
              v6 = _onqueueStart;
              name = [(OctagonStateMachine *)self name];
              v20 = sub_100006610([NSString stringWithFormat:@"%@-%@", name, @"state"]);

              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                currentState3 = [(OctagonStateMachine *)self currentState];
                *buf = 138412546;
                v28 = v12;
                v29 = 2112;
                v30 = currentState3;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Running state machine request %@ (from %@)", buf, 0x16u);
              }

              goto LABEL_17;
            }
          }
        }

        v9 = [stateMachineRequests countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    stateMachineRequests = [(OctagonStateMachine *)self stateEngine];
    currentState4 = [(OctagonStateMachine *)self currentState];
    currentFlags = [(OctagonStateMachine *)self currentFlags];
    v6 = [stateMachineRequests _onqueueNextStateMachineTransition:currentState4 flags:currentFlags pendingFlags:self];

LABEL_17:
  }

  return v6;
}

- (id)waitForState:(id)state wait:(unint64_t)wait
{
  stateCopy = state;
  stateConditions = [(OctagonStateMachine *)self stateConditions];
  v8 = [stateConditions objectForKeyedSubscript:stateCopy];
  v9 = [v8 wait:wait];

  currentState = stateCopy;
  if (v9)
  {
    currentState = self->_currentState;
  }

  v11 = currentState;

  return currentState;
}

- (void)setCurrentState:(id)state
{
  stateCopy = state;
  if (stateCopy | self->_currentState)
  {
    v14 = stateCopy;
    if (([stateCopy isEqualToString:?] & 1) == 0)
    {
      if (self->_currentState)
      {
        v7 = objc_alloc_init(CKKSCondition);
        mutableStateConditions = [(OctagonStateMachine *)self mutableStateConditions];
        [mutableStateConditions setObject:v7 forKeyedSubscript:self->_currentState];
      }

      allowableStates = [(OctagonStateMachine *)self allowableStates];
      v10 = [allowableStates containsObject:v14];

      if ((v10 & 1) == 0)
      {
        v13 = +[NSAssertionHandler currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"OctagonStateMachine.m" lineNumber:182 description:{@"state machine tried to enter unknown state %@", v14}];
      }

      objc_storeStrong(&self->_currentState, state);
      if (v14)
      {
        mutableStateConditions2 = [(OctagonStateMachine *)self mutableStateConditions];
        v12 = [mutableStateConditions2 objectForKeyedSubscript:v14];
        [v12 fulfill];
      }
    }
  }

  _objc_release_x1();
}

- (id)description
{
  pendingFlags = [(OctagonStateMachine *)self pendingFlags];
  v4 = [pendingFlags count];

  if (v4)
  {
    pendingFlagsString = [(OctagonStateMachine *)self pendingFlagsString];
    v6 = [NSString stringWithFormat:@" (pending: %@)", pendingFlagsString];
  }

  else
  {
    v6 = &stru_100348050;
  }

  name = [(OctagonStateMachine *)self name];
  currentState = [(OctagonStateMachine *)self currentState];
  v9 = [NSString stringWithFormat:@"<OctagonStateMachine(%@, %@, %@)>", name, currentState, v6];

  return v9;
}

- (id)pendingFlagsString
{
  pendingFlags = [(OctagonStateMachine *)self pendingFlags];
  allValues = [pendingFlags allValues];
  v4 = [allValues componentsJoinedByString:{@", "}];

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
  queue = [(OctagonStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100168544;
  v6[3] = &unk_100344E90;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (OctagonStateMachine)initWithName:(id)name states:(id)states flags:(id)flags initialState:(id)state queue:(id)queue stateEngine:(id)engine unexpectedStateErrorDomain:(id)domain lockStateTracker:(id)self0 reachabilityTracker:(id)self1
{
  nameCopy = name;
  statesCopy = states;
  flagsCopy = flags;
  stateCopy = state;
  queueCopy = queue;
  obj = engine;
  domainCopy = domain;
  trackerCopy = tracker;
  reachabilityTrackerCopy = reachabilityTracker;
  v73.receiver = self;
  v73.super_class = OctagonStateMachine;
  v18 = [(OctagonStateMachine *)&v73 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v19->_lockStateTracker, tracker);
    objc_storeStrong(&v19->_reachabilityTracker, reachabilityTracker);
    v19->_conditionChecksInFlight = 0;
    v19->_currentConditions = 0;
    v20 = [statesCopy mutableCopy];
    [v20 setObject:&off_1003648E8 forKeyedSubscript:@"not_started"];
    [v20 setObject:&off_100364900 forKeyedSubscript:@"halted"];
    objc_storeStrong(&v19->_stateNumberMap, v20);
    objc_storeStrong(&v19->_unexpectedStateErrorDomain, domain);
    allKeys = [v20 allKeys];
    v22 = [NSSet setWithArray:allKeys];
    allowableStates = v19->_allowableStates;
    v19->_allowableStates = v22;

    objc_storeStrong(&v19->_queue, queue);
    v24 = objc_alloc_init(NSOperationQueue);
    operationQueue = v19->_operationQueue;
    v19->_operationQueue = v24;

    v26 = [[OctagonFlags alloc] initWithQueue:queueCopy flags:flagsCopy];
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
    allKeys2 = [v20 allKeys];
    v35 = [allKeys2 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v35)
    {
      v36 = *v70;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v70 != v36)
          {
            objc_enumerationMutation(allKeys2);
          }

          v38 = *(*(&v69 + 1) + 8 * i);
          v39 = objc_alloc_init(CKKSCondition);
          mutableStateConditions = [(OctagonStateMachine *)v19 mutableStateConditions];
          [mutableStateConditions setObject:v39 forKeyedSubscript:v38];
        }

        v35 = [allKeys2 countByEnumeratingWithState:&v69 objects:v74 count:16];
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
    trackerCopy = [NSString stringWithFormat:@"%@-pending-flag", nameCopy, domainCopy, trackerCopy];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100168B04;
    v66[3] = &unk_1003452E8;
    objc_copyWeak(&v67, &location);
    v49 = [(CKKSNearFutureScheduler *)v47 initWithName:trackerCopy delay:100000000 keepProcessAlive:0 dependencyDescriptionCode:1006 block:v66];
    pendingFlagsScheduler = v19->_pendingFlagsScheduler;
    v19->_pendingFlagsScheduler = v49;

    v51 = [OctagonStateTransitionOperation named:@"initialize" entering:stateCopy];
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