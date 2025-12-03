@interface KTStateTransitionRequest
- (id)_onqueueStart;
- (id)description;
- (id)init:(id)init sourceStates:(id)states serialQueue:(id)queue timeout:(unint64_t)timeout transitionOp:(id)op;
- (id)timeout:(unint64_t)timeout;
@end

@implementation KTStateTransitionRequest

- (id)init:(id)init sourceStates:(id)states serialQueue:(id)queue timeout:(unint64_t)timeout transitionOp:(id)op
{
  initCopy = init;
  statesCopy = states;
  queueCopy = queue;
  opCopy = op;
  v21.receiver = self;
  v21.super_class = KTStateTransitionRequest;
  v17 = [(KTStateTransitionRequest *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, init);
    objc_storeStrong(&v18->_sourceStates, states);
    objc_storeStrong(&v18->_queue, queue);
    v18->_timeoutCanOccur = 1;
    objc_storeStrong(&v18->_transitionOperation, op);
  }

  v19 = [(KTStateTransitionRequest *)v18 timeout:timeout];

  return v18;
}

- (id)description
{
  name = [(KTStateTransitionRequest *)self name];
  transitionOperation = [(KTStateTransitionRequest *)self transitionOperation];
  sourceStates = [(KTStateTransitionRequest *)self sourceStates];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<KTStateTransitionRequest: %@ %@ sources:%d>", name, transitionOperation, [sourceStates count]);

  return v6;
}

- (id)_onqueueStart
{
  queue = [(KTStateTransitionRequest *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(KTStateTransitionRequest *)self timeoutCanOccur])
  {
    [(KTStateTransitionRequest *)self setTimeoutCanOccur:0];
    transitionOperation = [(KTStateTransitionRequest *)self transitionOperation];
  }

  else
  {
    transitionOperation = 0;
  }

  return transitionOperation;
}

- (id)timeout:(unint64_t)timeout
{
  objc_initWeak(&location, self);
  v5 = dispatch_time(0, timeout);
  queue = [(KTStateTransitionRequest *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001A8BFC;
  v8[3] = &unk_1003175E0;
  objc_copyWeak(&v9, &location);
  dispatch_after(v5, queue, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
  return self;
}

@end