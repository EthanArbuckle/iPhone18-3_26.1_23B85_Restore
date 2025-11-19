@interface KTCondition
- (id)initToChain:(id)a3;
- (int64_t)wait:(int64_t)a3;
- (void)fulfill;
@end

@implementation KTCondition

- (id)initToChain:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = KTCondition;
  v6 = [(KTCondition *)&v10 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    semaphore = v6->_semaphore;
    v6->_semaphore = v7;

    objc_storeStrong(&v6->_chain, a3);
  }

  return v6;
}

- (void)fulfill
{
  v3 = [(KTCondition *)self semaphore];
  dispatch_semaphore_signal(v3);

  v4 = [(KTCondition *)self chain];
  [v4 fulfill];

  [(KTCondition *)self setChain:0];
}

- (int64_t)wait:(int64_t)a3
{
  v5 = [(KTCondition *)self semaphore];
  v6 = dispatch_time(0, a3);
  v7 = dispatch_semaphore_wait(v5, v6);

  if (!v7)
  {
    v8 = [(KTCondition *)self semaphore];
    dispatch_semaphore_signal(v8);
  }

  return v7;
}

@end