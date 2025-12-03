@interface EPActiveDeviceAssertionFactoryObserverWrapper
- (EPActiveDeviceAssertionFactoryObserver)observer;
- (void)assertionFactoryDidBecomeIdle:(id)idle;
@end

@implementation EPActiveDeviceAssertionFactoryObserverWrapper

- (void)assertionFactoryDidBecomeIdle:(id)idle
{
  idleCopy = idle;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained assertionFactoryDidBecomeIdle:idleCopy];
  }
}

- (EPActiveDeviceAssertionFactoryObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end