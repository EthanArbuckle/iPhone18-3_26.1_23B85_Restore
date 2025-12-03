@interface TMSimpleAssertion
- (TMSimpleAssertion)initWithIdentifier:(id)identifier forReason:(id)reason invalidationBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation TMSimpleAssertion

- (TMSimpleAssertion)initWithIdentifier:(id)identifier forReason:(id)reason invalidationBlock:(id)block
{
  v10.receiver = self;
  v10.super_class = TMSimpleAssertion;
  v8 = [(TMSimpleAssertion *)&v10 init];
  if (v8)
  {
    v8->_identifier = [identifier copy];
    v8->_reason = [reason copy];
    atomic_store(0, &v8->_invalidated);
    v8->_invalidationBlock = [block copy];
  }

  return v8;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TMSimpleAssertion;
  [(TMSimpleAssertion *)&v2 dealloc];
}

- (void)invalidate
{
  v2 = 0;
  atomic_compare_exchange_strong_explicit(&self->_invalidated, &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  if (!v2)
  {
    (*(self->_invalidationBlock + 2))();

    self->_invalidationBlock = 0;
  }
}

@end