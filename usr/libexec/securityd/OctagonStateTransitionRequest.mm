@interface OctagonStateTransitionRequest
- (id)_onqueueStart;
- (id)description;
- (id)init:(id)init sourceStates:(id)states serialQueue:(id)queue transitionOp:(id)op;
- (void)onqueueHandleStartTimeout:(id)timeout;
@end

@implementation OctagonStateTransitionRequest

- (void)onqueueHandleStartTimeout:(id)timeout
{
  timeoutCopy = timeout;
  queue = [(OctagonStateTransitionRequest *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OctagonStateTransitionRequest *)self timeoutCanOccur])
  {
    [(OctagonStateTransitionRequest *)self setTimeoutCanOccur:0];
    transitionOperation = [(OctagonStateTransitionRequest *)self transitionOperation];
    [transitionOperation setDescriptionUnderlyingError:timeoutCopy];

    transitionOperation2 = [(OctagonStateTransitionRequest *)self transitionOperation];
    [transitionOperation2 setDescriptionErrorCode:2000];

    transitionOperation3 = [(OctagonStateTransitionRequest *)self transitionOperation];
    v8 = [transitionOperation3 timeout:0];

    v9 = objc_alloc_init(NSOperationQueue);
    transitionOperation4 = [(OctagonStateTransitionRequest *)self transitionOperation];
    [v9 addOperation:transitionOperation4];
  }
}

- (id)_onqueueStart
{
  queue = [(OctagonStateTransitionRequest *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(OctagonStateTransitionRequest *)self timeoutCanOccur])
  {
    [(OctagonStateTransitionRequest *)self setTimeoutCanOccur:0];
    transitionOperation = [(OctagonStateTransitionRequest *)self transitionOperation];
  }

  else
  {
    transitionOperation = 0;
  }

  return transitionOperation;
}

- (id)description
{
  name = [(OctagonStateTransitionRequest *)self name];
  transitionOperation = [(OctagonStateTransitionRequest *)self transitionOperation];
  sourceStates = [(OctagonStateTransitionRequest *)self sourceStates];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<OctagonStateTransitionRequest: %@ %@ sources:%d>", name, transitionOperation, [sourceStates count]);

  return v6;
}

- (id)init:(id)init sourceStates:(id)states serialQueue:(id)queue transitionOp:(id)op
{
  initCopy = init;
  statesCopy = states;
  queueCopy = queue;
  opCopy = op;
  v18.receiver = self;
  v18.super_class = OctagonStateTransitionRequest;
  v15 = [(OctagonStateTransitionRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, init);
    objc_storeStrong(&v16->_sourceStates, states);
    objc_storeStrong(&v16->_queue, queue);
    v16->_timeoutCanOccur = 1;
    objc_storeStrong(&v16->_transitionOperation, op);
  }

  return v16;
}

@end