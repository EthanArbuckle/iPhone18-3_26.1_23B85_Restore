@interface CCDOperation
- (CCDOperation)init;
- (void)endOperation;
- (void)setOperationExecuting:(BOOL)executing;
- (void)setOperationFinished:(BOOL)finished;
- (void)setOperationReady:(BOOL)ready;
@end

@implementation CCDOperation

- (CCDOperation)init
{
  v3.receiver = self;
  v3.super_class = CCDOperation;
  result = [(CCDOperation *)&v3 init];
  if (result)
  {
    result->_operationReady = 1;
  }

  return result;
}

- (void)setOperationReady:(BOOL)ready
{
  if (self->_operationReady != ready)
  {
    [(CCDOperation *)self willChangeValueForKey:@"ready"];
    self->_operationReady = ready;

    [(CCDOperation *)self didChangeValueForKey:@"ready"];
  }
}

- (void)setOperationExecuting:(BOOL)executing
{
  if (self->_operationExecuting != executing)
  {
    [(CCDOperation *)self willChangeValueForKey:@"executing"];
    self->_operationExecuting = executing;

    [(CCDOperation *)self didChangeValueForKey:@"executing"];
  }
}

- (void)setOperationFinished:(BOOL)finished
{
  if (self->_operationFinished != finished)
  {
    [(CCDOperation *)self willChangeValueForKey:@"finished"];
    self->_operationFinished = finished;

    [(CCDOperation *)self didChangeValueForKey:@"finished"];
  }
}

- (void)endOperation
{
  [(CCDOperation *)self setOperationExecuting:0];

  [(CCDOperation *)self setOperationFinished:1];
}

@end