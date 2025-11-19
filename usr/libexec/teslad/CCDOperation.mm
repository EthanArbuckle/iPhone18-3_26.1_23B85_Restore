@interface CCDOperation
- (CCDOperation)init;
- (void)endOperation;
- (void)setOperationExecuting:(BOOL)a3;
- (void)setOperationFinished:(BOOL)a3;
- (void)setOperationReady:(BOOL)a3;
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

- (void)setOperationReady:(BOOL)a3
{
  if (self->_operationReady != a3)
  {
    [(CCDOperation *)self willChangeValueForKey:@"ready"];
    self->_operationReady = a3;

    [(CCDOperation *)self didChangeValueForKey:@"ready"];
  }
}

- (void)setOperationExecuting:(BOOL)a3
{
  if (self->_operationExecuting != a3)
  {
    [(CCDOperation *)self willChangeValueForKey:@"executing"];
    self->_operationExecuting = a3;

    [(CCDOperation *)self didChangeValueForKey:@"executing"];
  }
}

- (void)setOperationFinished:(BOOL)a3
{
  if (self->_operationFinished != a3)
  {
    [(CCDOperation *)self willChangeValueForKey:@"finished"];
    self->_operationFinished = a3;

    [(CCDOperation *)self didChangeValueForKey:@"finished"];
  }
}

- (void)endOperation
{
  [(CCDOperation *)self setOperationExecuting:0];

  [(CCDOperation *)self setOperationFinished:1];
}

@end