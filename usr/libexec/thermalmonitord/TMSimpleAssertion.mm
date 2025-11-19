@interface TMSimpleAssertion
- (TMSimpleAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 invalidationBlock:(id)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation TMSimpleAssertion

- (TMSimpleAssertion)initWithIdentifier:(id)a3 forReason:(id)a4 invalidationBlock:(id)a5
{
  v10.receiver = self;
  v10.super_class = TMSimpleAssertion;
  v8 = [(TMSimpleAssertion *)&v10 init];
  if (v8)
  {
    v8->_identifier = [a3 copy];
    v8->_reason = [a4 copy];
    atomic_store(0, &v8->_invalidated);
    v8->_invalidationBlock = [a5 copy];
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