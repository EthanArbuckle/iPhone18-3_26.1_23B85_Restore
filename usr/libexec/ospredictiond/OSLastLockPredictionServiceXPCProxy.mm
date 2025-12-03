@interface OSLastLockPredictionServiceXPCProxy
- (NSObject)target;
- (OSLastLockPredictionServiceXPCProxy)initWithObserver:(id)observer;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation OSLastLockPredictionServiceXPCProxy

- (OSLastLockPredictionServiceXPCProxy)initWithObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = OSLastLockPredictionServiceXPCProxy;
  observerCopy = observer;
  v4 = [(OSLastLockPredictionServiceXPCProxy *)&v6 init];
  objc_storeWeak(&v4->_target, observerCopy);

  return v4;
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

- (NSObject)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end