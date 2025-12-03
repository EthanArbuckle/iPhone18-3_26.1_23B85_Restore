@interface OSInactivityPredictionServiceXPCProxy
- (NSObject)target;
- (OSInactivityPredictionServiceXPCProxy)initWithObserver:(id)observer;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation OSInactivityPredictionServiceXPCProxy

- (OSInactivityPredictionServiceXPCProxy)initWithObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = OSInactivityPredictionServiceXPCProxy;
  observerCopy = observer;
  v4 = [(OSInactivityPredictionServiceXPCProxy *)&v6 init];
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