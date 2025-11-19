@interface KTStateMultiStateArrivalWatcher
- (id)description;
- (id)initNamed:(id)a3 serialQueue:(id)a4 states:(id)a5 failStates:(id)a6;
- (id)timeout:(unint64_t)a3;
- (void)_onqueuePerformTimeoutWithUnderlyingError;
- (void)completeWithErrorIfPending:(id)a3;
- (void)onqueueEnterState:(id)a3;
- (void)onqueueHandleTransition:(id)a3;
- (void)onqueueStartFinishOperation:(id)a3;
@end

@implementation KTStateMultiStateArrivalWatcher

- (id)initNamed:(id)a3 serialQueue:(id)a4 states:(id)a5 failStates:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = KTStateMultiStateArrivalWatcher;
  v15 = [(KTStateMultiStateArrivalWatcher *)&v26 init];
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
    v21 = [KTResultOperation named:v20 withBlock:&stru_10032A590];
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

- (id)description
{
  v3 = [(KTStateMultiStateArrivalWatcher *)self name];
  v4 = [(KTStateMultiStateArrivalWatcher *)self states];
  v5 = [(KTStateMultiStateArrivalWatcher *)self result];
  v6 = [NSString stringWithFormat:@"<KTStateMultiStateArrivalWatcher(%@): states: %@, result: %@>", v3, v4, v5];

  return v6;
}

- (void)onqueueHandleTransition:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 nextState];

  [(KTStateMultiStateArrivalWatcher *)self onqueueEnterState:v6];
}

- (void)onqueueEnterState:(id)a3
{
  v8 = a3;
  if (![(KTStateMultiStateArrivalWatcher *)self completed])
  {
    v4 = [(KTStateMultiStateArrivalWatcher *)self states];
    v5 = [v4 containsObject:v8];

    if (v5)
    {
      v6 = [(KTStateMultiStateArrivalWatcher *)self failStates];
      v7 = [v6 objectForKeyedSubscript:v8];

      [(KTStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v7];
    }
  }
}

- (void)_onqueuePerformTimeoutWithUnderlyingError
{
  v3 = [(KTStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(KTStateMultiStateArrivalWatcher *)self timeoutCanOccur])
  {
    [(KTStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
    v4 = [(KTStateMultiStateArrivalWatcher *)self name];
    v5 = [(KTStateMultiStateArrivalWatcher *)self states];
    v7 = [NSString stringWithFormat:@"Operation(%@) timed out waiting to start for any state in [%@]", v4, v5];

    v6 = [NSError errorWithDomain:@"KTResultOperationError" code:3 description:v7];
    [(KTStateMultiStateArrivalWatcher *)self onqueueStartFinishOperation:v6];
  }
}

- (id)timeout:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, a3);
  v6 = [(KTStateMultiStateArrivalWatcher *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100210328;
  v8[3] = &unk_1003175E0;
  objc_copyWeak(&v9, &location);
  dispatch_after(v5, v6, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return self;
}

- (void)onqueueStartFinishOperation:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMultiStateArrivalWatcher *)self queue];
  dispatch_assert_queue_V2(v5);

  [(KTStateMultiStateArrivalWatcher *)self setTimeoutCanOccur:0];
  v6 = [(KTStateMultiStateArrivalWatcher *)self result];
  [v6 setError:v4];

  v7 = [(KTStateMultiStateArrivalWatcher *)self operationQueue];
  v8 = [(KTStateMultiStateArrivalWatcher *)self result];
  [v7 addOperation:v8];

  [(KTStateMultiStateArrivalWatcher *)self setCompleted:1];
}

- (void)completeWithErrorIfPending:(id)a3
{
  v4 = a3;
  v5 = [(KTStateMultiStateArrivalWatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1002104DC;
  v7[3] = &unk_1003180E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end