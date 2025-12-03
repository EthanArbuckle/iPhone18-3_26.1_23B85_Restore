@interface KTStateMachine
- (BOOL)isPaused;
- (KTStateMachine)initWithName:(id)name states:(id)states flags:(id)flags initialState:(id)state queue:(id)queue stateEngine:(id)engine lockStateTracker:(id)tracker reachabilityTracker:(id)self0 idsConfigBag:(id)self1;
- (KTStateMachineEngine)stateEngine;
- (NSDictionary)stateConditions;
- (id)_onqueueNextStateMachineTransition;
- (id)createOperationToFinishAttempt:(id)attempt;
- (id)description;
- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path reply:(id)reply;
- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path transitionOp:(id)op reply:(id)reply;
- (id)dumpCurrentFlags;
- (id)dumpPendingFlags;
- (id)pendingFlagsString;
- (id)possiblePendingFlags;
- (id)waitForState:(id)state wait:(unint64_t)wait;
- (void)_onqueueCancelPendingFlag:(id)flag;
- (void)_onqueueHandleFlag:(id)flag;
- (void)_onqueueHandlePendingFlag:(id)flag;
- (void)_onqueueHandlePendingFlagLater:(id)later;
- (void)_onqueuePokeStateMachine;
- (void)_onqueueRecheckConditions;
- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)watcher;
- (void)_onqueueSendAnyPendingFlags;
- (void)_onqueueStartNextStateMachineOperation:(BOOL)operation;
- (void)cancelPendingFlag:(id)flag;
- (void)disablePendingFlags;
- (void)doSimpleStateMachineRPC:(id)c op:(id)op sourceStates:(id)states reply:(id)reply;
- (void)haltOperation;
- (void)handleExternalRequest:(id)request;
- (void)handleFlag:(id)flag;
- (void)handlePendingFlag:(id)flag;
- (void)pokeStateMachine;
- (void)registerMultiStateArrivalWatcher:(id)watcher;
- (void)registerStateTransitionWatcher:(id)watcher;
- (void)setCurrentState:(id)state;
- (void)startOperation;
- (void)testPauseStateMachineAfterEntering:(id)entering;
- (void)testReleaseStateMachinePause:(id)pause;
- (void)waitToResting;
@end

@implementation KTStateMachine

- (KTStateMachine)initWithName:(id)name states:(id)states flags:(id)flags initialState:(id)state queue:(id)queue stateEngine:(id)engine lockStateTracker:(id)tracker reachabilityTracker:(id)self0 idsConfigBag:(id)self1
{
  nameCopy = name;
  statesCopy = states;
  flagsCopy = flags;
  stateCopy = state;
  queueCopy = queue;
  engineCopy = engine;
  trackerCopy = tracker;
  reachabilityTrackerCopy = reachabilityTracker;
  bagCopy = bag;
  v64.receiver = self;
  v64.super_class = KTStateMachine;
  v21 = [(KTStateMachine *)&v64 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_name, name);
    objc_storeStrong(&v22->_lockStateTracker, tracker);
    objc_storeStrong(&v22->_reachabilityTracker, reachabilityTracker);
    v22->_conditionChecksInFlight = 0;
    v22->_currentConditions = 0;
    v65[0] = @"not_started";
    v65[1] = @"halted";
    v23 = [NSArray arrayWithObjects:v65 count:2];
    v24 = [statesCopy setByAddingObjectsFromArray:v23];
    allowableStates = v22->_allowableStates;
    v22->_allowableStates = v24;

    objc_storeStrong(&v22->_queue, queue);
    v26 = objc_alloc_init(NSOperationQueue);
    operationQueue = v22->_operationQueue;
    v22->_operationQueue = v26;

    v28 = [[KTFlags alloc] initWithQueue:queueCopy flags:flagsCopy];
    currentFlags = v22->_currentFlags;
    v22->_currentFlags = v28;

    objc_storeWeak(&v22->_stateEngine, engineCopy);
    v30 = [NSBlockOperation blockOperationWithBlock:&stru_100095AA0];
    holdStateMachineOperation = v22->_holdStateMachineOperation;
    v22->_holdStateMachineOperation = v30;

    v32 = +[NSMutableSet set];
    testHoldStates = v22->_testHoldStates;
    v22->_testHoldStates = v32;

    v22->_halted = 0;
    v34 = objc_alloc_init(NSMutableDictionary);
    mutableStateConditions = v22->_mutableStateConditions;
    v22->_mutableStateConditions = v34;

    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10001F648;
    v62[3] = &unk_100095AC8;
    v36 = v22;
    v63 = v36;
    [statesCopy enumerateObjectsUsingBlock:v62];
    [(KTStateMachine *)v36 setCurrentState:@"not_started"];
    v37 = +[NSMutableArray array];
    stateMachineRequests = v36->_stateMachineRequests;
    v36->_stateMachineRequests = v37;

    v39 = +[NSMutableArray array];
    stateMachineWatchers = v36->_stateMachineWatchers;
    v36->_stateMachineWatchers = v39;

    objc_storeStrong(&v36->_idsConfigBag, bag);
    objc_initWeak(&location, v36);
    v36->_allowPendingFlags = 1;
    v41 = +[NSMutableDictionary dictionary];
    pendingFlags = v36->_pendingFlags;
    v36->_pendingFlags = v41;

    v43 = [KTNearFutureScheduler alloc];
    reachabilityTrackerCopy = [NSString stringWithFormat:@"%@-pending-flag", nameCopy, trackerCopy, reachabilityTrackerCopy];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10001F6CC;
    v59[3] = &unk_100094BA8;
    objc_copyWeak(&v60, &location);
    v45 = [(KTNearFutureScheduler *)v43 initWithName:reachabilityTrackerCopy delay:100000000 keepProcessAlive:0 dependencyDescriptionCode:1 block:v59];
    pendingFlagsScheduler = v36->_pendingFlagsScheduler;
    v36->_pendingFlagsScheduler = v45;

    v47 = [KTStateTransitionOperation named:@"initialize" entering:stateCopy];
    [v47 addDependency:v22->_holdStateMachineOperation];
    [(NSOperationQueue *)v22->_operationQueue addOperation:v47];
    v48 = objc_alloc_init(KTCondition);
    paused = v36->_paused;
    v36->_paused = v48;

    v50 = [(KTStateMachine *)v36 createOperationToFinishAttempt:v47];
    nextStateMachineCycleOperation = v36->_nextStateMachineCycleOperation;
    v36 = (v36 + 128);
    v36->super.isa = v50;

    [(NSOperationQueue *)v22->_operationQueue addOperation:v36->super.isa];
    objc_destroyWeak(&v60);
    objc_destroyWeak(&location);
  }

  return v22;
}

- (NSDictionary)stateConditions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001F898;
  v11 = sub_10001F8A8;
  v12 = 0;
  queue = [(KTStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F8B0;
  v6[3] = &unk_100094EE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)pendingFlagsString
{
  pendingFlags = [(KTStateMachine *)self pendingFlags];
  allValues = [pendingFlags allValues];
  v4 = [allValues componentsJoinedByString:{@", "}];

  return v4;
}

- (id)description
{
  pendingFlags = [(KTStateMachine *)self pendingFlags];
  v4 = [pendingFlags count];

  if (v4)
  {
    pendingFlagsString = [(KTStateMachine *)self pendingFlagsString];
    v6 = [NSString stringWithFormat:@" (pending: %@)", pendingFlagsString];
  }

  else
  {
    v6 = &stru_100096EB8;
  }

  name = [(KTStateMachine *)self name];
  currentState = [(KTStateMachine *)self currentState];
  v9 = [NSString stringWithFormat:@"<KTStateMachine(%@, %@, %@)>", name, currentState, v6];

  return v9;
}

- (void)setCurrentState:(id)state
{
  stateCopy = state;
  if (stateCopy | self->_currentState)
  {
    v10 = stateCopy;
    if (([stateCopy isEqualToString:?] & 1) == 0)
    {
      if (self->_currentState)
      {
        v6 = objc_alloc_init(KTCondition);
        mutableStateConditions = [(KTStateMachine *)self mutableStateConditions];
        [mutableStateConditions setObject:v6 forKeyedSubscript:self->_currentState];
      }

      objc_storeStrong(&self->_currentState, state);
      if (v10)
      {
        mutableStateConditions2 = [(KTStateMachine *)self mutableStateConditions];
        v9 = [mutableStateConditions2 objectForKeyedSubscript:v10];
        [v9 fulfill];
      }
    }
  }

  _objc_release_x1();
}

- (id)waitForState:(id)state wait:(unint64_t)wait
{
  stateCopy = state;
  stateConditions = [(KTStateMachine *)self stateConditions];
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

- (id)_onqueueNextStateMachineTransition
{
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(KTStateMachine *)self halted])
  {
    currentState = [(KTStateMachine *)self currentState];
    v5 = [currentState isEqualToString:@"halted"];

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [KTStateTransitionOperation named:@"halt" entering:@"halted"];
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    stateMachineRequests = [(KTStateMachine *)self stateMachineRequests];
    v8 = [stateMachineRequests countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
LABEL_6:
      v11 = 0;
      while (1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(stateMachineRequests);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        sourceStates = [v12 sourceStates];
        currentState2 = [(KTStateMachine *)self currentState];
        v15 = [sourceStates containsObject:currentState2];

        if (v15)
        {
          _onqueueStart = [v12 _onqueueStart];
          if (_onqueueStart)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [stateMachineRequests countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      v6 = _onqueueStart;
      if (qword_1000AED78 != -1)
      {
        sub_10006E0CC();
      }

      v19 = qword_1000AED80;
      if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
      {
        currentState4 = v19;
        currentState3 = [(KTStateMachine *)self currentState];
        *buf = 138543618;
        v27 = v12;
        v28 = 2114;
        v29 = currentState3;
        _os_log_impl(&_mh_execute_header, currentState4, OS_LOG_TYPE_DEFAULT, "Running state machine request %{public}@ (from %{public}@)", buf, 0x16u);

        goto LABEL_18;
      }
    }

    else
    {
LABEL_13:

      stateMachineRequests = [(KTStateMachine *)self stateEngine];
      currentState4 = [(KTStateMachine *)self currentState];
      currentFlags = [(KTStateMachine *)self currentFlags];
      v6 = [stateMachineRequests _onqueueNextStateMachineTransition:currentState4 flags:currentFlags pendingFlags:self];

LABEL_18:
    }
  }

  return v6;
}

- (void)_onqueueStartNextStateMachineOperation:(BOOL)operation
{
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  nextStateMachineCycleOperation = [(KTStateMachine *)self nextStateMachineCycleOperation];

  if (!nextStateMachineCycleOperation)
  {
    testHoldStates = [(KTStateMachine *)self testHoldStates];
    currentState = [(KTStateMachine *)self currentState];
    v9 = [testHoldStates containsObject:currentState];

    if (v9)
    {
      if (qword_1000AED78 != -1)
      {
        sub_10006E11C();
      }

      v10 = qword_1000AED80;
      if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        currentState2 = [(KTStateMachine *)self currentState];
        v27 = 138412290;
        v28 = currentState2;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "In test hold for state %@; pausing", &v27, 0xCu);
      }

      paused = [(KTStateMachine *)self paused];
      [paused fulfill];
    }

    else
    {
      paused = [(KTStateMachine *)self _onqueueNextStateMachineTransition];
      if (paused)
      {
        if (qword_1000AED78 != -1)
        {
          sub_10006E0F4();
        }

        v14 = qword_1000AED80;
        if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          v28 = paused;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beginning state transition attempt %{public}@", &v27, 0xCu);
        }

        v15 = [(KTStateMachine *)self createOperationToFinishAttempt:paused];
        [(KTStateMachine *)self setNextStateMachineCycleOperation:v15];

        operationQueue = [(KTStateMachine *)self operationQueue];
        nextStateMachineCycleOperation2 = [(KTStateMachine *)self nextStateMachineCycleOperation];
        [operationQueue addOperation:nextStateMachineCycleOperation2];

        holdStateMachineOperation = [(KTStateMachine *)self holdStateMachineOperation];
        [paused addNullableDependency:holdStateMachineOperation];

        [paused setQualityOfService:25];
        operationQueue2 = [(KTStateMachine *)self operationQueue];
        [operationQueue2 addOperation:paused];

        if (operation)
        {
          goto LABEL_21;
        }

        paused2 = objc_alloc_init(KTCondition);
        [(KTStateMachine *)self setPaused:paused2];
      }

      else
      {
        if (qword_1000AED78 != -1)
        {
          sub_10006E108();
        }

        v21 = qword_1000AED80;
        if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          currentState3 = [(KTStateMachine *)self currentState];
          currentFlags = [(KTStateMachine *)self currentFlags];
          contentsAsString = [currentFlags contentsAsString];
          pendingFlagsString = [(KTStateMachine *)self pendingFlagsString];
          v27 = 138543874;
          v28 = currentState3;
          v29 = 2114;
          v30 = contentsAsString;
          v31 = 2114;
          v32 = pendingFlagsString;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "State machine rests (%{public}@, f:[%{public}@] p:[%{public}@])", &v27, 0x20u);
        }

        paused2 = [(KTStateMachine *)self paused];
        [(KTCondition *)paused2 fulfill];
      }
    }

LABEL_21:
  }
}

- (id)createOperationToFinishAttempt:(id)attempt
{
  attemptCopy = attempt;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000204B8;
  v9[3] = &unk_100095BB0;
  objc_copyWeak(&v11, &location);
  v5 = attemptCopy;
  v10 = v5;
  v6 = [KTResultOperation named:@"KT-state-follow-up" withBlock:v9];
  holdStateMachineOperation = [(KTStateMachine *)self holdStateMachineOperation];
  [v6 addNullableDependency:holdStateMachineOperation];

  [v6 addNullableDependency:v5];
  [v6 setQualityOfService:25];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (void)pokeStateMachine
{
  queue = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020A20;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onqueuePokeStateMachine
{
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  [(KTStateMachine *)self _onqueueStartNextStateMachineOperation:0];
}

- (void)handleFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020B28;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = flagCopy;
  v6 = flagCopy;
  dispatch_sync(queue, v7);
}

- (void)_onqueueHandleFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  currentFlags = [(KTStateMachine *)self currentFlags];
  [currentFlags _onqueueSetFlag:flagCopy];

  [(KTStateMachine *)self _onqueuePokeStateMachine];
}

- (void)handlePendingFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020C64;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = flagCopy;
  v6 = flagCopy;
  dispatch_sync(queue, v7);
}

- (void)_onqueueHandlePendingFlagLater:(id)later
{
  laterCopy = later;
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  queue2 = [(KTStateMachine *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020D3C;
  v8[3] = &unk_100094F80;
  v8[4] = self;
  v9 = laterCopy;
  v7 = laterCopy;
  dispatch_async(queue2, v8);
}

- (void)_onqueueCancelPendingFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingFlags = [(KTStateMachine *)self pendingFlags];
  [pendingFlags setObject:0 forKeyedSubscript:flagCopy];

  currentFlags = [(KTStateMachine *)self currentFlags];
  [currentFlags _onqueueRemoveFlag:flagCopy];
}

- (void)cancelPendingFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020E9C;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = flagCopy;
  v6 = flagCopy;
  dispatch_async(queue, v7);
}

- (void)_onqueueHandlePendingFlag:(id)flag
{
  flagCopy = flag;
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingFlags = [(KTStateMachine *)self pendingFlags];
  flag = [flagCopy flag];
  [pendingFlags setObject:flagCopy forKeyedSubscript:flag];

  afterOperation = [flagCopy afterOperation];

  if (afterOperation)
  {
    objc_initWeak(&location, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10002104C;
    v15 = &unk_100094BA8;
    objc_copyWeak(&v16, &location);
    v9 = [NSBlockOperation blockOperationWithBlock:&v12];
    afterOperation2 = [flagCopy afterOperation];
    [v9 addNullableDependency:afterOperation2];

    operationQueue = [(KTStateMachine *)self operationQueue];
    [operationQueue addOperation:v9];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  [(KTStateMachine *)self _onqueueRecheckConditions];
  [(KTStateMachine *)self _onqueueSendAnyPendingFlags];
}

- (void)disablePendingFlags
{
  queue = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021234;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)dumpPendingFlags
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001F898;
  v11 = sub_10001F8A8;
  v12 = +[NSMutableDictionary dictionary];
  queue = [(KTStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021374;
  v6[3] = &unk_100095BF8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)dumpCurrentFlags
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001F898;
  v11 = sub_10001F8A8;
  v12 = +[NSMutableDictionary dictionary];
  queue = [(KTStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002160C;
  v6[3] = &unk_100095BF8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)possiblePendingFlags
{
  pendingFlags = [(KTStateMachine *)self pendingFlags];
  allKeys = [pendingFlags allKeys];

  return allKeys;
}

- (void)_onqueueRecheckConditions
{
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(KTStateMachine *)self allowPendingFlags])
  {
    pendingFlags = [(KTStateMachine *)self pendingFlags];
    allValues = [pendingFlags allValues];
    v6 = [allValues copy];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v8)
    {
      v9 = 0;
      v10 = *v42;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v9 |= [*(*(&v41 + 1) + 8 * i) conditions];
        }

        v8 = [v7 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v8);

      if (v9)
      {
        conditionChecksInFlight = [(KTStateMachine *)self conditionChecksInFlight];
        objc_initWeak(&location, self);
        v13 = v9 & ~conditionChecksInFlight;
        if (v13)
        {
          lockStateTracker = [(KTStateMachine *)self lockStateTracker];
          isLocked = [lockStateTracker isLocked];

          if (isLocked)
          {
            if (qword_1000AED78 != -1)
            {
              sub_10006E180();
            }

            v16 = qword_1000AED80;
            if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Waiting for unlock", buf, 2u);
            }

            [(KTStateMachine *)self setCurrentConditions:[(KTStateMachine *)self currentConditions]& 0xFFFFFFFFFFFFFFFELL];
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_100021CFC;
            v37[3] = &unk_100094BA8;
            objc_copyWeak(&v38, &location);
            v17 = [NSBlockOperation blockOperationWithBlock:v37];
            [(KTStateMachine *)self setCheckUnlockOperation:v17];

            [(KTStateMachine *)self setConditionChecksInFlight:[(KTStateMachine *)self conditionChecksInFlight]| 1];
            checkUnlockOperation = [(KTStateMachine *)self checkUnlockOperation];
            lockStateTracker2 = [(KTStateMachine *)self lockStateTracker];
            unlockDependency = [lockStateTracker2 unlockDependency];
            [checkUnlockOperation addNullableDependency:unlockDependency];

            operationQueue = [(KTStateMachine *)self operationQueue];
            checkUnlockOperation2 = [(KTStateMachine *)self checkUnlockOperation];
            [operationQueue addOperation:checkUnlockOperation2];

            objc_destroyWeak(&v38);
          }

          else
          {
            [(KTStateMachine *)self setCurrentConditions:[(KTStateMachine *)self currentConditions]| 1];
          }
        }

        if ((v13 & 2) != 0)
        {
          reachabilityTracker = [(KTStateMachine *)self reachabilityTracker];
          currentReachability = [reachabilityTracker currentReachability];

          if (currentReachability)
          {
            [(KTStateMachine *)self setCurrentConditions:[(KTStateMachine *)self currentConditions]| 2];
          }

          else
          {
            if (qword_1000AED78 != -1)
            {
              sub_10006E1A8();
            }

            v25 = qword_1000AED80;
            if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Waiting for network reachability", buf, 2u);
            }

            [(KTStateMachine *)self setCurrentConditions:[(KTStateMachine *)self currentConditions]& 0xFFFFFFFFFFFFFFFDLL];
            v32 = _NSConcreteStackBlock;
            v33 = 3221225472;
            v34 = sub_100021EC8;
            v35 = &unk_100094BA8;
            objc_copyWeak(&v36, &location);
            v26 = [NSBlockOperation blockOperationWithBlock:&v32];
            [(KTStateMachine *)self setCheckReachabilityOperation:v26, v32, v33, v34, v35];

            [(KTStateMachine *)self setConditionChecksInFlight:[(KTStateMachine *)self conditionChecksInFlight]| 2];
            checkReachabilityOperation = [(KTStateMachine *)self checkReachabilityOperation];
            reachabilityTracker2 = [(KTStateMachine *)self reachabilityTracker];
            reachabilityDependency = [reachabilityTracker2 reachabilityDependency];
            [checkReachabilityOperation addNullableDependency:reachabilityDependency];

            operationQueue2 = [(KTStateMachine *)self operationQueue];
            checkReachabilityOperation2 = [(KTStateMachine *)self checkReachabilityOperation];
            [operationQueue2 addOperation:checkReachabilityOperation2];

            objc_destroyWeak(&v36);
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

- (void)_onqueueSendAnyPendingFlags
{
  selfCopy = self;
  queue = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(KTStateMachine *)selfCopy allowPendingFlags])
  {
    pendingFlags = [(KTStateMachine *)selfCopy pendingFlags];
    allValues = [pendingFlags allValues];
    v6 = [allValues copy];

    v7 = +[NSDate date];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v8 = v6;
    v51 = [v8 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (!v51)
    {

      goto LABEL_41;
    }

    v10 = 0;
    v50 = 0;
    v11 = *v53;
    *&v9 = 138543618;
    v48 = v9;
LABEL_4:
    v12 = 0;
    while (1)
    {
      if (*v53 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v52 + 1) + 8 * v12);
      fireTime = [v13 fireTime];

      if (!fireTime)
      {
        goto LABEL_15;
      }

      fireTime2 = [v13 fireTime];
      v16 = [fireTime2 compare:v7];

      if (v16 == -1)
      {
        break;
      }

      fireTime3 = [v13 fireTime];
      v18 = fireTime3;
      if (v10)
      {
        v19 = [v10 earlierDate:fireTime3];

        v20 = 0;
        v10 = v19;
      }

      else
      {
        v20 = 0;
        v10 = fireTime3;
      }

LABEL_16:
      afterOperation = [v13 afterOperation];

      if (afterOperation)
      {
        afterOperation2 = [v13 afterOperation];
        isFinished = [afterOperation2 isFinished];

        if (isFinished)
        {
          if (qword_1000AED78 != -1)
          {
            sub_10006E220();
          }

          v27 = qword_1000AED80;
          if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
            flag = [v13 flag];
            [v13 afterOperation];
            v49 = v10;
            v30 = v11;
            v31 = selfCopy;
            v32 = v8;
            v34 = v33 = v7;
            *buf = v48;
            v57 = flag;
            v58 = 2114;
            v59 = v34;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Operation has ended for pending flag %{public}@: %{public}@", buf, 0x16u);

            v7 = v33;
            v8 = v32;
            selfCopy = v31;
            v11 = v30;
            v10 = v49;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      if (![v13 conditions])
      {
        goto LABEL_29;
      }

      conditions = [v13 conditions];
      v36 = ([(KTStateMachine *)selfCopy currentConditions]& conditions);
      if (v36 == [v13 conditions])
      {
        if (qword_1000AED78 != -1)
        {
          sub_10006E248();
        }

        v37 = qword_1000AED80;
        if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          flag2 = [v13 flag];
          *buf = 138543362;
          v57 = flag2;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Conditions are right for %{public}@", buf, 0xCu);
        }

LABEL_29:
        if (v20)
        {
          currentFlags = [(KTStateMachine *)selfCopy currentFlags];
          flag3 = [v13 flag];
          [currentFlags _onqueueSetFlag:flag3];

          pendingFlags2 = [(KTStateMachine *)selfCopy pendingFlags];
          flag4 = [v13 flag];
          [pendingFlags2 setObject:0 forKeyedSubscript:flag4];

          v50 = 1;
        }
      }

      if (v51 == ++v12)
      {
        v44 = [v8 countByEnumeratingWithState:&v52 objects:v60 count:16];
        v51 = v44;
        if (!v44)
        {

          if (v10)
          {
            [v10 timeIntervalSinceDate:v7];
            v46 = (v45 * 1000000000.0);
            pendingFlagsScheduler = [(KTStateMachine *)selfCopy pendingFlagsScheduler];
            [pendingFlagsScheduler triggerAt:v46];

            if ((v50 & 1) == 0)
            {
LABEL_42:

              return;
            }

LABEL_40:
            [(KTStateMachine *)selfCopy _onqueuePokeStateMachine];
            goto LABEL_42;
          }

          if (v50)
          {
            goto LABEL_40;
          }

LABEL_41:
          v10 = 0;
          goto LABEL_42;
        }

        goto LABEL_4;
      }
    }

    if (qword_1000AED78 != -1)
    {
      sub_10006E1F8();
    }

    v21 = qword_1000AED80;
    if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      flag5 = [v13 flag];
      *buf = 138543362;
      v57 = flag5;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Delay has ended for pending flag %{public}@", buf, 0xCu);
    }

LABEL_15:
    v20 = 1;
    goto LABEL_16;
  }
}

- (void)testPauseStateMachineAfterEntering:(id)entering
{
  enteringCopy = entering;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022704;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = enteringCopy;
  v6 = enteringCopy;
  dispatch_sync(queue, v7);
}

- (void)testReleaseStateMachinePause:(id)pause
{
  pauseCopy = pause;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002280C;
  v7[3] = &unk_100094F80;
  v8 = pauseCopy;
  selfCopy = self;
  v6 = pauseCopy;
  dispatch_sync(queue, v7);
}

- (BOOL)isPaused
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(KTStateMachine *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100022A08;
  v5[3] = &unk_100094EE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)waitToResting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  do
  {
    nextStateMachineCycleOperation = [(KTStateMachine *)self nextStateMachineCycleOperation];
    [nextStateMachineCycleOperation waitUntilFinished];

    queue = [(KTStateMachine *)self queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100022B5C;
    v5[3] = &unk_100094EE8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
  }

  while ((v7[3] & 1) == 0);
  _Block_object_dispose(&v6, 8);
}

- (void)startOperation
{
  queue = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022C34;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)haltOperation
{
  queue = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022D70;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(queue, block);

  nextStateMachineCycleOperation = [(KTStateMachine *)self nextStateMachineCycleOperation];
  [nextStateMachineCycleOperation waitUntilFinished];
}

- (void)handleExternalRequest:(id)request
{
  requestCopy = request;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022ED0;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_sync(queue, v7);
}

- (void)registerStateTransitionWatcher:(id)watcher
{
  watcherCopy = watcher;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022FD4;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = watcherCopy;
  v6 = watcherCopy;
  dispatch_sync(queue, v7);
}

- (void)registerMultiStateArrivalWatcher:(id)watcher
{
  watcherCopy = watcher;
  queue = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000230D8;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = watcherCopy;
  v6 = watcherCopy;
  dispatch_sync(queue, v7);
}

- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)watcher
{
  watcherCopy = watcher;
  states = [watcherCopy states];
  currentState = [(KTStateMachine *)self currentState];
  v7 = [states containsObject:currentState];

  if (v7)
  {
    currentState2 = [(KTStateMachine *)self currentState];
    [watcherCopy onqueueEnterState:currentState2];
  }

  else
  {
    stateMachineWatchers = [(KTStateMachine *)self stateMachineWatchers];
    [stateMachineWatchers addObject:watcherCopy];

    [(KTStateMachine *)self _onqueuePokeStateMachine];
  }
}

- (void)doSimpleStateMachineRPC:(id)c op:(id)op sourceStates:(id)states reply:(id)reply
{
  cCopy = c;
  opCopy = op;
  statesCopy = states;
  replyCopy = reply;
  if (qword_1000AED78 != -1)
  {
    sub_10006E284();
  }

  v14 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = cCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beginning a '%{public}@' rpc", buf, 0xCu);
  }

  lockStateTracker = [(KTStateMachine *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(KTStateMachine *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  v17 = [KTStateTransitionRequest alloc];
  queue = [(KTStateMachine *)self queue];
  v19 = [(KTStateTransitionRequest *)v17 init:cCopy sourceStates:statesCopy serialQueue:queue timeout:30000000000 transitionOp:opCopy];

  [(KTStateMachine *)self handleExternalRequest:v19];
  cCopy = [NSString stringWithFormat:@"%@-callback", cCopy];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000234A4;
  v26[3] = &unk_100095D60;
  v27 = cCopy;
  v28 = opCopy;
  v29 = replyCopy;
  v21 = replyCopy;
  v22 = opCopy;
  v23 = cCopy;
  v24 = [KTResultOperation named:cCopy withBlock:v26];

  [v24 addDependency:v22];
  operationQueue = [(KTStateMachine *)self operationQueue];
  [operationQueue addOperation:v24];
}

- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path reply:(id)reply
{
  replyCopy = reply;
  pathCopy = path;
  statesCopy = states;
  cCopy = c;
  cCopy = [NSString stringWithFormat:@"intial-transition-%@", cCopy];
  initialState = [pathCopy initialState];
  v16 = [KTStateTransitionOperation named:cCopy entering:initialState];

  v17 = [(KTStateMachine *)self doWatchedStateMachineRPC:cCopy sourceStates:statesCopy path:pathCopy transitionOp:v16 reply:replyCopy];

  return v17;
}

- (id)doWatchedStateMachineRPC:(id)c sourceStates:(id)states path:(id)path transitionOp:(id)op reply:(id)reply
{
  cCopy = c;
  statesCopy = states;
  pathCopy = path;
  opCopy = op;
  replyCopy = reply;
  if (qword_1000AED78 != -1)
  {
    sub_10006E2AC();
  }

  v17 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = cCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Beginning a '%{public}@' rpc", buf, 0xCu);
  }

  lockStateTracker = [(KTStateMachine *)self lockStateTracker];

  if (lockStateTracker)
  {
    lockStateTracker2 = [(KTStateMachine *)self lockStateTracker];
    [lockStateTracker2 recheck];
  }

  v20 = [KTStateTransitionRequest alloc];
  queue = [(KTStateMachine *)self queue];
  v22 = [(KTStateTransitionRequest *)v20 init:cCopy sourceStates:statesCopy serialQueue:queue timeout:30000000000 transitionOp:opCopy];

  v23 = [KTStateTransitionWatcher alloc];
  v38 = statesCopy;
  cCopy = [NSString stringWithFormat:@"watcher-%@", cCopy];
  queue2 = [(KTStateMachine *)self queue];
  v26 = [(KTStateTransitionWatcher *)v23 initNamed:cCopy serialQueue:queue2 path:pathCopy initialRequest:v22];

  timeout = [(KTStateMachine *)self timeout];
  if (timeout)
  {
    v28 = timeout;
  }

  else
  {
    v28 = 120000000000;
  }

  v29 = [v26 timeout:v28];
  [(KTStateMachine *)self registerStateTransitionWatcher:v26];
  cCopy2 = [NSString stringWithFormat:@"%@-callback", cCopy];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100023AD8;
  v39[3] = &unk_100095DC8;
  v40 = cCopy;
  v41 = v26;
  v42 = replyCopy;
  v31 = replyCopy;
  v32 = v26;
  v33 = cCopy;
  v34 = [KTResultOperation named:cCopy2 withBlockTakingSelf:v39];

  result = [v32 result];
  [v34 addDependency:result];

  operationQueue = [(KTStateMachine *)self operationQueue];
  [operationQueue addOperation:v34];

  [(KTStateMachine *)self handleExternalRequest:v22];

  return v34;
}

- (KTStateMachineEngine)stateEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateEngine);

  return WeakRetained;
}

@end