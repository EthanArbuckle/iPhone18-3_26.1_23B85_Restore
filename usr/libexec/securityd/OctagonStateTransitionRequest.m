@interface OctagonStateTransitionRequest
- (id)_onqueueStart;
- (id)description;
- (id)init:(id)a3 sourceStates:(id)a4 serialQueue:(id)a5 transitionOp:(id)a6;
- (void)onqueueHandleStartTimeout:(id)a3;
@end

@implementation OctagonStateTransitionRequest

- (void)onqueueHandleStartTimeout:(id)a3
{
  v11 = a3;
  v4 = [(OctagonStateTransitionRequest *)self queue];
  dispatch_assert_queue_V2(v4);

  if ([(OctagonStateTransitionRequest *)self timeoutCanOccur])
  {
    [(OctagonStateTransitionRequest *)self setTimeoutCanOccur:0];
    v5 = [(OctagonStateTransitionRequest *)self transitionOperation];
    [v5 setDescriptionUnderlyingError:v11];

    v6 = [(OctagonStateTransitionRequest *)self transitionOperation];
    [v6 setDescriptionErrorCode:2000];

    v7 = [(OctagonStateTransitionRequest *)self transitionOperation];
    v8 = [v7 timeout:0];

    v9 = objc_alloc_init(NSOperationQueue);
    v10 = [(OctagonStateTransitionRequest *)self transitionOperation];
    [v9 addOperation:v10];
  }
}

- (id)_onqueueStart
{
  v3 = [(OctagonStateTransitionRequest *)self queue];
  dispatch_assert_queue_V2(v3);

  if ([(OctagonStateTransitionRequest *)self timeoutCanOccur])
  {
    [(OctagonStateTransitionRequest *)self setTimeoutCanOccur:0];
    v4 = [(OctagonStateTransitionRequest *)self transitionOperation];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = [(OctagonStateTransitionRequest *)self name];
  v4 = [(OctagonStateTransitionRequest *)self transitionOperation];
  v5 = [(OctagonStateTransitionRequest *)self sourceStates];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<OctagonStateTransitionRequest: %@ %@ sources:%d>", v3, v4, [v5 count]);

  return v6;
}

- (id)init:(id)a3 sourceStates:(id)a4 serialQueue:(id)a5 transitionOp:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = OctagonStateTransitionRequest;
  v15 = [(OctagonStateTransitionRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, a3);
    objc_storeStrong(&v16->_sourceStates, a4);
    objc_storeStrong(&v16->_queue, a5);
    v16->_timeoutCanOccur = 1;
    objc_storeStrong(&v16->_transitionOperation, a6);
  }

  return v16;
}

@end