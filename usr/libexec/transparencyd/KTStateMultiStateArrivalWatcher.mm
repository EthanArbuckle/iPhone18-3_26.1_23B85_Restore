@interface KTStateMultiStateArrivalWatcher
- (id)description;
- (id)initNamed:(id)named serialQueue:(id)queue states:(id)states failStates:(id)failStates;
- (id)timeout:(unint64_t)timeout;
- (void)_onqueuePerformTimeoutWithUnderlyingError;
- (void)completeWithErrorIfPending:(id)pending;
- (void)onqueueEnterState:(id)state;
- (void)onqueueHandleTransition:(id)transition;
- (void)onqueueStartFinishOperation:(id)operation;
@end

@implementation KTStateMultiStateArrivalWatcher

- (id)initNamed:(id)named serialQueue:(id)queue states:(id)states failStates:(id)failStates
{
  namedCopy = named;
  queueCopy = queue;
  statesCopy = states;
  failStatesCopy = failStates;
  v26.receiver = self;
  v26.super_class = KTStateMultiStateArrivalWatcher;
  v15 = [(KTStateMultiStateArrivalWatcher *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, named);
    allKeys = [failStatesCopy allKeys];
    v18 = [statesCopy setByAddingObjectsFromArray:allKeys];
    states = v16->_states;
    v16->_states = v18;

    objc_storeStrong(&v16->_failStates, failStates);
    namedCopy = [NSString stringWithFormat:@"watcher-%@", namedCopy];
    v21 = [KTResultOperation named:namedCopy withBlock:&stru_10032A590];
    v22 = v16->_result;
    v16->_result = v21;

    v23 = objc_alloc_init(NSOperationQueue);
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v23;

    objc_storeStrong(&v16->_queue, queue);
    *&v16->_completed = 256;
  }

  return v16;
}

- (id)description
{
  name = [(KTStateMultiStateArrivalWatcher *)self name];
  states = [(KTStateMultiStateArrivalWatcher *)self states];
  result = [(KTStateMultiStateArrivalWatcher *)self result];
  v6 = [NSString stringWithFormat:@"<KTStateMultiStateArrivalWatcher(%@): states: %@, result: %@>", name, states, result];

  return v6;
}

- (void)onqueueHandleTransition:(id)transition
{
  transitionCopy = transition;
  queue = [(KTStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  nextState = [transitionCopy nextState];

  [(KTStateMultiStateArrivalWatcher *)self onqueueEnterState:nextState];
}

- (void)onqueueEnterState:(id)state
{
  stateCopy = state;
  if (![(KTStateMultiStateArrivalWatcher *)self completed])
  {
    states = [(KTStateMultiStateArrivalWatcher *)self states];
    v5 = [states containsObject:stateCopy];

    if (v5)
    {
      failStates = [(KTStateMultiStateArrivalWatcher *)self failStates];
      v7 = [failStates objectForKeyedSubscript:stateCopy];

      [(KTStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v7];
    }
  }
}

- (void)_onqueuePerformTimeoutWithUnderlyingError
{
  queue = [(KTStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(KTStateMultiStateArrivalWatcher *)self timeoutCanOccur])
  {
    [(KTStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
    name = [(KTStateMultiStateArrivalWatcher *)self name];
    states = [(KTStateMultiStateArrivalWatcher *)self states];
    v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for any state in [%@]", name, states];

    v6 = [NSError errorWithDomain:@"KTResultOperationError" code:3 description:v7];
    [(KTStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v6];
  }
}

- (id)timeout:(unint64_t)timeout
{
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, timeout);
  queue = [(KTStateMultiStateArrivalWatcher *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100210328;
  v8[3] = &unk_1003175E0;
  objc_copyWeak(&v9, &location);
  dispatch_after(v5, queue, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return self;
}

- (void)onqueueStartFinishOperation:(id)operation
{
  operationCopy = operation;
  queue = [(KTStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  [(KTStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
  result = [(KTStateMultiStateArrivalWatcher *)self result];
  [result setError:operationCopy];

  operationQueue = [(KTStateMultiStateArrivalWatcher *)self operationQueue];
  result2 = [(KTStateMultiStateArrivalWatcher *)self result];
  [operationQueue addOperation:result2];

  [(KTStateMultiStateArrivalWatcher *)self setCompleted:1];
}

- (void)completeWithErrorIfPending:(id)pending
{
  pendingCopy = pending;
  queue = [(KTStateMultiStateArrivalWatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002104DC;
  v7[3] = &unk_1003180E0;
  v7[4] = self;
  v8 = pendingCopy;
  v6 = pendingCopy;
  dispatch_sync(queue, v7);
}

@end