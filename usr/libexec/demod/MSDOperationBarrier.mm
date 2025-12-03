@interface MSDOperationBarrier
- (MSDOperationBarrier)init;
- (void)activate;
- (void)deactivate;
- (void)waitUntilClear;
@end

@implementation MSDOperationBarrier

- (MSDOperationBarrier)init
{
  v6.receiver = self;
  v6.super_class = MSDOperationBarrier;
  v2 = [(MSDOperationBarrier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCondition);
    [(MSDOperationBarrier *)v2 setCondition:v3];

    condition = [(MSDOperationBarrier *)v2 condition];
    [condition setName:@"com.apple.msd.operation_barrier"];
  }

  return v2;
}

- (void)waitUntilClear
{
  condition = [(MSDOperationBarrier *)self condition];
  [condition lock];

  if ([(MSDOperationBarrier *)self activated])
  {
    do
    {
      condition2 = [(MSDOperationBarrier *)self condition];
      [condition2 wait];
    }

    while ([(MSDOperationBarrier *)self activated]);
  }

  condition3 = [(MSDOperationBarrier *)self condition];
  [condition3 unlock];
}

- (void)activate
{
  condition = [(MSDOperationBarrier *)self condition];
  [condition lock];

  [(MSDOperationBarrier *)self setActivated:1];
  condition2 = [(MSDOperationBarrier *)self condition];
  [condition2 broadcast];

  condition3 = [(MSDOperationBarrier *)self condition];
  [condition3 unlock];
}

- (void)deactivate
{
  condition = [(MSDOperationBarrier *)self condition];
  [condition lock];

  [(MSDOperationBarrier *)self setActivated:0];
  condition2 = [(MSDOperationBarrier *)self condition];
  [condition2 broadcast];

  condition3 = [(MSDOperationBarrier *)self condition];
  [condition3 unlock];
}

@end