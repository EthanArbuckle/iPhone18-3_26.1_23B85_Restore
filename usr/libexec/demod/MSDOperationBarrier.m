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

    v4 = [(MSDOperationBarrier *)v2 condition];
    [v4 setName:@"com.apple.msd.operation_barrier"];
  }

  return v2;
}

- (void)waitUntilClear
{
  v3 = [(MSDOperationBarrier *)self condition];
  [v3 lock];

  if ([(MSDOperationBarrier *)self activated])
  {
    do
    {
      v4 = [(MSDOperationBarrier *)self condition];
      [v4 wait];
    }

    while ([(MSDOperationBarrier *)self activated]);
  }

  v5 = [(MSDOperationBarrier *)self condition];
  [v5 unlock];
}

- (void)activate
{
  v3 = [(MSDOperationBarrier *)self condition];
  [v3 lock];

  [(MSDOperationBarrier *)self setActivated:1];
  v4 = [(MSDOperationBarrier *)self condition];
  [v4 broadcast];

  v5 = [(MSDOperationBarrier *)self condition];
  [v5 unlock];
}

- (void)deactivate
{
  v3 = [(MSDOperationBarrier *)self condition];
  [v3 lock];

  [(MSDOperationBarrier *)self setActivated:0];
  v4 = [(MSDOperationBarrier *)self condition];
  [v4 broadcast];

  v5 = [(MSDOperationBarrier *)self condition];
  [v5 unlock];
}

@end