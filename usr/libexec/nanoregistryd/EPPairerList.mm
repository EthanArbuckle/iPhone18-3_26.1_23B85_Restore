@interface EPPairerList
- (BOOL)_hasPairer;
- (EPPairer)pairer;
- (EPPairerList)initWithDeviceInfo:(id)a3 withDelegate:(id)a4;
- (EPPairerListDelegate)delegate;
- (id)initBase;
- (id)newPairerWithDelegate:(id)a3 withParameters:(id)a4;
- (id)pairer:(id)a3 newEndpointWithDelegate:(id)a4;
- (void)dealloc;
- (void)pairer:(id)a3 completedWithError:(id)a4;
- (void)pairer:(id)a3 requestWithType:(int64_t)a4 passkey:(id)a5;
- (void)pairerDidBeginToPair:(id)a3;
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

- (EPPairerList)initWithDeviceInfo:(id)a3 withDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(EPPairerList *)self initBase];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 5, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

- (id)newPairerWithDelegate:(id)a3 withParameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EPDeviceInfo *)self->_info device];
  if (v8 && (WeakRetained = objc_loadWeakRetained(&self->_pairer), WeakRetained, !WeakRetained))
  {
    [v8 setParameters:v7];
    v10 = [[EPPairer alloc] initWithDevice:v8 withDelegate:v6 pairerList:self];
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
  v3 = [(EPPairerList *)self _hasPairer];
  if (self->_hasPairer != v3)
  {
    self->_hasPairer = v3;
    if (v3)
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

- (id)pairer:(id)a3 newEndpointWithDelegate:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  v7 = [WeakRetained pairer:WeakRetained newEndpointWithDelegate:v5];

  return v7;
}

- (void)pairer:(id)a3 requestWithType:(int64_t)a4 passkey:(id)a5
{
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  [WeakRetained pairer:WeakRetained requestWithType:a4 passkey:v7];
}

- (void)pairer:(id)a3 completedWithError:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_pairer);
  [WeakRetained pairer:WeakRetained completedWithError:v5];

  [(EPPairerList *)self reset];
}

- (void)pairerDidBeginToPair:(id)a3
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