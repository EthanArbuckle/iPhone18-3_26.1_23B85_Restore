@interface EPPairerList
- (BOOL)_hasPairer;
- (EPPairer)pairer;
- (EPPairerList)initWithDeviceInfo:(id)info withDelegate:(id)delegate;
- (EPPairerListDelegate)delegate;
- (id)initBase;
- (id)newPairerWithDelegate:(id)delegate withParameters:(id)parameters;
- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate;
- (void)dealloc;
- (void)pairer:(id)pairer completedWithError:(id)error;
- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey;
- (void)pairerDidBeginToPair:(id)pair;
- (void)reset;
- (void)update;
@end

@implementation EPPairerList

- (id)initBase
{
  v3.receiver = self;
  v3.super_class = EPPairerList;
  return [(EPPairerList *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = EPPairerList;
  [(EPPairerList *)&v2 dealloc];
}

- (EPPairerList)initWithDeviceInfo:(id)info withDelegate:(id)delegate
{
  infoCopy = info;
  delegateCopy = delegate;
  initBase = [(EPPairerList *)self initBase];
  v10 = initBase;
  if (initBase)
  {
    objc_storeStrong(initBase + 5, info);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

- (id)newPairerWithDelegate:(id)delegate withParameters:(id)parameters
{
  delegateCopy = delegate;
  parametersCopy = parameters;
  device = [(EPDeviceInfo *)self->_info device];
  if (device && (WeakRetained = objc_loadWeakRetained(&self->_pairer), WeakRetained, !WeakRetained))
  {
    [device setParameters:parametersCopy];
    v10 = [[EPPairer alloc] initWithDevice:device withDelegate:delegateCopy pairerList:self];
    objc_storeWeak(&self->_pairer, v10);
    [(EPPairerList *)self update];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_hasPairer
{
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  v3 = WeakRetained != 0;

  return v3;
}

- (void)update
{
  _hasPairer = [(EPPairerList *)self _hasPairer];
  if (self->_hasPairer != _hasPairer)
  {
    self->_hasPairer = _hasPairer;
    if (_hasPairer)
    {
      objc_storeStrong(&self->me, self);
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      strongDelegate = self->_strongDelegate;
      self->_strongDelegate = WeakRetained;

      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 pairerListDidBecomeNonEmpty:self];
    }

    else
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 pairerListDidBecomeEmpty:self];

      me = self->me;
      self->me = 0;

      v6 = self->_strongDelegate;
      self->_strongDelegate = 0;
    }
  }

  v9 = objc_loadWeakRetained(&self->_pairer);
  [v9 update];
}

- (void)reset
{
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  [WeakRetained reset];

  [(EPPairerList *)self update];
}

- (id)pairer:(id)pairer newEndpointWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  v7 = [WeakRetained pairer:WeakRetained newEndpointWithDelegate:delegateCopy];

  return v7;
}

- (void)pairer:(id)pairer requestWithType:(int64_t)type passkey:(id)passkey
{
  passkeyCopy = passkey;
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  [WeakRetained pairer:WeakRetained requestWithType:type passkey:passkeyCopy];
}

- (void)pairer:(id)pairer completedWithError:(id)error
{
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  [WeakRetained pairer:WeakRetained completedWithError:errorCopy];

  [(EPPairerList *)self reset];
}

- (void)pairerDidBeginToPair:(id)pair
{
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  [WeakRetained pairerDidBeginToPair:WeakRetained];
}

- (EPPairerListDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (EPPairer)pairer
{
  WeakRetained = objc_loadWeakRetained(&self->_pairer);

  return WeakRetained;
}

@end