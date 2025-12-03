@interface KTCondition
- (id)initToChain:(id)chain;
- (int64_t)wait:(int64_t)wait;
- (void)fulfill;
@end

@implementation KTCondition

- (void)fulfill
{
  semaphore = [(KTCondition *)self semaphore];
  dispatch_semaphore_signal(semaphore);

  chain = [(KTCondition *)self chain];
  [chain fulfill];

  [(KTCondition *)self setChain:0];
}

- (id)initToChain:(id)chain
{
  chainCopy = chain;
  v10.receiver = self;
  v10.super_class = KTCondition;
  v6 = [(KTCondition *)&v10 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    semaphore = v6->_semaphore;
    v6->_semaphore = v7;

    objc_storeStrong(&v6->_chain, chain);
  }

  return v6;
}

- (int64_t)wait:(int64_t)wait
{
  semaphore = [(KTCondition *)self semaphore];
  v6 = dispatch_time(0, wait);
  v7 = dispatch_semaphore_wait(semaphore, v6);

  if (!v7)
  {
    semaphore2 = [(KTCondition *)self semaphore];
    dispatch_semaphore_signal(semaphore2);
  }

  return v7;
}

@end