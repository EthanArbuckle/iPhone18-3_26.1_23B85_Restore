@interface MSDOperationQueue
- (MSDOperationQueue)init;
- (void)addOperation:(id)operation;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation MSDOperationQueue

- (MSDOperationQueue)init
{
  v5.receiver = self;
  v5.super_class = MSDOperationQueue;
  v2 = [(MSDOperationQueue *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MSDOperationBarrier);
    [(MSDOperationQueue *)v2 setCheckpointBarrier:v3];
  }

  return v2;
}

- (void)addOperation:(id)operation
{
  operationCopy = operation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000E6A78(a2, self, operationCopy);
  }

  checkpointBarrier = [(MSDOperationQueue *)self checkpointBarrier];
  [operationCopy addCheckpointBarrier:checkpointBarrier];

  v7.receiver = self;
  v7.super_class = MSDOperationQueue;
  [(MSDOperationQueue *)&v7 addOperation:operationCopy];
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v7.receiver = self;
  v7.super_class = MSDOperationQueue;
  [(MSDOperationQueue *)&v7 setSuspended:?];
  checkpointBarrier = [(MSDOperationQueue *)self checkpointBarrier];
  v6 = checkpointBarrier;
  if (suspendedCopy)
  {
    [checkpointBarrier activate];
  }

  else
  {
    [checkpointBarrier deactivate];
  }
}

@end