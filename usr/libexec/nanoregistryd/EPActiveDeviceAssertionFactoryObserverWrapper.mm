@interface EPActiveDeviceAssertionFactoryObserverWrapper
- (EPActiveDeviceAssertionFactoryObserver)observer;
- (void)assertionFactoryDidBecomeIdle:(id)a3;
@end

@implementation EPActiveDeviceAssertionFactoryObserverWrapper

- (void)assertionFactoryDidBecomeIdle:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained assertionFactoryDidBecomeIdle:v6];
  }
}

- (EPActiveDeviceAssertionFactoryObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end