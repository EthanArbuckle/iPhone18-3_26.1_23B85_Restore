@interface WCDAsyncOperation
- (NSOperationQueue)queue;
- (WCDAsyncOperation)initWithDelegate:(id)delegate queue:(id)queue;
- (WCDOperationDelegate)delegate;
- (void)doWork;
- (void)doWorkWithCompletionHandler:(id)handler;
- (void)finish;
- (void)start;
@end

@implementation WCDAsyncOperation

- (WCDAsyncOperation)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = WCDAsyncOperation;
  v8 = [(WCDAsyncOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeWeak(&v9->_queue, queueCopy);
  }

  return v9;
}

- (void)start
{
  if ([(WCDAsyncOperation *)self isCancelled])
  {

    [(WCDAsyncOperation *)self finish];
  }

  else
  {
    v3.receiver = self;
    v3.super_class = WCDAsyncOperation;
    [(WCDAsyncOperation *)&v3 start];
    [(WCDAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 1;
    [(WCDAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)finish
{
  if (self->_executing)
  {
    [(WCDAsyncOperation *)self willChangeValueForKey:@"isExecuting"];
    self->_executing = 0;
    [(WCDAsyncOperation *)self didChangeValueForKey:@"isExecuting"];
  }

  [(WCDAsyncOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = 1;

  [(WCDAsyncOperation *)self didChangeValueForKey:@"isFinished"];
}

- (void)doWork
{
  v3 = objc_initWeak(&location, self);
  isCancelled = [(WCDAsyncOperation *)self isCancelled];

  if (isCancelled)
  {
    v5 = objc_loadWeakRetained(&location);
    [v5 finish];
  }

  else
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100003BE8;
    v6[3] = &unk_100048B10;
    objc_copyWeak(&v7, &location);
    [(WCDAsyncOperation *)self doWorkWithCompletionHandler:v6];
    objc_destroyWeak(&v7);
  }

  objc_destroyWeak(&location);
}

- (void)doWorkWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v8 = [NSString stringWithFormat:@"Subclass %@ must override %@", v6, v7];
  v9 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v8 userInfo:0];
  v10 = v9;

  objc_exception_throw(v9);
}

- (WCDOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSOperationQueue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end