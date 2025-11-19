@interface KTStateMachine
- (BOOL)isPaused;
- (KTStateMachine)initWithName:(id)a3 states:(id)a4 flags:(id)a5 initialState:(id)a6 queue:(id)a7 stateEngine:(id)a8 lockStateTracker:(id)a9 reachabilityTracker:(id)a10 idsConfigBag:(id)a11;
- (KTStateMachineEngine)stateEngine;
- (NSDictionary)stateConditions;
- (id)_onqueueNextStateMachineTransition;
- (id)createOperationToFinishAttempt:(id)a3;
- (id)description;
- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 reply:(id)a6;
- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 transitionOp:(id)a6 reply:(id)a7;
- (id)dumpCurrentFlags;
- (id)dumpPendingFlags;
- (id)pendingFlagsString;
- (id)possiblePendingFlags;
- (id)waitForState:(id)a3 wait:(unint64_t)a4;
- (void)_onqueueCancelPendingFlag:(id)a3;
- (void)_onqueueHandleFlag:(id)a3;
- (void)_onqueueHandlePendingFlag:(id)a3;
- (void)_onqueueHandlePendingFlagLater:(id)a3;
- (void)_onqueuePokeStateMachine;
- (void)_onqueueRecheckConditions;
- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)a3;
- (void)_onqueueSendAnyPendingFlags;
- (void)_onqueueStartNextStateMachineOperation:(BOOL)a3;
- (void)cancelPendingFlag:(id)a3;
- (void)disablePendingFlags;
- (void)doSimpleStateMachineRPC:(id)a3 op:(id)a4 sourceStates:(id)a5 reply:(id)a6;
- (void)haltOperation;
- (void)handleExternalRequest:(id)a3;
- (void)handleFlag:(id)a3;
- (void)handlePendingFlag:(id)a3;
- (void)pokeStateMachine;
- (void)registerMultiStateArrivalWatcher:(id)a3;
- (void)registerStateTransitionWatcher:(id)a3;
- (void)setCurrentState:(id)a3;
- (void)startOperation;
- (void)testPauseStateMachineAfterEntering:(id)a3;
- (void)testReleaseStateMachinePause:(id)a3;
- (void)waitToResting;
@end

@implementation KTStateMachine

- (KTStateMachine)initWithName:(id)a3 states:(id)a4 flags:(id)a5 initialState:(id)a6 queue:(id)a7 stateEngine:(id)a8 lockStateTracker:(id)a9 reachabilityTracker:(id)a10 idsConfigBag:(id)a11
{
  v57 = a3;
  v18 = a4;
  v58 = a5;
  v56 = a6;
  v19 = a7;
  v20 = a8;
  v53 = a9;
  v54 = a10;
  v55 = a11;
  v64.receiver = self;
  v64.super_class = KTStateMachine;
  v21 = [(KTStateMachine *)&v64 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_name, a3);
    objc_storeStrong(&v22->_lockStateTracker, a9);
    objc_storeStrong(&v22->_reachabilityTracker, a10);
    v22->_conditionChecksInFlight = 0;
    v22->_currentConditions = 0;
    v65[0] = @"not_started";
    v65[1] = @"halted";
    v23 = [NSArray arrayWithObjects:v65 count:2];
    v24 = [v18 setByAddingObjectsFromArray:v23];
    allowableStates = v22->_allowableStates;
    v22->_allowableStates = v24;

    objc_storeStrong(&v22->_queue, a7);
    v26 = objc_alloc_init(NSOperationQueue);
    operationQueue = v22->_operationQueue;
    v22->_operationQueue = v26;

    v28 = [[KTFlags alloc] initWithQueue:v19 flags:v58];
    currentFlags = v22->_currentFlags;
    v22->_currentFlags = v28;

    objc_storeWeak(&v22->_stateEngine, v20);
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
    [v18 enumerateObjectsUsingBlock:v62];
    [(KTStateMachine *)v36 setCurrentState:@"not_started"];
    v37 = +[NSMutableArray array];
    stateMachineRequests = v36->_stateMachineRequests;
    v36->_stateMachineRequests = v37;

    v39 = +[NSMutableArray array];
    stateMachineWatchers = v36->_stateMachineWatchers;
    v36->_stateMachineWatchers = v39;

    objc_storeStrong(&v36->_idsConfigBag, a11);
    objc_initWeak(&location, v36);
    v36->_allowPendingFlags = 1;
    v41 = +[NSMutableDictionary dictionary];
    pendingFlags = v36->_pendingFlags;
    v36->_pendingFlags = v41;

    v43 = [KTNearFutureScheduler alloc];
    v44 = [NSString stringWithFormat:@"%@-pending-flag", v57, v53, v54];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10001F6CC;
    v59[3] = &unk_100094BA8;
    objc_copyWeak(&v60, &location);
    v45 = [(KTNearFutureScheduler *)v43 initWithName:v44 delay:100000000 keepProcessAlive:0 dependencyDescriptionCode:1 block:v59];
    pendingFlagsScheduler = v36->_pendingFlagsScheduler;
    v36->_pendingFlagsScheduler = v45;

    v47 = [KTStateTransitionOperation named:@"initialize" entering:v56];
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
  v3 = [(KTStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F8B0;
  v6[3] = &unk_100094EE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)pendingFlagsString
{
  v2 = [(KTStateMachine *)self pendingFlags];
  v3 = [v2 allValues];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (id)description
{
  v3 = [(KTStateMachine *)self pendingFlags];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(KTStateMachine *)self pendingFlagsString];
    v6 = [NSString stringWithFormat:@" (pending: %@)", v5];
  }

  else
  {
    v6 = &stru_100096EB8;
  }

  v7 = [(KTStateMachine *)self name];
  v8 = [(KTStateMachine *)self currentState];
  v9 = [NSString stringWithFormat:@"<KTStateMachine(%@, %@, %@)>", v7, v8, v6];

  return v9;
}

- (void)setCurrentState:(id)a3
{
  v5 = a3;
  if (v5 | self->_currentState)
  {
    v10 = v5;
    if (([v5 isEqualToString:?] & 1) == 0)
    {
      if (self->_currentState)
      {
        v6 = objc_alloc_init(KTCondition);
        v7 = [(KTStateMachine *)self mutableStateConditions];
        [v7 setObject:v6 forKeyedSubscript:self->_currentState];
      }

      objc_storeStrong(&self->_currentState, a3);
      if (v10)
      {
        v8 = [(KTStateMachine *)self mutableStateConditions];
        v9 = [v8 objectForKeyedSubscript:v10];
        [v9 fulfill];
      }
    }
  }

  _objc_release_x1();
}

- (id)waitForState:(id)a3 wait:(unint64_t)a4
{
  v6 = a3;
  v7 = [(KTStateMachine *)self stateConditions];
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

- (id)_onqueueNextStateMachineTransition
{
  v3 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(KTStateMachine *)self halted])
  {
    v4 = [(KTStateMachine *)self currentState];
    v5 = [v4 isEqualToString:@"halted"];

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
    v7 = [(KTStateMachine *)self stateMachineRequests];
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [v12 sourceStates];
        v14 = [(KTStateMachine *)self currentState];
        v15 = [v13 containsObject:v14];

        if (v15)
        {
          v16 = [v12 _onqueueStart];
          if (v16)
          {
            break;
          }
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v9)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }

      v6 = v16;
      if (qword_1000AED78 != -1)
      {
        sub_10006E0CC();
      }

      v19 = qword_1000AED80;
      if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v19;
        v20 = [(KTStateMachine *)self currentState];
        *buf = 138543618;
        v27 = v12;
        v28 = 2114;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Running state machine request %{public}@ (from %{public}@)", buf, 0x16u);

        goto LABEL_18;
      }
    }

    else
    {
LABEL_13:

      v7 = [(KTStateMachine *)self stateEngine];
      v17 = [(KTStateMachine *)self currentState];
      v18 = [(KTStateMachine *)self currentFlags];
      v6 = [v7 _onqueueNextStateMachineTransition:v17 flags:v18 pendingFlags:self];

LABEL_18:
    }
  }

  return v6;
}

- (void)_onqueueStartNextStateMachineOperation:(BOOL)a3
{
  v5 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTStateMachine *)self nextStateMachineCycleOperation];

  if (!v6)
  {
    v7 = [(KTStateMachine *)self testHoldStates];
    v8 = [(KTStateMachine *)self currentState];
    v9 = [v7 containsObject:v8];

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
        v12 = [(KTStateMachine *)self currentState];
        v27 = 138412290;
        v28 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "In test hold for state %@; pausing", &v27, 0xCu);
      }

      v13 = [(KTStateMachine *)self paused];
      [v13 fulfill];
    }

    else
    {
      v13 = [(KTStateMachine *)self _onqueueNextStateMachineTransition];
      if (v13)
      {
        if (qword_1000AED78 != -1)
        {
          sub_10006E0F4();
        }

        v14 = qword_1000AED80;
        if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543362;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beginning state transition attempt %{public}@", &v27, 0xCu);
        }

        v15 = [(KTStateMachine *)self createOperationToFinishAttempt:v13];
        [(KTStateMachine *)self setNextStateMachineCycleOperation:v15];

        v16 = [(KTStateMachine *)self operationQueue];
        v17 = [(KTStateMachine *)self nextStateMachineCycleOperation];
        [v16 addOperation:v17];

        v18 = [(KTStateMachine *)self holdStateMachineOperation];
        [v13 addNullableDependency:v18];

        [v13 setQualityOfService:25];
        v19 = [(KTStateMachine *)self operationQueue];
        [v19 addOperation:v13];

        if (a3)
        {
          goto LABEL_21;
        }

        v20 = objc_alloc_init(KTCondition);
        [(KTStateMachine *)self setPaused:v20];
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
          v23 = [(KTStateMachine *)self currentState];
          v24 = [(KTStateMachine *)self currentFlags];
          v25 = [v24 contentsAsString];
          v26 = [(KTStateMachine *)self pendingFlagsString];
          v27 = 138543874;
          v28 = v23;
          v29 = 2114;
          v30 = v25;
          v31 = 2114;
          v32 = v26;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "State machine rests (%{public}@, f:[%{public}@] p:[%{public}@])", &v27, 0x20u);
        }

        v20 = [(KTStateMachine *)self paused];
        [(KTCondition *)v20 fulfill];
      }
    }

LABEL_21:
  }
}

- (id)createOperationToFinishAttempt:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000204B8;
  v9[3] = &unk_100095BB0;
  objc_copyWeak(&v11, &location);
  v5 = v4;
  v10 = v5;
  v6 = [KTResultOperation named:@"KT-state-follow-up" withBlock:v9];
  v7 = [(KTStateMachine *)self holdStateMachineOperation];
  [v6 addNullableDependency:v7];

  [v6 addNullableDependency:v5];
  [v6 setQualityOfService:25];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (void)pokeStateMachine
{
  v3 = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020A20;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)_onqueuePokeStateMachine
{
  v3 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  [(KTStateMachine *)self _onqueueStartNextStateMachineOperation:0];
}

- (void)handleFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020B28;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onqueueHandleFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTStateMachine *)self currentFlags];
  [v6 _onqueueSetFlag:v4];

  [(KTStateMachine *)self _onqueuePokeStateMachine];
}

- (void)handlePendingFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020C64;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onqueueHandlePendingFlagLater:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTStateMachine *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100020D3C;
  v8[3] = &unk_100094F80;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)_onqueueCancelPendingFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTStateMachine *)self pendingFlags];
  [v6 setObject:0 forKeyedSubscript:v4];

  v7 = [(KTStateMachine *)self currentFlags];
  [v7 _onqueueRemoveFlag:v4];
}

- (void)cancelPendingFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020E9C;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_onqueueHandlePendingFlag:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(KTStateMachine *)self pendingFlags];
  v7 = [v4 flag];
  [v6 setObject:v4 forKeyedSubscript:v7];

  v8 = [v4 afterOperation];

  if (v8)
  {
    objc_initWeak(&location, self);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10002104C;
    v15 = &unk_100094BA8;
    objc_copyWeak(&v16, &location);
    v9 = [NSBlockOperation blockOperationWithBlock:&v12];
    v10 = [v4 afterOperation];
    [v9 addNullableDependency:v10];

    v11 = [(KTStateMachine *)self operationQueue];
    [v11 addOperation:v9];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  [(KTStateMachine *)self _onqueueRecheckConditions];
  [(KTStateMachine *)self _onqueueSendAnyPendingFlags];
}

- (void)disablePendingFlags
{
  v3 = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021234;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (id)dumpPendingFlags
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10001F898;
  v11 = sub_10001F8A8;
  v12 = +[NSMutableDictionary dictionary];
  v3 = [(KTStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100021374;
  v6[3] = &unk_100095BF8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v3 = [(KTStateMachine *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002160C;
  v6[3] = &unk_100095BF8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)possiblePendingFlags
{
  v2 = [(KTStateMachine *)self pendingFlags];
  v3 = [v2 allKeys];

  return v3;
}

- (void)_onqueueRecheckConditions
{
  v3 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(KTStateMachine *)self allowPendingFlags])
  {
    v4 = [(KTStateMachine *)self pendingFlags];
    v5 = [v4 allValues];
    v6 = [v5 copy];

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
        v12 = [(KTStateMachine *)self conditionChecksInFlight];
        objc_initWeak(&location, self);
        v13 = v9 & ~v12;
        if (v13)
        {
          v14 = [(KTStateMachine *)self lockStateTracker];
          v15 = [v14 isLocked];

          if (v15)
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
            v18 = [(KTStateMachine *)self checkUnlockOperation];
            v19 = [(KTStateMachine *)self lockStateTracker];
            v20 = [v19 unlockDependency];
            [v18 addNullableDependency:v20];

            v21 = [(KTStateMachine *)self operationQueue];
            v22 = [(KTStateMachine *)self checkUnlockOperation];
            [v21 addOperation:v22];

            objc_destroyWeak(&v38);
          }

          else
          {
            [(KTStateMachine *)self setCurrentConditions:[(KTStateMachine *)self currentConditions]| 1];
          }
        }

        if ((v13 & 2) != 0)
        {
          v23 = [(KTStateMachine *)self reachabilityTracker];
          v24 = [v23 currentReachability];

          if (v24)
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
            v27 = [(KTStateMachine *)self checkReachabilityOperation];
            v28 = [(KTStateMachine *)self reachabilityTracker];
            v29 = [v28 reachabilityDependency];
            [v27 addNullableDependency:v29];

            v30 = [(KTStateMachine *)self operationQueue];
            v31 = [(KTStateMachine *)self checkReachabilityOperation];
            [v30 addOperation:v31];

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
  v2 = self;
  v3 = [(KTStateMachine *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(KTStateMachine *)v2 allowPendingFlags])
  {
    v4 = [(KTStateMachine *)v2 pendingFlags];
    v5 = [v4 allValues];
    v6 = [v5 copy];

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
      v14 = [v13 fireTime];

      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = [v13 fireTime];
      v16 = [v15 compare:v7];

      if (v16 == -1)
      {
        break;
      }

      v17 = [v13 fireTime];
      v18 = v17;
      if (v10)
      {
        v19 = [v10 earlierDate:v17];

        v20 = 0;
        v10 = v19;
      }

      else
      {
        v20 = 0;
        v10 = v17;
      }

LABEL_16:
      v24 = [v13 afterOperation];

      if (v24)
      {
        v25 = [v13 afterOperation];
        v26 = [v25 isFinished];

        if (v26)
        {
          if (qword_1000AED78 != -1)
          {
            sub_10006E220();
          }

          v27 = qword_1000AED80;
          if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
          {
            v28 = v27;
            v29 = [v13 flag];
            [v13 afterOperation];
            v49 = v10;
            v30 = v11;
            v31 = v2;
            v32 = v8;
            v34 = v33 = v7;
            *buf = v48;
            v57 = v29;
            v58 = 2114;
            v59 = v34;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Operation has ended for pending flag %{public}@: %{public}@", buf, 0x16u);

            v7 = v33;
            v8 = v32;
            v2 = v31;
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

      v35 = [v13 conditions];
      v36 = ([(KTStateMachine *)v2 currentConditions]& v35);
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
          v39 = [v13 flag];
          *buf = 138543362;
          v57 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Conditions are right for %{public}@", buf, 0xCu);
        }

LABEL_29:
        if (v20)
        {
          v40 = [(KTStateMachine *)v2 currentFlags];
          v41 = [v13 flag];
          [v40 _onqueueSetFlag:v41];

          v42 = [(KTStateMachine *)v2 pendingFlags];
          v43 = [v13 flag];
          [v42 setObject:0 forKeyedSubscript:v43];

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
            v47 = [(KTStateMachine *)v2 pendingFlagsScheduler];
            [v47 triggerAt:v46];

            if ((v50 & 1) == 0)
            {
LABEL_42:

              return;
            }

LABEL_40:
            [(KTStateMachine *)v2 _onqueuePokeStateMachine];
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
      v23 = [v13 flag];
      *buf = 138543362;
      v57 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Delay has ended for pending flag %{public}@", buf, 0xCu);
    }

LABEL_15:
    v20 = 1;
    goto LABEL_16;
  }
}

- (void)testPauseStateMachineAfterEntering:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022704;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)testReleaseStateMachinePause:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002280C;
  v7[3] = &unk_100094F80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (BOOL)isPaused
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(KTStateMachine *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100022A08;
  v5[3] = &unk_100094EE8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)waitToResting
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  do
  {
    v3 = [(KTStateMachine *)self nextStateMachineCycleOperation];
    [v3 waitUntilFinished];

    v4 = [(KTStateMachine *)self queue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100022B5C;
    v5[3] = &unk_100094EE8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(v4, v5);
  }

  while ((v7[3] & 1) == 0);
  _Block_object_dispose(&v6, 8);
}

- (void)startOperation
{
  v3 = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022C34;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)haltOperation
{
  v3 = [(KTStateMachine *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022D70;
  block[3] = &unk_100094F10;
  block[4] = self;
  dispatch_sync(v3, block);

  v4 = [(KTStateMachine *)self nextStateMachineCycleOperation];
  [v4 waitUntilFinished];
}

- (void)handleExternalRequest:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022ED0;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)registerStateTransitionWatcher:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022FD4;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)registerMultiStateArrivalWatcher:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMachine *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000230D8;
  v7[3] = &unk_100094F80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)_onqueueRegisterMultiStateArrivalWatcher:(id)a3
{
  v4 = a3;
  v5 = [v4 states];
  v6 = [(KTStateMachine *)self currentState];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v9 = [(KTStateMachine *)self currentState];
    [v4 onqueueEnterState:v9];
  }

  else
  {
    v8 = [(KTStateMachine *)self stateMachineWatchers];
    [v8 addObject:v4];

    [(KTStateMachine *)self _onqueuePokeStateMachine];
  }
}

- (void)doSimpleStateMachineRPC:(id)a3 op:(id)a4 sourceStates:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (qword_1000AED78 != -1)
  {
    sub_10006E284();
  }

  v14 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Beginning a '%{public}@' rpc", buf, 0xCu);
  }

  v15 = [(KTStateMachine *)self lockStateTracker];

  if (v15)
  {
    v16 = [(KTStateMachine *)self lockStateTracker];
    [v16 recheck];
  }

  v17 = [KTStateTransitionRequest alloc];
  v18 = [(KTStateMachine *)self queue];
  v19 = [(KTStateTransitionRequest *)v17 init:v10 sourceStates:v12 serialQueue:v18 timeout:30000000000 transitionOp:v11];

  [(KTStateMachine *)self handleExternalRequest:v19];
  v20 = [NSString stringWithFormat:@"%@-callback", v10];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000234A4;
  v26[3] = &unk_100095D60;
  v27 = v10;
  v28 = v11;
  v29 = v13;
  v21 = v13;
  v22 = v11;
  v23 = v10;
  v24 = [KTResultOperation named:v20 withBlock:v26];

  [v24 addDependency:v22];
  v25 = [(KTStateMachine *)self operationQueue];
  [v25 addOperation:v24];
}

- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [NSString stringWithFormat:@"intial-transition-%@", v13];
  v15 = [v11 initialState];
  v16 = [KTStateTransitionOperation named:v14 entering:v15];

  v17 = [(KTStateMachine *)self doWatchedStateMachineRPC:v13 sourceStates:v12 path:v11 transitionOp:v16 reply:v10];

  return v17;
}

- (id)doWatchedStateMachineRPC:(id)a3 sourceStates:(id)a4 path:(id)a5 transitionOp:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (qword_1000AED78 != -1)
  {
    sub_10006E2AC();
  }

  v17 = qword_1000AED80;
  if (os_log_type_enabled(qword_1000AED80, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Beginning a '%{public}@' rpc", buf, 0xCu);
  }

  v18 = [(KTStateMachine *)self lockStateTracker];

  if (v18)
  {
    v19 = [(KTStateMachine *)self lockStateTracker];
    [v19 recheck];
  }

  v20 = [KTStateTransitionRequest alloc];
  v21 = [(KTStateMachine *)self queue];
  v22 = [(KTStateTransitionRequest *)v20 init:v12 sourceStates:v13 serialQueue:v21 timeout:30000000000 transitionOp:v15];

  v23 = [KTStateTransitionWatcher alloc];
  v38 = v13;
  v24 = [NSString stringWithFormat:@"watcher-%@", v12];
  v25 = [(KTStateMachine *)self queue];
  v26 = [(KTStateTransitionWatcher *)v23 initNamed:v24 serialQueue:v25 path:v14 initialRequest:v22];

  v27 = [(KTStateMachine *)self timeout];
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = 120000000000;
  }

  v29 = [v26 timeout:v28];
  [(KTStateMachine *)self registerStateTransitionWatcher:v26];
  v30 = [NSString stringWithFormat:@"%@-callback", v12];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100023AD8;
  v39[3] = &unk_100095DC8;
  v40 = v12;
  v41 = v26;
  v42 = v16;
  v31 = v16;
  v32 = v26;
  v33 = v12;
  v34 = [KTResultOperation named:v30 withBlockTakingSelf:v39];

  v35 = [v32 result];
  [v34 addDependency:v35];

  v36 = [(KTStateMachine *)self operationQueue];
  [v36 addOperation:v34];

  [(KTStateMachine *)self handleExternalRequest:v22];

  return v34;
}

- (KTStateMachineEngine)stateEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_stateEngine);

  return WeakRetained;
}

@end