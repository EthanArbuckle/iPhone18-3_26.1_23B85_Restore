@interface OctagonStateMultiStateArrivalWatcher
- (id)description;
- (id)initNamed:(id)a3 serialQueue:(id)a4 states:(id)a5 failStates:(id)a6;
- (void)completeWithErrorIfPending:(id)a3;
- (void)onqueueEnterState:(id)a3;
- (void)onqueueHandleStartTimeout:(id)a3;
- (void)onqueueHandleTransition:(id)a3;
- (void)onqueueStartFinishOperation:(id)a3;
@end

@implementation OctagonStateMultiStateArrivalWatcher

- (void)completeWithErrorIfPending:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10011F1A0;
  v7[3] = &unk_100343E38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)onqueueStartFinishOperation:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(v5);

  [(OctagonStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
  v6 = [(OctagonStateMultiStateArrivalWatcher *)self result];
  [v6 setError:v4];

  v7 = [(OctagonStateMultiStateArrivalWatcher *)self operationQueue];
  v8 = [(OctagonStateMultiStateArrivalWatcher *)self result];
  [v7 addOperation:v8];

  [(OctagonStateMultiStateArrivalWatcher *)self setCompleted:1];
}

- (void)onqueueHandleStartTimeout:(id)a3
{
  v9 = a3;
  v4 = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(v4);

  if ([(OctagonStateMultiStateArrivalWatcher *)self timeoutCanOccur])
  {
    [(OctagonStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
    v5 = [(OctagonStateMultiStateArrivalWatcher *)self name];
    v6 = [(OctagonStateMultiStateArrivalWatcher *)self states];
    v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for any state in [%@]", v5, v6];

    v8 = [NSError errorWithDomain:@"CKKSResultOperationError" code:3 description:v7 underlying:v9];
    [(OctagonStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v8];
  }
}

- (void)onqueueEnterState:(id)a3
{
  v8 = a3;
  if (![(OctagonStateMultiStateArrivalWatcher *)self completed])
  {
    v4 = [(OctagonStateMultiStateArrivalWatcher *)self states];
    v5 = [v4 containsObject:v8];

    if (v5)
    {
      v6 = [(OctagonStateMultiStateArrivalWatcher *)self failStates];
      v7 = [v6 objectForKeyedSubscript:v8];

      [(OctagonStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v7];
    }
  }
}

- (void)onqueueHandleTransition:(id)a3
{
  v4 = a3;
  v5 = [(OctagonStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 nextState];

  [(OctagonStateMultiStateArrivalWatcher *)self onqueueEnterState:v6];
}

- (id)description
{
  v3 = [(OctagonStateMultiStateArrivalWatcher *)self name];
  v4 = [(OctagonStateMultiStateArrivalWatcher *)self states];
  v5 = [(OctagonStateMultiStateArrivalWatcher *)self result];
  v6 = [NSString stringWithFormat:@"<OctagonStateMultiStateArrivalWatcher(%@): states: %@, result: %@>", v3, v4, v5];

  return v6;
}

- (id)initNamed:(id)a3 serialQueue:(id)a4 states:(id)a5 failStates:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = OctagonStateMultiStateArrivalWatcher;
  v15 = [(OctagonStateMultiStateArrivalWatcher *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    v17 = [v14 allKeys];
    v18 = [v13 setByAddingObjectsFromArray:v17];
    states = v16->_states;
    v16->_states = v18;

    objc_storeStrong(&v16->_failStates, a6);
    v20 = [NSString stringWithFormat:@"watcher-%@", v11];
    v21 = [CKKSResultOperation named:v20 withBlock:&stru_100337750];
    v22 = v16->_result;
    v16->_result = v21;

    v23 = objc_alloc_init(NSOperationQueue);
    operationQueue = v16->_operationQueue;
    v16->_operationQueue = v23;

    objc_storeStrong(&v16->_queue, a4);
    *&v16->_completed = 256;
  }

  return v16;
}

@end