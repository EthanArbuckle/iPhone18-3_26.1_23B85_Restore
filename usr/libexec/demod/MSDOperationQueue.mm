@interface MSDOperationQueue
- (MSDOperationQueue)init;
- (void)addOperation:(id)a3;
- (void)setSuspended:(BOOL)a3;
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

- (void)addOperation:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1000E6A78(a2, self, v5);
  }

  v6 = [(MSDOperationQueue *)self checkpointBarrier];
  [v5 addCheckpointBarrier:v6];

  v7.receiver = self;
  v7.super_class = MSDOperationQueue;
  [(MSDOperationQueue *)&v7 addOperation:v5];
}

- (void)setSuspended:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = MSDOperationQueue;
  [(MSDOperationQueue *)&v7 setSuspended:?];
  v5 = [(MSDOperationQueue *)self checkpointBarrier];
  v6 = v5;
  if (v3)
  {
    [v5 activate];
  }

  else
  {
    [v5 deactivate];
  }
}

@end