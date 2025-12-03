@interface OctagonStateMultiStateArrivalWatcher
- (id)description;
- (id)initNamed:(id)named serialQueue:(id)queue states:(id)states failStates:(id)failStates;
- (void)completeWithErrorIfPending:(id)pending;
- (void)onqueueEnterState:(id)state;
- (void)onqueueHandleStartTimeout:(id)timeout;
- (void)onqueueHandleTransition:(id)transition;
- (void)onqueueStartFinishOperation:(id)operation;
@end

@implementation OctagonStateMultiStateArrivalWatcher

- (void)completeWithErrorIfPending:(id)pending
{
  pendingCopy = pending;
  queue = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011F1A0;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = pendingCopy;
  v6 = pendingCopy;
  dispatch_sync(queue, v7);
}

- (void)onqueueStartFinishOperation:(id)operation
{
  operationCopy = operation;
  queue = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  [(OctagonStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
  result = [(OctagonStateMultiStateArrivalWatcher *)self result];
  [result setError:operationCopy];

  operationQueue = [(OctagonStateMultiStateArrivalWatcher *)self operationQueue];
  result2 = [(OctagonStateMultiStateArrivalWatcher *)self result];
  [operationQueue addOperation:result2];

  [(OctagonStateMultiStateArrivalWatcher *)self setCompleted:1];
}

- (void)onqueueHandleStartTimeout:(id)timeout
{
  timeoutCopy = timeout;
  queue = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OctagonStateMultiStateArrivalWatcher *)self timeoutCanOccur])
  {
    [(OctagonStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
    name = [(OctagonStateMultiStateArrivalWatcher *)self name];
    states = [(OctagonStateMultiStateArrivalWatcher *)self states];
    v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for any state in [%@]", name, states];

    v8 = [NSError errorWithDomain:@"CKKSResultOperationError" code:3 description:v7 underlying:timeoutCopy];
    [(OctagonStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v8];
  }
}

- (void)onqueueEnterState:(id)state
{
  stateCopy = state;
  if (![(OctagonStateMultiStateArrivalWatcher *)self completed])
  {
    states = [(OctagonStateMultiStateArrivalWatcher *)self states];
    v5 = [states containsObject:stateCopy];

    if (v5)
    {
      failStates = [(OctagonStateMultiStateArrivalWatcher *)self failStates];
      v7 = [failStates objectForKeyedSubscript:stateCopy];

      [(OctagonStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v7];
    }
  }
}

- (void)onqueueHandleTransition:(id)transition
{
  transitionCopy = transition;
  queue = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(queue);

  nextState = [transitionCopy nextState];

  [(OctagonStateMultiStateArrivalWatcher *)self onqueueEnterState:nextState];
}

- (id)description
{
  name = [(OctagonStateMultiStateArrivalWatcher *)self name];
  states = [(OctagonStateMultiStateArrivalWatcher *)self states];
  result = [(OctagonStateMultiStateArrivalWatcher *)self result];
  v6 = [NSString stringWithFormat:@"<OctagonStateMultiStateArrivalWatcher(%@): states: %@, result: %@>", name, states, result];

  return v6;
}

- (id)initNamed:(id)named serialQueue:(id)queue states:(id)states failStates:(id)failStates
{
  namedCopy = named;
  queueCopy = queue;
  statesCopy = states;
  failStatesCopy = failStates;
  v26.receiver = self;
  v26.super_class = OctagonStateMultiStateArrivalWatcher;
  v15 = [(OctagonStateMultiStateArrivalWatcher *)&v26 init];
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
    v21 = [CKKSResultOperation named:namedCopy withBlock:&stru_100337750];
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

@end