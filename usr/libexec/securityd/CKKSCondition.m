@interface CKKSCondition
- (id)initToChain:(id)a3;
- (int64_t)wait:(unint64_t)a3;
- (void)fulfill;
@end

@implementation CKKSCondition

- (void)fulfill
{
  v3 = [(CKKSCondition *)self semaphore];
  dispatch_semaphore_signal(v3);

  v4 = [(CKKSCondition *)self chain];
  [v4 fulfill];

  [(CKKSCondition *)self setChain:0];
}

- (int64_t)wait:(unint64_t)a3
{
  v5 = [(CKKSCondition *)self semaphore];
  v6 = dispatch_time(0, a3);
  v7 = dispatch_semaphore_wait(v5, v6);

  if (!v7)
  {
    v8 = [(CKKSCondition *)self semaphore];
    dispatch_semaphore_signal(v8);
  }

  return v7;
}

- (id)initToChain:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CKKSCondition;
  v6 = [(CKKSCondition *)&v10 init];
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    semaphore = v6->_semaphore;
    v6->_semaphore = v7;

    objc_storeStrong(&v6->_chain, a3);
  }

  return v6;
}

@end