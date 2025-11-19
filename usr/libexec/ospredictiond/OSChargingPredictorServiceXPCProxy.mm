@interface OSChargingPredictorServiceXPCProxy
- (NSObject)target;
- (OSChargingPredictorServiceXPCProxy)initWithObserver:(id)a3;
- (id)forwardingTargetForSelector:(SEL)a3;
@end

@implementation OSChargingPredictorServiceXPCProxy

- (OSChargingPredictorServiceXPCProxy)initWithObserver:(id)a3
{
  v6.receiver = self;
  v6.super_class = OSChargingPredictorServiceXPCProxy;
  v3 = a3;
  v4 = [(OSChargingPredictorServiceXPCProxy *)&v6 init];
  objc_storeWeak(&v4->_target, v3);

  return v4;
}

- (id)forwardingTargetForSelector:(SEL)a3
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