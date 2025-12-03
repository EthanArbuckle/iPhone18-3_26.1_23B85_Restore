@interface OSBatteryPredictorServiceXPCProxy
- (NSObject)target;
- (OSBatteryPredictorServiceXPCProxy)initWithObserver:(id)observer;
- (id)forwardingTargetForSelector:(SEL)selector;
@end

@implementation OSBatteryPredictorServiceXPCProxy

- (OSBatteryPredictorServiceXPCProxy)initWithObserver:(id)observer
{
  v6.receiver = self;
  v6.super_class = OSBatteryPredictorServiceXPCProxy;
  observerCopy = observer;
  v4 = [(OSBatteryPredictorServiceXPCProxy *)&v6 init];
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