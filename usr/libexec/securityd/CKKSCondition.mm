@interface CKKSCondition
- (id)initToChain:(id)chain;
- (int64_t)wait:(unint64_t)wait;
- (void)fulfill;
@end

@implementation CKKSCondition

- (void)fulfill
{
  semaphore = [(CKKSCondition *)self semaphore];
  dispatch_semaphore_signal(semaphore);

  chain = [(CKKSCondition *)self chain];
  [chain fulfill];

  [(CKKSCondition *)self setChain:0];
}

- (int64_t)wait:(unint64_t)wait
{
  semaphore = [(CKKSCondition *)self semaphore];
  v6 = dispatch_time(0, wait);
  v7 = dispatch_semaphore_wait(semaphore, v6);

  if (!v7)
  {
    semaphore2 = [(CKKSCondition *)self semaphore];
    dispatch_semaphore_signal(semaphore2);
  }

  return v7;
}

- (id)initToChain:(id)chain
{
  chainCopy = chain;
  v10.receiver = self;
  v10.super_class = CKKSCondition;
  v6 = [(CKKSCondition *)&v10 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    semaphore = v6->_semaphore;
    v6->_semaphore = v7;

    objc_storeStrong(&v6->_chain, chain);
  }

  return v6;
}

@end